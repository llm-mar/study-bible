# License

By accessing, using, downloading, or interacting with this Study Bible project, you agree to comply with the applicable licenses outlined below.

## License Summary

| Component | License | Coverage |
|-----------|---------|----------|
| Open Greek New Testament (OGNT) text | Creative Commons Attribution-ShareAlike 4.0 (CC BY-SA 4.0) | Biblical text data and translations |
| Open Hebrew Bible text | Creative Commons Attribution-NonCommercial 4.0 (CC BY-NC 4.0) | Biblical text data and translations |
| LLM-MAR tool | MIT License | The Multi Agent Reasoning CLI framework |
| AI-generated outputs | Creative Commons Attribution-ShareAlike 4.0 (CC BY-SA 4.0) | All analyses, interpretations, and derivatives from biblical content |
| Study Bible project files | Creative Commons Attribution-ShareAlike 4.0 (CC BY-SA 4.0) | Configuration files, workflows, and agent definitions |

### License Obligations Summary

- **Attribution**: Always credit the Open Greek New Testament, Open Hebrew Bible (Eliran Wong), and the Study Bible project
- **Share-Alike**: Derivative works from Greek content must use CC BY-SA 4.0; Hebrew content is CC BY-NC 4.0
- **Commercial Use**: Permitted for Greek content under CC BY-SA 4.0 with proper attribution; Restricted for Hebrew content (non-commercial only)
- **No Warranties**: Software provided "as-is" without warranties

## 1. Open Greek New Testament (OGNT) License

**Applies to**: Biblical text, translations, and linguistic data from OGNT

The Open Greek New Testament Project aims to:
- Offer a FREE NA-equivalent text of Greek New Testament, compiled from open-resources
- Align a FREE NA-equivalent Greek New Testament with a group of high-quality and open-source materials
- Develop an online reader for FREE ACCESS of major resources integrated in this project

The FREE NA-equivalent text is named "Open Greek New Testament [OGNT]". The text of OGNT was built upon and compiled from a group of high-quality scholarly materials. It serves as the base text for the rest of the project. This provides all bible readers, students or scholars a FREE text of Greek New Testament, which is the closest equivalent to the text of NA28 / NA27, for studies or research purposes.

As the text of OGNT is close to the text of NA28 / NA27, OGNT is a very good candidate for bridging a free Greek New Testament text with resources, which were originally keyed to the text of NA28 / NA27. So far, Open Greek New Testament Project has successfully aligned the text of OGNT with various scholarly resources, e.g. Tyndale Amalgamated NT Tagged texts, OpenText Linguistic Annotations, Levinsohn Greek New Testament Features, Mounce Greek-English Dictionary, Berean interlinear translations, etc.

### Source: A Brief History

**Previous Versions (versions 1 & 2)**  
Previous two versions of the base text of OpenGNT project were compiled from TANTT - Tyndale Amalgamated NT Tagged texts. They are now replaced by the latest version (version 3). No support will be provided for the previous versions.

**The Latest Version (version 3)**  
The latest base text of Open Greek New Testament Project, OGNT in short, was compiled from Berean Greek Bible and its associated database, which is primarily based on the Greek New Testament, Η ΚΑΙΝΗ ΔΙΑΘΗΚΗ, edited by Eberhard Nestle, published in 1904 by the British and Foreign Bible Society.

The Greek New Testament (Nestle, 1904) is now a public domain document worldwide, without any limitations for use or copyright issues. The Berean Bible Translation Committee adopted it years ago as the base text for developing Berean Greek Bible and associated resources on New Testament.

The final text of Berean Greek Bible is primarily based on Nestle Greek New Testament (1904), with modernisation of spellings and textual decisions reflecting the best and earliest manuscripts. In addition, Berean translation table marks some significant textual variants of popular critical Greek New Testament editions, with a set of symbols.

In August 2018, OpenGNT project was granted permission to integrate Berean Greek Bible and its associated data for compilation, mapping resources and distribution.

