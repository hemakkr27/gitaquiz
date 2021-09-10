import 'dart:io';

class Question {
  final int id, answer;

  dynamic qno, questionDate, ansopt;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.qno,
      required this.ansopt,
      required this.questionDate,
      required this.question,
      required this.answer,
      required this.options});
}
//question

const List sample_data = [
  {
    "id": 170,
    "qno": "2020120401",
    "question":
        "किस महापुरुष ने गीता के बारे में ये शब्द कहे हैं-जब संदेह मुझ पर हावी होता है, जब निराशा मेरे चेहरे को घूरती है, और मुझे क्षितिज पर आशा की एक किरण नहीं दिखती है, तो मैं भगवद-गीता की ओर मुड़ जाता हूं और स्वयं को सांत्वना देने के लिए एक श्लोक खोजता हूं; और मैं तुरंत भारी दुःख के बीच मुस्कुराना शुरू कर देता हूँ। जो लोग गीता का ध्यान करते हैं, वे हर दिन ताजा आनंद और नए अर्थ प्राप्त करेंगे। Which great man has said these words about Gita-When doubts haunt me, when disappointments stare me in the face, and I see not one ray of hope on the horizon, I turn to Bhagavad-gita and find a verse to comfort me; and I immediately begin to smile in the midst of overwhelming sorrow.",
    "questionDate": "12/4/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "Mahatma Gandhi",
      "Swami Vivekanand ji",
      "Swami Dayanand Saraswati",
      "Vinoba Bhave",
    ],
    // "actAns": "Mahatma Gandhi",
    "qtype": "T"
  },
  {
    "id": 171,
    "qno": "2020120402",
    "question":
        "महाभारत के सबक -  यदि हम कर्ण की बात करे तो कौन सा सबक ठीक लगता हैं । कर्ण की तरह ... Lessons of Mahabharata - If we talk about Karna, which lesson is right? Like Karna…",
    "questionDate": "12/4/2020 ",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "क्रोध में अनुचित कार्य न करो।",
      "अनुचित प्रतिज्ञाओं में न बंधो।",
      "दृष्ट का एहसान मत लो।",
      "अनियंत्रित मत हो जाओ।",
    ],
    // "actAns": "दृष्ट का एहसान मत लो।",
    "qtype": "T"
  },
  {
    "id": 172,
    "qno": "2020120403",
    "question":
        "कुरूक्षेत्र मे महाभारत युद्ध के पहले दिन श्री कृष्ण के अर्जुन को दिए उपदेश को गीता के नाम से क्यों जाना जाता है ? Why does the sermon given by Sri Krishna on the first day of Mahabharat yudh in Kurukshetra is known as \"Gita\" ?\r\n",
    "questionDate": "12/4/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "छंद में गा कर दिया गया ज्ञान Knowledge sung through couplets",
      "गीता नाम कह कर दिया ज्ञान  Knowledge being called Gita",
      "भागवत पुराण से लिया गया ज्ञान  Knowledge taken from Bhagwat Puraan",
      "किसी पुस्तक के नाम से  Name taken from a book",
    ],
    // "actAns": "छंद में गा कर दिया गया ज्ञान Knowledge sung through couplets",
    "qtype": "T"
  },
  {
    "id": 173,
    "qno": "2020120404",
    "question":
        "अश्वत्थ: सर्ववृक्षाणां देवर्षीणां च नारद: |\r\nगन्धर्वाणां चित्ररथ: सिद्धानां कपिलो मुनि: || 26||\r  \nश्लोक में अश्वत्थ: का क्या अर्थ है?      अश्वत्थ: in Verse: What does it mean?",
    "questionDate": "12/4/2020 ",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "आम का वृक्ष",
      "नीम का वृक्ष",
      "तुलसी का वृक्ष",
      "पीपल का वृक्ष",
    ],
    // "actAns": "पीपल का वृक्ष",
    "qtype": "T"
  },
  {
    "id": 174,
    "qno": "2020120405",
    "question":
        "भगवद्गीता के किस अध्याय में सबसे अधिक श्लोक है? Which chapter of the Bhagavad Gita contains the most verses?",
    "questionDate": "12/4/2020 ",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "अध्याय 8 - अक्षरब्रह्मयोग",
      "अध्याय 11-विश्वरूपदर्शनयोग",
      "अध्याय 18 - मोक्षसंन्यासयोग",
      "अध्याय 13-क्षेत्र-क्षेत्रज्ञविभागयोग",
    ],
    // "actAns": "अध्याय 18",
    "qtype": "T"
  },
  {
    "id": 175,
    "qno": "2020120406",
    "question":
        "गीता के एक श्लोक में बतलाया गया है कि गीता को पढ़ने वाले के पास कभी धन की कमी नहीं रहेगी, वह हर जगह विजयी होगा, वह असाधारण शक्ति का स्वामी होगा, वह उच्च नैतिकता वाला ईमानदार व्यक्ति होगा। ऐसा गीता में किस द्वारा किस श्लोक में कहा गया है ... A verse from the Gita states that the reader of the Gita will never have a shortage of wealth, he will be victorious everywhere, he will be a master of extraordinary power, he will be an honest man with high morality. In which verse is said by whom in the Gita ...",
    "questionDate": "12/4/2020 ",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "चौथा अध्याय श्लोक 7, कृष्ण उवाच - यदा यदा ही धर्मस्य ग्लानिर्भवति",
      "अठारहवां अध्याय श्लोक 78, संजय उवाच - यत्र योगेश्वरः कृष्णो यत्र पार्थो धनुर्धरः",
      "पहला अध्याय श्लोक 1, धृतराष्ट्र उवाच - धर्मक्षेत्रे कुरुक्षेत्रे समवेता युयुत्सवः",
      "अठारहवां अध्याय  श्लोक 73, अर्जुन उवाच - नष्टो मोहः स्मृतिर्लब्धा त्वप्रसादान्मयाच्युत ।",
    ],
    // "actAns": "1",
    "qtype": "T"
  },
  {
    "id": 176,
    "qno": "2020120407",
    "question":
        "गीता के एक श्लोक का अर्थ है: कर्म पर ही तुम्हारा अधिकार है, लेकिन कर्म के फलों में कभी नहीं... इसलिए कर्म को फल के लिए मत करो और न ही काम करने में तुम्हारी आसक्ति हो। हम किस श्लोक की बात कर रहे है ... A verse from the Gita means: You have authority over karma, but never in the fruits of karma ... Therefore don't do karma for fruits nor do you have attachment to work. Which verse are we talking about?",
    "questionDate": "12/4/2020 ",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "द्वितीय अध्याय, श्लोक 7",
      "द्वितीय अध्याय, श्लोक 47",
      "द्वितीय अध्याय, श्लोक 27",
      "द्वितीय अध्याय, श्लोक 17",
    ],
    // "actAns": "द्वितीय अध्याय, श्लोक 47",
    "qtype": "T"
  },
  {
    "id": 177,
    "qno": "2020120408",
    "question":
        "भगवद्गीता की समाप्ति किस द्वारा बोले गए श्लोक से हुई व उस द्वारा अन्त में कुल कितने श्लोक बोले गये? Whom did the Bhagavad Gita end with the verses spoken by him, and how many verses were spoken by him in the end?",
    "questionDate": "12/4/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 18 -संजय कुल 5 श्लोक, 74 से 78",
      "अध्याय 18 -भगवान श्रीकृष्ण कुल 1 श्लोक, 78",
      "अध्याय 18 -अर्जुन कुल 3 श्लोक, 76 से 78",
      "अध्याय 18 -संजय कुल 3 श्लोक, 76 से 78",
    ],
    // "actAns": "अध्याय 18 -संजय कुल 5 श्लोक, 74 से 78",
    "qtype": "T"
  },
  {
    "id": 178,
    "qno": "2020120409",
    "question":
        "भगवद्गीता का कोई ऐसा अध्याय, जिसमें भगवान कृष्ण द्वारा कोई श्लोक नहीं बोला गया हो? Any chapter of Bhagavad Gita in which no verse has been spoken by Lord Krishna?",
    "questionDate": "12/4/2020 ",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "अध्याय 18 - मोक्षसंन्यासयोग",
      "अध्याय 16 - दैवासुरसम्पद्विभागयोग",
      "अध्याय 1 - अर्जुनविषादयोग",
      "नही। सभी अध्यायों में भगवान श्रीकृष्ण द्वारा श्लोक बोले गए हैं।",
    ],
    // "actAns": "अध्याय 1 - अर्जुनविषादयोग",
    "qtype": "T"
  },
  {
    "id": 179,
    "qno": "2020120410",
    "question":
        "मृत्यु का भय दूर करने के लिए: \r\n\r\nयदि इस कोरोना काल में आप इस महामारी को लेकर बहुत ज्यादा चिंतित हैं या फिर कहें आपको किसी कारणवश आपको अपनी मृत्यु को लेकर डर बना रहता है तो आपको श्रीमद्भागवत गीता के किस अध्याय का पाठ पूरी श्रद्धा और विश्वास के साथ करना चाहिए? To remove the fear of death:\r\n\r\nIf during this Corona period you are very much worried about this epidemic or if you are afraid of your death due to some reason, then you should read which chapter of Shrimad Bhagwat Geeta with full devotion and faith?",
    "questionDate": "12/4/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 8 - अक्षरब्रह्मयोग",
      "अध्याय 1 - अर्जुनविषादयोग",
      "अध्याय 18 - मोक्षसंन्यासयोग",
      "अध्याय 16 - दैवासुरसम्पद्विभागयोग",
    ],
    // "actAns": "अध्याय 8 - अक्षरब्रह्मयोग",
    "qtype": "T"
  },
  {
    "id": 203,
    "qno": "2020120501",
    "question":
        "भगवद्गीता में कितने श्लोक हैं? How many verses are there in the Bhagawadgita?",
    "questionDate": "12/5/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "700 श्लोक",
      "843 श्लोक",
      "320 श्लोक",
      "1008 श्लोक",
    ],
    // "actAns": "700 श्लोक",
    "qtype": "T"
  },
  {
    "id": 181,
    "qno": "2020120502",
    "question":
        "\r\nये शब्द किसके द्वारा कहे गए हैं \"जब मैं भगवद्गीता पढ़ता हूं और इस बात को प्रतिबिंबित करता हूं कि भगवान ने इस ब्रह्मांड को कैसे बनाया है तो यह सब कुछ अति सुंदर लगता है।\"These words are said by whom “When I read the Bhagavad-Gita and reflect about how God created this universe everything else seems so superfluous.”",
    "questionDate": "12/5/2020 ",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "Henry David Thoreau",
      "Albert Einstein",
      "Rudolph Steiner",
      "Ralph Waldo Emerson",
    ],
    // "actAns": "Albert Einstein",
    "qtype": "T"
  },
  {
    "id": 189,
    "qno": "2020120503",
    "question":
        "महाभारत के सबक -  यदि हम पाण्डु की बात करे तो कौन सा सबक ठीक लगता है। पाण्डु की तरह ...  Lessons of Mahabharata - If we talk about Pandu, which lesson is right? Like Pandu ...",
    "questionDate": "12/5/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "काम के वशीभूत मत बनो।",
      "अनुचित प्रयोग मत करो।",
      "क्रोध में अनुचित कार्य न करो।",
      "अनियंत्रित मत हो जाओ।",
    ],
    // "actAns": "काम के वशीभूत मत बनो।",
    "qtype": "T"
  },
  {
    "id": 200,
    "qno": "2020120504",
    "question":
        "कामक्रोधवियुक्तानां यतीनां यतचेतसाम् |\r\nअभितो ब्रह्मनिर्वाणं वर्तते विदितात्मनाम् || 26||  श्लोक में यतीनां का क्या अर्थ है?      यतीनां in Verse: What does it mean?",
    "questionDate": "12/5/2020 ",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "मूर्ख पुरुषों के लिए",
      "अज्ञानी पुरुषों के लिए",
      "ज्ञानी पुरुषों के लिए",
      "मध्यम पुरुषों के लिए",
    ],
    // "actAns": "ज्ञानी पुरुषों के लिए",
    "qtype": "T"
  },
  {
    "id": 209,
    "qno": "2020120505",
    "question":
        "जन्मने वाले की मृत्यु निश्चित है और मरने वाले का जन्म निश्चित है इसलिए जो अटल है, अपरिहार्य है उसके विषय में तुमको शोक नहीं करना चाहिये। यह गीता के किस श्लोक से उद्धृत है? The death of the born is definite and the birth of the deceased is certain, so you should not grieve about what is unalterable, unavoidable. From which verse of the Gita is it quoted?",
    "questionDate": "12/5/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 2 श्लोक 27 - जातस्य हि ध्रुवो मृत्युर्ध्रुवं जन्म मृतस्य च।",
      "अध्याय 2 श्लोक 43 - कामात्मान: स्वर्गपरा जन्मकर्मफलप्रदाम् |",
      "अध्याय 7 श्लोक 19 - बहूनां जन्मनामन्ते ज्ञानवान्मां प्रपद्यते |",
      "अध्याय 7 श्लोक 23 - अन्तवत्तु फलं तेषां तद्भवत्यल्पमेधसाम्।",
    ],
    // "actAns":
    // "अध्याय 2 श्लोक 27 - जातस्य हि ध्रुवो मृत्युर्ध्रुवं जन्म मृतस्य च।",
    "qtype": "T"
  },
  {
    "id": 207,
    "qno": "2020120506",
    "question":
        " भगवद्गीता में भगवान कृष्ण द्वारा सबसे पहले कौन से श्लोक बोले गए हैं ... Which verses are first spoken by Lord Krishna in the Bhagavad Gita…",
    "questionDate": "12/5/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 2 - श्लोक 2,3",
      "अध्याय 2 - श्लोक 3,4",
      "अध्याय 2 - श्लोक 4,5",
      "अध्याय 2 - श्लोक 1",
    ],
    // "actAns": "अध्याय 2 - श्लोक 2,3",
    "qtype": "T"
  },
  {
    "id": 208,
    "qno": "2020120507",
    "question":
        "भगवद्गीता में 20-20 श्लोक (सबसे कम) दो अध्यायों में बोले गए, वो कौन से हैं ...\r\nIn the Bhagavad Gita, 20-20 verses (the lowest) were spoken in two chapters, which are those ...",
    "questionDate": "12/5/2020 ",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "अध्याय 12 व 17",
      "अध्याय 12 व 15",
      "अध्याय 12 व 13",
      "अध्याय 11 व 15",
    ],
    // "actAns": "अध्याय 12 व 15",
    "qtype": "T"
  },
  {
    "id": 204,
    "qno": "2020120508",
    "question":
        "भगवद्गीता को ... के रूप में भी जाना जाता है। Bhagawadgita is also known as ....",
    "questionDate": "12/5/2020 ",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "महाभारत",
      "विष्णुपुराण",
      "गीतोपनिषद्",
      "जयसंहिता",
    ],
    // "actAns": "गीतोपनिषद्",
    "qtype": "T"
  },
  {
    "id": 205,
    "qno": "2020120509",
    "question":
        "अर्जुन बोले- हे कृष्ण! यहाँ मैं युद्ध के अभिलाषी स्वजनों को ही देखता हूँ। मेरे अंग शिथिल हुए हो रहे हैं और मुख सूख रहा है और मेरा शरीर काँप रहा है और रोएं खड़े हो रहे है॥ ऐसा गीता में किस श्लोक में कहा गया है  A verse from the Gita states that Arjun said - O Krishna! Here, I see only those who are desirous of war. My limbs are loosening and the mouth is drying up and my body is shivering in my body and weeping.",
    "questionDate": "12/5/2020 ",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "अध्याय 1 - श्लोक 26",
      "अध्याय 1 - श्लोक 23",
      "अध्याय 1 - श्लोक 18",
      "अध्याय 1 - श्लोक 29",
    ],
    // "actAns": "अध्याय 1 - श्लोक 29",
    "qtype": "T"
  },
  {
    "id": 202,
    "qno": "2020120510",
    "question":
        "कठिन समय से मुक्ति पाने के लिए: \r\nकोरोना काल में हर कोई आज यही पूछ रहा है कि आखिर कब आएंगे अच्छे दिन. यदि आप भी अपने कठिन समय को लेकर तन, मन और धन से पीड़ित हैं तो आपको श्रीमद्भागवत गीता के किस अध्याय का पाठ करना चाहिए. निश्चित रूप से गीता का यह पाठ आपको तमाम संकटों से उबार कर आपको ​सफलता के शिखर पर पहुंचाने में वरदान साबित होगा. To get rid of hard times\r\nIn the Corona era, today everyone is asking that when will the good days come. If you too are suffering from body, mind and money due to your difficult times, then you should read Shrimad Bhagwat Geeta…. Certainly, this lesson of the Gita will prove to be a boon for you to overcome all the problems and to take you to the peak of success.",
    "questionDate": "12/5/2020 ",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "अध्याय 1",
      "अध्याय 2",
      "अध्याय 6",
      "अध्याय 18",
    ],
    // "actAns": "अध्याय 6",
    "qtype": "T"
  },
  {
    "id": 230,
    "qno": "2020120601",
    "question":
        "भीष्मपितामह के शंख का क्या नाम था .... What was the name of Bhishma Pitamah's conch ....",
    "questionDate": "12/6/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "गंगनाभ",
      "पांचजन्य",
      "देवदत्त",
      "सुघोष",
    ],
    // "actAns": "गंगनाभ",
    "qtype": "T"
  },
  {
    "id": 182,
    "qno": "2020120602",
    "question":
        "\r\nये शब्द किसके द्वारा कहे गए हैं \"प्रातः काल उठकर में अपने ह्रदय, मन एवं विवेक को गीता रूपी पवित्र गंगाजल से स्न्नान करवाता हूँ।\"   These words are said by whom “In the morning I bathe my intellect in the stupendous and cosmogonal philosophy of the Bhagavad-gita, in comparison with which our modern world and its literature seem puny and trivial.”",
    "questionDate": "12/6/2020 ",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "Aldous Huxley",
      "Ralph Waldo Emerson",
      "Rudolph Steiner",
      "Henry David Thoreau",
    ],
    // "actAns": "Henry David Thoreau",
    "qtype": "T"
  },
  {
    "id": 188,
    "qno": "2020120603",
    "question":
        "महाभारत के सबक -  यदि हम दुर्योधन की बात करे तो कौन सा सबक ठीक लगता हैं । दुर्योधन की तरह ... Lessons of Mahabharata - If we talk about Duryodhana, which lesson is right? Like Duryodhana…",
    "questionDate": "12/6/2020 ",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "नारी का अपमान मत करो।",
      "अनधिकार हठ मत पालो।",
      "क्रोध में अनुचित कार्य न करो।",
      "अनियंत्रित मत हो जाओ।",
    ],
    // "actAns": "अनधिकार हठ मत पालो।",
    "qtype": "T"
  },
  {
    "id": 201,
    "qno": "2020120604",
    "question":
        "सञ्जय उवाच ।\r\nदृष्ट्वा तु पाण्डवानीकं व्यूढं दुर्योधनस्तदा ।\r\nआचार्यमुपसङ्गम्य राजा वचनमब्रवीत् ।। 2।।  श्लोक में 'दृष्ट्वा' का क्या अर्थ है?     'दृष्ट्वा' in Verse: What does it mean?",
    "questionDate": "12/6/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "देखकर",
      "लिखकर",
      "सुनकर",
      "छूकर ",
    ],
    // "actAns": "देखकर",
    "qtype": "T"
  },
  {
    "id": 232,
    "qno": "2020120605",
    "question":
        "अर्जुन के आग्रह पर भगवान श्रीकृष्ण द्वारा विराट रूप दिखाए जाने का वर्णन किस अध्याय में मिलता हैं.... In which chapter is the description of the great form shown by Lord Krishna on the request of Arjuna….",
    "questionDate": "12/6/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 11-विश्वरूप दर्शन योग",
      "अध्याय 8 - अक्षरब्रह्मयोग",
      "अध्याय 18 - मोक्षसंन्यासयोग",
      "अध्याय 16 - दैवासुरसम्पद्विभागयोग",
    ],
    // "actAns": "अध्याय 11-विश्वरूप दर्शन योग",
    "qtype": "T"
  },
  {
    "id": 233,
    "qno": "2020120606",
    "question":
        "जैसा कि युद्ध के लिए शंखनाद सबसे पहले कौरवों की ओर से भीष्मपितामह द्वारा किया गया था। शंखनाद बारे पहले अध्याय के किस श्लोक में बतलाया गया है ... As for the war, the Shankhanad was first done by Bhishma Pitamah on behalf of the Kauravas. In which verse of the first chapter about Shankhanad is told ...",
    "questionDate": "12/6/2020 ",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "प्रथम अध्याय श्लोक 1",
      "प्रथम अध्याय श्लोक 12",
      "प्रथम अध्याय श्लोक 18",
      "प्रथम अध्याय श्लोक 15",
    ],
    // "actAns": "प्रथम अध्याय श्लोक 12",
    "qtype": "T"
  },
  {
    "id": 234,
    "qno": "2020120607",
    "question":
        "भगवद्गीता अनुसार आत्मा को कैसे नष्ट किया जा सकता है? According to the Bhagavad Gita, how can the soul be destroyed?",
    "questionDate": "12/6/2020 ",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "परमाणु बम से",
      "नर्क में भेजकर",
      "आत्मा को नष्ट नहीं किया जा सकता है",
      "पानी में डुबोकर",
    ],
    // "actAns": "आत्मा को नष्ट नहीं किया जा सकता है",
    "qtype": "T"
  },
  {
    "id": 231,
    "qno": "2020120608",
    "question":
        "महाभारत युद्ध में अर्जुन के सारथी का क्या नाम था .. What was the name of Arjuna's charioteer in the Mahabharata war ..",
    "questionDate": "12/6/2020 ",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "सात्यकि",
      "संजय",
      "दारुक",
      "भगवान श्रीकृष्ण",
    ],
    // "actAns": "भगवान श्रीकृष्ण",
    "qtype": "T"
  },
  {
    "id": 206,
    "qno": "2020120609",
    "question":
        "गीता के एक श्लोक का अर्थ है: यदि तुम (अर्जुन) युद्ध में वीरगति को प्राप्त होते हो तो तुम्हें स्वर्ग मिलेगा और यदि विजयी होते हो तो धरती के सुख को भोगोगे... इसलिए उठो, हे कौन्तेय (अर्जुन), और निश्चय करके युद्ध करो। (यहां भगवान श्रीकृष्ण ने वर्तमान कर्म के परिणाम की चर्चा की है, तात्पयज़् यह कि वर्तमान कर्म से श्रेयस्कर और कुछ नहीं है।) हम किस श्लोक की बात कर रहे है ... If you are killed in the battle, you will reach heaven; on victory, you will enjoy the kingdom on earth. So O son of Kunti! arise with determination to fight. Which verse are we talking about?",
    "questionDate": "12/6/2020 ",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "द्वितीय अध्याय, श्लोक 17",
      "द्वितीय अध्याय, श्लोक 37",
      "द्वितीय अध्याय, श्लोक 3",
      "द्वितीय अध्याय, श्लोक 5",
    ],
    // "actAns": "द्वितीय अध्याय, श्लोक 37",
    "qtype": "T"
  },
  {
    "id": 228,
    "qno": "2020120610",
    "question":
        "आत्मबल और जिंदगी में लय लाने के लिए:\r\nइस कोरोना काल के लॉकडाउन पीरियड में यदि आपकी नौकरी चली गई है या फिर आप काफी समय से बेरोजगार चल रहे हैं और आपको भय सता रहा है कि आप एक बार फिर अपनी पारी की शुरुआत कैसे करेंगे। ​यदि आपको लगता है कि आप अपनी क्षमता के अनुसार अपने कार्य को अंजाम नहीं दे पा रहे हैं तो आपको गीता के किस अध्याय का पाठ करना चाहिए. To bring confidence and rhythm in life:\r\nIf your job has gone away or you have been unemployed for a long time during this corona period lockdown period and you are afraid of how you will start your innings again. If you feel that you are unable to carry out your work to the best of your ability, then which chapter of the Gita should you recite.",
    "questionDate": "12/6/2020 ",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "अध्याय 11 - विश्वरूप दर्शन योग",
      "अध्याय 9 - राजविद्याराजगुह्ययोग ",
      "अध्याय 8 - अक्षरब्रह्मयोग",
      "अध्याय 18 - मोक्षसंन्यासयोग",
    ],
    // "actAns": "अध्याय 9 - राजविद्याराजगुह्ययोग ",
    "qtype": "T"
  },
  {
    "id": 255,
    "qno": "2020120701",
    "question": "गीता में 'मैं' शब्द का प्रयोग कितनी बार हुआ?\r\n",
    "questionDate": "12/7/2020 ",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "100 बार",
      "109 बार",
      "115 बार",
      "एक बार भी नही",
    ],
    // "actAns": "109 बार",
    "qtype": "T"
  },
  {
    "id": 236,
    "qno": "2020120702",
    "question":
        "ये शब्द किसके द्वारा कहे गए हैं  \"मेरे जीवन का ऐसा कोई दिन नही गया जिस दिन मैंने गीता के किसी श्लोक का मनन किया नहीं\"। 'गीता रहस्य' नामक पुस्तक भी उन्हीं द्वारा लिखी गई थी। These words have been said by whom \"There has been no day in my life that day I have not contemplated any verse of the Gita\". The book 'Geeta Rahasya' was also written by him.",
    "questionDate": "12/7/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "लोकमान्य गंगाधर तिलक",
      "स्वामीविवेकानंद जी",
      "लाला लाजपत राय",
      "सुभाषचंद्र बोस",
    ],
    // "actAns": "लोकमान्य गंगाधर तिलक",
    "qtype": "T"
  },
  {
    "id": 191,
    "qno": "2020120703",
    "question":
        "महाभारत के सबक -  यदि हम द्रोपदी की बात करे तो कौन सा सबक ठीक लगता हैं । द्रोपदी की तरह ... Lessons of Mahabharata - If we talk about Draupadi, which lesson is right? Like Draupadi…",
    "questionDate": "12/7/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अनुचित जगह मत हँसो।",
      "अनुचित प्रतिज्ञाओं में न बंधो।",
      "क्रोध में अनुचित कार्य न करो।",
      "अनियंत्रित मत हो जाओ।",
    ],
    // "actAns": "अनुचित जगह मत हँसो।",
    "qtype": "T"
  },
  {
    "id": 260,
    "qno": "2020120704",
    "question":
        "श्रीमद्भगवद्‌गीता  के एक श्लोक का अर्थ है: \"जैसे मनुष्य पुराने वस्त्रों को त्यागकर दूसरे नए वस्त्रों को धारण करता है, वैसे ही जीवात्मा पुराने शरीरों को त्यागकर दूसरे नए शरीरों को प्राप्त होता है॥\"हम किस श्लोक की बात कर रहे है",
    "questionDate": "12/7/2020 ",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "वेदाविनाशिनं नित्यं य एनमजमव्ययम्‌। कथं स पुरुषः पार्थ कं घातयति हन्ति कम्‌॥२-२१॥",
      "न जायते म्रियते वा कदाचि न्नायं भूत्वा भविता वा न भूयः। अजो नित्यः शाश्वतोऽयं पुराणो न हन्यते हन्यमाने शरीरे॥२-२०॥",
      "वासांसि जीर्णानि यथा विहाय नवानि गृह्णाति नरोऽपराणि। तथा शरीराणि विहाय जीर्णा न्यन्यानि संयाति नवानि देही॥२-२२॥",
      "य एनं वेत्ति हन्तारं यश्चैनं मन्यते हतम्‌। उभौ तौ न विजानीतो नायं हन्ति न हन्यते॥२-१९॥",
    ],
    // "actAns":
    //  "वासांसि जीर्णानि यथा विहाय नवानि गृह्णाति नरोऽपराणि। तथा शरीराणि विहाय जीर्णा न्यन्यानि संयाति नवानि देही॥२-२२॥",
    "qtype": "T"
  },
  {
    "id": 252,
    "qno": "2020120705",
    "question":
        "श्रीमद्भगवद्‌गीता के एक श्लोक का अर्थ है: मैं दमन करने वालों का दंड अर्थात्‌ दमन करने की शक्ति हूँ, जीतने की इच्छावालों की नीति हूँ, गुप्त रखने योग्य भावों का रक्षक मौन हूँ और ज्ञानवानों का तत्त्वज्ञान मैं ही हूँ॥ Of punishers I am the scepter, of those who seek to conquer I am the polity and of things secret I am also silence, the knowledge of knowers am I.",
    "questionDate": "12/7/2020 ",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "यच्चापि सर्वभूतानां बीजं तदहमर्जुन ।\r\nन तदस्ति विना यत्स्यान् मया भूतं चराचरम् ॥१०-३९॥",
      "नान्तोऽस्ति मम दिव्यानां विभूतीनां परन्तप ।\r\nएष तूद्देशतः प्रोक्तो विभूते र्विस्तरो मया ॥१०-४०॥",
      "यद्यद्विभूतिमत्सत्त्वं श्रीमदूर्जितमेव वा ।\r\nतत्तदेवावगच्छ त्वं मम तेजोंऽशसंभवम् ॥१०-४१॥",
      "दण्डो दमयतामस्मि नीतिरस्मि जिगीषताम् ।\r\nमौनं चैवास्मि गुह्यानां ज्ञानं ज्ञानवतामहम् ॥१०-३८॥",
    ],
    // "actAns":
    //    "दण्डो दमयतामस्मि नीतिरस्मि जिगीषताम् ।\r\nमौनं चैवास्मि गुह्यानां ज्ञानं ज्ञानवतामहम् ॥१०-३८॥",
    "qtype": "T"
  },
  {
    "id": 251,
    "qno": "2020120706",
    "question":
        "महाभारत युद्ध के पहले दिन गीता उपदेश मार्गशीर्ष महीने की शुक्ल एकादशी को दिया गया था। श्री कृष्ण ने गीता के किस अध्याय में इसी मार्गशीर्ष महीने को अपने से सम्बंधित बताया है।\r\nOn the first day of the Mahabharata battle, Gita Updesh was delivered in the month of Margshirsh on Shukal Ekadashi. In which chapter of Gita,  Shri Krishna related this month to Himself. ?",
    "questionDate": "12/7/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "बृहत्साम तथा साम्नां गायत्री छन्दसामहम् । मासानां मार्गशीर्षोऽह मृतूनां कुसुमाकरः ॥१०-३५॥",
      "द्यूतं छलयतामस्मि तेजस्तेजस्विनामहम् । जयोऽस्मि व्यवसायोऽस्मि सत्त्वं सत्त्ववतामहम् ॥१०-३६॥",
      "वृष्णीनां वासुदेवोऽस्मि पाण्डवानां धनंजयः । मुनीनामप्यहं व्यासः कवीनामुशना कविः ॥१०-३७॥",
      "दण्डो दमयतामस्मि नीतिरस्मि जिगीषताम् । मौनं चैवास्मि गुह्यानां ज्ञानं ज्ञानवतामहम् ॥१०-३८॥",
    ],
    // "actAns":
    //   "बृहत्साम तथा साम्नां गायत्री छन्दसामहम् । मासानां मार्गशीर्षोऽह मृतूनां कुसुमाकरः ॥१०-३५॥",
    "qtype": "T"
  },
  {
    "id": 259,
    "qno": "2020120707",
    "question":
        "1975 में रिलीज हुई एक फ़िल्म का एक गाना बहुत मशहूर हुआ जो गीता के श्लोक \r\nकर्मण्येवाधिकारस्ते मा फलेषु कदाचन । ... से आरम्भ हुआ व जिसके मुख्य बोल जैसे कर्म करेगा वैसे फल देगा भगवान है। हम किस फ़िल्म की बात कर रहे है ?",
    "questionDate": "12/7/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "सन्यासी",
      "गोपी",
      "तीसरी कसम",
      "चरस",
    ],
    // "actAns": "सन्यासी",
    "qtype": "T"
  },
  {
    "id": 241,
    "qno": "2020120708",
    "question":
        "श्रीमद्भगवद्‌गीता में कुल 700 श्लोकों में श्रीकृष्ण के अलावा कितने लोगों के संवाद हैं?     How many more people have conversed in  700 shalokas of Gita apart from sri krishna?",
    "questionDate": "12/7/2020 ",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "अर्जुन, संजय",
      "अर्जुन",
      "धृतराष्ट्र, अर्जुन, संजय",
      "धृतराष्ट्र, अर्जुन, संजय, हनुमान जी",
    ],
    // "actAns": "धृतराष्ट्र, अर्जुन, संजय",
    "qtype": "T"
  },
  {
    "id": 210,
    "qno": "2020120709",
    "question":
        "श्रीमद्भगवद्‌गीता के एक श्लोक का अर्थ है: जैसे सब ओर से परिपूर्ण, अचल प्रतिष्ठा वाले समुद्र में (अनेक नदियों के जल) उसमें क्षोभ न उत्पन्न करते हुए समा जाते हैं, वैसे ही जिस पुरुष में सब भोग बिना किसी प्रकार का विकार उत्पन्न किए समा जाते हैं, वही पुरुष शान्ति को प्राप्त होता है, भोगों को चाहने वाला नहीं॥हम किस श्लोक की बात कर रहे है ...A man who remains unperturbed by various desires like a steady and vast ocean which stays unaffected of entering waters from all sides; attains eternal peace. And not the man who desires sense-objects. Which verse are we talking about?",
    "questionDate": "12/7/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "आपूर्यमाणमचलप्रतिष्ठं समुद्रमापः प्रविशन्ति यद्वत्‌।\r\nतद्वत्कामा यं प्रविशन्ति सर्वे स शान्तिमाप्नोति न कामकामी॥२-७०॥",
      "विहाय कामान्यः सर्वान्पुमांश्चरति निःस्पृहः।\r\nनिर्ममो निरहंकारः स शान्तिमधिगच्छति॥२-७१॥",
      "या निशा सर्वभूतानां तस्यां जागर्ति संयमी।\r\nयस्यां जाग्रति भूतानि सा निशा पश्यतो मुनेः॥२-६९॥",
      "तस्माद्यस्य महाबाहो निगृहीतानि सर्वशः।\r\nइन्द्रियाणीन्द्रियार्थेभ्यस् तस्य प्रज्ञा प्रतिष्ठिता॥२-६८॥",
    ],
    // "actAns":
    //  "आपूर्यमाणमचलप्रतिष्ठं समुद्रमापः प्रविशन्ति यद्वत्‌।\r\nतद्वत्कामा यं प्रविशन्ति सर्वे स शान्तिमाप्नोति न कामकामी॥२-७०॥",
    "qtype": "T"
  },
  {
    "id": 229,
    "qno": "2020120710",
    "question":
        "लाभ प्राप्त करने के लिए\r\n: यदि आपको लगता है कि तमाम प्रयासों के बावजूद आपका आपके कार्य के अनुरूप लाभ नहीं मिल रहा है तो आपको गीता के चौदहवें अध्याय का विशेष रूप से पाठ करना चाहिए. इस उपाय से आपको आपके कार्य के अनुरूप ही नहीं बल्कि उससे कहीं ज्यादा लाभ मिलने की संभावनाएं बनने लगेंगी. इसी तरह प्रारब्ध में संचित अच्छे कर्मों का लाभ प्राप्त करने के लिए गीता के किस अध्याय का पाठ करना चाहिए. ",
    "questionDate": "12/7/2020 ",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "अध्याय 2",
      "अध्याय 9",
      "अध्याय 15",
      "अध्याय 18",
    ],
    // "actAns": "अध्याय 15",
    "qtype": "T"
  },
  {
    "id": 243,
    "qno": "2020120801",
    "question":
        "गीता में कितने श्लोक भगवान श्रीकृष्ण ने कहे हैं?            How many shaloks are there in Gita which are said by SriKrishna?",
    "questionDate": "12/8/2020 ",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "500",
      "574",
      "600",
      "590",
    ],
    // "actAns": "574",
    "qtype": "T"
  },
  {
    "id": 184,
    "qno": "2020120802",
    "question":
        "ये शब्द किसके द्वारा कहे गए हैं \"भगवद्-गीता का ईश्वर की भक्ति द्वारा मानव जाति की भावना पर गहरा प्रभाव है जो कि कार्यों द्वारा प्रकट होता है\"। These words are said by whom “The Bhagavad-Gita has a profound influence on the spirit of mankind by its devotion to God which is manifested by actions.”\r\n\r\n",
    "questionDate": "12/8/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "Dr. Albert Schweitzer",
      "Herman Hesse",
      "Henry David Thoreau",
      "Carl Jung",
    ],
    // "actAns": "Dr. Albert Schweitzer",
    "qtype": "T"
  },
  {
    "id": 193,
    "qno": "2020120803",
    "question":
        "महाभारत के सबक -  यदि हम परीक्षित की बात करे तो कौन सा सबक ठीक लगता है। परीक्षित की तरह ... Lessons of Mahabharata - If we talk about Parikshit, which lesson is right? ",
    "questionDate": "12/8/2020 ",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "हतोस्ताहित करने वाले की संगत में मत रहे।",
      "अर्धसत्य पर विश्वास मत करें।",
      "क्रोध में अनुचित कार्य न करो।",
      "अनियंत्रित मत हो जाओ।",
    ],
    // "actAns": "क्रोध में अनुचित कार्य न करो।",
    "qtype": "T"
  },
  {
    "id": 265,
    "qno": "2020120804",
    "question":
        "महाभारत में 18 का अंक एक रहस्य हैं या मात्र संयोग, जो भी हो आज का हमारा प्रश्न उन्ही घटनाओं बारे हैं जिनका संबंध 18 से हैं। आपको बतलाना हैं निम्न में से कौन सा विकल्प ठीक हैं ...",
    "questionDate": "12/8/2020 ",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "श्रीमद्भागवत गीता के कुल अध्याय 18, महाभारत रचना के कुल पर्व 18, कुल पुराण 18",
      "18 अक्षौहिणी सेना, कुल 18 दिन युद्ध चला, कुल 18 योद्धा जीवित बचे ( 3 कोरवों के 15 पांडवों के) महाभारत युद्ध के 18 वर्ष बाद धृतराष्ट्र, गांधारी व कुंती की मृत्यु",
      "कुल 18 ही लोग प्रमुख सूत्रधार थे अर्जुन, भीम, कृष्ण, युधिष्टर, दुर्योधन, धृतराष्ट्र, भीष्म, द्रोणाचार्य, कृपयाचार्य, कर्ण, शकुनि, दुशासन, विदुर, द्रोपदी, नकुल, सहदेव, अश्वथामा, कृतवर्मा",
      "कथाओं में प्रचलित प्रसंग अनुसार सभी ठीक हैं।",
    ],
    // "actAns": "कथाओं में प्रचलित प्रसंग अनुसार सभी ठीक हैं।",
    "qtype": "T"
  },
  {
    "id": 261,
    "qno": "2020120805",
    "question":
        "गीता के किस अध्याय में भगवान श्रीकृष्ण अर्जुन को ये बतलाते है:- पूर्व काल में यह योग मैंने विवस्वान को बताया था। विवस्वान ने मनु से कहा। मनु ने इक्ष्वाकु को बताया। यूं पीढ़ी दर पीढ़ी परम्परा से प्राप्त इस ज्ञान को राजर्षियों ने जाना, पर कालान्तर में यह योग लुप्त हो गया। और अब उस पुराने योग को ही तुम्हें पुन: बता रहा हूं। परंपरा से यह ज्ञान सबसे पहले विवस्वान् (सूर्य) को मिला था। जिसके पुत्र वैवस्वत मनु थे।\r\n",
    "questionDate": "12/8/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 4 - ज्ञानकर्मसंन्यासयोग",
      "अध्याय 8 - अक्षरब्रह्मयोग",
      "अध्याय 11-विश्वरूपदर्शनयोग",
      "अध्याय 18 - मोक्षसंन्यासयोग",
    ],
    // "actAns": "अध्याय 4 - ज्ञानकर्मसंन्यासयोग",
    "qtype": "T"
  },
  {
    "id": 264,
    "qno": "2020120806",
    "question":
        "भोजन का महत्व: इस कोरोना काल में स्वास्थ्य विभाग द्वारा समय समय पर इम्युनिटी सिस्टम को बेहतर बनाने रखने हेतु हमारे खानपान पर विशेष ध्यान रखने की हिदायतें जारी की जाती रही हैं। गीता के 17वे अध्याय में भी मनुष्य के स्वास्थ्य व विचारों पर खानपान के पड़ने वाले प्रभाव बारे विस्तार से बतलाया गया हैं। गीता अनुसार मनुष्य को किस प्रकार का खाना, खाना चाहिए।",
    "questionDate": "12/8/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "सात्विक भोजन",
      "राजसिक भोजन",
      "ता‍मसिक भोजन",
      "किसी भी प्रकार का।",
    ],
    // "actAns": "सात्विक भोजन",
    "qtype": "T"
  },
  {
    "id": 262,
    "qno": "2020120807",
    "question":
        "2014 में अपने जापान दौरे के दौरान भारतीय प्रधानमंत्री श्री नरेंद्र मोदी द्वारा जापान के प्रधानमंत्री शिंजो आबे को भिन्न भिन्न भाषाओं में लिखी कितनी गीता तोहफे में दी ...\r\n",
    "questionDate": "12/8/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "2, जापानी व संस्कृत",
      "2, जापानी व इंग्लिश",
      "केवल जापानी",
      "केवल संस्कृत",
    ],
    // "actAns": "2, जापानी व संस्कृत",
    "qtype": "T"
  },
  {
    "id": 250,
    "qno": "2020120808",
    "question": "श्रीमद्भगवद्‌गीता की गिनती किन ग्रंथों में आती है?",
    "questionDate": "12/8/2020 ",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "कृष्ण पुराण",
      "उपनिषद",
      "श्लोक ग्रंथ",
      "अर्जुन- कृष्ण संवाद ग्रंथ",
    ],
    // "actAns": "उपनिषद",
    "qtype": "T"
  },
  {
    "id": 214,
    "qno": "2020120809",
    "question":
        "गीता के एक श्लोक का अर्थ है: यह आत्मा किसी काल में भी न तो जन्मता है और न मरता ही है तथा न यह उत्पन्न होकर फिर न होने वाला ही है क्योंकि यह अजन्मा, नित्य, सनातन और पुरातन है, शरीर के मारे जाने पर भी यह मारा नहीं जाता॥ हम किस श्लोक की बात कर रहे है| Neither it(Self) is ever born, nor it ever dies. And neither it comes in existence and ceases to exist later. nor the reverse. Because this Self is unborn, eternal, unchangeable and primeval which is not killed even when the body is destroyed. Which verse are we talking about?",
    "questionDate": "12/8/2020 ",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "य एनं वेत्ति हन्तारं यश्चैनं मन्यते हतम्‌।\r\nउभौ तौ न विजानीतो नायं हन्ति न हन्यते॥२-१९॥",
      "अन्तवन्त इमे देहा नित्यस्योक्ताः शरीरिणः।\r\nअनाशिनोऽप्रमेयस्य तस्माद्युध्यस्व भारत॥२-१८॥",
      "अच्छेद्योऽयमदाह्योऽयम क्लेद्योऽशोष्य एव च।\r\nनित्यः सर्वगतः स्थाणुरचलोऽयं सनातनः ॥२-२४॥",
      "न जायते म्रियते वा कदाचि न्नायं भूत्वा भविता वा न भूयः।\r\nअजो नित्यः शाश्वतोऽयं पुराणो न हन्यते हन्यमाने शरीरे॥२-२०॥",
    ],
    // "actAns":
    //   "न जायते म्रियते वा कदाचि न्नायं भूत्वा भविता वा न भूयः।\r\nअजो नित्यः शाश्वतोऽयं पुराणो न हन्यते हन्यमाने शरीरे॥२-२०॥",
    "qtype": "T"
  },
  {
    "id": 244,
    "qno": "2020120810",
    "question":
        "गीता उपदेश में भगवान श्रीकृष्ण ने अर्जुन को विराट स्वरूप दर्शन करवाया था। दो और लोगों ने उसके दर्शन किए थे जिनमे एक संजय थे। दूसरे व्यक्ति का नाम बताइये?         Three people saw Shri Krishna's virat swaroop form. Arjun and sanjay were two of them. Name the third person?",
    "questionDate": "12/8/2020 ",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "द्रोणाचार्य",
      "भीष्म पितामह",
      "बर्बरीक",
      "अभिमन्यु",
    ],
    // "actAns": "बर्बरीक",
    "qtype": "T"
  },
  {
    "id": 256,
    "qno": "2020120901",
    "question":
        "गीता के कुल 18 अध्याय में केवल पहला अध्याय हैं जिसमें भगवान कृष्ण ने कोई श्लोक नहीं बोला। अर्जुन द्वारा उन अध्यायों की संख्या 5 हैं जिनमें अर्जुन द्वारा कोई श्लोक नहीं बोला गया। वो कौन से हैं ..",
    "questionDate": "12/9/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 7,9,13,15,16",
      "अध्याय 5,9,13,15,16",
      "अध्याय 6,9,13,15,16",
      "अध्याय 14,9,13,15,16",
    ],
    // "actAns": "अध्याय 7,9,13,15,16",
    "qtype": "T"
  },
  {
    "id": 286,
    "qno": "2020120902",
    "question":
        "ये शब्द किसके द्वारा कहे गए/अपने उपदेशों मे प्रयोग किये गए है \"जीवन में क्या करना है,\r\nयह रामायण सिखाती है,\r\nजीवन में क्या नहीं करना है\r\n यह महाभारत सिखाती है, और\r\nजीवन कैसे जीना है, यह\r\n भगवद्गीता सिखाती है\"| These words are said by whom \"what to do in life,\r\nThis Ramayana teaches,\r\nWhat not to do in life\r\nIt teaches the Mahabharata, and\r\nHow to live life\r\n The Bhagavad Gita teaches \"|",
    "questionDate": "12/9/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "ब्रह्माकुमारी शिवानी",
      "विनोबा भावे",
      "स्वामी विवेकानंद",
      "लोकमान्य गंगाधर तिलक",
    ],
    // "actAns": "ब्रह्माकुमारी शिवानी",
    "qtype": "T"
  },
  {
    "id": 194,
    "qno": "2020120903",
    "question":
        "महाभारत के सबक -  यदि हम गांधारी की बात करे तो कौन सा सबक ठीक लगता हैं । गांधारी की तरह ...  Lessons of Mahabharata - If we talk about Gandhari, which lesson is right? Like Gandhari ...",
    "questionDate": "12/9/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "आंख बंद करके अनुसरण मत करो।",
      "अनुचित प्रयोग मत करो।",
      "पुत्र-मोह में मत पड़ो।",
      "अर्धसत्य पर विश्वास मत करो।",
    ],
    // "actAns": "आंख बंद करके अनुसरण मत करो।",
    "qtype": "T"
  },
  {
    "id": 273,
    "qno": "2020120904",
    "question":
        "गीता की जन्मभूमि धर्मक्षेत्र कुरुक्षेत्र ईसा काल के बाद की शताब्दियों में भी दक्षिण-पूर्व एशिया के देशों में बड़ी ही श्र्द्धा का विषय रहा है। एक स्थान से प्राप्त शिलालेख यह दर्शाते हैं कि इंद्र, युधिष्ठिर, धनञ्जय और शिवि के समकक्ष यहाँ के राजा महाराजाधिराज देवनिक ने 5वी शती ई. के उत्तरार्द्ध में 'नव कुरुक्षेत्र' नामक विख्यात महातीर्थ स्थल की स्थापना की थी। यह स्थान कौन सा है...",
    "questionDate": "12/9/2020 ",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "बाली",
      "इंडोनेशिया",
      "श्रीलंका",
      "लाओस",
    ],
    // "actAns": "लाओस",
    "qtype": "T"
  },
  {
    "id": 276,
    "qno": "2020120905",
    "question":
        "इच्छापूर्ति नहीं हुई तो क्रोध उत्पन्न होता है क्यों पूरी नहीं हुई? अगर पूरी हो गई, तो लालच बढ़ता है ओर चाहिए। आपको बतलाना हैं भगवद्गीता के किस अध्याय के कौनसे श्लोक में मनुष्य के विनाश के लिए यही तीन कारण काम, क्रोध व लालच बतलाये गए हैं।",
    "questionDate": "12/9/2020 ",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "काममाश्रित्य दुष्पूरं दम्भमानमदान्विताः ।\r\nमोहाद्‌गृहीत्वासद्ग्राहान् प्रवर्तन्तेऽशुचिव्रताः ॥१६-१०॥",
      "आशापाशशतैर्बद्धाः कामक्रोधपरायणाः ।\r\nईहन्ते कामभोगार्थमन् यायेनार्थसञ्चयान् ॥१६-१२॥",
      "त्रिविधं नरकस्येदं द्वारं नाशनमात्मनः ।\r\nकामः क्रोधस्तथा लोभस् तस्मादेतत्त्रयं त्यजेत् ॥१६-२१॥",
      "तेजः क्षमा धृतिः शौचमद्रोहो नातिमानिता ।\r\nभवन्ति संपदं दैवीम भिजातस्य भारत ॥१६-३॥",
    ],
    // "actAns":
    // "त्रिविधं नरकस्येदं द्वारं नाशनमात्मनः ।\r\nकामः क्रोधस्तथा लोभस् तस्मादेतत्त्रयं त्यजेत् ॥१६-२१॥",
    "qtype": "T"
  },
  {
    "id": 280,
    "qno": "2020120906",
    "question":
        "हमारे मन की किस स्तिथि में हमें निम्न श्लोकों का पाठ करना चाहिए :\r\nदुःखेष्वनुद्विग्नमनाः सुखेषु विगतस्पृहः।वीतरागभयक्रोधः स्थितधीर्मुनिरुच्यते॥२-५६॥\r\nध्यायतो विषयान्पुंसः संगस्तेषूपजायते।संगात्संजायते कामः कामात्क्रोधोऽभिजायते॥२-६२॥\r\nक्रोधाद्‍भवति सम्मोहः सम्मोहात्स्मृतिविभ्रमः।स्मृतिभ्रंशाद् बुद्धिनाशो बुद्धिनाशात्प्रणश्यति॥२-६३॥\r\nकामक्रोधवियुक्तानां यतीनां यतचेतसाम्।अभितो ब्रह्मनिर्वाणं वर्तते विदितात्मनाम्॥५-२६॥\r\nश्रीभगवानुवाच अभयं सत्त्वसंशुद्धि र्ज्ञानयोगव्यवस्थितिः ।दानं दमश्च यज्ञश्च स्वाध्यायस्तप आर्जवम् ॥१६-१॥\r\nत्रिविधं नरकस्येदं द्वारं नाशनमात्मनः ।कामः क्रोधस्तथा लोभस् तस्मादेतत्त्रयं त्यजेत् ॥१६-२१॥\r\n\r\n\r\n",
    "questionDate": "12/9/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "क्रोध",
      "पापी लग रहा है",
      "लालच",
      "आलस्य",
    ],
    // "actAns": "क्रोध",
    "qtype": "T"
  },
  {
    "id": 263,
    "qno": "2020120907",
    "question":
        "वर्ष 2014 में अपने अमरीका दौरे के दौरान भारतीय प्रधानमंत्री श्री नरेंद्र मोदी जी ने अमरीका के राष्ट्रपति श्री बराक ओबामा को किस महापुरुष द्वारा अनुवादित गीता गिफ्ट की थी ....",
    "questionDate": "12/9/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "महात्मागांधी",
      "बालगंगाधर तिलक",
      "स्वामी विवेकानंद",
      "स्वामी दयानंद",
    ],
    // "actAns": "महात्मागांधी",
    "qtype": "T"
  },
  {
    "id": 271,
    "qno": "2020120908",
    "question":
        "भारत सरकार द्वारा कुछ वर्ष पूर्व भगवद्गीता थीम पर 25 पैसे की एक डाक टिकट जारी की गयी थी जिसमें भगवान कृष्ण और अर्जुन को युद्ध क्षेत्र में दिखाया गया था l आपको बताना है कि ये किस वर्ष जारी की गयी थी ?",
    "questionDate": "12/9/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "1978",
      "1973",
      "2018",
      "2017",
    ],
    // "actAns": "1978",
    "qtype": "T"
  },
  {
    "id": 215,
    "qno": "2020120909",
    "question":
        "गीता के एक श्लोक का अर्थ है: काम, क्रोध तथा लोभ- ये तीन प्रकार के नरक के द्वार ( सर्व अनर्थों के मूल और नरक की प्राप्ति में हेतु होने से यहाँ काम, क्रोध और लोभ को ‘नरक के द्वार’ कहा है) आत्मा का नाश करने वाले अर्थात्‌ उसको अधोगति में ले जाने वाले हैं। अतएव इन तीनों को त्याग देना चाहिए॥  Triple is this, the gate to hell, destructive of the self; LUST, WRATH and GREED. Therefore, these three, one should abandon. Which verse are we talking about?",
    "questionDate": "12/9/2020 ",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "त्रिविधं नरकस्येदं द्वारं नाशनमात्मनः ।\r\nकामः क्रोधस्तथा लोभस् तस्मादेतत्त्रयं त्यजेत् ॥१६-२१॥",
      "काममाश्रित्य दुष्पूरं दम्भमानमदान्विताः ।\r\nमोहाद्‌गृहीत्वासद्ग्राहान् प्रवर्तन्तेऽशुचिव्रताः ॥१६-१०॥",
      "आशापाशशतैर्बद्धाः कामक्रोधपरायणाः ।\r\nईहन्ते कामभोगार्थमन् यायेनार्थसञ्चयान् ॥१६-१२॥",
      "तेजः क्षमा धृतिः शौचमद्रोहो नातिमानिता ।\r\nभवन्ति संपदं दैवीम भिजातस्य भारत ॥१६-३॥",
    ],
    // "actAns":
    //  "त्रिविधं नरकस्येदं द्वारं नाशनमात्मनः ।\r\nकामः क्रोधस्तथा लोभस् तस्मादेतत्त्रयं त्यजेत् ॥१६-२१॥",
    "qtype": "T"
  },
  {
    "id": 287,
    "qno": "2020120910",
    "question":
        "इस्कॉन संस्था द्वारा तैयार की गई विश्व की सबसे बड़ी गीता में 670 पृष्ठ हैं, जिनका साइज़ 2.84 गुणा 2.0 मीटर है, इसका कुल वजन 800 किलोग्राम है| प्रधानमंत्री श्री नरेंद्र मोदी ने दिल्ली के ईस्ट ऑफ़ कैलाश स्थित इस्कॉन मंदिर में विश्व की सबसे बड़ी भगवद गीता का विमोचन किया था। आपको बतलाना हैं इसका विमोचन कब किया गया था ...",
    "questionDate": "12/9/2020 ",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "26 फरवरी 2017",
      "26 फरवरी 2018",
      "26 फरवरी 2019",
      "26 फरवरी 2020",
    ],
    // "actAns": "26 फरवरी 2019",
    "qtype": "T"
  },
  {
    "id": 257,
    "qno": "2020121001",
    "question":
        "गीता में केवल 4 अध्याय हैं जिनमें संजय द्वारा श्लोक बोले गए। वो कौन से हैं ..",
    "questionDate": "12/10/2020",
    "link":
        "<iframe width=\"100%\" src=\"https://www.youtube.com/embed/28sptQICKCk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 1,2,11,18",
      "अध्याय 1,2,11,17",
      "अध्याय 1,2,11,16",
      "अध्याय 1,2,11,15",
    ],
    // "actAns": "अध्याय 1,2,11,18",
    "qtype": "T"
  },
  {
    "id": 284,
    "qno": "2020121002",
    "question":
        "ये शब्द किसके द्वारा कहे गए है: \"भगवद्गीता मानव जाति का एक सच्चा ग्रंथ है जो एक पुस्तक के बजाय एक जीवित रचना है, हर युग के लिए एक नया संदेश है और हर सभ्यता के लिए एक नया अर्थ है\" Bhagavad-Gita is a true scripture of the human race a living creation rather than a book, with a new message for every age and a new meaning for every civilization\" ",
    "questionDate": "12/10/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "स्वामीविवेकानंद जी",
      "विनोबा भावे",
      "लोकमान्य गंगाधर तिलक",
      "श्री अरबिंदो (अरविन्द घोष)",
    ],
    // "actAns": "श्री अरबिंदो (अरविन्द घोष)",
    "qtype": "T"
  },
  {
    "id": 195,
    "qno": "2020121003",
    "question":
        "महाभारत के सबक -  यदि हम अश्वत्थामा की बात करे तो कौन सा सबक ठीक लगता हैं । अश्वत्थामा की तरह ...",
    "questionDate": "12/10/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "काम के वशीभूत मत बनो।",
      "अनुचित प्रयोग मत करो।",
      "अनियंत्रित मत हो जाओ।",
      "अनधिकार हठ मत पालों।",
    ],
    // "actAns": "अनियंत्रित मत हो जाओ।",
    "qtype": "T"
  },
  {
    "id": 289,
    "qno": "2020121004",
    "question":
        "भगवद्गीता में भगवान श्रीकृष्ण ने 'योग' शब्द को कैसे परिभाषित किया हैं?",
    "questionDate": "12/10/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "आसन",
      "मौन और शांति",
      "श्वास अभ्यास और मुद्रा",
      "ईश्वर से मिलन",
    ],
    // "actAns": "ईश्वर से मिलन",
    "qtype": "T"
  },
  {
    "id": 290,
    "qno": "2020121005",
    "question":
        "हमारे मन की किस स्थिति में हमें निम्न श्लोकों का पाठ करना चाहिए:\r\nनियतं कुरु कर्म त्वं कर्म ज्यायो ह्यकर्मणः। शरीरयात्रापि च ते न प्रसिद्ध्येदकर्मणः॥३-८॥\r\nकर्मणैव हि संसिद्धिमा स्थिता जनकादयः।लोकसंग्रहमेवापि संपश्यन्कर्तुमर्हसि॥३-२०॥\r\nनात्यश्नतस्तु योगोऽस्ति न चैकान्तमनश्नतः।न चाति स्वप्नशीलस्य जाग्रतो नैव चार्जुन॥६-१६॥\r\nयदग्रे चानुबन्धे च सुखं मोहनमात्मनः। निद्रालस्यप्रमादोत्थं तत्तामसमुदाहृतम् ॥१८-३९॥\r\n",
    "questionDate": "12/10/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "अकेलापन",
      "लालच",
      "आलस्य",
      "पापी लग रहा है",
    ],
    // "actAns": "आलस्य",
    "qtype": "T"
  },
  {
    "id": 291,
    "qno": "2020121006",
    "question":
        "विवेकानंद की जब भी बात होती है तो अमरीका के शिकागो की धर्म संसद में साल 1893 में दिए गए भाषण की चर्चा ज़रूर होती है.\r\n\r\nये वो भाषण है जिसने पूरी दुनिया के सामने भारत को एक मजबूत छवि के साथ पेश किया. उनके भाषण में उन द्वारा गीता का भी वर्णन किया था। आपको बतलाना नीचे लिखे कौन से विकल्प की पंक्ति उन द्वारा अपने भाषण में बोली गई थी ..",
    "questionDate": "12/10/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "जो भी मुझ तक आता है, चाहे कैसा भी हो, मैं उस तक पहुंचता हूं. लोग अलग-अलग रास्ते चुनते हैं, परेशानियां झेलते हैं, लेकिन आखिर में मुझ तक पहुंचते हैं.",
      "पृथ्वी में या आकाश में अथवा देवताओं में तथा इनके सिवा और कहीं भी ऐसा कोई भी सत्त्व नहीं है, जो प्रकृति से उत्पन्न इन तीनों गुणों से रहित हो॥",
      "दुष्ट बुद्धिवाला मनुष्य जिस धारण शक्ति के द्वारा निद्रा, भय, चिंता और दु:ख को तथा उन्मत्तता को भी नहीं छोड़ता अर्थात धारण किए रहता है- वह धारण शक्ति तामसी है॥",
      "जो तमोगुण से घिरी हुई बुद्धि अधर्म को भी ‘यह धर्म है’ ऐसा मान लेती है तथा इसी प्रकार अन्य संपूर्ण पदार्थों को भी विपरीत मान लेती है, वह बुद्धि तामसी है॥",
    ],
    // "actAns":
    //  "जो भी मुझ तक आता है, चाहे कैसा भी हो, मैं उस तक पहुंचता हूं. लोग अलग-अलग रास्ते चुनते हैं, परेशानियां झेलते हैं, लेकिन आखिर में मुझ तक पहुंचते हैं.",
    "qtype": "T"
  },
  {
    "id": 288,
    "qno": "2020121007",
    "question":
        "नीचे दिए गए 4 विकल्पों में से आपको बतलाना हैं गीता के अध्याय संख्या 16 - दैवासुरसम्पद्विभागयोग का सार क्या है...",
    "questionDate": "12/10/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "इसमें श्रीकृष्ण अर्जुन को यह बताते हैं कि जो शास्त्र विधि का ज्ञान न होने से तथा अन्य कारणों से शास्त्र विधि छोड़ने पर भी यज्ञ, पूजा आदि शुभ कर्म तो श्रद्धा पूर्वक करते हैं, उनकी स्तिथि क्या होती है।",
      "इसमें अर्जुन, श्रीकृष्ण से न्यास यानी ज्ञानयोग का और त्याग अर्थात फलासक्ति रहित कर्मयोग का तत्व जानने की इच्छा प्रकट करते हैं।",
      "इसमें श्रीकृष्ण स्वाभाविक रीति से ही दैवी प्रकृति वाले ज्ञानी पुरुष तथा आसुरी प्रकृति वाले अज्ञानी पुरूष के लक्षण के बारे में बताते हैं।",
      "इसमें श्रीकृष्ण कहते हैं कि दैवी प्रकति वाले ज्ञानी पुरुष सर्व प्रकार से मेरा भजन करते हैं तथा आसुरी प्रकृति वाले अज्ञानी पुरुष मेरा उपहास करते हैं।",
    ],
    // "actAns":
    //  "इसमें श्रीकृष्ण स्वाभाविक रीति से ही दैवी प्रकृति वाले ज्ञानी पुरुष तथा आसुरी प्रकृति वाले अज्ञानी पुरूष के लक्षण के बारे में बताते हैं।",
    "qtype": "T"
  },
  {
    "id": 254,
    "qno": "2020121008",
    "question":
        "महाभारत का आंखों देखा हाल धृतराष्ट्र को संजय ने अपनी दिव्य दृष्टि से सुनाया था| \r\nसंजय को यह दिव्य दृष्टि किस से प्राप्त हुई थी ?",
    "questionDate": "12/10/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "महर्षि वेद व्यास जी से",
      "श्री कृष्ण जी से",
      "कृपाचार्य जी से",
      "पराशर ऋषि जी से",
    ],
    // "actAns": "महर्षि वेद व्यास जी से",
    "qtype": "T"
  },
  {
    "id": 216,
    "qno": "2020121009",
    "question":
        "गीता के एक श्लोक का अर्थ है: हे कुंतीपुत्र! सर्दी-गर्मी और सुख-दुःख को देने वाले इन्द्रिय और विषयों के संयोग तो उत्पत्ति-विनाशशील और अनित्य हैं, इसलिए हे भारत! तुम उनको सहन करो॥हम किस श्लोक की बात कर रहे है| O son of Kunti! Feelings of heat and cold or pleasure and pain are due to association of sense organs with their subjects. O descendant of Bharata! as these associations originate and get destroyed and are impermanent so you should endure(tolerate) them.॥ Which verse are we talking about?",
    "questionDate": "12/10/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "अविनाशि तु तद्विद्धि येन सर्वमिदं ततम्‌।\r\nविनाशमव्ययस्यास्य न कश्चित्कर्तुमर्हति॥२-१७॥",
      "मात्रास्पर्शास्तु कौन्तेय शीतोष्णसुखदुःखदाः।\r\nआगमापायिनोऽनित्या स्तांस्तितिक्षस्व भारत॥२-१४॥",
      "यं हि न व्यथयन्त्येते पुरुषं पुरुषर्षभ।\r\nसमदुःखसुखं धीरं सोऽमृतत्वाय कल्पते॥२-१५॥",
      "देहिनोऽस्मिन्यथा देहे कौमारं यौवनं जरा।\r\nतथा देहान्तरप्राप्ति र्धीरस्तत्र न मुह्यति॥२-१३॥",
    ],
    // "actAns":
    //    "मात्रास्पर्शास्तु कौन्तेय शीतोष्णसुखदुःखदाः।\r\nआगमापायिनोऽनित्या स्तांस्तितिक्षस्व भारत॥२-१४॥",
    "qtype": "T"
  },
  {
    "id": 274,
    "qno": "2020121010",
    "question":
        "गीता जयंती के दिन पर ब्रह्मसरोवर के पवित्र जल में दीपदान या दीपकों के विसर्जन की प्रथा इस महोत्सव के प्रारम्भिक वर्ष 1989 से चली आ रही हैं। दीपदान क्यों किया जाता हैं ...",
    "questionDate": "12/10/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "महाभारत के अनुशासन पर्व में तीर्थ स्थलों पर प्रकाश करने हेतु दीप प्रज्ज्वलित करने के महत्व की व्याख्या की गई है",
      "भगवान श्रीकृष्ण के मुखारविंद से निकली पवित्र गीता के लिए एक उपयुक्त श्रद्धा और सम्मान हैं",
      "वातावरण को अत्यंत आनंदमय एवं सौन्दर्यपूर्ण बनाना",
      "उपरोक्त सभी",
    ],
    // "actAns": "उपरोक्त सभी",
    "qtype": "T"
  },
  {
    "id": 316,
    "qno": "2020121101",
    "question":
        "भगवद गीता का पहली बार अंग्रेजी अनुवाद भारत के तत्कालीन गवर्नर जनरल वारेन हेस्टिंग्स द्वारा विशेष रुचि के साथ ईस्ट इंडिया कंपनी के कोर्ट ऑफ डायरेक्टर्स के आदेश पर चार्ल्स विल्किंस द्वारा किया गया था। आपको बतलाना अनुवाद किस वर्ष किया गया था? The Bhagavad Gita was first translated into English, by Charles Wilkins, on the orders of the Court of Directors of the East India Company, with special interest shown by Warren Hastings, the then Governor General of India.",
    "questionDate": "12/11/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "वर्ष 1785 में",
      "वर्ष 1736 में",
      "वर्ष 1947 में",
      "वर्ष 1920 में",
    ],
    // "actAns": "वर्ष 1785 में",
    "qtype": "T"
  },
  {
    "id": 180,
    "qno": "2020121102",
    "question":
        "ये शब्द किसके द्वारा कहे गए है: “मुझे भगवद-गीता के लिए एक शानदार दिन मिला। यह किताबों में से पहला था; यह ऐसा था जैसे कोई साम्राज्य हमसे बात करता है, कुछ भी छोटा या अयोग्य नहीं है, लेकिन बड़े, शांत, सुसंगत, एक पुरानी बुद्धि की आवाज जो किसी अन्य युग और जलवायु में विचार किया गया था और इस प्रकार उन्हीं सवालों का निपटारा किया गया था जो हमें अभ्यास कराते हैं। ” “I owed a magnificent day to the Bhagavad-gita. It was the first of books; it was as if an empire spoke to us, nothing small or unworthy, but large, serene, consistent, the voice of an old intelligence which in another age and climate had pondered and thus disposed of the same questions which exercise us.”",
    "questionDate": "12/11/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "Ralph Waldo Emerson",
      "Rudolph Steiner",
      "Carl Jung",
      "Herman Hesse",
    ],
    // "actAns": "Ralph Waldo Emerson",
    "qtype": "T"
  },
  {
    "id": 196,
    "qno": "2020121103",
    "question":
        "महाभारत के सबक -  यदि हम धृतराष्ट्र की बात करे तो कौन सा सबक ठीक लगता हैं । धृतराष्ट्र की तरह ...",
    "questionDate": "12/11/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "काम के वशीभूत मत बनो।",
      "अनुचित प्रयोग मत करो।",
      "पुत्र-मोह में मत पड़ो।",
      "अनधिकार हठ मत पालों।",
    ],
    // "actAns": "पुत्र-मोह में मत पड़ो।",
    "qtype": "T"
  },
  {
    "id": 317,
    "qno": "2020121104",
    "question":
        "भगवद्गीता मूलतः शास्त्रीय संस्कृत में लिखी गयी हैं| अनुमानतः अब तक कितनी भाषाओं में गीता का अनुवाद किया जा चुका हैं ?",
    "questionDate": "12/11/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "175 भाषाओं में",
      "32 भाषाओं में",
      "5 भाषाओं में",
      "250 भाषाओं में",
    ],
    // "actAns": "175 भाषाओं में",
    "qtype": "T"
  },
  {
    "id": 292,
    "qno": "2020121105",
    "question":
        "हमारे मन की किस स्थिति में हमें निम्न श्लोकों का पाठ करना चाहिए : कार्पण्यदोषोपहतस्वभावः पृच्छामि त्वां धर्मसम्मूढचेताः।\r\nयच्छ्रेयः स्यान्निश्चितं ब्रूहि तन्मे शिष्यस्तेऽहं शाधि मां त्वां प्रपन्नम्‌॥२-७॥ व्यामिश्रेणेव वाक्येन बुद्धिं मोहयसीव मे।\r\nतदेकं वद निश्चित्य येन श्रेयोऽहमाप्नुयाम्॥३-२॥ ईश्वरः सर्वभूतानां हृद्देशेऽर्जुन तिष्ठति ।\r\nभ्रामयन्सर्वभूतानि यन्त्रारूढानि मायया ॥१८-६१॥    ",
    "questionDate": "12/11/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "भ्रम की स्थिति",
      "लालच",
      "आलस्य",
      "अकेलापन",
    ],
    // "actAns": "भ्रम की स्थिति",
    "qtype": "T"
  },
  {
    "id": 318,
    "qno": "2020121106",
    "question":
        "गीता के एक श्लोक का अर्थ है: (सांख्य) कर्म-संन्यास और कर्मयोग को अज्ञानी ही अलग-अलग फल देने वाले कहते हैं न कि ज्ञानी जन, क्योंकि दोनों में से एक में भी ठीक प्रकार से स्थित पुरुष दोनों के ही फल (रूप परमात्मा) को प्राप्त होता है॥",
    "questionDate": "12/11/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "सांख्ययोगौ पृथग्बालाः प्रवदन्ति न पण्डिताः। एकमप्यास्थितः सम्यगुभयोर्विन्दते फलम्॥५-४॥",
      "ज्ञेयः स नित्यसंन्यासी यो न द्वेष्टि न काङ्क्षति। निर्द्वन्द्वो हि महाबाहो सुखं बन्धात्प्रमुच्यते॥५-३॥",
      "श्रीभगवानुवाच संन्यासः कर्मयोगश्च निःश्रेयसकरावुभौ। तयोस्तु कर्मसंन्यासात् कर्मयोगो विशिष्यते॥५-२॥",
      "यत्सांख्यैः प्राप्यते स्थानं तद्योगैरपि गम्यते। एकं सांख्यं च योगं च यः पश्यति स: पश्यति॥५-५॥",
    ],
    // "actAns":
    //   "सांख्ययोगौ पृथग्बालाः प्रवदन्ति न पण्डिताः। एकमप्यास्थितः सम्यगुभयोर्विन्दते फलम्॥५-४॥",
    "qtype": "T"
  },
  {
    "id": 303,
    "qno": "2020121107",
    "question":
        "नीचे दिए गए 4 विकल्पों में से आपको बतलाना हैं गीता के अध्याय संख्या 11 - विश्वरूपदर्शनयोग का सार क्या है...",
    "questionDate": "12/11/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "इसमें श्रीकृष्ण अर्जुन को यह बताते हैं कि जो शास्त्र विधि का ज्ञान न होने से तथा अन्य कारणों से शास्त्र विधि छोड़ने पर भी यज्ञ, पूजा आदि शुभ कर्म तो श्रद्धा पूर्वक करते हैं, उनकी स्तिथि क्या होती है।",
      "इसमें अर्जुन, श्रीकृष्ण से न्यास यानी ज्ञानयोग का और त्याग अर्थात फलासक्ति रहित कर्मयोग का तत्व जानने की इच्छा प्रकट करते हैं।",
      "इसमें श्रीकृष्ण सत्व, रज और तम गुणों का तथा मनुष्य की उत्तम, मध्यम अन्य गतियों का विस्तारपूर्वक वर्णन करते हैं। अंत में इन गुणों को पाने का उपाय और इसका फल बताया गया है।",
      "इसमें अर्जुन के निवेदन पर श्रीकृष्ण अपना विश्वरूप धारण करते हैं।",
    ],
    // "actAns":
    //  "इसमें अर्जुन के निवेदन पर श्रीकृष्ण अपना विश्वरूप धारण करते हैं।",
    "qtype": "T"
  },
  {
    "id": 235,
    "qno": "2020121108",
    "question":
        "श्रीकृष्ण ने 'गीता' का उपदेश देते समय अर्जुन को जो स्वरूप दिखलाया था, उसका क्या नाम था?  What was the name of the form shown by Shri Krishna to Arjuna while teaching 'Geeta'?",
    "questionDate": "12/11/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "विराट/विश्वरूप",
      "भौतिक स्वरूप",
      "मोहनी",
      "प्रचंड",
    ],
    // "actAns": "विराट/विश्वरूप",
    "qtype": "T"
  },
  {
    "id": 217,
    "qno": "2020121109",
    "question":
        "गीता के एक श्लोक का अर्थ है: यदि तुम युद्ध में मारे गए तो तुम स्वर्ग को प्राप्त करोगे अन्यथा युद्ध में जीतकर पृथ्वी का राज्य भोगोगे। इसलिए हे अर्जुन! तुम युद्ध का निश्चय करके खड़े हो जाओ॥ If you are killed in the battle, you will reach heaven; on victory, you will enjoy the kingdom on earth. So O son of Kunti! arise with determination to fight. Which verse are we talking about?",
    "questionDate": "12/11/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 2 श्लोक 37",
      "अध्याय 2 श्लोक 35",
      "अध्याय 2 श्लोक 31",
      "अध्याय 2 श्लोक 19",
    ],
    // "actAns": "अध्याय 2 श्लोक 37",
    "qtype": "T"
  },
  {
    "id": 319,
    "qno": "2020121110",
    "question":
        "श्रीमद्भगवद्गीता में कुल 700 श्लोक हैं, गीता के अधिकतर श्लोक किस छंद में हैं।",
    "questionDate": "12/11/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "त्रिष्टुप छंद",
      "उपजाति छंद",
      "इन्द्रवज्रा छंद",
      "अनुष्टुप छंद",
    ],
    // "actAns": "अनुष्टुप छंद",
    "qtype": "T"
  },
  {
    "id": 323,
    "qno": "2020121201",
    "question":
        "इस प्रश्न के उत्तर हेतु सर्वप्रथम आपको ऊपर दिखाई गई वीडियो को पूरा देखना हैं उसमें गीता के श्लोक/श्लोकों का वर्णन किया गया हैं आपको उन श्लोकों के अध्याय व संख्या के बारे बतलाना हैं...",
    "questionDate": "12/12/2020",
    "link":
        "<iframe width=\"100%\" src=\"https://www.youtube.com/embed/QLb8vKmoKck\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "अध्याय 2 श्लोक 62",
      "अध्याय 2 श्लोक 42",
      "अध्याय 3 श्लोक 8",
      "अध्याय 1 श्लोक 35",
    ],
    // "actAns": "अध्याय 3 श्लोक 8",
    "qtype": "T"
  },
  {
    "id": 248,
    "qno": "2020121202",
    "question":
        "किस अन्तरिक्ष यात्री को वज़न कि सीमा के रहते गीता को अन्तरिक्ष में साथ ले जाने की सहमति नहीं मिली थी। बाद में उस ने अपने शरीर का वज़न कम कर के गीता ले जाने की अनुमति ली थी।\r\nWhich space traveller did not get the consent of carrying Geeta in space because of weight limit? Later, she reduced her body weight and took permission to carry the holy book Gita to the space. \r\n",
    "questionDate": "12/12/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "Rakesh Sharma",
      "Sunita Williams",
      "Yuri Gagrin",
      "Kalpna Chawla",
    ],
    // "actAns": "Sunita Williams",
    "qtype": "T"
  },
  {
    "id": 197,
    "qno": "2020121203",
    "question":
        "महाभारत के सबक -  यदि हम कुंती की बात करे तो कौन सा सबक ठीक लगता हैं । कुंती की तरह ...",
    "questionDate": "12/12/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अनुचित प्रयोग मत करो।",
      "अनुचित प्रतिज्ञाओं में न बंधो।",
      "पुत्र मोह में मत पड़ो।",
      "अनियंत्रित मत हो जाओ।",
    ],
    // "actAns": "अनुचित प्रयोग मत करो।",
    "qtype": "T"
  },
  {
    "id": 320,
    "qno": "2020121204",
    "question": "भगवद्गीता सुनने के बाद संजय पर क्या प्रभाव पड़ा?",
    "questionDate": "12/12/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "वे एक महान विद्वान बने",
      "उसने आनंद लिया और हर पल रोमांचित और आनन्दित रहा",
      "उन्होंने जीवन का त्याग आदेश लिया",
      "वह एक महान व्यक्तित्व बने",
    ],
    // "actAns": "उसने आनंद लिया और हर पल रोमांचित और आनन्दित रहा",
    "qtype": "T"
  },
  {
    "id": 293,
    "qno": "2020121205",
    "question":
        "हमारे मन की किस स्थिति में हमें निम्न श्लोकों का पाठ करना चाहिए :\r\nअद्वेष्टा सर्वभूतानां मैत्रः करुण एव च ।\r\nनिर्ममो निरहंकारः समदुःखसुखः क्षमी ॥१२-१३॥संतुष्टः सततं योगी यतात्मा दृढनिश्चयः ।\r\nमय्यर्पितमनोबुद्धिर्यो मद्भक्तः स मे प्रियः ॥१२-१४॥तानहं द्विषतः क्रुरान् संसारेषु नराधमान् ।\r\nक्षिपाम्यजस्रमशुभाना सुरीष्वेव योनिषु ॥१६-१९॥श्रद्धावाननसूयश्च शृणुया दपि यो नरः ।\r\nसोऽपि मुक्तः शुभाँल्लोकान् प्राप्नुयात्पुण्यकर्मणाम् ॥१८-७१॥",
    "questionDate": "12/12/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "ईर्ष्या से निपटना\r\n",
      "अकेलापन",
      "लालच",
      "भ्रम की स्थिति",
    ],
    // "actAns": "ईर्ष्या से निपटना\r\n",
    "qtype": "T"
  },
  {
    "id": 325,
    "qno": "2020121206",
    "question":
        "भगवद्गीता के किस अध्याय में 'संसार को वृक्ष रूप मे' दर्शाया गया है?",
    "questionDate": "12/12/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "अध्याय 18 - मोक्षसंन्यासयोग",
      "अध्याय 4 - ज्ञानकर्मसंन्यासयोग",
      "अध्याय 13-क्षेत्र-क्षेत्रज्ञविभागयोग",
      "अध्याय 15 - पुरुषोत्तम योग",
    ],
    // "actAns": "अध्याय 15 - पुरुषोत्तम योग",
    "qtype": "T"
  },
  {
    "id": 304,
    "qno": "2020121207",
    "question":
        "नीचे दिए गए 4 विकल्पों में से आपको बतलाना हैं गीता के अध्याय संख्या 12 - भक्तियोग का सार क्या है...",
    "questionDate": "12/12/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "इसमें श्रीकृष्ण सत्व, रज और तम गुणों का तथा मनुष्य की उत्तम, मध्यम अन्य गतियों का विस्तारपूर्वक वर्णन करते हैं। अंत में इन गुणों को पाने का उपाय और इसका फल बताया गया है।",
      "इसमें श्रीकृष्ण अर्जुन को क्षेत्र और क्षेत्रज्ञ के ज्ञान के बारे में तथा सत्व, रज और तम गुणों द्वारा अच्छी योनि में जन्म लेने का उपाय बताते हैं।",
      "इस अध्याय में कृष्ण भगवान भक्ति के मार्ग की महिमा अर्जुन को बताते हैं। इसके साथ ही वह भक्ति योग का वर्णन अर्जुन को सुनाते हैं।",
      "इसमें अर्जुन, श्रीकृष्ण से न्यास यानी ज्ञानयोग का और त्याग अर्थात फलासक्ति रहित कर्मयोग का तत्व जानने की इच्छा प्रकट करते हैं।",
    ],
    // "actAns":
    //  "इस अध्याय में कृष्ण भगवान भक्ति के मार्ग की महिमा अर्जुन को बताते हैं। इसके साथ ही वह भक्ति योग का वर्णन अर्जुन को सुनाते हैं।",
    "qtype": "T"
  },
  {
    "id": 258,
    "qno": "2020121208",
    "question": "गीता के प्रथम श्लोक को किसने बोला था ?",
    "questionDate": "12/12/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "संजय ने",
      "धृतराष्ट्र ने",
      "श्री कृष्ण ने",
      "अर्जुन ने",
    ],
    // "actAns": "धृतराष्ट्र ने",
    "qtype": "T"
  },
  {
    "id": 218,
    "qno": "2020121209",
    "question":
        "गीता के एक श्लोक का अर्थ है: विषय-वस्तुओं के बारे में सोचते रहने से मनुष्य को उनसे आसक्ति हो जाती है। इससे उनमें कामना यानी इच्छा पैदा होती है और कामनाओं में विघ्न आने से क्रोध की उत्पत्ति होती है। इसलिए कोशिश करें कि विषयाशक्ति से दूर रहते हुए कर्म में लीन रहा जाए। When a man constantly thinks of sense-objects, he becomes attached to them. From attachment arises their desire and unfulfilled desire gives rise to anger. Which verse are we talking about?",
    "questionDate": "12/12/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "अध्याय 3 श्लोक 8",
      "अध्याय 2 श्लोक 42",
      "अध्याय 2 श्लोक 62",
      "अध्याय 1 श्लोक 35",
    ],
    // "actAns": "अध्याय 2 श्लोक 62",
    "qtype": "T"
  },
  {
    "id": 324,
    "qno": "2020121210",
    "question":
        "इस प्रश्न के उत्तर हेतु सर्वप्रथम आपको ऊपर दिखाई गई वीडियो को पूरा देखना हैं उसमें गीता के श्लोक/श्लोकों का वर्णन किया गया हैं आपको उन श्लोकों के अध्याय व संख्या के बारे बतलाना हैं...",
    "questionDate": "12/12/2020",
    "link":
        "<iframe width=\"100%\" src=\"https://www.youtube.com/embed/T79nFQlDXXk?start=2&end=242\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 2 श्लोक 3",
      "अध्याय 2 श्लोक 4",
      "अध्याय 2 श्लोक 2",
      "अध्याय 2 श्लोक 1",
    ],
    // "actAns": "अध्याय 2 श्लोक 3",
    "qtype": "T"
  },
  {
    "id": 267,
    "qno": "2020121301",
    "question":
        "पौराणिक कथाओं में भगवान श्रीकृष्ण के कुरुक्षेत्र आगमन के कईं प्रसंग मिलते है। महाभारत युद्ध में श्रीकृष्ण की उपस्थिति बारे सभी को मालूम हैं। आपको बतलाना हैं निम्न में से कौन कौन से प्रसंग पौराणिक कथाओं में मिलते हैं ...",
    "questionDate": "12/13/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "बाल्यावस्था में दाऊ बलराम के साथ श्रीकृष्ण अपने माता-पिता संग 52 शक्तिपीठों में से एक श्रीदेवीकूप भद्रकाली शक्तिपीठ में मुंडन संस्कार के लिये आए थे।",
      "श्रीकृष्ण अपने गुरु घोर अंगिरस से मिलने के लिये हिमालय पर कुरुक्षेत्र से होकर ही गये थे।",
      "कुरुक्षेत्र में सूर्यग्रहण मेले के अवसर पर आए थे",
      "उपरोक्त सभी",
    ],
    // "actAns": "उपरोक्त सभी",
    "qtype": "T"
  },
  {
    "id": 183,
    "qno": "2020121302",
    "question":
        "ये शब्द किसके द्वारा कहे गए है: “The marvel of the Bhagavad-Gita is its truly beautiful revelation of life’s wisdom which enables philosophy to blossom into religion.”",
    "questionDate": "12/13/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "Aldous Huxley",
      "Herman Hesse",
      "Henry David Thoreau",
      "Rudolph Steiner",
    ],
    // "actAns": "Herman Hesse",
    "qtype": "T"
  },
  {
    "id": 198,
    "qno": "2020121303",
    "question":
        "महाभारत के सबक -  यदि हम द्रोणाचार्य की बात करे तो कौन सा सबक ठीक लगता हैं । द्रोणाचार्य की तरह ...",
    "questionDate": "12/13/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "अनुचित प्रतिज्ञाओं में न बंधो।",
      "अर्धसत्य पर विश्वास मत करें।",
      "क्रोध में अनुचित कार्य न करो।",
      "अनियंत्रित मत हो जाओ।",
    ],
    // "actAns": "अर्धसत्य पर विश्वास मत करें।",
    "qtype": "T"
  },
  {
    "id": 321,
    "qno": "2020121304",
    "question": "भगवद-गीता सुनने के बाद संजय की क्या राय थी?",
    "questionDate": "12/13/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "उनका मत था, कि अर्जुन सर्वोच्च धनुर्धर हैं",
      "उनकी राय थी, कि जहां कृष्ण और अर्जुन मौजूद हैं, वहां सब सौभाग्य और विजय है",
      "उनकी राय थी, कि अर्जुन एक महान त्यागी है",
      "उसके पास देने के लिए कोई राय नहीं थी",
    ],
    // "actAns":
    //    "उनकी राय थी, कि जहां कृष्ण और अर्जुन मौजूद हैं, वहां सब सौभाग्य और विजय है",
    "qtype": "T"
  },
  {
    "id": 294,
    "qno": "2020121305",
    "question": "गीता के प्राकट्य का उद्देश्य क्या था ?",
    "questionDate": "12/13/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "भगवान कृष्ण द्वारा स्वयं की महानता दिखाना",
      "अर्जुन को युद्ध के लिए प्रेरित करना",
      "अपनी बुआ कुंती के पुत्रों पांडवों को युद्ध में विजय दिलाना",
      "सांसारिक लोगो मे उनके वास्तविकता का परिचय कराना",
    ],
    // "actAns": "सांसारिक लोगो मे उनके वास्तविकता का परिचय कराना",
    "qtype": "T"
  },
  {
    "id": 326,
    "qno": "2020121306",
    "question":
        "इस प्रश्न के उत्तर हेतु सर्वप्रथम आपको ऊपर दिखाई गई वीडियो को पूरा देखना हैं उसमें गीता के श्लोक/श्लोकों का वर्णन किया गया हैं आपको उन श्लोकों के अध्याय व संख्या के बारे बतलाना हैं...",
    "questionDate": "12/13/2020",
    "link":
        "<iframe width=\"100%\" src=\"https://www.youtube.com/embed/UeWKA8CPHLQ?start=2\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 3 श्लोक 5",
      "अध्याय 4 श्लोक 40",
      "अध्याय 2 श्लोक 70",
      "अध्याय 2 श्लोक 10",
    ],
    // "actAns": "अध्याय 3 श्लोक 5",
    "qtype": "T"
  },
  {
    "id": 305,
    "qno": "2020121307",
    "question":
        "नीचे दिए गए 4 विकल्पों में से आपको बतलाना हैं गीता के अध्याय संख्या 13 - क्षेत्र-क्षेत्रज्ञविभागयोग  का सार क्या है...",
    "questionDate": "12/13/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "इसमें श्रीकृष्ण अर्जुन को क्षेत्र और क्षेत्रज्ञ के ज्ञान के बारे में तथा सत्व, रज और तम गुणों द्वारा अच्छी योनि में जन्म लेने का उपाय बताते हैं।",
      "इस अध्याय में अर्जुन के निवेदन पर श्रीकृष्ण अपना विश्वरूप धारण करते हैं।",
      "इसमें श्रीकृष्ण कहते हैं कि दैवी प्रकति वाले ज्ञानी पुरुष सर्व प्रकार से मेरा भजन करते हैं तथा आसुरी प्रकृति वाले अज्ञानी पुरुष मेरा उपहास करते हैं।",
      "इसमें श्रीकृष्ण अर्जुन को यह बताते हैं कि जो शास्त्र विधि का ज्ञान न होने से तथा अन्य कारणों से शास्त्र विधि छोड़ने पर भी यज्ञ, पूजा आदि शुभ कर्म तो श्रद्धा पूर्वक करते हैं, उनकी स्तिथि क्या होती है।",
    ],
    // "actAns":
    //   "इसमें श्रीकृष्ण अर्जुन को क्षेत्र और क्षेत्रज्ञ के ज्ञान के बारे में तथा सत्व, रज और तम गुणों द्वारा अच्छी योनि में जन्म लेने का उपाय बताते हैं।",
    "qtype": "T"
  },
  {
    "id": 266,
    "qno": "2020121308",
    "question":
        "गीता जयंती श्रीमद् भगवद् गीता का प्रतीकात्मक जन्म है। यह हिंदू पंचांग के अनुसार मार्गशीर्ष शुक्ल एकादशी पर मनाया जाता है। कुरुक्षेत्र में महाभारत के युद्धक्षेत्र के दौरान भगवान कृष्ण ने अर्जुन को भगवत गीता का ज्ञान दिया था।वर्ष 2020 में गीता जयंती 25 दिसंबर को पडेगी। आपको बतलाना हैं 2021 में गीता जयंती किस दिन पड़ेगी?",
    "questionDate": "12/13/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "25 दिसंबर 2021",
      "14 दिसंबर 2021",
      "03 दिसंबर 2021",
      "19 दिसंबर 2021",
    ],
    // "actAns": "14 दिसंबर 2021",
    "qtype": "T"
  },
  {
    "id": 219,
    "qno": "2020121309",
    "question":
        "गीता के एक श्लोक का अर्थ है: क्रोध से मनुष्य की मति-बुदि्ध मारी जाती है यानी मूढ़ हो जाती है, कुंद हो जाती है। इससे स्मृति भ्रमित हो जाती है। स्मृति-भ्रम हो जाने से मनुष्य की बुद्धि नष्ट हो जाती है और बुद्धि का नाश हो जाने पर मनुष्य खुद अपना ही का नाश कर बैठता है। From anger arises delusion; delusion gives rise to broken memory(of Self); broken memory destroys the intellect and on loss of intellect this man falls from his steady position(in Self). Which verse are we talking about?",
    "questionDate": "12/13/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 2 श्लोक 63",
      "अध्याय 2 श्लोक 60",
      "अध्याय 2 श्लोक 53",
      "अध्याय 2 श्लोक 35",
    ],
    // "actAns": "अध्याय 2 श्लोक 63",
    "qtype": "T"
  },
  {
    "id": 327,
    "qno": "2020121310",
    "question":
        "इस प्रश्न के उत्तर हेतु सर्वप्रथम आपको ऊपर दिखाई गई वीडियो को पूरा देखना हैं उसमें गीता के श्लोक/श्लोकों का वर्णन किया गया हैं आपको उन श्लोकों के अध्याय व संख्या के बारे बतलाना हैं...",
    "questionDate": "12/13/2020",
    "link":
        "<iframe width=\"100%\" src=\"https://www.youtube.com/embed/p0Z1KH3A-6w?start=4&end=440\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "अध्याय 4 श्लोक 40",
      "अध्याय 2 श्लोक 70",
      "अध्याय 4 श्लोक 40,अध्याय 2 श्लोक 70",
      "अध्याय 3 श्लोक 5",
    ],
    // "actAns": "अध्याय 4 श्लोक 40,अध्याय 2 श्लोक 70",
    "qtype": "T"
  },
  {
    "id": 329,
    "qno": "2020121401",
    "question":
        "एक पात्र ऐसे हैं जिनका संपूर्ण महाभारत में कहीं जिक्र नहीं आता परंतु जब भगवान कृष्ण का अवतार काल को पूर्ण कर गौ लोक जाने का समय आता है तो भगवान उनसे कहते हैं कि सभी मुझसे कुछ न कुछ अपेक्षा करते थे आपने कभी मुझसे कोई वरदान नहीं मांगा आप कुछ भी मांगना चाहो मांग सकते हो। पात्र केवल उन शंकाओ का समाधान चाहता था जो उसके मन में श्रीकृष्ण की शिक्षाओं और उनके कृतित्व जैसे आपने अपने मित्र अर्जुन का युद्ध में साथ क्यों नहीं दिया, पांडवों को द्यूत क्रीड़ा से रोका क्यों नही, शकुनि की तरह आपने पासे क्यों नही फेकें इत्यादि को देखकर उठ रही थी। आप स्वयं भगवान थे यदि आप समय पर साथ देते तो स्थितियां कुछ और होती। बाद में उसके नाम से ....... गीता का वर्णन भी मिलता है उस पात्र का क्या नाम हैं ....",
    "questionDate": "12/14/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "सात्यकी (सेनापति)",
      "बलराम (भाई)",
      "उद्धव (सारथी)",
      "संजय (सारथी)",
    ],
    // "actAns": "उद्धव (सारथी)",
    "qtype": "T"
  },
  {
    "id": 187,
    "qno": "2020121402",
    "question":
        "ये शब्द किसके द्वारा कहे गए है: “In order to approach a creation as sublime as the Bhagavad-Gita with full understanding, it is necessary to attune our soul to it.”",
    "questionDate": "12/14/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "Rudolph Steiner",
      "Ralph Waldo Emerson",
      "Carl Jung",
      "Henry David Thoreau",
    ],
    // "actAns": "Rudolph Steiner",
    "qtype": "T"
  },
  {
    "id": 199,
    "qno": "2020121403",
    "question":
        "महाभारत के सबक -  अधूरा ज्ञान घातक। यह बात हम किस के विषय में ठीक प्रतीत होती हैं ",
    "questionDate": "12/14/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अभिमन्यु",
      "कर्ण",
      "अर्जुन",
      "अश्वत्थामा",
    ],
    // "actAns": "अभिमन्यु",
    "qtype": "T"
  },
  {
    "id": 330,
    "qno": "2020121404",
    "question":
        "ऊपर वीडियो में आपको एक स्टोरी सुनाई गई हैं जिसमे बतलाया गया हैं कि हमें बुरे समय में क्या करना चाहिए। आपको बतलाना हैं इस कहानी में गीता के किन श्लोकों का प्रयोग किया गया हैं ...",
    "questionDate": "12/14/2020",
    "link":
        "<iframe width=\"100%\" src=\"https://www.youtube.com/embed/iZR67Yd9Qlw?start=38&end=238\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "अध्याय 2 श्लोक 33",
      "अध्याय 9 श्लोक 22",
      "अध्याय 2 श्लोक 14",
      "अध्याय 4 श्लोक 40",
    ],
    // "actAns": "अध्याय 9 श्लोक 22",
    "qtype": "T"
  },
  {
    "id": 328,
    "qno": "2020121405",
    "question":
        "हममें से कुछ महाभारत को केवल धर्मयुद्ध व गीता ज्ञान तक जानते हैं जबकि इसमें अन्य बहुत उपदेश/ज्ञान भिन्न भिन्न पात्रों द्वारा दिये गए हैं। जैसे भीष्म नीति, उद्धव-गीता, युधिष्ठिर-यक्ष  प्रश्न, विदुर नीति इत्यादि प्रमुख हैं। आपको बतलाना हैं विदुर नीति में प्रमुखतः क्या हैं...",
    "questionDate": "12/14/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "बेहतर युद्ध प्रणाली",
      "बेहतर कर प्रणाली कैसे",
      "राजनीतिक परिवारों का आपस में बेहतर तालमेल कैसे",
      "जीवन-जगत के व्यवहार में राजा और प्रजा के दायित्वों की विधिवत नीति",
    ],
    // "actAns":
    //  "जीवन-जगत के व्यवहार में राजा और प्रजा के दायित्वों की विधिवत नीति",
    "qtype": "T"
  },
  {
    "id": 331,
    "qno": "2020121406",
    "question":
        "ऊपर वीडियो में आपको एक स्टोरी सुनाई गई हैं जिसमे बतलाया गया हैं कि हमें बुरे समय में क्या करना चाहिए। आपको बतलाना हैं इस कहानी में गीता के किन श्लोकों का प्रयोग किया गया हैं ...",
    "questionDate": "12/14/2020",
    "link":
        "<iframe width=\"100%\" src=\"https://www.youtube.com/embed/iZR67Yd9Qlw?start=238&end=383\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 2 श्लोक 33,अध्याय 2 श्लोक 14",
      "अध्याय 3 श्लोक 5",
      "अध्याय 4 श्लोक 40",
      "अध्याय 2 श्लोक 70",
    ],
    // "actAns": "अध्याय 2 श्लोक 33,अध्याय 2 श्लोक 14",
    "qtype": "T"
  },
  {
    "id": 306,
    "qno": "2020121407",
    "question":
        "नीचे दिए गए 4 विकल्पों में से आपको बतलाना हैं गीता के अध्याय संख्या 14 - गुणत्रयविभागयोग का सार क्या है...",
    "questionDate": "12/14/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "इसमें श्रीकृष्ण अर्जुन को क्षेत्र और क्षेत्रज्ञ के ज्ञान के बारे में तथा सत्व, रज और तम गुणों द्वारा अच्छी योनि में जन्म लेने का उपाय बताते हैं।",
      "इस अध्याय में अर्जुन के निवेदन पर श्रीकृष्ण अपना विश्वरूप धारण करते हैं।",
      "इसमें श्रीकृष्ण कहते हैं कि दैवी प्रकति वाले ज्ञानी पुरुष सर्व प्रकार से मेरा भजन करते हैं तथा आसुरी प्रकृति वाले अज्ञानी पुरुष मेरा उपहास करते हैं।",
      "इसमें श्रीकृष्ण सत्व, रज और तम गुणों का तथा मनुष्य की उत्तम, मध्यम अन्य गतियों का विस्तारपूर्वक वर्णन करते हैं। अंत में इन गुणों को पाने का उपाय और इसका फल बताया गया है।",
    ],
    // "actAns":
    //      "इसमें श्रीकृष्ण सत्व, रज और तम गुणों का तथा मनुष्य की उत्तम, मध्यम अन्य गतियों का विस्तारपूर्वक वर्णन करते हैं। अंत में इन गुणों को पाने का उपाय और इसका फल बताया गया है।",
    "qtype": "T"
  },
  {
    "id": 268,
    "qno": "2020121408",
    "question":
        "ब्रह्मसरोवर के आरती स्थल पर गीता की आरती के इलावा ओर कौन सी आरती होती है।",
    "questionDate": "12/14/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "शिवजी की आरती- जय शिव ओंकारा ॐ जय शिव ओंकारा ",
      "सरस्वती वंदना ।",
      "जय कुरूक्षेत्र धरा, दिव्य कुरूक्षेत्र धरा ।",
      "देवी कात्यानी की आरती",
    ],
    // "actAns": "जय कुरूक्षेत्र धरा, दिव्य कुरूक्षेत्र धरा ।",
    "qtype": "T"
  },
  {
    "id": 220,
    "qno": "2020121409",
    "question":
        "गीता के एक श्लोक का अर्थ है: श्रेष्ठ पुरुष जो-जो आचरण यानी जो-जो काम करते हैं, दूसरे मनुष्य (आम इंसान) भी वैसा ही आचरण, वैसा ही काम करते हैं। श्रेष्ठ पुरुष जो प्रमाण या उदाहरण प्रस्तुत करते हैं, समस्त मानव-समुदाय उसी का अनुसरण करने लग जाते हैं। Whatsoever a great man does, that alone the other men do; whatever he sets up as the standard, that the world follows. Which verse are we talking about?",
    "questionDate": "12/14/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "अध्याय 3 श्लोक 2",
      "अध्याय 3 श्लोक 12",
      "अध्याय 3 श्लोक 14",
      "अध्याय 3 श्लोक 21",
    ],
    // "actAns": "अध्याय 3 श्लोक 21",
    "qtype": "T"
  },
  {
    "id": 269,
    "qno": "2020121410",
    "question":
        "कुरुक्षेत्र में स्थित एक तीर्थ पर अपने पूर्वजो के निमित्त पिण्ड-दान एवं श्राद्ध की प्राचीन परम्परा रहीं है। देश-विदेश से आए श्रद्धालु अपने पूर्वजों के निमित्त इस तीर्थ पर श्राद्ध एवं पिण्ड दान करते हैं जिसका उल्लेख तीर्थ पुरोहितों की बहियों में मिलता है। कहा जाता है कि इसी तीर्थ के तट पर महर्षि दधीचि ने इन्द्र की याचना पर देव कार्य हेतु अपनी अस्थियों का दान किया था जिनसे निर्मित वज्र अस्त्र द्वारा इन्द्र ने वृत्रासुर का वध किया था। इस तीर्थ का क्या नाम है",
    "questionDate": "12/14/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "सन्निहित सरोवर",
      "ब्रह्मसरोवर",
      "कुलतारण तीर्थ",
      "प्राची तीर्थ",
    ],
    // "actAns": "सन्निहित सरोवर",
    "qtype": "T"
  },
  {
    "id": 240,
    "qno": "2020121501",
    "question":
        "महाभारत युद्ध के पहले दिन युद्ध शुरू होने से पहले श्रीकृष्ण ने मोहग्रस्त अर्जुन को गीता का उपदेश दिया था। उस दिन कौन सा वार था?         Which day of the week ShreeKrishan delivered sermon of Gita to Arjun before start of  Mahabharat battle?",
    "questionDate": "12/15/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "बुधवार।   Wednesday",
      "सोमवार।   Monday",
      "रविवार।    Sunday",
      "शनिवार    Saturday",
    ],
    // "actAns": "रविवार।    Sunday",
    "qtype": "T"
  },
  {
    "id": 285,
    "qno": "2020121502",
    "question":
        "ये शब्द किसके द्वारा कहे गए है: \"इस अदभुत ग्रन्थ के 18 छोटे अध्यायों में इतना सारा सत्य, इतना सारा ज्ञान और इतने सारे उच्च, गम्भीर और सात्त्विक विचार भरे हुए हैं कि वे मनुष्य को निम्न-से-निम्न दशा में से उठा कर देवता के स्थान पर बिठाने की शक्ति रखते हैं | वे पुरुष तथा स्त्रियाँ बहुत भाग्यशाली हैं जिनको इस संसार के अन्धकार से भरे हुए सँकरे मार्गों में प्रकाश देने वाला यह छोटा-सा लेकिन अखूट तेल से भरा हुआ धर्मप्रदीप प्राप्त हुआ है\"|",
    "questionDate": "12/15/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "महामना मालवीय जी",
      "आदि शंकराचार्य",
      "विनोबा भावे",
      "स्वामीविवेकानंद जी",
    ],
    // "actAns": "महामना मालवीय जी",
    "qtype": "T"
  },
  {
    "id": 247,
    "qno": "2020121503",
    "question":
        "गीता में अर्जुन तो श्री कृष्ण से बहुत प्रश्न करते हैं लेकिन श्री कृष्ण भी अर्जुन से प्रश्न पूछते है।  गीता में यह एक मात्र शलोक किस अध्याय में है जिसमें श्री कृष्ण अर्जुन से प्रश्न करते हैं। In the Gita, Arjuna asks a lot of questions from Shri Krishna, but Shri Krishna asks only one Question from Arjuna . In which chapter of Bhagwad Gita, is the only verse that Shri Krishna asks Arjuna?",
    "questionDate": "12/15/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 18",
      "अध्याय 15",
      "अध्याय 1",
      "अध्याय 2",
    ],
    // "actAns": "अध्याय 18",
    "qtype": "T"
  },
  {
    "id": 333,
    "qno": "2020121504",
    "question":
        "इस प्रश्न के उत्तर हेतु सर्वप्रथम आपको ऊपर दिखाई गई वीडियो को पूरा देखना हैं उसमें गीता के श्लोक/श्लोकों का वर्णन किया गया हैं आपको उन श्लोकों के अध्याय व संख्या के बारे बतलाना हैं...",
    "questionDate": "12/15/2020",
    "link":
        "<iframe width=\"100%\" src=\"https://www.youtube.com/embed/Z6qz4lQM9Ms?end=322\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 3 श्लोक 21",
      "अध्याय 2 श्लोक 33",
      "अध्याय 9 श्लोक 22",
      "अध्याय 2 श्लोक 14",
    ],
    // "actAns": "अध्याय 3 श्लोक 21",
    "qtype": "T"
  },
  {
    "id": 245,
    "qno": "2020121505",
    "question":
        "भगवद्गीता में कई विद्याओं का वर्णन है, जिनमें चार प्रमुख हैं-\r\n1. अभय विद्या: यह मृत्यु के भय को दूर करती है। \r\n2. ईश्वर विद्या: इस के प्रभाव से साधक अहंकार और गर्व के विकार से बचता है। \r\n3. ब्रह्म विद्या: यह अंतरात्मा में ब्रह्मा भाव को जगाता है।\r\n चौथी विद्या कौन सी है?\r\nVarious arts have been described in Bhagavad Gita, out of which  four major ones are: \r\n1. Abhaya Vidya: It removes the fear of death.\r\n2. Ishwar vidya: It prevents the seeker from being egoistic and proud. \r\n3. Brahma Vidya: This awakens Brahma spirit in conscience.\r\nWhich is the fourth science?",
    "questionDate": "12/15/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "सत्य विद्या: सच को जान लेने की विद्या Satya Vidya: Knowledge of truth",
      "आत्मविद्या : जिसके साक्षात्कार करने से सब कुछ जान लिया जाता है Aatam Vidya",
      "युद्ध विद्या : जिससे युद्ध को जीता जा सके Yudh Vidya:  the war can be won through this",
      "साम्य विद्या: राग द्वेष से छुटकारा दिलाकर जीव में समत्व भाव पैदा करती है  Samya Vidya: Creates an equilibrium by removing malice towards one and all",
    ],
    // "actAns":
    //  "साम्य विद्या: राग द्वेष से छुटकारा दिलाकर जीव में समत्व भाव पैदा करती है  Samya Vidya: Creates an equilibrium by removing malice towards one and all",
    "qtype": "T"
  },
  {
    "id": 272,
    "qno": "2020121506",
    "question":
        "भागवत पुराण के अनुसार खग्रास सूर्यग्रहण के समय द्वारका से पहुँचेे श्रीकृष्ण की कुरुक्षेत्र के तीर्थ सन्निहित सरोवर पर गोकुल से पहुँचेे नन्द, यशोदा तथा गोप-गोपिकाओं से भेंट हुई थी। श्रीकृष्ण द्वारा यंहा पर विरह व्यथा से पीड़ित गोपियों को निम्न मे से किस ज्ञान की दीक्षा दी थी??",
    "questionDate": "12/15/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "13 प्रकार के ज्ञान की",
      "गीता ज्ञान की",
      "आत्म ज्ञान की",
      "गणितीय व सहज ज्ञान की",
    ],
    // "actAns": "आत्म ज्ञान की",
    "qtype": "T"
  },
  {
    "id": 307,
    "qno": "2020121507",
    "question":
        "नीचे दिए गए 4 विकल्पों में से आपको बतलाना हैं गीता के अध्याय संख्या 15 - पुरुषोत्तमयोग का सार क्या है...",
    "questionDate": "12/15/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "इस अध्याय में अर्जुन के निवेदन पर श्रीकृष्ण अपना विश्वरूप धारण करते हैं।",
      "इसमें श्रीकृष्ण कहते हैं कि दैवी प्रकति वाले ज्ञानी पुरुष सर्व प्रकार से मेरा भजन करते हैं तथा आसुरी प्रकृति वाले अज्ञानी पुरुष मेरा उपहास करते हैं।",
      "इसमें श्रीकृष्ण सत्व, रज और तम गुणों का तथा मनुष्य की उत्तम, मध्यम अन्य गतियों का विस्तारपूर्वक वर्णन करते हैं। अंत में इन गुणों को पाने का उपाय और इसका फल बताया गया है।",
      "इसमें श्रीकृष्ण अर्जुन को क्षेत्र और क्षेत्रज्ञ के ज्ञान के बारे में तथा सत्व, रज और तम गुणों द्वारा अच्छी योनि में जन्म लेने का उपाय बताते हैं।",
    ],
    // "actAns":
    //    "त्रुटि के कारण प्रश्न को रद्द किया जा रहा हैं। इसका हमें खेद है।",
    "qtype": "T"
  },
  {
    "id": 270,
    "qno": "2020121508",
    "question":
        "विश्व की सबसे बड़ी अष्टधातु से निर्मित गीता उपदेश देते हुए कृष्ण अर्जुन के रथ की मूर्ति कुरुक्षेत्र में कहां स्थापित है।",
    "questionDate": "12/15/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "बिरला मंदिर",
      "परुषोत्तमपुरा बाग, ब्रह्मसरोवर",
      "गीता जन्म स्थली, ज्योतिसर",
      "गीता द्वार",
    ],
    // "actAns": "परुषोत्तमपुरा बाग, ब्रह्मसरोवर",
    "qtype": "T"
  },
  {
    "id": 221,
    "qno": "2020121509",
    "question":
        "गीता के एक श्लोक का अर्थ है: आत्मा को न शस्त्र काट सकते हैं, न आग उसे जला सकती है। न पानी उसे भिगो सकता है, न हवा उसे सुखा सकती है। यहां श्रीकृष्ण ने आत्मा के अजर-अमर और शाश्वत होने की बात की है। This Self cannot be cut by weapons, cannot be burnt by fire, cannot be wet by water and cannot be dried by wind. Which verse are we talking about?",
    "questionDate": "12/15/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "अन्तवन्त इमे देहा नित्यस्योक्ताः शरीरिणः।\r\nअनाशिनोऽप्रमेयस्य तस्माद्युध्यस्व भारत॥२-१८॥",
      "नैनं छिन्दन्ति शस्त्राणि नैनं दहति पावकः।\r\nन चैनं क्लेदयन्त्यापो न शोषयति मारुतः॥२-२३॥",
      "न जायते म्रियते वा कदाचि न्नायं भूत्वा भविता वा न भूयः।\r\nअजो नित्यः शाश्वतोऽयं पुराणो न हन्यते हन्यमाने शरीरे॥२-२०॥",
      "वेदाविनाशिनं नित्यं य एनमजमव्ययम्‌।\r\nकथं स पुरुषः पार्थ कं घातयति हन्ति कम्‌॥२-२१॥",
    ],
    // "actAns":
    //  "नैनं छिन्दन्ति शस्त्राणि नैनं दहति पावकः।\r\nन चैनं क्लेदयन्त्यापो न शोषयति मारुतः॥२-२३॥",
    "qtype": "T"
  },
  {
    "id": 334,
    "qno": "2020121510",
    "question":
        "इस प्रश्न के उत्तर हेतु सर्वप्रथम आपको ऊपर दिखाई गई वीडियो को पूरा देखना हैं उसमें गीता के श्लोक/श्लोकों का वर्णन किया गया हैं आपको उन श्लोकों के अध्याय व संख्या के बारे बतलाना हैं...",
    "questionDate": "12/15/2020",
    "link":
        "<iframe width=\"100%\" src=\"https://www.youtube.com/embed/95F4Esf2yYg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 5 श्लोक 15",
      "अध्याय 3 श्लोक 5",
      "अध्याय 4 श्लोक 40",
      "अध्याय 2 श्लोक 70",
    ],
    // "actAns": "अध्याय 5 श्लोक 15",
    "qtype": "T"
  },
  {
    "id": 337,
    "qno": "2020121601",
    "question":
        "इस प्रश्न के उत्तर हेतु सर्वप्रथम आपको ऊपर दिखाई गई वीडियो को पूरा देखना हैं उसमें गीता के श्लोक/श्लोकों का वर्णन किया गया हैं आपको उन श्लोकों के अध्याय व संख्या के बारे बतलाना हैं...",
    "questionDate": "12/16/2020",
    "link":
        "<iframe width=\"100%\" src=\"https://www.youtube.com/embed/heuQ-jhqf6o\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "अध्याय 2 श्लोक 16",
      "अध्याय 2 श्लोक 6",
      "अध्याय 2 श्लोक 4",
      "अध्याय 2 श्लोक 1",
    ],
    // "actAns": "अध्याय 2 श्लोक 6",
    "qtype": null
  },
  {
    "id": 283,
    "qno": "2020121602",
    "question":
        "ये शब्द किसके द्वारा कहे गए है: कर्म योग का रहस्य जो बिना किसी फल की इच्छा के कर्म करना है, भगवान कृष्ण ने भगवद-गीता में पढ़ाया है। \"The secret of karma yoga which is to perform actions without any fruitive desires is taught by Lord Krishna in the Bhagavad-Gita.\"",
    "questionDate": "12/16/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "आदि शंकराचार्य",
      "स्वामीविवेकानंद जी",
      "विनोबा भावे",
      "श्री अरबिंदो (अरविन्द घोष)",
    ],
    // "actAns": "स्वामीविवेकानंद जी",
    "qtype": "T"
  },
  {
    "id": 338,
    "qno": "2020121603",
    "question":
        "इस प्रश्न के उत्तर हेतु सर्वप्रथम आपको ऊपर दिखाई गई वीडियो को पूरा देखना हैं उसमें गीता के श्लोक/श्लोकों का वर्णन किया गया हैं आपको उन श्लोकों के अध्याय व संख्या के बारे बतलाना हैं...",
    "questionDate": "12/16/2020",
    "link":
        "<iframe width=\"100%\" src=\"https://www.youtube.com/embed/p3ivogE5NDY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 5 श्लोक 15, अध्याय 2 श्लोक 47",
      "अध्याय 1 श्लोक 47",
      "अध्याय 1 श्लोक 7",
      "अध्याय 2 श्लोक 27",
    ],
    // "actAns": "अध्याय 5 श्लोक 15, अध्याय 2 श्लोक 47",
    "qtype": "T"
  },
  {
    "id": 339,
    "qno": "2020121604",
    "question":
        "भगवद्गीता के प्रथम श्लोक में जब धृतराष्ट संजय से धर्मक्षेत्र कुरुक्षेत्र में दुर्योधन व पांडवों के बारे पूछते हैं तो श्लोक 2 व 3 में संजय क्या बतलाते हैं?",
    "questionDate": "12/16/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "संजय ने उत्तर दिया की दुर्योधन द्रोणाचार्य के पास जाकर उनका ध्यान दोनों सेनाओं के अवलोकन\n                  की तरफ आकर्षित करना चाह रहा है।",
      "संजय ने उत्तर दिया की दुर्योधन भीष्मपितामह के पास जाकर उनका ध्यान दोनों सेनाओं के अवलोकन\n                  की तरफ आकर्षित करना चाह रहा है।",
      "संजय बतलाते हैं कि अर्जुन दोनों ओर की सेनाओं में अपने सगे संबंधियों व रिश्तेदारों को देखकर श्रीकृष्ण से युद्ध में भाग न लेने हेतु अपने मन की दशा बारे कहते है।",
      "संजय बतलाते हैं कि अर्जुन श्रीकृष्ण को अपना रथ दोनों सेनाओं के मध्य ले जाने हेतु आग्रह कर रहे हैं",
    ],
    // "actAns":
    //  "संजय ने उत्तर दिया की दुर्योधन द्रोणाचार्य के पास जाकर उनका ध्यान दोनों सेनाओं के अवलोकन\n                  की तरफ आकर्षित करना चाह रहा है।",
    "qtype": "T"
  },
  {
    "id": 343,
    "qno": "2020121605",
    "question": "विषाद होने पर अर्जुन रथ के किस भाग में बैठ गए थे ?",
    "questionDate": "12/16/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "अग्रभाग में।",
      "पिछलेभाग में",
      "रथ से नीचे उतर गए थे",
      "मध्य भाग में।",
    ],
    // "actAns": "पिछलेभाग में",
    "qtype": "T"
  },
  {
    "id": 340,
    "qno": "2020121606",
    "question":
        "संख्या और बल से संपन्न होते हुए भी दुर्योधन अपनी सेना को पाण्डव की सेना से अपर्याप्त यानी कमजोर क्यों समझता है ?",
    "questionDate": "12/16/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "क्योकि उसके सेना पति उभय पक्षी भीष्मपितामह ने पांडवों को न मारने की कसम उठा रखी है।",
      "क्योकि उसके सेना पति उभय पक्षी भीष्मपितामह हैं जबकि पाण्डव सेना में स्वपक्षी भीम हैं।",
      "कर्ण के युद्ध में साथ न होने के कारण",
      "पाण्डव पक्ष श्रीकृष्ण के साथ मिलकर युद्ध कर रहे हैं",
    ],
    // "actAns":
    // "क्योकि उसके सेना पति उभय पक्षी भीष्मपितामह हैं जबकि पाण्डव सेना में स्वपक्षी भीम हैं।",
    "qtype": "T"
  },
  {
    "id": 308,
    "qno": "2020121607",
    "question":
        "नीचे दिए गए 4 विकल्पों में से आपको बतलाना हैं गीता के अध्याय संख्या 16 - दैवासुरसम्पद्विभागयोग का सार क्या है...",
    "questionDate": "12/16/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "इसमें श्रीकृष्ण अर्जुन को क्षेत्र और क्षेत्रज्ञ के ज्ञान के बारे में तथा सत्व, रज और तम गुणों द्वारा अच्छी योनि में जन्म लेने का उपाय बताते हैं।",
      "इस अध्याय में अर्जुन के निवेदन पर श्रीकृष्ण अपना विश्वरूप धारण करते हैं।",
      "इसमें श्रीकृष्ण स्वाभाविक रीति से ही दैवी प्रकृति वाले ज्ञानी पुरुष तथा आसुरी प्रकृति वाले अज्ञानी पुरूष के लक्षण के बारे में बताते हैं।",
      "इसमें श्रीकृष्ण अर्जुन को यह बताते हैं कि जो शास्त्र विधि का ज्ञान न होने से तथा अन्य कारणों से शास्त्र विधि छोड़ने पर भी यज्ञ, पूजा आदि शुभ कर्म तो श्रद्धा पूर्वक करते हैं, उनकी स्तिथि क्या होती है।",
    ],
    // "actAns":
    //     "इसमें श्रीकृष्ण स्वाभाविक रीति से ही दैवी प्रकृति वाले ज्ञानी पुरुष तथा आसुरी प्रकृति वाले अज्ञानी पुरूष के लक्षण के बारे में बताते हैं।",
    "qtype": "T"
  },
  {
    "id": 341,
    "qno": "2020121608",
    "question": "निम्न में से बृकोदर किसे व क्यों कहा गया हैं?",
    "questionDate": "12/16/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "अर्जुन को दोनों हाथों से धनुष चलाने के कारण",
      "युधिष्ठिर को सत्यवादी होने के कारण",
      "श्रीकृष्ण को सुदर्शनचक्र धारी होने के कारण",
      "भीम को बहुत अधिक भोजन करने के कारण",
    ],
    // "actAns": "भीम को बहुत अधिक भोजन करने के कारण",
    "qtype": "T"
  },
  {
    "id": 222,
    "qno": "2020121609",
    "question":
        "गीता के एक श्लोक का अर्थ है: हे भारत (अर्जुन), जब-जब धर्म की ग्लानि-हानि यानी उसका क्षय होता है और अधर्म में वृद्धि होती है, तब-तब मैं श्रीकृष्ण धर्म के अभ्युत्थान के लिए स्वयं की रचना करता हूं अर्थात अवतार लेता हूं। हम किस श्लोक की बात कर रहे है ...  O Bharat! Whenever there is a decay of religion and growth of injustice then I manifest Myself (take a form). Which verse are we talking about?",
    "questionDate": "12/16/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 4 श्लोक 7",
      "अध्याय 4 श्लोक 5",
      "अध्याय 4 श्लोक 17",
      "अध्याय 4 श्लोक 19",
    ],
    // "actAns": "अध्याय 4 श्लोक 7",
    "qtype": "T"
  },
  {
    "id": 342,
    "qno": "2020121610",
    "question": "निम्न में से सव्यसांची किसे व क्यों कहा गया हैं?",
    "questionDate": "12/16/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अर्जुन को दोनों हाथों से धनुष चलाने के कारण",
      "युधिष्ठिर को सत्यवादी होने के कारण",
      "श्रीकृष्ण को सुदर्शनचक्र धारी होने के कारण",
      "भीम को बहुत अधिक भोजन करने के कारण",
    ],
    // "actAns": "अर्जुन को दोनों हाथों से धनुष चलाने के कारण",
    "qtype": "T"
  },
  {
    "id": 242,
    "qno": "2020121701",
    "question":
        "कुरुक्षेत्र में सरस्वती नदी से थोड़ी दूरी पर वह कौन सा स्थान है जहाँ भगवान श्रीकृष्ण ने अर्जुन को महाभारत का युद्ध शुरू होने से पहले गीता का उपदेश दिया था ?                                Near Saraswati river at which place SriKrishna gave sermon of Gita to arjun before Mahabharat battle? ",
    "questionDate": "12/17/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "नाभिकमल तीर्थ        Nabhi Kamal Tirath",
      "ब्रह्मा सरोवर, कुरूक्षेत्र      Brahma Sarovar,Kurukshetra",
      "भीष्म कुण्ड, नरकातारी   Bhisma Kund, Narkatari",
      "ज्योतिसर\t                Jyotisar",
    ],
    // "actAns": "ज्योतिसर\t                Jyotisar",
    "qtype": "T"
  },
  {
    "id": 336,
    "qno": "2020121702",
    "question":
        "ये शब्द किसके द्वारा कहे गए है: बाईबल का मैंने यथार्थ अभ्यास किया है | उसमें जो दिव्यज्ञान लिखा है वह केवल गीता के उद्धरण के रूप में है | मैं ईसाई होते हुए भी गीता के प्रति इतना सारा आदरभाव इसलिए रखता हूँ कि जिन गूढ़ प्रश्नों का समाधान पाश्चात्य लोग अभी तक नहीं खोज पाये हैं, उनका समाधान गीता ग्रंथ ने शुद्ध और सरल रीति से दिया है | उसमें कई सूत्र अलौकिक उपदेशों से भरूपूर लगे इसीलिए गीता जी मेरे लिए साक्षात् योगेश्वरी माता बन रही हैं | वह तो विश्व के तमाम धन से भी नहीं खरीदा जा सके ऐसा भारतवर्ष का अमूल्य खजाना है |",
    "questionDate": "12/17/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "एफ.एच.मोलेम (इंग्लैन्ड)",
      "अमेरिकन महात्मा थॉरो",
      "Rudolph Steiner",
      "Albert Einstein",
    ],
    // "actAns": "एफ.एच.मोलेम (इंग्लैन्ड)",
    "qtype": "T"
  },
  {
    "id": 344,
    "qno": "2020121703",
    "question":
        "ज्ञानी होकर भी दुःख क्यों?इस प्रश्न के उत्तर हेतु सर्वप्रथम आपको ऊपर दिखाई गई वीडियो को पूरा देखना हैं उसमें गीता के श्लोक/श्लोकों का वर्णन किया गया हैं आपको उन श्लोकों के अध्याय व संख्या के बारे बतलाना हैं...",
    "questionDate": "12/17/2020",
    "link":
        "7ua9ZbBXIZo",
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 2 श्लोक 11",
      "अध्याय 2 श्लोक 27",
      "अध्याय 2 श्लोक 25",
      "अध्याय 2 श्लोक 13",
    ],
    // "actAns": "अध्याय 2 श्लोक 11",
    "qtype": "T"
  },
  {
    "id": 237,
    "qno": "2020121704",
    "question":
        "महाभारत युद्ध के कौन से दिन कुरुक्षेत्र मे भगवान श्रीकृष्ण ने अर्जुन को गीता का उपदेश दिया था?",
    "questionDate": "12/17/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "11 वें दिन",
      "प्रथम दिन",
      "18 वें दिन",
      "5 वें दिन",
    ],
    // "actAns": "प्रथम दिन",
    "qtype": "T"
  },
  {
    "id": 298,
    "qno": "2020121705",
    "question":
        "हमारे मन की किस स्थिति में हमें निम्न श्लोकों का पाठ करना चाहिए :\r\n अध्याय 4 श्लोक 11,अध्याय \r\n9 श्लोक 22, अध्याय\r\n 9 श्लोक 34,\r\nअध्याय 18 श्लोक 66,\r\nअध्याय 18 श्लोक 78\r\n",
    "questionDate": "12/17/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "उम्मीद खो देना",
      "भ्रम की स्थिति",
      "आलस्य",
      "अकेलापन",
    ],
    // "actAns": "उम्मीद खो देना",
    "qtype": "T"
  },
  {
    "id": 246,
    "qno": "2020121706",
    "question":
        "गीता के किस श्लोक  में अर्जुन ने श्री कृष्ण को दो अलग अलग भाव व्यक्त करने वाले नामो से सम्बोधित किया है ? In which shalok of Gita, Arjun has addressed Sri Krishna with two names having different gestures\r\n?",
    "questionDate": "12/17/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "न कर्मणामनारम्भान् नैष्कर्म्यं पुरुषोऽश्नुते। न च संन्यसनादेव सिद्धिं समधिगच्छति॥३-४॥",
      "श्रीभगवानुवाच लोकेऽस्मिन्द्विविधा निष्ठा पुरा प्रोक्ता मयानघ। ज्ञानयोगेन सांख्यानां कर्मयोगेन योगिनाम्॥३-३॥",
      "व्यामिश्रेणेव वाक्येन बुद्धिं मोहयसीव मे। तदेकं वद निश्चित्य येन श्रेयोऽहमाप्नुयाम्॥३-२॥",
      "ज्यायसी चेत्कर्मणस्ते मता बुद्धिर्जनार्दन। तत्किं कर्मणि घोरे मां नियोजयसि केशव॥३-१॥",
    ],
    // "actAns":
    //    "ज्यायसी चेत्कर्मणस्ते मता बुद्धिर्जनार्दन। तत्किं कर्मणि घोरे मां नियोजयसि केशव॥३-१॥",
    "qtype": "T"
  },
  {
    "id": 309,
    "qno": "2020121707",
    "question":
        "नीचे दिए गए 4 विकल्पों में से आपको बतलाना हैं गीता के अध्याय संख्या 17 - श्रद्धात्रयविभागयोग का सार क्या है...",
    "questionDate": "12/17/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "इसमें अर्जुन, श्रीकृष्ण से न्यास यानी ज्ञानयोग का और त्याग अर्थात फलासक्ति रहित कर्मयोग का तत्व जानने की इच्छा प्रकट करते हैं।",
      "इसमें श्रीकृष्ण सत्व, रज और तम गुणों का तथा मनुष्य की उत्तम, मध्यम अन्य गतियों का विस्तारपूर्वक वर्णन करते हैं। अंत में इन गुणों को पाने का उपाय और इसका फल बताया गया है।",
      "इसमें अर्जुन के निवेदन पर श्रीकृष्ण अपना विश्वरूप धारण करते हैं।",
      "इसमें श्रीकृष्ण अर्जुन को यह बताते हैं कि जो शास्त्र विधि का ज्ञान न होने से तथा अन्य कारणों से शास्त्र विधि छोड़ने पर भी यज्ञ, पूजा आदि शुभ कर्म तो श्रद्धा पूर्वक करते हैं, उनकी स्तिथि क्या होती है।",
    ],
    // "actAns":
    //  "इसमें श्रीकृष्ण अर्जुन को यह बताते हैं कि जो शास्त्र विधि का ज्ञान न होने से तथा अन्य कारणों से शास्त्र विधि छोड़ने पर भी यज्ञ, पूजा आदि शुभ कर्म तो श्रद्धा पूर्वक करते हैं, उनकी स्तिथि क्या होती है।",
    "qtype": "T"
  },
  {
    "id": 348,
    "qno": "2020121708",
    "question":
        "दोस्तों कौन हैं हम, कहाँ से आये हैं, कहाँ को जाना है। कभी तो ये सवाल आपके मन में भी आया होगा, यदि नहीं तो आपको सोचना चाहिए कि किस तरह की जिंदगी में आप उलझे हुए है, खुद के बारे में सोचने के लिए आपके पास समय ही नहीं है या इच्छा ही नही है। यदि आपके मन में ये सवाल आया है तो गीता का कौन सा अध्याय पढ़ना चाहिए ?",
    "questionDate": "12/17/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "अध्याय 6",
      "अध्याय 17",
      "अध्याय 15",
      "अध्याय 11",
    ],
    // "actAns": "अध्याय 15",
    "qtype": "T"
  },
  {
    "id": 223,
    "qno": "2020121709",
    "question":
        "गीता के एक श्लोक का अर्थ है: सीधे साधे सरल पुरुषों के कल्याण के लिए और दुष्कर्मियों के विनाश के लिए...धर्म की स्थापना के लिए मैं (श्रीकृष्ण) युगों-युगों से प्रत्येक युग में जन्म लेता आया हूं।  For the protection of the sages, for the destruction of evil-doers and for the firm establishment of the religion (the right path), I take birth in every age. Which verse are we talking about?",
    "questionDate": "12/17/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "अध्याय 4 श्लोक 1",
      "अध्याय 4 श्लोक 11",
      "अध्याय 4 श्लोक 13",
      "अध्याय 4 श्लोक 8",
    ],
    // "actAns": "अध्याय 4 श्लोक 8",
    "qtype": "T"
  },
  {
    "id": 346,
    "qno": "2020121710",
    "question":
        "भगवद्गीता में संजय के 5 अनमोल वचन |इस प्रश्न के उत्तर हेतु सर्वप्रथम आपको ऊपर दिखाई गई वीडियो को पूरा देखना हैं उसमें गीता के श्लोक/श्लोकों का वर्णन किया गया हैं आपको उन श्लोकों के अध्याय व संख्या के बारे बतलाना हैं जिनका इस वीडियो में न बतलाकर अगली वीडियो में बतलाने बारे कहा गया हैं ....",
    "questionDate": "12/17/2020",
    "link":
        "<iframe width=\"100%\" src=\"https://www.youtube.com/embed/ZGOZ1wStfdI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "अध्याय 18 श्लोक 73",
      "अध्याय 18 श्लोक 73,74,75,76,77",
      "अध्याय 18 श्लोक 74,75,76,77,78",
      "अध्याय 18 श्लोक 78",
    ],
    // "actAns": "अध्याय 18 श्लोक 78",
    "qtype": "T"
  },
  {
    "id": 345,
    "qno": "2020121801",
    "question":
        "मोक्ष क्या है? मोक्ष और मुक्ति में अंतर? इस प्रश्न के उत्तर हेतु सर्वप्रथम आपको ऊपर दिखाई गई वीडियो को पूरा देखना हैं उसमें गीता के श्लोक/श्लोकों का वर्णन किया गया हैं आपको उन श्लोकों के अध्याय व संख्या के बारे बतलाना हैं...",
    "questionDate": "12/18/2020",
    "link":
        "<iframe width=\"100%\" src=\"https://www.youtube.com/embed/lBYdIc4qaFQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "अध्याय 2 श्लोक 61",
      "अध्याय 2 श्लोक 62",
      "अध्याय 2 श्लोक 63",
      "अध्याय 2 श्लोक 62, अध्याय 2 श्लोक 63",
    ],
    // "actAns": "अध्याय 2 श्लोक 62, अध्याय 2 श्लोक 63",
    "qtype": "T"
  },
  {
    "id": 347,
    "qno": "2020121802",
    "question":
        "इस प्रश्न के उत्तर हेतु सर्वप्रथम आपको ऊपर दिखाई गई वीडियो को पूरा देखना हैं उसमें गीता के श्लोक/श्लोकों का वर्णन किया गया हैं आपको उन श्लोकों के अध्याय व संख्या के बारे बतलाना हैं...",
    "questionDate": "12/18/2020",
    "link":
        "<iframe width=\"100%\" src=\"https://www.youtube.com/embed/4e6LGL2G7TA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 18 श्लोक 78",
      "अध्याय 18 श्लोक 73",
      "अध्याय 18 श्लोक 74,75,76,77,78",
      "अध्याय 18 श्लोक 74,75",
    ],
    // "actAns": "अध्याय 18 श्लोक 78",
    "qtype": "T"
  },
  {
    "id": 349,
    "qno": "2020121803",
    "question":
        "गीता के अध्याय 2 के श्लोक 14 में भगवान कृष्ण द्वारा सुख-दुख की तुलना निम्न में से किसके साथ की है...",
    "questionDate": "12/18/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "बुखार",
      "घर मे आए मेहमान",
      "हवा",
      "ग्रीष्म व शरद ऋतु",
    ],
    // "actAns": "ग्रीष्म व शरद ऋतु",
    "qtype": "T"
  },
  {
    "id": 351,
    "qno": "2020121804",
    "question": "गीता में दलदल किसे कहा गया है???",
    "questionDate": "12/18/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "सुख-दुख",
      "मोह",
      "कौरवों की सेना को",
      "दुखों की कोठरी",
    ],
    // "actAns": "मोह",
    "qtype": "T"
  },
  {
    "id": 299,
    "qno": "2020121805",
    "question":
        "हमारे मन की किस स्थिति में हमें निम्न श्लोकों का पाठ करना चाहिए :\rअध्याय \n14 श्लोक 17, अध्याय \r\n16 श्लोक 21, अध्याय \r\n17 श्लोक 25",
    "questionDate": "12/18/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "उम्मीद खो देना",
      "लालच",
      "भ्रम की स्थिति",
      "अकेलापन",
    ],
    // "actAns": "लालच",
    "qtype": "T"
  },
  {
    "id": 353,
    "qno": "2020121806",
    "question":
        "सम्पूर्ण महाभारत अठारह पर्वों में विभक्त है। आपको बतलाना है भगवद् गीता महाभारत के किस पर्व में वर्णित है?",
    "questionDate": "12/18/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "शान्ति पर्व",
      "विराट पर्व",
      "भीष्म पर्व",
      "महाप्रास्थानिक पर्व",
    ],
    // "actAns": "भीष्म पर्व",
    "qtype": "T"
  },
  {
    "id": 310,
    "qno": "2020121807",
    "question":
        "नीचे दिए गए 4 विकल्पों में से आपको बतलाना हैं गीता के अध्याय संख्या 18 - मोक्षसंन्यासयोग का सार क्या है...\t",
    "questionDate": "12/18/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "इसमें अर्जुन, श्रीकृष्ण से न्यास यानी ज्ञानयोग का और त्याग अर्थात फलासक्ति रहित कर्मयोग का तत्व जानने की इच्छा प्रकट करते हैं।",
      "इसमें श्रीकृष्ण सत्व, रज और तम गुणों का तथा मनुष्य की उत्तम, मध्यम अन्य गतियों का विस्तारपूर्वक वर्णन करते हैं। अंत में इन गुणों को पाने का उपाय और इसका फल बताया गया है।",
      "इसमें अर्जुन के निवेदन पर श्रीकृष्ण अपना विश्वरूप धारण करते हैं।",
      "इसमें श्रीकृष्ण अर्जुन को यह बताते हैं कि जो शास्त्र विधि का ज्ञान न होने से तथा अन्य कारणों से शास्त्र विधि छोड़ने पर भी यज्ञ, पूजा आदि शुभ कर्म तो श्रद्धा पूर्वक करते हैं, उनकी स्तिथि क्या होती है।",
    ],
    // "actAns":
    //   "इसमें अर्जुन, श्रीकृष्ण से न्यास यानी ज्ञानयोग का और त्याग अर्थात फलासक्ति रहित कर्मयोग का तत्व जानने की इच्छा प्रकट करते हैं।",
    "qtype": "T"
  },
  {
    "id": 350,
    "qno": "2020121808",
    "question":
        "निम्न में से कौन हैं जो कहते है कि मैं जिंदगी भर 45 मिनट गीता पढ़े बगैर सोता नहीं।",
    "questionDate": "12/18/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "मेट्रोमैन श्रीधरन जी",
      "विनोबा भावे",
      "महामना मालवीय जी",
      "श्री अरबिंदो (अरविन्द घोष)",
    ],
    // "actAns": "मेट्रोमैन श्रीधरन जी",
    "qtype": "T"
  },
  {
    "id": 224,
    "qno": "2020121809",
    "question":
        "गीता के एक श्लोक का अर्थ है: जैसे मनुष्य जीर्ण वस्त्रों को त्यागकर दूसरे नये वस्त्रों को धारण करता है\r\nवैसे ही देही जीवात्मा पुराने शरीरों को त्याग कर दूसरे नए शरीरों को प्राप्त होता है। As a man casts off worn-out garments and puts on others that are new,\r\nso does the soul cast off its worn-out bodies and enter into others that are new. Which verse are we talking about?",
    "questionDate": "12/18/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "अध्याय 2 श्लोक 24",
      "अध्याय 2 श्लोक 2",
      "अध्याय 2 श्लोक 22",
      "अध्याय 2 श्लोक 20",
    ],
    // "actAns": "अध्याय 2 श्लोक 22",
    "qtype": "T"
  },
  {
    "id": 352,
    "qno": "2020121810",
    "question":
        "गीता के अध्याय 3 के श्लोक 3 में निष्ठा कितने प्रकार की बतलाई गई हैं ...\nश्रीभगवानुवाच लोकेऽस्मिन्द्विविधा निष्ठा पुरा प्रोक्ता मयानघ।\nज्ञानयोगेन सांख्यानां कर्मयोगेन योगिनाम्॥३-३॥",
    "questionDate": "12/18/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "2",
      "3",
      "4",
      "5",
    ],
    // "actAns": "2",
    "qtype": "T"
  },
  {
    "id": 239,
    "qno": "2020121901",
    "question":
        "48 कोस महाभारत युद्ध क्षेत्र में हरियाणा के कौन से ज़िले आते हैं?    Which districts gets covered in 48 kos mahabharat battle field?",
    "questionDate": "12/19/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "कुरुक्षेत्र। करनाल।  जींद। कैथल",
      "कुरुक्षेत्र। करनाल। पानीपत। जींद। कैथल।      Kurukshetra, Karnal, Panipat, Jind, Kaithal",
      "कुरुक्षेत्र",
      "कुरुक्षेत्र। करनाल। कैथल",
    ],
    // "actAns":
    //   "कुरुक्षेत्र। करनाल। पानीपत। जींद। कैथल।      Kurukshetra, Karnal, Panipat, Jind, Kaithal",
    "qtype": "T"
  },
  {
    "id": 185,
    "qno": "2020121902",
    "question":
        "ये किसने कहा था \"जो इस ग्रंथ (गीता) मे है वह अन्य जगह भी है, जो इसमे नहीं है, वह कहीं भी नहीं है।\"",
    "questionDate": "12/19/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "कबीर",
      "तुलसीदास",
      "वेद व्यास",
      "नारदजी",
    ],
    // "actAns": "वेद व्यास",
    "qtype": "T"
  },
  {
    "id": 357,
    "qno": "2020121903",
    "question": "भगवद्गीता के अनुसार वास्तविक क्या है?",
    "questionDate": "12/19/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "भगवान - जो इच्छाओं को पूरा करता है",
      "देवी - जो पोषण और रक्षा करती है",
      "पृथ्वी - जो चेतन और निर्जीव का समर्थन करती है",
      "ब्राह्मण - वह जो सभी परिवर्तनों को परिभाषित करता है और सभी अवधियों में समान रहता है।",
    ],
    // "actAns":
    //  "ब्राह्मण - वह जो सभी परिवर्तनों को परिभाषित करता है और सभी अवधियों में समान रहता है।",
    "qtype": "T"
  },
  {
    "id": 360,
    "qno": "2020121904",
    "question":
        "अर्जुन के रथ जिसका नाम 'कपिध्वज' था उसके झंडे पर कौन विराजमान थे?",
    "questionDate": "12/19/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "अग्नि-देवता",
      "हनुमान",
      "भाग्य की देवी",
      "तलवार",
    ],
    // "actAns": "हनुमान",
    "qtype": "T"
  },
  {
    "id": 300,
    "qno": "2020121905",
    "question":
        "हमारे मन की किस स्थिति में हमें निम्न श्लोकों का पाठ करना चाहिए :\r\n अध्याय 4 श्लोक 10\r\n, अध्याय 11 श्लोक 50,\r\nअध्याय 18 श्लोक 30\r\n",
    "questionDate": "12/19/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "भ्रम की स्थिति",
      "लालच",
      "आलस्य",
      "भय,आशंका,डर",
    ],
    // "actAns": "भय,आशंका,डर",
    "qtype": "T"
  },
  {
    "id": 354,
    "qno": "2020121906",
    "question":
        "भगवद्गीता के 18 अध्याय को सामान्य 3 भागों में वर्गीकृत किया गया है। आपको बतलाना हैं कि गीता के पहले 6 अध्याय  किस विषय पर केंद्रित है।",
    "questionDate": "12/19/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "कर्म",
      "भक्ति",
      "सांख्य",
      "ध्यान",
    ],
    // "actAns": "कर्म",
    "qtype": "T"
  },
  {
    "id": 313,
    "qno": "2020121907",
    "question":
        "नीचे दिए गए 4 विकल्पों में से आपको बतलाना हैं गीता के अध्याय संख्या 2 - सांख्ययोग का सार क्या है...",
    "questionDate": "12/19/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अर्जुन के मोह को दूर करने के लिये श्रीकृष्ण उसे कई ढंग से समझाते हैं। सबसे पहले वे उसे बताते हैं कि वह शरीर नहीं आत्मा है। मृत्यु उसकी तथा उसके स्वजन कहे जाने वाले योद्धाओं की नहीं होगी, उनके शरीरों की ही होगी। आत्मा तो शाष्वत, अमर है। फिर उसे उसके क्षात्र-धर्म के अनुसार समझाते हैं कि धर्मयुद्ध करना उसके लिये विषेष हितकर है।  फिर श्रीकृष्ण कर्मयोग की नींव रखते हुए उसे युद्ध करने की अर्थात कर्तव्य-पालन की उचित रीति बताते हैं- जय-पराजय, लाभ-हानि, सुख-दुख में समभव रखते हुए युद्ध करे। यह समता आयेगी कैसे और इसके क्या-क्या लाभ हैं",
      "इसमें श्रीकृष्ण अर्जुन को क्षेत्र और क्षेत्रज्ञ के ज्ञान के बारे में तथा सत्व, रज और तम गुणों द्वारा अच्छी योनि में जन्म लेने का उपाय बताते हैं।",
      "इसमें श्रीकृष्ण सत्व, रज और तम गुणों का तथा मनुष्य की उत्तम, मध्यम अन्य गतियों का विस्तारपूर्वक वर्णन करते हैं। अंत में इन गुणों को पाने का उपाय और इसका फल बताया गया है।",
      "इस अध्याय में अर्जुन के निवेदन पर श्रीकृष्ण अपना विश्वरूप धारण करते हैं।",
    ],
    // "actAns":
    //  "अर्जुन के मोह को दूर करने के लिये श्रीकृष्ण उसे कई ढंग से समझाते हैं। सबसे पहले वे उसे बताते हैं कि वह शरीर नहीं आत्मा है। मृत्यु उसकी तथा उसके स्वजन कहे जाने वाले योद्धाओं की नहीं होगी, उनके शरीरों की ही होगी। आत्मा तो शाष्वत, अमर है। फिर उसे उसके क्षात्र-धर्म के अनुसार समझाते हैं कि धर्मयुद्ध करना उसके लिये विषेष हितकर है।  फिर श्रीकृष्ण कर्मयोग की नींव रखते हुए उसे युद्ध करने की अर्थात कर्तव्य-पालन की उचित रीति बताते हैं- जय-पराजय, लाभ-हानि, सुख-दुख में समभव रखते हुए युद्ध करे। यह समता आयेगी कैसे और इसके क्या-क्या लाभ हैं",
    "qtype": "T"
  },
  {
    "id": 359,
    "qno": "2020121908",
    "question": "कृष्ण को हृषिकेश क्यों कहा जाता हैं",
    "questionDate": "12/19/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "उनके पूर्ण वश में इन्द्रियां हैं इसीलिए वे परमात्मा हैं। वे हर्षित होते हैं। उनकी रश्मियों (सूर्य) से जगत् प्रीति करता है",
      "धन रूपी लालच पर विजय पाने के कारण",
      "युद्ध में पाडवों के मार्गदर्शक होने के कारण",
      "पूर्ण ज्ञाता होने के कारण।",
    ],
    // "actAns":
    //  "उनके पूर्ण वश में इन्द्रियां हैं इसीलिए वे परमात्मा हैं। वे हर्षित होते हैं। उनकी रश्मियों (सूर्य) से जगत् प्रीति करता है",
    "qtype": "T"
  },
  {
    "id": 225,
    "qno": "2020121909",
    "question":
        "गीता के एक श्लोक का अर्थ है: संयमरहित अयुक्त पुरुष को आत्म ज्ञान नहीं होता और अयुक्त को भावना और ध्यान की क्षमता नहीं होती।\r\nभावना रहित पुरुष को शान्ति नहीं मिलती अशान्त पुरुष को सुख कहाँ ? For the unsteady there is no wisdom, and there is no meditation for the unsteady man.\r\nAnd for an un-meditated man, there is no peace. How can there be happiness for one without peace?  Which verse are we talking about?",
    "questionDate": "12/19/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अध्याय 2 श्लोक 66",
      "अध्याय 2 श्लोक 14",
      "अध्याय 2 श्लोक 33",
      "अध्याय 2 श्लोक 13",
    ],
    // "actAns": "अध्याय 2 श्लोक 66",
    "qtype": "T"
  },
  {
    "id": 358,
    "qno": "2020121910",
    "question": "भगवद्गीता अनुसार इच्छाओं को कैसे संतुष्ट किया जा सकता है?",
    "questionDate": "12/19/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "धर्मार्थ जीवन द्वारा",
      "सब कुछ त्याग कर",
      "इंद्रियों को कठोरतापूर्वक बस मे करके।",
      "इनमें से कोई नहीं",
    ],
    // "actAns": "इंद्रियों को कठोरतापूर्वक बस मे करके।",
    "qtype": "T"
  },
  {
    "id": 238,
    "qno": "2020122001",
    "question":
        "गीता में किस व्यक्ति ने कुरुक्षेत्र को धर्मक्षेत्र कहा है?            In Gita who has addressed Kurukshetra as Dharamkshetra?",
    "questionDate": "12/20/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "संजय",
      "धृतराष्ट्र  ",
      "अर्जुन",
      "कृष्ण",
    ],
    // "actAns": "धृतराष्ट्र  ",
    "qtype": "T"
  },
  {
    "id": 361,
    "qno": "2020122002",
    "question": "गीता के अध्याय 2 के अनुसार अधूरी इच्छा से क्या पैदा होता है?",
    "questionDate": "12/20/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "खुद पर दया आती है",
      "क्रोध",
      "सहानुभूति",
      "उदासी",
    ],
    // "actAns": "क्रोध",
    "qtype": "T"
  },
  {
    "id": 362,
    "qno": "2020122003",
    "question":
        "'अच्युत' शब्द को गीता में बार बार प्रयोग किया गया हैं जैसे श्लोक 18-73, 1-21\nआपको बतलाना हैं ये शब्द किस के लिए प्रयोग किया गया है ....",
    "questionDate": "12/20/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "कृष्ण",
      "अर्जुन",
      "संजय",
      "दुर्योधन",
    ],
    // "actAns": "कृष्ण",
    "qtype": "T"
  },
  {
    "id": 363,
    "qno": "2020122004",
    "question":
        "'भारत' शब्द को गीता में बार बार प्रयोग किया गया हैं जैसे श्लोक 4-7\n यदा यदा हि धर्मस्य ग्लानिर्भवति भारत।\nअभ्युत्थानमधर्मस्य तदात्मानं सृजाम्यहम्॥४-७॥आपको बतलाना है ये शब्द किस के लिए प्रयोग किया गया है ....",
    "questionDate": "12/20/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "कृष्ण",
      "अर्जुन",
      "संजय",
      "भारत देश",
    ],
    // "actAns": "अर्जुन",
    "qtype": "T"
  },
  {
    "id": 314,
    "qno": "2020122005",
    "question":
        "नीचे दिए गए 4 विकल्पों में से आपको बतलाना हैं गीता के अध्याय संख्या 3 - कर्मयोग का सार क्या है...",
    "questionDate": "12/20/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "इसमें श्रीकृष्ण अर्जुन को क्षेत्र और क्षेत्रज्ञ के ज्ञान के बारे में तथा सत्व, रज और तम गुणों द्वारा अच्छी योनि में जन्म लेने का उपाय बताते हैं।",
      "अर्जुन के मोह को दूर करने के लिये श्रीकृष्ण उसे कई ढंग से समझाते हैं। सबसे पहले वे उसे बताते हैं कि वह शरीर नहीं आत्मा है। मृत्यु उसकी तथा उसके स्वजन कहे जाने वाले योद्धाओं की नहीं होगी, उनके शरीरों की ही होगी। आत्मा तो शाष्वत, अमर है। फिर उसे उसके क्षात्र-धर्म के अनुसार समझाते हैं कि धर्मयुद्ध करना उसके लिये विषेष हितकर है।  फिर श्रीकृष्ण कर्मयोग की नींव रखते हुए उसे युद्ध करने की अर्थात कर्तव्य-पालन की उचित रीति बताते हैं- जय-पराजय, लाभ-हानि, सुख-दुख में समभव रखते हुए युद्ध करे। यह समता आयेगी कैसे और इसके क्या-क्या लाभ हैं",
      "इसमें श्रीकृष्ण सत्व, रज और तम गुणों का तथा मनुष्य की उत्तम, मध्यम अन्य गतियों का विस्तारपूर्वक वर्णन करते हैं। अंत में इन गुणों को पाने का उपाय और इसका फल बताया गया है।",
      "मनुष्य को हर पल क्रियाएं करनी होती हैं; और आम तौर पर हम अपनी गतिविधियों से बंध जाते हैं, लेकिन कर्मयोग कर्म करने की एक ऐसी दिव्य विधि है, जिसके बजाए हम उन कार्यों से मुक्त हो जाते हैं। कर्मयोग की यह विधि क्या है, उसके अनुसार कर्म कैसे करें, क्या किसी ने इस विधि के अनुसार कर्म किए हैं और उनका भाग्य क्या रहा है - इस अध्याय में इस पर विस्तार से चर्चा की गई है। मनुष्य अपने बुरे कामों के बावजूद भी बुरे कामों में लिप्त क्यों होता है, इस अध्याय में भी बताया गया है। कृष्ण हमें यह भी बताते हैं कि उस कारण से कैसे छुटकारा पाया जाए।",
    ],
    // "actAns":
    //  "मनुष्य को हर पल क्रियाएं करनी होती हैं; और आम तौर पर हम अपनी गतिविधियों से बंध जाते हैं, लेकिन कर्मयोग कर्म करने की एक ऐसी दिव्य विधि है, जिसके बजाए हम उन कार्यों से मुक्त हो जाते हैं। कर्मयोग की यह विधि क्या है, उसके अनुसार कर्म कैसे करें, क्या किसी ने इस विधि के अनुसार कर्म किए हैं और उनका भाग्य क्या रहा है - इस अध्याय में इस पर विस्तार से चर्चा की गई है। मनुष्य अपने बुरे कामों के बावजूद भी बुरे कामों में लिप्त क्यों होता है, इस अध्याय में भी बताया गया है। कृष्ण हमें यह भी बताते हैं कि उस कारण से कैसे छुटकारा पाया जाए।",
    "qtype": "T"
  },
  {
    "id": 355,
    "qno": "2020122006",
    "question":
        "भगवद्गीता के 18 अध्याय को सामान्य 3 भागों में वर्गीकृत किया गया है। आपको बतलाना हैं कि गीता के मध्य भाग के 6 अध्याय  किस विषय पर केंद्रित है।",
    "questionDate": "12/20/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "मैडिटेशन",
      "भक्ति",
      "सांख्य",
      "कर्म",
    ],
    // "actAns": "भक्ति",
    "qtype": "T"
  },
  {
    "id": 367,
    "qno": "2020122007",
    "question":
        "हिंदी सिनेमा की बहुचर्चित फिल्म 'Oh My God' में पात्र कांजी अपने मुकदमे की पैरवी के समय गीता के कौन से अध्याय के कौन से श्लोक के अर्थ का प्रयोग करते है जिसके अनुसार भगवान कृष्ण अर्जुन से कहते है - \"पूरी सृष्टि का सृजन मेरी इच्छा से हुआ है, इसका विनाश भी मेरी इच्छा से होगा ये पूरी सृष्टि मेरी इच्छा के अधीन है। इसके सृजन व विनाश के लिए केवल मैं और केवल मैं ही जिम्मेवार हूँ।\"",
    "questionDate": "12/20/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "नौवा अध्याय श्लोक 7 - सर्वभूतानि कौन्तेय प्रकृतिं यान्ति मामिकाम्‌।",
      "नौवा अध्याय श्लोक 8 - प्रकृतिं स्वामवष्टभ्य विसृजामि पुनः पुनः।",
      "नौवा अध्याय श्लोक 9 - न च मां तानि कर्माणि निबध्नन्ति धनञ्जय।",
      "नौवा अध्याय श्लोक 10 - मयाध्यक्षेण प्रकृतिः सूयते सचराचरं ।",
    ],
    // "actAns": "नौवा अध्याय श्लोक 8 - प्रकृतिं स्वामवष्टभ्य विसृजामि पुनः पुनः।",
    "qtype": "T"
  },
  {
    "id": 364,
    "qno": "2020122008",
    "question":
        "महर्षि दयानंद सरस्वती महाराज ने अपने कालजयी ग्रंथ सत्यार्थ प्रकाश के आठवें समुल्लास में एक प्रश्न \"जब कारण के बिना कार्य नहीं होता तो कारण का कारण क्यों नहीं?\" के उत्तर में गीता के अध्याय 2 के एक श्लोक को उद्धत किया है। वह कौन सा श्लोक हैं...",
    "questionDate": "12/20/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "नासतो विद्यते भावो नाभावो विद्यते सतः।\r\nउभयोरपि दृष्टोऽन्त स्त्वनयोस्तत्वदर्शिभिः॥२-१६॥",
      "जातस्त हि ध्रुवो मृत्युर्ध्रुवं जन्म मृतस्य च।\r\nतस्मादपरिहार्येऽर्थे न त्वं शोचितुमर्हसि॥२-२७॥",
      "अव्यक्तादीनि भूतानि व्यक्तमध्यानि भारत।\r\nअव्यक्तनिधनान्येव तत्र का परिदेवना॥२-२८॥",
      "आश्चर्यवत्पश्यति कश्चिदेन माश्चर्यवद्वदति तथैव चान्यः।\r\nआश्चर्यवच्चैनमन्यः श्रृणोति श्रुत्वाप्येनं वेद न चैव कश्चित्‌॥२-२९॥",
    ],
    // "actAns":
