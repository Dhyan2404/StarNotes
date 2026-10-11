.class public Lcom/onegravity/rteditor/converter/tagsoup/util/StringEscapeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ESCAPE_HTML4:Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;

.field public static final UNESCAPE_HTML4:Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/onegravity/rteditor/converter/tagsoup/util/AggregateTranslator;

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;

    new-instance v3, Lcom/onegravity/rteditor/converter/tagsoup/util/LookupTranslator;

    invoke-static {}, Lcom/onegravity/rteditor/converter/tagsoup/util/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/onegravity/rteditor/converter/tagsoup/util/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/onegravity/rteditor/converter/tagsoup/util/LookupTranslator;

    invoke-static {}, Lcom/onegravity/rteditor/converter/tagsoup/util/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/onegravity/rteditor/converter/tagsoup/util/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Lcom/onegravity/rteditor/converter/tagsoup/util/LookupTranslator;

    invoke-static {}, Lcom/onegravity/rteditor/converter/tagsoup/util/EntityArrays;->HTML40_EXTENDED_ESCAPE()[[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/onegravity/rteditor/converter/tagsoup/util/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-direct {v0, v2}, Lcom/onegravity/rteditor/converter/tagsoup/util/AggregateTranslator;-><init>([Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;)V

    sput-object v0, Lcom/onegravity/rteditor/converter/tagsoup/util/StringEscapeUtils;->ESCAPE_HTML4:Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;

    new-instance v0, Lcom/onegravity/rteditor/converter/tagsoup/util/AggregateTranslator;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;

    new-instance v3, Lcom/onegravity/rteditor/converter/tagsoup/util/LookupTranslator;

    invoke-static {}, Lcom/onegravity/rteditor/converter/tagsoup/util/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/onegravity/rteditor/converter/tagsoup/util/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v3, v2, v4

    new-instance v3, Lcom/onegravity/rteditor/converter/tagsoup/util/LookupTranslator;

    invoke-static {}, Lcom/onegravity/rteditor/converter/tagsoup/util/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/onegravity/rteditor/converter/tagsoup/util/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v3, v2, v5

    new-instance v3, Lcom/onegravity/rteditor/converter/tagsoup/util/LookupTranslator;

    invoke-static {}, Lcom/onegravity/rteditor/converter/tagsoup/util/EntityArrays;->HTML40_EXTENDED_UNESCAPE()[[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/onegravity/rteditor/converter/tagsoup/util/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityUnescaper;

    new-array v4, v4, [Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityUnescaper$OPTION;

    invoke-direct {v3, v4}, Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityUnescaper;-><init>([Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityUnescaper$OPTION;)V

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcom/onegravity/rteditor/converter/tagsoup/util/AggregateTranslator;-><init>([Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;)V

    sput-object v0, Lcom/onegravity/rteditor/converter/tagsoup/util/StringEscapeUtils;->UNESCAPE_HTML4:Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final escapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/converter/tagsoup/util/StringEscapeUtils;->ESCAPE_HTML4:Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/converter/tagsoup/util/StringEscapeUtils;->UNESCAPE_HTML4:Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