As the Greek New Testament (Nestle, 1904) shares the same heritage with later NA texts (e.g. NA27, NA28), it soon became obvious that Berean Greek data is a very good source for compiling a NA-equivalent text, which is free for both reading and mapping valuables resources based on NA27 / NA28.

**Compilation of the Base Text of OGNT**  
Berean Greek Bible and its associated data (inclusive) were then taken into review and processed, for compilation of a NA-equivalent Greek New Testament. The compilation process is briefly described below:

- Original variant markers in Berean database (inclusive) were reviewed, a few of them were refined. A few missing variants from Byzantine text were added to the database. They were marked with "+BYZ" in the database, formatted for compilation.
- BGB was compared with Bunning Heuristic Prototype Greek New Testament (BHP), released by Center for New Testament Restoration. The comparison considers major variants only, ignoring minor issues like movable ν, αλλ vs αλλα, etc. BHP was taken into weighing textual decisions, as it is one of the latest projects, reflecting the best and earliest manuscripts. The review results in adaptation of some BHP's readings in place of some BGB readings. They were marked with "+BHP" in the database, formatted for compilation. Remarks: BHP was not available for consideration in the original development of Berean Greek Bible, because it had not been published at the first launch of Berean Greek Bible.
- All TR, BYZ, WH, NE variants, originally marked in Berean database with symbols "{} ⧼⧽ () 〈〉", and some of SBL variants, marked with "〈〉", were taken away from the compilation.
- Verses containing ⇔ in original Berean database were reviewed and compared with other free GNT editions (i.e. TR, BYZ, WH, SBL, BHP). Word order in 71 verses were adapted from other editions and were documented.
- Berean Greek Bible uses KJV versification. Original GNT's versification (Nestle 1904) had been worked out, with minor variations following SBLGNT's versification.
- Original punctuation from the Berean database were not included in the compilation.

**Transparency**  
- To ensure transparency, the original database for compilation, including Berean Greek Data, and additional data mentioned above, is uploaded.
- The process of the compilation is repeatable through the use of a simple Python script uploaded. The script is provided for the sake of transparency. In addition, it may be useful for validation or checking.

**A NA-Equivalent Text**  
The resulting text is very close to the text of NA28. Apart from minor orthographical variations, it only has a total of 61 words different from the text of NA28. The text is now taken as the latest version (version 3) of the base text of Open Greek New Testament Project, replacing all previous versions. It is not only the closest equivalent to the text of NA28 / NA27, but also the best FREE candidate for mapping resources originally keyed to NA28 / NA27, e.g. OpenText Linguistic Annotations, Levinsohn Greek New Testament discourse features.

### License

The main text of Open Greek New Testament Project, OGNT in short, is released under the following license:

Creative Commons Licence  
Open Greek New Testament Project by Eliran Wong is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.  
Based on a work at https://github.com/eliranwong/OpenGNT.  
Online Readers are available at https://Marvel.Bible and https://OpenGNT.com.  
Permissions beyond the scope of this license may be available at https://marvel.bible/contact/contactform.php.

### Other Credits

**STEPBible-Data**  
"Tyndale House, Cambridge" [www.TyndaleHouse.com],  
and "STEP Bible" [www.STEPBible.org]  
and source at tyndale.github.io/STEPBible-Data/

**Bunning Heuristic Prototype Greek New Testament**  
Bunning, Alan, ed. (2017) Bunning Heuristic Prototype Greek New Testament. Preliminary Draft, December 29, 2017.  
https://github.com/greekcntr/BHP

**Berean Interlinear Bible**  
The Holy Bible, Berean Interlinear Bible, BIB  
Copyright ©2016, 2018 by Bible Hub  
Used by Permission. All Rights Reserved Worldwide.  
berean.bible - Berean Bible Homepage  
interlinearbible.com - Berean Interlinear Bible  
literalbible.com - Berean Literal Bible  
bereanbible.com - Berean Study Bible  
emphasizedbible.com - Berean Emphasized Bible

