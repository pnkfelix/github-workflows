;; From: http://www.w3.org/TR/html401/sgml/entities.html

;;; Portions © International Organization for Standardization 1986
;;; Permission to copy in any form is granted for use with
;;; conforming SGML systems and applications as defined in
;;; ISO 8879, provided this notice is included in all copies.

(define named-escape-codes
  '((#\x00A0    nbsp      160) ;; no-break space = non-breaking space
    (#\x00A1    iexcl     161) ;; inverted exclamation mark
    (#\x00A2    cent      162) ;; cent sign

    (#\x00A3    pound     163) ;; pound sign,
    (#\x00A4    curren    164) ;; currency sign,
    (#\x00A5    yen       165) ;; yen sign = yuan sign,
    (#\x00A6    brvbar    166) ;; broken bar = broken vertical bar,

    (#\x00A7    sect      167) ;; section sign,
    (#\x00A8    uml       168) ;; diaeresis = spacing diaeresis,

    (#\x00A9    copy      169) ;; copyright sign,
    (#\x00AA    ordf      170) ;; feminine ordinal indicator,
    (#\x00AB    laquo     171) ;; left-pointing double angle quotation mark
                               ;; left pointing guillemet,
    (#\x00AC    not       172) ;; not sign,
    (#\x00AD    shy       173) ;; soft hyphen = discretionary hyphen,

    (#\x00AE    reg       174) ;; registered sign = registered trade mark sign,

    (#\x00AF    macr      175) ;; macron = spacing macron = overline
                                        ; = APL overbar,
    (#\x00B0    deg       176) ;; degree sign,
    (#\x00B1    plusmn    177) ;; plus-minus sign = plus-or-minus sign,

    (#\x00B2    sup2      178) ;; superscript two = superscript digit two
                                        ; = squared,
    (#\x00B3    sup3      179) ;; superscript three = superscript digit three
                                        ; = cubed,
    (#\x00B4    acute     180) ;; acute accent = spacing acute,

    (#\x00B5    micro     181) ;; micro sign,
    (#\x00B6    para      182) ;; pilcrow sign = paragraph sign,

    (#\x00B7    middot    183) ;; middle dot = Georgian comma
                                        ; = Greek middle dot,
    (#\x00B8    cedil     184) ;; cedilla = spacing cedilla,
    (#\x00B9    sup1      185) ;; superscript one = superscript digit one,

    (#\x00BA    ordm      186) ;; masculine ordinal indicator,

    (#\x00BB    raquo     187) ;; right-pointing double angle quotation mark
                                        ; = right pointing guillemet,
    (#\x00BC    frac14    188) ;; vulgar fraction one quarter
                                        ; = fraction one quarter,
    (#\x00BD    frac12    189) ;; vulgar fraction one half
                                        ; = fraction one half,
    (#\x00BE    frac34    190) ;; vulgar fraction three quarters
                                        ; = fraction three quarters,
    (#\x00BF    iquest    191) ;; inverted question mark
                                        ; = turned question mark,
    (#\x00C0    Agrave    192) ;; latin capital letter A with grave
                                        ; = latin capital letter A grave,

    (#\x00C1    Aacute    193) ;; latin capital letter A with acute,

    (#\x00C2    Acirc     194) ;; latin capital letter A with circumflex,

    (#\x00C3    Atilde    195) ;; latin capital letter A with tilde,

    (#\x00C4    Auml      196) ;; latin capital letter A with diaeresis,

    (#\x00C5    Aring     197) ;; latin capital letter A with ring above
                               ;;            = latin capital letter A ring,

    (#\x00C6    AElig     198) ;; latin capital letter AE
                               ;;            = latin capital ligature AE,

    (#\x00C7    Ccedil    199) ;; latin capital letter C with cedilla,

    (#\x00C8    Egrave    200) ;; latin capital letter E with grave,

    (#\x00C9    Eacute    201) ;; latin capital letter E with acute,

    (#\x00CA    Ecirc     202) ;; latin capital letter E with circumflex,

    (#\x00CB    Euml      203) ;; latin capital letter E with diaeresis,

    (#\x00CC    Igrave    204) ;; latin capital letter I with grave,

    (#\x00CD    Iacute    205) ;; latin capital letter I with acute,

    (#\x00CE    Icirc     206) ;; latin capital letter I with circumflex,

    (#\x00CF    Iuml      207) ;; latin capital letter I with diaeresis,

    (#\x00D0    ETH       208) ;; latin capital letter ETH, 
    (#\x00D1    Ntilde    209) ;; latin capital letter N with tilde,

    (#\x00D2    Ograve    210) ;; latin capital letter O with grave,

    (#\x00D3    Oacute    211) ;; latin capital letter O with acute,

    (#\x00D4    Ocirc     212) ;; latin capital letter O with circumflex,

    (#\x00D5    Otilde    213) ;; latin capital letter O with tilde,

    (#\x00D6    Ouml      214) ;; latin capital letter O with diaeresis,

    (#\x00D7    times     215) ;; multiplication sign, 
    (#\x00D8    Oslash    216) ;; latin capital letter O with stroke
                               ;;            = latin capital letter O slash,

    (#\x00D9    Ugrave    217) ;; latin capital letter U with grave,

    (#\x00DA    Uacute    218) ;; latin capital letter U with acute,

    (#\x00DB    Ucirc     219) ;; latin capital letter U with circumflex,

    (#\x00DC    Uuml      220) ;; latin capital letter U with diaeresis,

    (#\x00DD    Yacute    221) ;; latin capital letter Y with acute,

    (#\x00DE    THORN     222) ;; latin capital letter THORN,

    (#\x00DF    szlig     223) ;; latin small letter sharp s = ess-zed,

    (#\x00E0    agrave    224) ;; latin small letter a with grave
                               ;;         = latin small letter a grave,

    (#\x00E1    aacute    225) ;; latin small letter a with acute,

    (#\x00E2    acirc     226) ;; latin small letter a with circumflex,

    (#\x00E3    atilde    227) ;; latin small letter a with tilde,

    (#\x00E4    auml      228) ;; latin small letter a with diaeresis,

    (#\x00E5    aring     229) ;; latin small letter a with ring above
                               ;;         = latin small letter a ring,

    (#\x00E6    aelig     230) ;; latin small letter ae
                               ;;         = latin small ligature ae, 
    (#\x00E7    ccedil    231) ;; latin small letter c with cedilla,

    (#\x00E8    egrave    232) ;; latin small letter e with grave,

    (#\x00E9    eacute    233) ;; latin small letter e with acute,

    (#\x00EA    ecirc     234) ;; latin small letter e with circumflex,

    (#\x00EB    euml      235) ;; latin small letter e with diaeresis,

    (#\x00EC    igrave    236) ;; latin small letter i with grave,

    (#\x00ED    iacute    237) ;; latin small letter i with acute,

    (#\x00EE    icirc     238) ;; latin small letter i with circumflex,

    (#\x00EF    iuml      239) ;; latin small letter i with diaeresis,

    (#\x00F0    eth       240) ;; latin small letter eth, 
    (#\x00F1    ntilde    241) ;; latin small letter n with tilde,

    (#\x00F2    ograve    242) ;; latin small letter o with grave,

    (#\x00F3    oacute    243) ;; latin small letter o with acute,

    (#\x00F4    ocirc     244) ;; latin small letter o with circumflex,

    (#\x00F5    otilde    245) ;; latin small letter o with tilde,

    (#\x00F6    ouml      246) ;; latin small letter o with diaeresis,

    (#\x00F7    divide    247) ;; division sign, 
    (#\x00F8    oslash    248) ;; latin small letter o with stroke,
                               ;;         = latin small letter o slash,

    (#\x00F9    ugrave    249) ;; latin small letter u with grave,

    (#\x00FA    uacute    250) ;; latin small letter u with acute,

    (#\x00FB    ucirc     251) ;; latin small letter u with circumflex,

    (#\x00FC    uuml      252) ;; latin small letter u with diaeresis,

    (#\x00FD    yacute    253) ;; latin small letter y with acute,

    (#\x00FE    thorn     254) ;; latin small letter thorn,

    (#\x00FF    yuml      255) ;; latin small letter y with diaeresis,

;; <!-- Latin Extended-B -->
    (#\x0192    fnof        402) ;; latin small f with hook = function
                                 ;;         = florin, 

;; <!-- Greek -->
    (#\x0391    Alpha       913) ;; greek capital letter alpha, 
    (#\x0392    Beta        914) ;; greek capital letter beta, 
    (#\x0393    Gamma       915) ;; greek capital letter gamma,
    (#\x0394    Delta       916) ;; greek capital letter delta,
    (#\x0395    Epsilon     917) ;; greek capital letter epsilon, 
    (#\x0396    Zeta        918) ;; greek capital letter zeta, 
    (#\x0397    Eta         919) ;; greek capital letter eta, 
    (#\x0398    Theta       920) ;; greek capital letter theta,
    (#\x0399    Iota        921) ;; greek capital letter iota, 
    (#\x039A    Kappa       922) ;; greek capital letter kappa, 
    (#\x039B    Lambda      923) ;; greek capital letter lambda,
    (#\x039C    Mu          924) ;; greek capital letter mu, 
    (#\x039D    Nu          925) ;; greek capital letter nu, 
    (#\x039E    Xi          926) ;; greek capital letter xi, 
    (#\x039F    Omicron     927) ;; greek capital letter omicron, 
    (#\x03A0    Pi          928) ;; greek capital letter pi, 
    (#\x03A1    Rho         929) ;; greek capital letter rho, 
;; <!-- there is no Sigmaf, and no U+03A2 character either -->
    (#\x03A3    Sigma       931) ;; greek capital letter sigma,
    (#\x03A4    Tau         932) ;; greek capital letter tau, 
    (#\x03A5    Upsilon     933) ;; greek capital letter upsilon,
    (#\x03A6    Phi         934) ;; greek capital letter phi,
    (#\x03A7    Chi         935) ;; greek capital letter chi, 
    (#\x03A8    Psi         936) ;; greek capital letter psi,
    (#\x03A9    Omega       937) ;; greek capital letter omega,

    (#\x03B1    alpha       945) ;; greek small letter alpha,
    (#\x03B2    beta        946) ;; greek small letter beta, 
    (#\x03B3    gamma       947) ;; greek small letter gamma,
    (#\x03B4    delta       948) ;; greek small letter delta,
    (#\x03B5    epsilon     949) ;; greek small letter epsilon,
    (#\x03B6    zeta        950) ;; greek small letter zeta, 
    (#\x03B7    eta         951) ;; greek small letter eta, 
    (#\x03B8    theta       952) ;; greek small letter theta,
    (#\x03B9    iota        953) ;; greek small letter iota, 
    (#\x03BA    kappa       954) ;; greek small letter kappa,
    (#\x03BB    lambda      955) ;; greek small letter lambda,
    (#\x03BC    mu          956) ;; greek small letter mu, 
    (#\x03BD    nu          957) ;; greek small letter nu, 
    (#\x03BE    xi          958) ;; greek small letter xi, 
    (#\x03BF    omicron     959) ;; greek small letter omicron, 
    (#\x03C0    pi          960) ;; greek small letter pi, 
    (#\x03C1    rho         961) ;; greek small letter rho, 
    (#\x03C2    sigmaf      962) ;; greek small letter final sigma,
    (#\x03C3    sigma       963) ;; greek small letter sigma,
    (#\x03C4    tau         964) ;; greek small letter tau, 
    (#\x03C5    upsilon     965) ;; greek small letter upsilon,
    (#\x03C6    phi         966) ;; greek small letter phi, 
    (#\x03C7    chi         967) ;; greek small letter chi, 
    (#\x03C8    psi         968) ;; greek small letter psi, 
    (#\x03C9    omega       969) ;; greek small letter omega,
    (#\x03D1    thetasym    977) ;; greek small letter theta symbol,
    (#\x03D2    upsih       978) ;; greek upsilon with hook symbol,
    (#\x03D6    piv         982) ;; greek pi symbol, 
    ;; <!-- General Punctuation -->
    (#\x2022    bull        8226) ;; bullet = black small circle,

    ;; <!-- bullet is NOT the same as bullet operator, U+2219 -->
    (#\x2026    hellip      8230) ;; horizontal ellipsis = three dot leader,

    (#\x2032    prime       8242) ;; prime = minutes = feet, 
    (#\x2033    Prime       8243) ;; double prime = seconds = inches,

    (#\x203E    oline       8254) ;; overline = spacing overscore,

    (#\x2044    frasl       8260) ;; fraction slash, 

    ;; <!-- Letterlike Symbols -->
    (#\x2118    weierp      8472) ;; script capital P = power set
      ; = Weierstrass p, 
    (#\x2111    image       8465) ;; blackletter capital I = imaginary part,

    (#\x211C    real        8476) ;; blackletter capital R = real part symbol,

    (#\x2122    trade       8482) ;; trade mark sign, 
    (#\x2135    alefsym     8501) ;; alef symbol = first transfinite cardinal,

;; <!-- alef symbol is NOT the same as hebrew letter alef,
;;  U+05D0 although the same glyph could be used to depict both characters -->

;; <!-- Arrows -->
    (#\x2190    larr        8592) ;; leftwards arrow, 
    (#\x2191    uarr        8593) ;; upwards arrow, 
    (#\x2192    rarr        8594) ;; rightwards arrow, 
    (#\x2193    darr        8595) ;; downwards arrow, 
    (#\x2194    harr        8596) ;; left right arrow, 
    (#\x21B5    crarr       8629) ;; downwards arrow with corner leftwards
                                        ; = carriage return, 
    (#\x21D0    lArr        8656) ;; leftwards double arrow, 
;;    <!-- ISO 10646 does not say that lArr is the same as the 'is implied by' arrow
;; but also does not have any other character for that function. So ? lArr can
;; be used for 'is implied by' as ISOtech suggests -->
    (#\x21D1    uArr        8657) ;; upwards double arrow, 
    (#\x21D2    rArr        8658) ;; rightwards double arrow,

;; <!-- ISO 10646 does not say this is the 'implies' character but does not have 
;;      another character with this function so ?
;;      rArr can be used for 'implies' as ISOtech suggests -->
    (#\x21D3    dArr        8659) ;; downwards double arrow, 
    (#\x21D4    hArr        8660) ;; left right double arrow,
                                     

;; <!-- Mathematical Operators -->
    (#\x2200    forall      8704) ;; for all, 
    (#\x2202    part        8706) ;; partial differential, 
    (#\x2203    exist       8707) ;; there exists, 
    (#\x2205    empty       8709) ;; empty set = null set = diameter,
                                     
    (#\x2207    nabla       8711) ;; nabla = backward difference,
                                     
    (#\x2208    isin        8712) ;; element of, 
    (#\x2209    notin       8713) ;; not an element of, 
    (#\x220B    ni          8715) ;; contains as member, 
;; <!-- should there be a more memorable name than 'ni'? -->
    (#\x220F    prod        8719) ;; n-ary product = product sign,
                                     
;; <!-- prod is NOT the same character as U+03A0 'greek capital letter pi' though
;;      the same glyph might be used for both -->
    (#\x2211    sum         8721) ;; n-ary sumation, 
;; <!-- sum is NOT the same character as U+03A3 'greek capital letter sigma'
;;      though the same glyph might be used for both -->
    (#\x2212    minus       8722) ;; minus sign, 
    (#\x2217    lowast      8727) ;; asterisk operator, 
    (#\x221A    radic       8730) ;; square root = radical sign,
    (#\x221D    prop        8733) ;; proportional to, 
    (#\x221E    infin       8734) ;; infinity, 
    (#\x2220    ang         8736) ;; angle, 
    (#\x2227    and         8743) ;; logical and = wedge, 
    (#\x2228    or          8744) ;; logical or = vee, 
    (#\x2229    cap         8745) ;; intersection = cap, 
    (#\x222A    cup         8746) ;; union = cup, 
    (#\x222B    int         8747) ;; integral, 
    (#\x2234    there4      8756) ;; therefore, 
    (#\x223C    sim         8764) ;; tilde operator = varies with = similar to,
;; <!-- tilde operator is NOT the same character as the tilde, U+007E,
;;      although the same glyph might be used to represent both  -->
    (#\x2245    cong        8773) ;; approximately equal to, 
    (#\x2248    asymp       8776) ;; almost equal to = asymptotic to,
    (#\x2260    ne          8800) ;; not equal to, 
    (#\x2261    equiv       8801) ;; identical to, 
    (#\x2264    le          8804) ;; less-than or equal to, 
    (#\x2265    ge          8805) ;; greater-than or equal to,
    (#\x2282    sub         8834) ;; subset of, 
    (#\x2283    sup         8835) ;; superset of, 
;; <!-- note that nsup, 'not a superset of, U+2283' is not covered by the Symbol 
;;      font encoding and is not included. Should it be, for symmetry?
;;      It is in ISOamsn  --> 
    (#\x2284    nsub        8836) ;; not a subset of, 
    (#\x2286    sube        8838) ;; subset of or equal to, 
    (#\x2287    supe        8839) ;; superset of or equal to,
    (#\x2295    oplus       8853) ;; circled plus = direct sum,
    (#\x2297    otimes      8855) ;; circled times = vector product,
    (#\x22A5    perp        8869) ;; up tack = orthogonal to = perpendicular,
    (#\x22C5    sdot        8901) ;; dot operator, 
;; <!-- dot operator is NOT the same character as U+00B7 middle dot -->

;; <!-- Miscellaneous Technical -->
    (#\x2308    lceil       8968) ;; left ceiling = apl upstile,
    (#\x2309    rceil       8969) ;; right ceiling, 
    (#\x230A    lfloor      8970) ;; left floor = apl downstile,
    (#\x230B    rfloor      8971) ;; right floor, 
    (#\x2329    lang        9001) ;; left-pointing angle bracket = bra,
;; <!-- lang is NOT the same character as U+003C 'less than' 
;;      or U+2039 'single left-pointing angle quotation mark' -->
    (#\x232A    rang        9002) ;; right-pointing angle bracket = ket,
;; <!-- rang is NOT the same character as U+003E 'greater than' 
;;      or U+203A 'single right-pointing angle quotation mark' -->

;; <!-- Geometric Shapes -->
    (#\x25CA    loz         9674) ;; lozenge, 

;; <!-- Miscellaneous Symbols -->
    (#\x2660    spades      9824) ;; black spade suit, 
;; <!-- black here seems to mean filled as opposed to hollow -->
    (#\x2663    clubs       9827) ;; black club suit = shamrock,
    (#\x2665    hearts      9829) ;; black heart suit = valentine,
    (#\x2666    diams       9830) ;; black diamond suit, 

#|
The character entity references in this section are for escaping markup-significant characters (these are the same as those in HTML 2.0 and 3.2), for denoting spaces and dashes. Other characters in this section apply to internationalization issues such as the disambiguation of bidirectional text (see the section on bidirectional text for details).

Entities have also been added for the remaining characters occurring in CP-1252 which do not occur in the HTMLlat1 or HTMLsymbol entity sets. These all occur in the 128 to 159 range within the CP-1252 charset. These entities permit the characters to be denoted in a platform-independent manner.

To support these entities, user agents may support full [ISO10646] or use other means. Display of glyphs for these characters may be obtained by being able to display the relevant [ISO10646] characters or by other means, such as internally mapping the listed entities, numeric character references, and characters to the appropriate position in some font that contains the requisite glyphs.
24.4.1 The list of characters
|#

;; <!-- Special characters for HTML -->


;; <!-- C0 Controls and Basic Latin -->
    (#\x0022 quot    34)    ;; quotation mark = APL quote
    (#\x0026 amp     38)    ;; ampersand
    (#\x003C lt      60)    ;; less-than sign
    (#\x003E gt      62)    ;; greater-than sig

;; <!-- Latin Extended-A -->
    (#\x0152 OElig   338)   ;; latin capital ligature OE,
    (#\x0153 oelig   339)   ;; latin small ligature oe, 
;; <!-- ligature is a misnomer, this is a separate character in some languages -->
    (#\x0160 Scaron  352)   ;; latin capital letter S with caron,
    (#\x0161 scaron  353)   ;; latin small letter s with caron,
    (#\x0178 Yuml    376)   ;; latin capital letter Y with diaeresis,

;; <!-- Spacing Modifier Letters -->
    (#\x02C6 circ    710)   ;; modifier letter circumflex accent,
    (#\x02DC tilde   732)   ;; small tilde, 

;; <!-- General Punctuation -->
    (#\x2002 ensp    8194)  ;; en space, 
    (#\x2003 emsp    8195)  ;; em space, 
    (#\x2009 thinsp  8201)  ;; thin space, 
    (#\x200C zwnj    8204)  ;; zero width non-joiner,
    (#\x200D zwj     8205)  ;; zero width joiner, 
    (#\x200E lrm     8206)  ;; left-to-right mark, 
    (#\x200F rlm     8207)  ;; right-to-left mark, 
    (#\x2013 ndash   8211)  ;; en dash, 
    (#\x2014 mdash   8212)  ;; em dash, 
    (#\x2018 lsquo   8216)  ;; left single quotation mark,
    (#\x2019 rsquo   8217)  ;; right single quotation mark,

    (#\x201A sbquo   8218)  ;; single low-9 quotation mark, 
    (#\x201C ldquo   8220)  ;; left double quotation mark,

    (#\x201D rdquo   8221)  ;; right double quotation mark,

    (#\x201E bdquo   8222)  ;; double low-9 quotation mark, 
    (#\x2020 dagger  8224)  ;; dagger, 
    (#\x2021 Dagger  8225)  ;; double dagger, 
    (#\x2030 permil  8240)  ;; per mille sign, 
    (#\x2039 lsaquo  8249)  ;; single left-pointing angle quotation mark,

    ;; <!-- lsaquo is proposed but not yet ISO standardized -->
    (#\x203A rsaquo  8250)  ;; single right-pointing angle quotation mark,

    ;; <!-- rsaquo is proposed but not yet ISO standardized -->
    (#\x20AC euro   8364)   ;; euro sign, 
))
