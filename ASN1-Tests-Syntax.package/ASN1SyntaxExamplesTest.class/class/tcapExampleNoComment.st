as yet unclassified
tcapExampleNoComment
	^ 'TCAP-Examples {itu-t recommendation q 775 modules(2) examples(2) version1(1)}
DEFINITIONS ::=
BEGIN

IMPORTS
  OPERATION, ERROR
    FROM Remote-Operations-Information-Objects {joint-iso-itu-t
      remote-operations(4) informationObjects(5) version1(0)};

provideRoutingInformation OPERATION ::= {
  ARGUMENT  RequestArgument
  RESULT    RoutingInformation
  ERRORS
    {invalidCalledNumber | subscriberNotReachable | calledBarred |
      processingFailure}
  LINKED    {getCallingPartyAddress}
}

getCallingPartyAddress OPERATION ::= {
  RESULT  CallingPartyAddress
  ERRORS  {callingPartyAddressNotAvailable | processingFailure}
}

invalidCalledNumber ERROR ::= {CODE  local:1
}

subscriberNotReachable ERROR ::= {CODE  local:2
}

calledBarred ERROR ::= {CODE  local:3
}

callingPartyAddressNotAvailable ERROR ::= {CODE  local:4
}

processingFailure ERROR ::= {CODE  local:5
}

RequestArgument ::= SEQUENCE {
  calledNumber  IsdnNumber,
  basicService  BasicServiceIndicator OPTIONAL
}

RoutingInformation ::= CHOICE {
  reroutingNumber    [0] IMPLICIT IsdnNumber,
  forwardedToNumber  [1] IMPLICIT IsdnNumber
}

BasicServiceIndicator ::= ENUMERATED {speech(0), unrestrictedDigital(1)}

CallingPartyAddress ::= IsdnNumber

IsdnNumber ::= SEQUENCE {
  typeOfAddress  TypeOfAddress,
  digits         TelephonyString
}

TypeOfAddress ::= ENUMERATED {national(0), international(1), private(2)}

TelephonyString ::=
  IA5String
    (FROM ("0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" | "*" |
           "#"))(SIZE (1..15))

END'