**The OpenText.org Syntactically Annotated Greek New Testament**  
Stanley E. Porter  
Matthew Brook O'Donnell  
Jeffrey T. Reed  
Source: GNT Annotation (version 1.0)  
This annotation was completed in 2006 and was made available for viewing on the OpenText.org website and also implemented in Logos bible search software.  
The annotation data has been migrated to a new, inline XML format by Christopher Land and the base text has been corrected and updated to the NA28 by Christopher Land and Ryder Wishart.

**Levinsohn's Greek New Testament Discourse Features**  
Stephen Levinsohn's complete discourse features markup of the Greek New Testament (UBS4/NA27). This data was originally developed in BART and follow principles Levinsohn documented in his volume of Discourse Features of New Testament Greek.  
Source: https://github.com/biblicalhumanities/levinsohn  
©2016 SIL International  
License  
Released by:  
Paul O'Rear  
Associate Coordinator  
International Translation  
SIL International

**NET Bible Copyright 2nd Edition (2017)**  
The NET Bible® verse text (no Notes) can be used by anyone and integrated into your non-commercial project or publication upon condition of proper Biblical Studies Press copyright and organizational acknowledgments ... (http://netbible.com/net-bible-copyright)  
Copyright and organizational acknowledgments:  
NET Bible® Copyright THE NET BIBLE®, New English Translation (NET) Scripture quoted by permission. Quotations designated (NET) are from the NET Bible® copyright ©1996-2016 by Biblical Studies Press, L.L.C. http://netbible.com All rights reserved. The names: THE NET BIBLE®, NEW ENGLISH TRANSLATION COPYRIGHT (c) 1996 BY BIBLICAL STUDIES PRESS, L.L.C. NET Bible® IS A REGISTERED TRADEMARK THE NET BIBLE® LOGO, SERVICE MARK COPYRIGHT (c) 1997 BY BIBLICAL STUDIES PRESS, L.L.C. ALL RIGHTS RESERVED SATELLITE IMAGERY COPYRIGHT (c) RØHR PRODUCTIONS LTD. AND CENTRE NATIONAL D'ÉTUDES SPATIALES PHOTOGRAPHS COPYRIGHT (c) RØHR PRODUCTIONS LTD.

**The CHINESE STANDARD BIBLE© Simplified and Traditional texts**  
The CHINESE STANDARD BIBLE© Simplified and Traditional texts and audio versions of the same, Copyright © 2005, 2008, 2011 by Global Bible Initiative are licensed under the Creative Commons Attribution-Non Commercial-No Derivatives 4.0 International License. To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/ or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA. Permissions beyond the scope of this license may be available and may be requested by contacting Permissions@GlobalBibleInitiative.org  
Learn More at https://www.globalbibleinitiative.org/  
Remarks: OpenGNT project confirmed with Ken Stephens, Director of Publishing and Donor Engagement of Global Bible Initiative, that aligning the text of CSB with a Greek text, without changing its wordings, is permitted.

**Chinese Equivalent Koine Grammar And Syntax**  
中文代表字原文新約聖經  
基礎文法 及 經文結構分析  
Copyright 2005~2018 by BRSI  
(聖經研讀學會 Bible Research Study Institute)  
Permission to all Christians for use, study or share.  
Source: http://www.ssjcbc.com/bibleresearch/bible_reaserch2.html

**Chinese translation by Stephen Ku and Eliran Wong**  
RMAC's description  
OpenText Linguistic Annotations

**Korean translation by Kevin Kim**  
RMAC's description

**Mounce Concise Greek-English Dictionary**  
Source: https://github.com/billmounce/dictionary  
Used with the following attribution:  
Mounce Concise Greek-English Dictionary  
Copyright 1993 All Rights Reserved  
www.teknia.com/greek-dictionary

**Spanish Literal Translation**  
La traducción al español fue mapeada y ajustada por E. Barrientos al texto del Proyecto OGNT del módulo para el Programa E-Sword del Proyecto GALEED 2017 "Una traducción literal palabra por palabra al español" auspiciado por Biblioteca Hispana, Última Revisión: 01 de febrero de 2017 que contiene una traducción literal del Texto Griego Maestro NA27.  
[The translation into Spanish was mapped and adjusted by E. Barrientos to the text of the OGNT Project of the module for the E-Sword Program of the GALEED Project 2017 "A literal translation word for word into Spanish" sponsored by Biblioteca Hispana, Last Revision: February 1 of 2017 that contains a literal translation of the Greek Text Master NA27.]

**Morphological Lexicon of the Greek New Testament**  
Source: https://github.com/morphgnt/morphological-lexicon  
It is used to process data for mapping purpose.

**The Copenhagen Alliance for Open Biblical Language Resources**  
http://copenhagen-alliance.org  
Advice about licensing.

Bible Repository: https://github.com/eliranwong/OpenGNT

## 1. Open Hebrew Bible License

**Applies to**: Biblical text, translations, and linguistic data from Open Hebrew Bible

The Open Hebrew Bible Project is a counterpart to the Open Greek New Testament Project. Fruits of both projects will be integrated together in a forthcoming site [Marvel.bible](https://Marvel.bible).

The project aims to:

- Align Biblia Hebraica Stuttgartensia (Amstelodamensis) [BHS A] with Westminster Leningrad Codex [WLC]
- Build bridges between 3 major open-licensed projects on Hebrew Bible:

1. [ETCBC (Hebrew text BHSA, linguistic annotations, morphology, etc.)](https://github.com/ETCBC/bhsa)
2. [OpenScriptures (Hebrew text WLC, Strong's numbers, morphology, etc.)](https://github.com/openscriptures/morphhb)
3. [Berean.bible (interlinear translation, Berean Study Bible, etc.)](https://berean.bible)

- Work out division of paragraphs and poetic lines in the text of BHS.
- Resulting data will be presented in an upcoming site [Marvel.bible](https://Marvel.bible)

**Remarks:** Resources from other GitHub repositories are drawn into this project for mapping purpose. Major repositories used include:

- [ETCBC-recycle](https://github.com/eliranwong/ETCBC-recycle)
- [BHS-morphology](https://github.com/eliranwong/BHS-morphology)
- [BHS-Strong-no](https://github.com/eliranwong/BHS-Strong-no)

### License

Major works in this repository:
- Mapping data between ETCBC's Biblia Hebraica Stuttgartensia (Amstelodamensis), OpenScriptures' Strong's numbers and Berean Study Bible
- A version of extended Strong's number dataset keyed to the text of BHS
- Data on aligning the text of BHS with bible translations: Berean Study Bible, King James Version, Chinese Union Version
- Clause segmentation of Berean Study Bible
- KJV versification of the text of BHS
- SBL-style-transliteration of the text of BHS
- Paragraph division of the text of BHS
- Poetic line segmentation of the text of BHS
- Design, coding and formatted materials of online reader, [Marvel.bible](https://marvel.bible)

All works listed above are released under the Creative Commons Attribution-NonCommercial 4.0 International License.

[Open Hebrew Bible Project](https://github.com/eliranwong/OpenHebrewBible) by [Eliran Wong](https://marvel.bible) is licensed under a [Creative Commons Attribution-NonCommercial 4.0 International License](http://creativecommons.org/licenses/by-nc/4.0/).  
Based on a work at [https://github.com/eliranwong/OpenHebrewBible](https://github.com/eliranwong/OpenHebrewBible).  
Permissions beyond the scope of this license may be available at [https://marvel.bible/contact/contactform.php](https://marvel.bible/contact/contactform.php).  
Online reading is available at: [https://Marvel.Bible](https://Marvel.Bible)

Please note that the use of the text of BHS here is under the same license of its original source at [https://github.com/ETCBC/bhsa#license](https://github.com/ETCBC/bhsa#license), which is strictly non-commercial.

### Credits

**ETCBC's Biblia Hebraica Stuttgartensia (Amstelodamensis) with Linguistic Annotations**  
Source of ETCBC data: [github.com/ETCBC/text-fabric-data/tree/master/hebrew/etcbc4c](https://github.com/ETCBC/text-fabric-data/tree/master/hebrew/etcbc4c)

This work is licensed under a Creative Commons Attribution-NonCommercial 4.0 International License. The text of the Hebrew bible is: Biblia Hebraica Stuttgartensia, edited by Karl Elliger and Wilhelm Rudolph, Fifth Revised Edition, edited by Adrian Schenker, © 1977 and 1997 Deutsche Bibelgesellschaft, Stuttgart.

(More information at: [shebanq.ancient-data.org/sources](https://shebanq.ancient-data.org/sources))

**Berean Study Bible**  
The Holy Bible, [Berean Study Bible](https://berean.bible), BSB  
Copyright ©2016, 2018 by Bible Hub  
Used by Permission. All Rights Reserved Worldwide.  
[https://berean.bible](https://berean.bible) - Berean Bible Homepage

**Open Scriptures Hebrew Bible**  
Part of Strong's numbers adapted in Open Hebrew Bible Project has its original in the following repository: [https://github.com/openscriptures/morphhb](https://github.com/openscriptures/morphhb)

**King James Version [KJV]**  
This is the 1769 King James Version of the Holy Bible (also known as the Authorized Version). Published in 1769; public domain.

**Lexham English Bible [LEB]**  
Scripture quotations from the [Lexham English Bible](http://lexhamenglishbible.com). Copyright 2012 [Logos Bible Software](https://www.logos.com). Lexham is a registered trademark of Logos Bible Software.

License of LEB: [http://lexhamenglishbible.com/license/](http://lexhamenglishbible.com/license/)

"You can give away the Lexham English Bible, but you can't sell it on its own. ..."

**Chinese Union Version [CUV]**  
Chinese Union Version is in public domain.

Source (GNU Free Documentation License Version 1.1): [https://bible.fhl.net/public/](https://bible.fhl.net/public/)

**NET Bible Copyright 2nd Edition (2017)**  
The NET Bible® verse text (no Notes) can be used by anyone and integrated into your non-commercial project or publication upon condition of proper Biblical Studies Press copyright and organizational acknowledgments ... ([http://netbible.com/net-bible-copyright](http://netbible.com/net-bible-copyright))  
Copyright and organizational acknowledgments:  
NET Bible® Copyright THE NET BIBLE®, New English Translation (NET) Scripture quoted by permission. Quotations designated (NET) are from the NET Bible® copyright ©1996-2016 by Biblical Studies Press, L.L.C. [http://netbible.com](http://netbible.com) All rights reserved. The names: THE NET BIBLE®, NEW ENGLISH TRANSLATION COPYRIGHT (c) 1996 BY BIBLICAL STUDIES PRESS, L.L.C. NET Bible® IS A REGISTERED TRADEMARK THE NET BIBLE® LOGO, SERVICE MARK COPYRIGHT (c) 1997 BY BIBLICAL STUDIES PRESS, L.L.C. ALL RIGHTS RESERVED SATELLITE IMAGERY COPYRIGHT (c) RØHR PRODUCTIONS LTD. AND CENTRE NATIONAL D'ÉTUDES SPATIALES PHOTOGRAPHS COPYRIGHT (c) RØHR PRODUCTIONS LTD.

Bible Repository: [https://github.com/eliranwong/OpenHebrewBible](https://github.com/eliranwong/OpenHebrewBible)

## 2. Study Bible Project License

**Applies to**: All project configuration files, YAML agent definitions, workflows, and project-specific code

The Study Bible project files are licensed under the Creative Commons Attribution-ShareAlike 4.0 International License (CC BY-SA 4.0). This ensures that customizations and extensions of the Study Bible framework are also shared openly.

## 3. AI Output Licensing

**Applies to**: All AI-generated outputs, analyses, interpretations, and responses from agents

All AI-generated outputs that incorporate or derive from biblical content are licensed under the Creative Commons Attribution-ShareAlike 4.0 International License (CC BY-SA 4.0). This is because such outputs are derivative works of the OGNT text.

## 4. LLM-MAR License

This project uses LLM-MAR (Multi Agent Reasoning), which is licensed under the MIT License.

MIT License

Copyright (c) 2024 LLM-MAR

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

For more information about LLM-MAR, visit: https://github.com/llm-mar/llm-mar