//"नासतो विद्यते भावो नाभावो विद्यते सतः।\r\nउभयोरपि दृष्टोऽन्त स्त्वनयोस्तत्वदर्शिभिः॥२-१६॥",
    "qtype": "T"
  },
  {
    "id": 226,
    "qno": "2020122009",
    "question":
        "गीता के अध्याय 6  के एक श्लोक का अर्थ है: स्वयं अपना उद्धार करे अपना पतन न करे,\r\nक्योंकि आप ही अपना मित्र है और आप ही अपना शत्रु है। हम किस श्लोक की बात कर रहे है| Elevate yourself through your own efforts, and not degrade yourself. For, the mind can be the friend and also the enemy of the self. Which verse are we talking about?",
    "questionDate": "12/20/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "श्रीभगवानुवाच अनाश्रितः कर्मफलं कार्यं कर्म करोति यः।\r\nस संन्यासी च योगी च न निरग्निर्न चाक्रियः॥६-१॥",
      "यं संन्यासमिति प्राहु र्योगं तं विद्धि पाण्डव।\r\nन ह्यसंन्यस्तसंकल्पो योगी भवति कश्चन॥६-२॥",
      "उद्धरेदात्मनात्मानं नात्मानमवसादयेत्।\r\nआत्मैव ह्यात्मनो बन्धु रात्मैव रिपुरात्मनः॥६-५॥",
      "बन्धुरात्मात्मनस्तस्य येनात्मैवात्मना जितः।\r\nअनात्मनस्तु शत्रुत्वे वर्तेतात्मैव शत्रुवत्॥६-६॥",
    ],
    // "actAns":
    //   "उद्धरेदात्मनात्मानं नात्मानमवसादयेत्।\r\nआत्मैव ह्यात्मनो बन्धु रात्मैव रिपुरात्मनः॥६-५॥",
    "qtype": "T"
  },
  {
    "id": 365,
    "qno": "2020122010",
    "question": "भारत की अदालतों में गवाह को कसम कैसे दिलाई जाती है ...",
    "questionDate": "12/20/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "भगवद्गीता पर हाथ रखकर।",
      "व्यक्ति विशेष के धर्म अनुसार किताब पर हाथ रखकर।",
      "संविधान की किताब पर हाथ रखकर।",
      "किसी भी बुक पर हाथ रखने की कोई परम्परा नही है।",
    ],
    // "actAns": "किसी भी बुक पर हाथ रखने की कोई परम्परा नही है।",
    "qtype": "T"
  },
  {
    "id": 366,
    "qno": "2020122101",
    "question":
        "ब्रिटिश न्यायालयों में हिन्दुओं को अपनी धार्मिक ग्रंथ भगवद्गीता पर हाथ रखकर सामान्य शब्दों को दोहराते हुए शपथ लेने की छूट है। अभी हाल ही में हुए चुनाव में निम्न में से एक सांसद को छोड़कर बाकी सभी ने गीता के ऊपर हाथ रखकर शपथ ग्रहण की। उनका क्या नाम है।",
    "questionDate": "12/21/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "ऋषि सुनाक",
      "आलोक शर्मा",
      "शैलेश वारा",
      "वीरेंद्र शर्मा",
    ],
    // "actAns": "वीरेंद्र शर्मा",
    "qtype": "T"
  },
  {
    "id": 282,
    "qno": "2020122102",
    "question":
        "इस प्रश्न के उत्तर हेतु सर्वप्रथम आपको ऊपर दिखाई गई वीडियो को पूरा देखना हैं उसमें गीता के श्लोक/श्लोकों का वर्णन किया गया हैं आपको उन श्लोकों के अध्याय व संख्या के बारे बतलाना हैं...",
    "questionDate": "12/21/2020",
    "link":
        "<iframe width=\"100%\" src=\"https://www.youtube.com/embed/Z51frXL7MgE?start=15\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "अध्याय 2 श्लोक 7",
      "अध्याय 2 श्लोक 17",
      "अध्याय 4 श्लोक 34",
      "अध्याय 2 श्लोक 7, अध्याय 4 श्लोक 34",
    ],
    // "actAns": "अध्याय 2 श्लोक 7, अध्याय 4 श्लोक 34",
    "qtype": "T"
  },
  {
    "id": 332,
    "qno": "2020122103",
    "question":
        "हिंदी सिनेमा की बहुचर्चित फ़िल्म 'Oh My God' में सृष्टि में हर कार्य के होने न होने के पीछे तथा ईश्वर के विद्यमान होने बारे, होने वाले तर्क-वितर्क में गीता के निम्न में से किस श्लोक का प्रयोग किया गया है ...",
    "questionDate": "12/21/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "अध्याय 2 श्लोक 56 - दुःखेष्वनुद्विग्नमनाः सुखेषु विगतस्पृहः।",
      "अध्याय 4 श्लोक 40 - अज्ञश्चाश्रद्दधानश्च संशयात्मा विनश्यति।",
      "अध्याय 9 श्लोक 7 - सर्वभूतानि कौन्तेय प्रकृतिं यान्ति मामिकाम्‌ ।",
      "उपरोक्त सभी",
    ],
    // "actAns": "उपरोक्त सभी",
    "qtype": "T"
  },
  {
    "id": 322,
    "qno": "2020122104",
    "question": "भगवद्गीता के उपदेशों का सार क्या है?",
    "questionDate": "12/21/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "शांतिपूर्ण बनने के लिए",
      "सर्वोच्च तक पहुँचने के लिए सभी योग-आसन का पालन करना",
      "शास्त्रों में पारंगत होने के लिए",
      "कृष्ण के प्रति पूर्ण समर्पण करना",
    ],
    // "actAns": "कृष्ण के प्रति पूर्ण समर्पण करना",
    "qtype": "T"
  },
  {
    "id": 302,
    "qno": "2020122105",
    "question":
        "इस प्रश्न के उत्तर हेतु सर्वप्रथम आपको ऊपर दिखाई गई वीडियो को पूरा देखना हैं उसमें गीता के श्लोक/श्लोकों का वर्णन किया गया हैं आपको उन श्लोकों के अध्याय व संख्या के बारे बतलाना हैं...",
    "questionDate": "12/21/2020",
    "link":
        "<iframe width=\"100%\" src=\"https://www.youtube.com/embed/tWUMOlry6Qs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "अध्याय 2 श्लोक 7",
      "अध्याय 4 श्लोक 17",
      "अध्याय 2 श्लोक 17",
      "अध्याय 4 श्लोक 34",
    ],
    // "actAns": "अध्याय 4 श्लोक 17",
    "qtype": "T"
  },
  {
    "id": 356,
    "qno": "2020122106",
    "question":
        "भगवद्गीता के 18 अध्याय को सामान्य 3 भागों में वर्गीकृत किया गया है। आपको बतलाना हैं कि गीता के अंतिम भाग के 6 अध्याय  किस विषय पर केंद्रित है।",
    "questionDate": "12/21/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "ध्यान और अन्य विषय",
      "भक्ति",
      "सांख्य, गुण, अन्य विषय",
      "कर्म",
    ],
    // "actAns": "सांख्य, गुण, अन्य विषय",
    "qtype": "T"
  },
  {
    "id": 315,
    "qno": "2020122107",
    "question":
        "नीचे दिए गए 4 विकल्पों में से आपको बतलाना हैं गीता के अध्याय संख्या 4 - ज्ञानकर्मसंन्यासयोग का सार क्या है...",
    "questionDate": "12/21/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "इस अध्याय में देवत्व और विभिन्न प्रकार के कार्यों का ज्ञान है। कार्यों का वर्णन करने का उद्देश्य उन में कर्तापन की भावना को समाप्त करना है; इस अध्याय को कर्मों के त्याग के साथ ज्ञान का नाम दिया गया है। क्रियाओं की तुलना में रवैया अधिक प्रभावी है; इसलिए यह अध्याय किसी के दृष्टिकोण को शुद्ध करने पर अधिक जोर देता है।  सच्चा ज्ञान ईश्वर को जानना है; यह अध्याय भगवान के बारे में भी ज्ञान देता है।",
      "इसमें श्रीकृष्ण स्वाभाविक रीति से ही दैवी प्रकृति वाले ज्ञानी पुरुष तथा आसुरी प्रकृति वाले अज्ञानी पुरूष के लक्षण के बारे में बताते हैं।",
      "इसमें श्रीकृष्ण सत्व, रज और तम गुणों का तथा मनुष्य की उत्तम, मध्यम अन्य गतियों का विस्तारपूर्वक वर्णन करते हैं। अंत में इन गुणों को पाने का उपाय और इसका फल बताया गया है।",
      "इसमें श्रीकृष्ण अर्जुन को क्षेत्र और क्षेत्रज्ञ के ज्ञान के बारे में तथा सत्व, रज और तम गुणों द्वारा अच्छी योनि में जन्म लेने का उपाय बताते हैं।",
    ],
    // "actAns":
    // "इस अध्याय में देवत्व और विभिन्न प्रकार के कार्यों का ज्ञान है। कार्यों का वर्णन करने का उद्देश्य उन में कर्तापन की भावना को समाप्त करना है; इस अध्याय को कर्मों के त्याग के साथ ज्ञान का नाम दिया गया है। क्रियाओं की तुलना में रवैया अधिक प्रभावी है; इसलिए यह अध्याय किसी के दृष्टिकोण को शुद्ध करने पर अधिक जोर देता है।  सच्चा ज्ञान ईश्वर को जानना है; यह अध्याय भगवान के बारे में भी ज्ञान देता है।",
    "qtype": "T"
  },
  {
    "id": 368,
    "qno": "2020122108",
    "question":
        "विश्व को देने के लिए मेरे पास भगवद्गीता से बढ़कर कोई उपहार नहीं; न ही विश्व के पास लेने के लिए इससे बढ़कर कुछ और और हो सकता है। ये शब्द किस ने कहे?",
    "questionDate": "12/21/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "मोरारजी देसाई",
      "महात्मा गांधी",
      "लालबहादुर शास्त्री",
      "नरेंद्र मोदी",
    ],
    // "actAns": "नरेंद्र मोदी",
    "qtype": "T"
  },
  {
    "id": 227,
    "qno": "2020122109",
    "question":
        "गीता के अध्याय 18 के एक श्लोक का अर्थ है: संपूर्ण धर्मों को अर्थात संपूर्ण कर्तव्य कर्मों को मुझमें त्यागकर तू केवल एक मुझ सर्वशक्तिमान, सर्वाधार परमेश्वर की ही शरण में आ जा। मैं तुझे संपूर्ण पापों से मुक्त कर दूँगा, तू शोक मत कर। Abandoning all righteous deeds, seek me as thy sole refuge; I will liberate thee from all sins; do thou not grieve. Which verse are we talking about?",
    "questionDate": "12/21/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "सर्वधर्मान्परित्यज्य मामेकं शरणं व्रज ।\r\nअहं त्वां सर्वपापेभ्यो मोक्षयिष्यामि मा शुचः ॥१८-६६॥",
      "अर्जुन उवाच\r\nनष्टो मोहः स्मृतिर्लब्धा त्वत्प्रसादान्मयाच्युत ।\r\nस्थितोऽस्मि गतसन्देहः करिष्ये वचनं तव ॥१८-७३॥",
      "यत्र योगेश्वरः कृष्णो यत्र पार्थो धनुर्धरः ।\r\nतत्र श्रीर्विजयो भूतिर्ध्रुवा नीतिर्मतिर्मम ॥१८-७८॥",
      "तच्च संस्मृत्य संस्मृत्य रूपमत्यद्भुतं हरेः ।\r\nविस्मयो मे महान् राजन् हृष्यामि च पुनः पुनः ॥१८-७७॥",
    ],
    // "actAns":
    //   "सर्वधर्मान्परित्यज्य मामेकं शरणं व्रज ।\r\nअहं त्वां सर्वपापेभ्यो मोक्षयिष्यामि मा शुचः ॥१८-६६॥",
    "qtype": "T"
  },
  {
    "id": 275,
    "qno": "2020122110",
    "question":
        "निम्न में से किसे संसार का सबसे पहला प्रेरक (Motivator) माना जाता है ...",
    "questionDate": "12/21/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "चाणक्य",
      "श्रीकृष्ण",
      "संदीप माहेश्वरी",
      "डॉ विवेक बिंद्रा",
    ],
    // "actAns": "श्रीकृष्ण",
    "qtype": "T"
  },
  {
    "id": 295,
    "qno": "2020123005",
    "question":
        "हमारे मन की किस स्थिति में हमें निम्न श्लोकों का पाठ करना चाहिए :\r\n11-33\r\n18-48\r\n18-78\r\n",
    "questionDate": "12/31/2020",
    "link": null,
    "ansopt": "C",
    "actAns": 2,
    "options": [
      "",
      "",
      "Demotivated",
      "",
    ],
    // "actAns": "Demotivated",
    "qtype": "T"
  },
  {
    "id": 281,
    "qno": "2020123102",
    "question":
        "In the Bhagwadgita, there is no long discussion, nothing elaborate. the main reason for this is that everything stated in the Gita is meant to be tested in the life of every men; it is intended to be verified in practice.",
    "questionDate": "12/31/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "Vinoba Bhave",
      "श्री अरबिंदो (अरविन्द घोष)",
      "लोकमान्य गंगाधर तिलक",
      "स्वामीविवेकानंद जी",
    ],
    // "actAns": "Vinoba Bhave",
    "qtype": "T"
  },
  {
    "id": 186,
    "qno": "2020123102",
    "question":
        "“The Bhagavad-Gita is the most systematic statement of spiritual evolution of endowing value to mankind. It is one of the most clear and comprehensive summaries of perennial philosophy ever revealed; hence its enduring value is subject not only to India but to all of humanity.”",
    "questionDate": "12/31/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "Carl Jung",
      "Ralph Waldo Emerson",
      "Rudolph Steiner",
      "Aldous Huxley",
    ],
    // "actAns": "Aldous Huxley",
    "qtype": "T"
  },
  {
    "id": 296,
    "qno": "2020123105",
    "question":
        "हमारे मन की किस स्थिति में हमें निम्न श्लोकों का पाठ करना चाहिए :\rक्लैब्यं मा स्म गमः पार्थ नैतत्त्वय्युपपद्यते।\r\nक्षुद्रं हृदयदौर्बल्यं त्यक्त्वोत्तिष्ठ परन्तप॥२-३॥मात्रास्पर्शास्तु कौन्तेय शीतोष्णसुखदुःखदाः।\r\nआगमापायिनोऽनित्या स्तांस्तितिक्षस्व भारत॥२-१४॥\r\nबाह्यस्पर्शेष्वसक्तात्मा विन्दत्यात्मनि यत् सुखम्।\r\nस ब्रह्मयोगयुक्तात्मा सुखमक्षयमश्नुते॥५-२१॥",
    "questionDate": "12/31/2020",
    "link": null,
    "ansopt": "D",
    "actAns": 3,
    "options": [
      "",
      "",
      "",
      "डिप्रेशन",
    ],
    // "actAns": "Depression",
    "qtype": "T"
  },
  {
    "id": 297,
    "qno": "2020123105",
    "question":
        "हमारे मन की किस स्थिति में हमें निम्न श्लोकों का पाठ करना चाहिए :\r\nविद्याविनयसंपन्ने ब्राह्मणे गवि हस्तिनि।\r\nशुनि चैव श्वपाके च पण्डिताः समदर्शिनः॥५-१८॥इहैव तैर्जितः सर्गो येषां साम्ये स्थितं मनः।\r\nनिर्दोषं हि समं ब्रह्म तस्माद्ब्रह्मणि ते स्थिताः॥५-१९॥आत्मौपम्येन सर्वत्र समं पश्यति योऽर्जुन ।\r\nसुखं वा यदि वा दुःखं स योगी परमो मतः ॥६-३२॥समोऽहं सर्वभूतेषु न मे द्वेष्योऽस्ति न प्रियः ।\r\nये भजन्ति तु मां भक्त्या मयि ते तेषु चाप्यहम् ॥९-२९॥",
    "questionDate": "12/31/2020",
    "link": null,
    "ansopt": "B",
    "actAns": 1,
    "options": [
      "भ्रम की स्थिति",
      "भेदभाव",
      "लालच",
      "आलस्य",
    ],
    // "actAns": "भेदभाव",
    "qtype": "T"
  },
  {
    "id": 301,
    "qno": "2020123105",
    "question":
        "हमारे मन की किस स्थिति में हमें निम्न श्लोकों का पाठ करना चाहिए :\r\nअध्याय 16 श्लोक 4\r\n,अध्याय16 श्लोक 13,14,15  अध्याय\r\n 18 श्लोक 26, \rअध्याय \n18 श्लोक 58",
    "questionDate": "12/31/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "अहंकार",
      "भ्रम की स्थिति",
      "लालच",
      "भय,आशंका,डर",
    ],
    // "actAns": "अहंकार",
    "qtype": "T"
  },
  {
    "id": 253,
    "qno": "2020123108",
    "question":
        "गीता का ज्ञान दिया श्री कृष्ण ने जिसको सुना संजय, हनुमान, बर्बरीक और अर्जुन ने। बाद में किन्होंने इस ज्ञान को कलम बध किया।\r\nGita sermon was delivered by Lord Shri Krishna  which was heard by Sanjay, Hanuman, Barbarik and Arjuna. Later, who wrote it?",
    "questionDate": "12/31/2020",
    "link": null,
    "ansopt": "A",
    "actAns": 0,
    "options": [
      "",
      "",
      "",
      "",
    ],
    // "actAns": "",
    "qtype": "T"
  }
];
