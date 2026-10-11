.class public Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$NumberFormatStringTokenizer;,
        Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$MyPrefixResolver;
    }
.end annotation


# static fields
.field private static final m_romanConvertTable:[Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;

.field static final serialVersionUID:J = 0x70aa9b8ab17ec4baL


# instance fields
.field private m_alphaCountTable:Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

.field private m_countMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

.field private m_format_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

.field private m_fromMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

.field private m_groupingSeparator_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

.field private m_groupingSize_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

.field private m_lang_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

.field private m_lettervalue_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

.field private m_level:I

.field private m_valueExpr:Lcom/sun/org/apache/xpath/internal/XPath;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;

    new-instance v8, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;

    const-wide/16 v2, 0x3e8

    const-string v4, "M"

    const-wide/16 v5, 0x384

    const-string v7, "CM"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;

    const-wide/16 v10, 0x1f4

    const-string v12, "D"

    const-wide/16 v13, 0x190

    const-string v15, "CD"

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;

    const-wide/16 v4, 0x64

    const-string v6, "C"

    const-wide/16 v7, 0x5a

    const-string v9, "XC"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;

    const-wide/16 v4, 0x32

    const-string v6, "L"

    const-wide/16 v7, 0x28

    const-string v9, "XL"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;

    const-wide/16 v4, 0xa

    const-string v6, "X"

    const-wide/16 v7, 0x9

    const-string v9, "IX"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;

    const-wide/16 v4, 0x5

    const-string v6, "V"

    const-wide/16 v7, 0x4

    const-string v9, "IV"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;

    const-wide/16 v4, 0x1

    const-string v6, "I"

    const-wide/16 v7, 0x1

    const-string v9, "I"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_romanConvertTable:[Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_alphaCountTable:Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_countMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_fromMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    const/4 v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_level:I

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_valueExpr:Lcom/sun/org/apache/xpath/internal/XPath;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_format_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_lang_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_lettervalue_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_groupingSeparator_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_groupingSize_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-void
.end method

.method private findPrecedingOrAncestorOrSelf(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/XPath;ILcom/sun/org/apache/xalan/internal/templates/ElemNumber;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p4}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    :cond_0
    :goto_0
    const/4 p5, -0x1

    if-eq p5, p4, :cond_4

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1, p4}, Lcom/sun/org/apache/xpath/internal/XPath;->getMatchScore(Lcom/sun/org/apache/xpath/internal/XPathContext;I)D

    move-result-wide v2

    cmpl-double v2, v2, v0

    if-eqz v2, :cond_1

    move p4, p5

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3, p1, p4}, Lcom/sun/org/apache/xpath/internal/XPath;->getMatchScore(Lcom/sun/org/apache/xpath/internal/XPathContext;I)D

    move-result-wide v2

    cmpl-double v0, v2, v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0, p4}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getPreviousSibling(I)I

    move-result v0

    if-ne p5, v0, :cond_3

    invoke-interface {p0, p4}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getParent(I)I

    move-result p4

    goto :goto_0

    :cond_3
    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLastChild(I)I

    move-result p4

    if-ne p4, p5, :cond_0

    move p4, v0

    goto :goto_0

    :cond_4
    :goto_1
    return p4
.end method

.method private getFormattedNumber(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;ICIJLcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_lettervalue_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v5

    move/from16 v6, p2

    invoke-virtual {v4, v5, v6, p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move/from16 v6, p2

    const/4 v4, 0x0

    :goto_0
    const-string v5, "zh"

    const/4 v7, 0x1

    const-string v8, "JP"

    const-string v9, "ja"

    const-string v10, ""

    const-string v11, "traditional"

    const-string v12, "alphabet"

    const-string v13, "com.sun.org.apache.xml.internal.utils.res.XResources"

    sparse-switch p3, :sswitch_data_0

    invoke-direct/range {p0 .. p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->getNumberFormatter(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)Ljava/text/DecimalFormat;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v0, :cond_e

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :sswitch_0
    new-instance v6, Ljava/util/Locale;

    const-string v7, "TW"

    invoke-direct {v6, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v6}, Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;

    move-result-object v5

    if-eqz v4, :cond_1

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1, v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->tradAlphaCount(JLcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v5, v12}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->int2alphaCount(JLcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    goto/16 :goto_4

    :sswitch_1
    new-instance v6, Ljava/util/Locale;

    const-string v7, "CN"

    invoke-direct {v6, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v6}, Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;

    move-result-object v5

    if-eqz v4, :cond_2

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v1, v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->tradAlphaCount(JLcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v5, v12}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->int2alphaCount(JLcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    goto/16 :goto_4

    :sswitch_2
    new-instance v5, Ljava/util/Locale;

    const-string v6, "I"

    invoke-direct {v5, v9, v8, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v5}, Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;

    move-result-object v5

    if-eqz v4, :cond_3

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v1, v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->tradAlphaCount(JLcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v5, v12}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    invoke-virtual {p0, v1, v2, v4}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->int2singlealphaCount(JLcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_3
    new-instance v5, Ljava/util/Locale;

    const-string v6, "A"

    invoke-direct {v5, v9, v8, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v5}, Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;

    move-result-object v5

    if-eqz v4, :cond_4

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v1, v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->tradAlphaCount(JLcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v5, v12}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    invoke-virtual {p0, v1, v2, v4}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->int2singlealphaCount(JLcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_4
    new-instance v5, Ljava/util/Locale;

    const-string v6, "HI"

    invoke-direct {v5, v9, v8, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v5}, Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;

    move-result-object v5

    if-eqz v4, :cond_5

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v1, v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->tradAlphaCount(JLcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v5, v12}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    invoke-virtual {p0, v1, v2, v4}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->int2singlealphaCount(JLcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_5
    new-instance v5, Ljava/util/Locale;

    const-string v6, "HA"

    invoke-direct {v5, v9, v8, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v5}, Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;

    move-result-object v5

    if-eqz v4, :cond_6

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v1, v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->tradAlphaCount(JLcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v5, v12}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    invoke-virtual {p0, v1, v2, v4}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->int2singlealphaCount(JLcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_6
    new-instance v5, Ljava/util/Locale;

    const-string v6, "ka"

    invoke-direct {v5, v6, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v5}, Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;

    move-result-object v5

    if-eqz v4, :cond_7

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, v1, v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->tradAlphaCount(JLcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v5, v12}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->int2alphaCount(JLcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    goto/16 :goto_4

    :sswitch_7
    new-instance v5, Ljava/util/Locale;

    const-string v6, "th"

    invoke-direct {v5, v6, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v5}, Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;

    move-result-object v5

    if-eqz v4, :cond_8

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0, v1, v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->tradAlphaCount(JLcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v5, v12}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->int2alphaCount(JLcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    goto/16 :goto_4

    :sswitch_8
    new-instance v5, Ljava/util/Locale;

    const-string v6, "he"

    invoke-direct {v5, v6, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v5}, Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;

    move-result-object v5

    if-eqz v4, :cond_9

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0, v1, v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->tradAlphaCount(JLcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v5, v12}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->int2alphaCount(JLcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    goto/16 :goto_4

    :sswitch_9
    new-instance v5, Ljava/util/Locale;

    const-string v6, "cy"

    invoke-direct {v5, v6, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v5}, Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;

    move-result-object v5

    if-eqz v4, :cond_a

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0, v1, v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->tradAlphaCount(JLcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    invoke-virtual {v5, v12}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->int2alphaCount(JLcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    goto/16 :goto_4

    :sswitch_a
    new-instance v5, Ljava/util/Locale;

    const-string v6, "el"

    invoke-direct {v5, v6, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v5}, Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;

    move-result-object v5

    if-eqz v4, :cond_b

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0, v1, v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->tradAlphaCount(JLcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    invoke-virtual {v5, v12}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->int2alphaCount(JLcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    goto/16 :goto_4

    :sswitch_b
    invoke-virtual {p0, v1, v2, v7}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->long2roman(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->getLocale(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_c
    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_alphaCountTable:Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    if-nez v4, :cond_c

    invoke-virtual/range {p0 .. p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->getLocale(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    iput-object v4, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_alphaCountTable:Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    :cond_c
    invoke-static {}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->get()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v4

    :try_start_0
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_alphaCountTable:Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    invoke-virtual {p0, v1, v2, v5, v4}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->int2alphaCount(JLcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    invoke-virtual {v4}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->getLocale(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->free(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->free(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    throw v0

    :sswitch_d
    invoke-virtual {p0, v1, v2, v7}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->long2roman(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_4

    :sswitch_e
    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_alphaCountTable:Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    if-nez v4, :cond_d

    invoke-virtual/range {p0 .. p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->getLocale(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    iput-object v4, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_alphaCountTable:Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    :cond_d
    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_alphaCountTable:Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->int2alphaCount(JLcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    goto :goto_4

    :cond_e
    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-nez v0, :cond_f

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_f
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p4, v1

    :goto_3
    if-ge v4, v1, :cond_10

    invoke-virtual {v3, v5}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_10
    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_e
        0x49 -> :sswitch_d
        0x61 -> :sswitch_c
        0x69 -> :sswitch_b
        0x3b1 -> :sswitch_a
        0x430 -> :sswitch_9
        0x5d0 -> :sswitch_8
        0xe51 -> :sswitch_7
        0x10d0 -> :sswitch_6
        0x3042 -> :sswitch_5
        0x3044 -> :sswitch_4
        0x30a2 -> :sswitch_3
        0x30a4 -> :sswitch_2
        0x4e00 -> :sswitch_1
        0x58f9 -> :sswitch_0
    .end sparse-switch
.end method

.method private getNumberFormatter(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)Ljava/text/DecimalFormat;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->getLocale(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_groupingSeparator_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_groupingSeparator_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->isSimple()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMsgMgr()Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_groupingSeparator_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    filled-new-array {v6, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "WG_ILLEGAL_ATTRIBUTE_VALUE"

    invoke-virtual {v4, p0, v6, v5}, Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_groupingSize_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p1

    invoke-virtual {v4, p1, p2, p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v2

    :goto_1
    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    check-cast p2, Ljava/text/DecimalFormat;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/text/DecimalFormat;->setGroupingSize(I)V

    invoke-virtual {p2}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object p0

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    invoke-virtual {p2, p0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    invoke-virtual {p2, v3}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, p2

    goto :goto_2

    :catch_0
    move-object v2, p2

    :catch_1
    invoke-virtual {v2, p1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    :cond_3
    :goto_2
    return-object v2
.end method


# virtual methods
.method public appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->getNodeName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_CANNOT_ADD"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V
    .locals 2

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_countMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_countMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_fromMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_fromMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_valueExpr:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_valueExpr:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_format_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->callVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_groupingSeparator_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->callVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_groupingSize_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->callVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_lang_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->callVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    :cond_6
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_lettervalue_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->callVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    :cond_7
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_countMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xpath/internal/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_format_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_fromMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xpath/internal/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_groupingSeparator_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_groupingSize_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_4
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_lang_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_5
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_lettervalue_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_6
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_valueExpr:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_7
    return-void
.end method

.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->getCountString(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getResultTreeHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_2
    throw v0
.end method

.method public findAncestor(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/XPath;ILcom/sun/org/apache/xalan/internal/templates/ElemNumber;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p4}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    :goto_0
    const/4 p5, -0x1

    if-eq p5, p4, :cond_2

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p4}, Lcom/sun/org/apache/xpath/internal/XPath;->getMatchScore(Lcom/sun/org/apache/xpath/internal/XPathContext;I)D

    move-result-wide v2

    cmpl-double p5, v2, v0

    if-eqz p5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, p1, p4}, Lcom/sun/org/apache/xpath/internal/XPath;->getMatchScore(Lcom/sun/org/apache/xpath/internal/XPathContext;I)D

    move-result-wide v2

    cmpl-double p5, v2, v0

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p4}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getParent(I)I

    move-result p4

    goto :goto_0

    :cond_2
    :goto_1
    return p4
.end method

.method public formatNumberList(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;[JI)Ljava/lang/String;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    invoke-static {}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->get()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v10

    :try_start_0
    array-length v11, v9

    const-string v1, "."

    iget-object v2, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_format_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v4

    move/from16 v12, p3

    invoke-virtual {v2, v4, v12, v0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move/from16 v12, p3

    move-object v2, v3

    :goto_0
    if-nez v2, :cond_1

    const-string v2, "1"

    :cond_1
    new-instance v13, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$NumberFormatStringTokenizer;

    invoke-direct {v13, v0, v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$NumberFormatStringTokenizer;-><init>(Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;Ljava/lang/String;)V

    const/4 v15, 0x1

    const/16 v2, 0x31

    move-object v4, v3

    move v5, v15

    move v6, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v11, :cond_a

    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v14, v16, -0x1

    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_4

    :cond_2
    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$NumberFormatStringTokenizer;->isLetterOrDigitAhead()Z

    move-result v14

    if-eqz v14, :cond_5

    :goto_2
    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$NumberFormatStringTokenizer;->nextIsSep()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    if-nez v6, :cond_4

    move-object v1, v7

    :cond_4
    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object v14, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_5

    :cond_5
    :goto_3
    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_6
    move-object v14, v1

    move/from16 v16, v2

    move/from16 v18, v5

    move-object/from16 v17, v7

    move-object v7, v4

    goto :goto_6

    :cond_7
    :goto_4
    move-object v14, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object v7, v4

    :goto_5
    move/from16 v18, v5

    :goto_6
    if-eqz v7, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {v10, v7}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    if-eqz v14, :cond_9

    if-nez v6, :cond_9

    invoke-virtual {v10, v14}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    :cond_9
    :goto_7
    aget-wide v19, v9, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, v16

    move/from16 v5, v18

    move-object/from16 v21, v7

    move-wide/from16 v6, v19

    move/from16 v19, v8

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->getFormattedNumber(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;ICIJLcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    add-int/lit8 v8, v19, 0x1

    move-object v1, v14

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v5, v18

    move-object/from16 v4, v21

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_a
    :goto_8
    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$NumberFormatStringTokenizer;->isLetterOrDigitAhead()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    goto :goto_8

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v10, v3}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    :cond_c
    :goto_9
    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    invoke-virtual {v10}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->free(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v10}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->free(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    throw v0
.end method

.method public getCount()Lcom/sun/org/apache/xpath/internal/XPath;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_countMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    return-object p0
.end method

.method public getCountMatchPattern(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/XPath;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_countMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v7

    if-nez v0, :cond_7

    invoke-interface {v7, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_0
    new-instance v6, Lcom/sun/org/apache/xpath/internal/XPath;

    const-string v1, "/"

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v5

    move-object v0, v6

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    goto/16 :goto_1

    :cond_1
    new-instance v6, Lcom/sun/org/apache/xpath/internal/XPath;

    const-string v1, "comment()"

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v5

    move-object v0, v6

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    goto/16 :goto_1

    :cond_2
    new-instance v8, Lcom/sun/org/apache/xpath/internal/XPath;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pi("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v5

    move-object v0, v8

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    goto/16 :goto_1

    :cond_3
    new-instance v6, Lcom/sun/org/apache/xpath/internal/XPath;

    const-string v1, "text()"

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v5

    move-object v0, v6

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    goto :goto_1

    :cond_4
    new-instance v8, Lcom/sun/org/apache/xpath/internal/XPath;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v5

    move-object v0, v8

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    goto :goto_1

    :cond_5
    invoke-interface {v7, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v8, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$MyPrefixResolver;

    invoke-interface {v7, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, v7

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$MyPrefixResolver;-><init>(Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/dtm/DTM;IZ)V

    goto :goto_0

    :cond_6
    new-instance v8, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$MyPrefixResolver;

    invoke-interface {v7, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v3, v7

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$MyPrefixResolver;-><init>(Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/dtm/DTM;IZ)V

    :goto_0
    move-object v3, v8

    new-instance v8, Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-interface {v7, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v5

    move-object v0, v8

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    :cond_7
    :goto_1
    return-object v0
.end method

.method public getCountString(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getCountersTable()Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_valueExpr:Lcom/sun/org/apache/xpath/internal/XPath;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0, p2, p0}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "NaN"

    return-object p0

    :cond_0
    const-wide/16 v5, 0x0

    cmpg-double v2, v0, v5

    if-gez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "-Infinity"

    return-object p0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "Infinity"

    return-object p0

    :cond_2
    cmpl-double v2, v0, v5

    if-nez v2, :cond_3

    const-string p0, "0"

    return-object p0

    :cond_3
    double-to-long v0, v0

    new-array v2, v4, [J

    aput-wide v0, v2, v3

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_level:I

    const/4 v5, 0x3

    if-ne v5, v2, :cond_5

    new-array v2, v4, [J

    invoke-virtual {v1, v0, p0, p2}, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;->countNode(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;I)I

    move-result v0

    int-to-long v0, v0

    aput-wide v0, v2, v3

    goto :goto_1

    :cond_5
    if-ne v4, v2, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p0, v0, p2, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->getMatchingAncestors(Lcom/sun/org/apache/xpath/internal/XPathContext;IZ)Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ltz v3, :cond_8

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [J

    move v5, v3

    :goto_0
    if-ltz v5, :cond_7

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->elementAt(I)I

    move-result v6

    sub-int v7, v3, v5

    invoke-virtual {v1, v0, p0, v6}, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;->countNode(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;I)I

    move-result v6

    int-to-long v8, v6

    aput-wide v8, v4, v7

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_7
    move-object v2, v4

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_9

    invoke-virtual {p0, p1, v2, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->formatNumberList(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;[JI)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_9
    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method public getFormat()Lcom/sun/org/apache/xalan/internal/templates/AVT;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_format_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-object p0
.end method

.method public getFrom()Lcom/sun/org/apache/xpath/internal/XPath;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_fromMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    return-object p0
.end method

.method public getGroupingSeparator()Lcom/sun/org/apache/xalan/internal/templates/AVT;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_groupingSeparator_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-object p0
.end method

.method public getGroupingSize()Lcom/sun/org/apache/xalan/internal/templates/AVT;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_groupingSize_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-object p0
.end method

.method public getLang()Lcom/sun/org/apache/xalan/internal/templates/AVT;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_lang_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-object p0
.end method

.method public getLetterValue()Lcom/sun/org/apache/xalan/internal/templates/AVT;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_lettervalue_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-object p0
.end method

.method public getLevel()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_level:I

    return p0
.end method

.method public getLocale(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)Ljava/util/Locale;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_lang_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_lang_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {v0, p1, p2, p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string p2, ""

    invoke-direct {p1, p0, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getMatchingAncestors(Lcom/sun/org/apache/xpath/internal/XPathContext;IZ)Lcom/sun/org/apache/xml/internal/utils/NodeVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->getCountMatchPattern(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v1

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v2

    :goto_0
    const/4 v3, -0x1

    if-eq v3, p2, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_fromMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1, p2}, Lcom/sun/org/apache/xpath/internal/XPath;->getMatchScore(Lcom/sun/org/apache/xpath/internal/XPathContext;I)D

    move-result-wide v6

    cmpl-double v3, v6, v4

    if-eqz v3, :cond_0

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Programmers error! countMatchPattern should never be null!"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xpath/internal/XPath;->getMatchScore(Lcom/sun/org/apache/xpath/internal/XPathContext;I)D

    move-result-wide v6

    cmpl-double v3, v6, v4

    if-eqz v3, :cond_2

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addElement(I)V

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getParent(I)I

    move-result p2

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "number"

    return-object p0
.end method

.method public getPreviousNode(Lcom/sun/org/apache/xpath/internal/XPathContext;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->getCountMatchPattern(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v1

    const/4 v2, 0x3

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_level:I

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v6, -0x1

    if-ne v2, v3, :cond_5

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_fromMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    :cond_0
    if-eq v6, p2, :cond_6

    invoke-interface {v1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getPreviousSibling(I)I

    move-result v2

    if-ne v6, v2, :cond_2

    invoke-interface {v1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getParent(I)I

    move-result p2

    if-eq v6, p2, :cond_4

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/XPath;->getMatchScore(Lcom/sun/org/apache/xpath/internal/XPathContext;I)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_7

    :cond_1
    invoke-interface {v1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_2
    :goto_0
    move p2, v2

    :cond_3
    if-eq v6, v2, :cond_4

    invoke-interface {v1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLastChild(I)I

    move-result v2

    if-eq v6, v2, :cond_3

    goto :goto_0

    :cond_4
    if-eq v6, p2, :cond_0

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xpath/internal/XPath;->getMatchScore(Lcom/sun/org/apache/xpath/internal/XPathContext;I)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_5
    if-eq v6, p2, :cond_6

    invoke-interface {v1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getPreviousSibling(I)I

    move-result p2

    if-eq v6, p2, :cond_5

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xpath/internal/XPath;->getMatchScore(Lcom/sun/org/apache/xpath/internal/XPathContext;I)D

    move-result-wide v2

    cmpl-double p0, v2, v4

    if-eqz p0, :cond_5

    :cond_6
    :goto_1
    move v6, p2

    :cond_7
    :goto_2
    return v6
.end method

.method public getTargetNode(Lcom/sun/org/apache/xpath/internal/XPathContext;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->getCountMatchPattern(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v3

    const/4 v0, 0x3

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_level:I

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_fromMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->findPrecedingOrAncestorOrSelf(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/XPath;ILcom/sun/org/apache/xalan/internal/templates/ElemNumber;)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_fromMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->findAncestor(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/XPath;ILcom/sun/org/apache/xalan/internal/templates/ElemNumber;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getValue()Lcom/sun/org/apache/xpath/internal/XPath;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_valueExpr:Lcom/sun/org/apache/xpath/internal/XPath;

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x23

    return p0
.end method

.method public getZeroString()Ljava/lang/String;
    .locals 0

    const-string p0, "0"

    return-object p0
.end method

.method public int2alphaCount(JLcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V
    .locals 16

    move-object/from16 v0, p3

    invoke-virtual/range {p3 .. p3}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->getLength()I

    move-result v1

    new-array v2, v1, [C

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_0

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v4

    aput-char v4, v2, v5

    move v4, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v0

    aput-char v0, v2, v3

    const/16 v0, 0x64

    new-array v3, v0, [C

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/16 v8, 0x63

    move v11, v4

    move-wide v12, v6

    move v10, v8

    move-wide/from16 v8, p1

    :goto_1
    if-eqz v11, :cond_2

    cmp-long v12, v12, v6

    if-eqz v12, :cond_1

    if-ne v11, v5, :cond_1

    goto :goto_2

    :cond_1
    move-wide v12, v6

    goto :goto_3

    :cond_2
    :goto_2
    int-to-long v11, v5

    move-wide v12, v11

    :goto_3
    add-long v14, v8, v12

    long-to-int v11, v14

    rem-int/2addr v11, v1

    int-to-long v14, v1

    div-long/2addr v8, v14

    if-nez v11, :cond_3

    cmp-long v14, v8, v6

    if-nez v14, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v14, v10, -0x1

    aget-char v15, v2, v11

    aput-char v15, v3, v10

    cmp-long v10, v8, v6

    if-gtz v10, :cond_4

    move v10, v14

    :goto_4
    add-int/lit8 v1, v10, 0x1

    sub-int/2addr v0, v10

    sub-int/2addr v0, v4

    move-object/from16 v10, p4

    invoke-virtual {v10, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append([CII)V

    return-void

    :cond_4
    move-object/from16 v10, p4

    move v10, v14

    goto :goto_1
.end method

.method public int2singlealphaCount(JLcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p3}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->getLength()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->getZeroString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Character;

    long-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p3, p1}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->getChar(I)C

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {p0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public long2roman(JZ)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->getZeroString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v2, 0xf9f

    cmp-long p0, p1, v2

    if-gtz p0, :cond_4

    const-string p0, ""

    const/4 v2, 0x0

    :cond_1
    :goto_0
    sget-object v3, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_romanConvertTable:[Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;

    aget-object v4, v3, v2

    iget-wide v5, v4, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;->m_postValue:J

    cmp-long v5, p1, v5

    if-ltz v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v3, v2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;->m_postLetter:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aget-object v3, v3, v2

    iget-wide v3, v3, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;->m_postValue:J

    sub-long/2addr p1, v3

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget-wide v4, v4, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;->m_preValue:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v3, v2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;->m_preLetter:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aget-object v3, v3, v2

    iget-wide v3, v3, Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;->m_preValue:J

    sub-long/2addr p1, v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    cmp-long v3, p1, v0

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_4
    const-string p0, "#error"

    :goto_1
    return-object p0
.end method

.method public setCount(Lcom/sun/org/apache/xpath/internal/XPath;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_countMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method

.method public setFormat(Lcom/sun/org/apache/xalan/internal/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_format_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-void
.end method

.method public setFrom(Lcom/sun/org/apache/xpath/internal/XPath;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_fromMatchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method

.method public setGroupingSeparator(Lcom/sun/org/apache/xalan/internal/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_groupingSeparator_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-void
.end method

.method public setGroupingSize(Lcom/sun/org/apache/xalan/internal/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_groupingSize_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-void
.end method

.method public setLang(Lcom/sun/org/apache/xalan/internal/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_lang_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-void
.end method

.method public setLetterValue(Lcom/sun/org/apache/xalan/internal/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_lettervalue_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_level:I

    return-void
.end method

.method public setValue(Lcom/sun/org/apache/xpath/internal/XPath;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->m_valueExpr:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method

.method public tradAlphaCount(JLcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;)Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p3

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p1, v1

    const-string v2, "#error"

    if-lez v1, :cond_0

    const-string v0, "ER_NUMBER_TOO_BIG"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/16 v1, 0x64

    new-array v1, v1, [C

    const-string v3, "numberGroups"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xml/internal/utils/res/IntArrayWrapper;

    const-string v4, "tables"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/utils/res/StringArrayWrapper;

    const-string v5, "numbering"

    invoke-virtual {v0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "multiplicative-additive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v8, 0x0

    if-eqz v5, :cond_f

    const-string v5, "multiplierOrder"

    invoke-virtual {v0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "multiplier"

    invoke-virtual {v0, v10}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;

    const-string v11, "zero"

    invoke-virtual {v0, v11}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    move v12, v8

    :goto_0
    invoke-virtual {v10}, Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;->getLength()I

    move-result v13

    if-ge v12, v13, :cond_1

    invoke-virtual {v10, v12}, Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v13

    cmp-long v13, p1, v13

    if-gez v13, :cond_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    move v15, v8

    move v14, v12

    move-wide/from16 v12, p1

    :goto_1
    invoke-virtual {v10}, Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;->getLength()I

    move-result v9

    if-lt v14, v9, :cond_2

    move-object/from16 v20, v4

    goto/16 :goto_9

    :cond_2
    invoke-virtual {v10, v14}, Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v16

    cmp-long v9, v12, v16

    if-gez v9, :cond_5

    invoke-virtual {v11}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->getLength()I

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7

    :cond_4
    add-int/lit8 v9, v15, -0x1

    aget-char v9, v1, v9

    invoke-virtual {v11, v8}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v6

    if-eq v9, v6, :cond_3

    add-int/lit8 v6, v15, 0x1

    invoke-virtual {v11, v8}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v7

    aput-char v7, v1, v15

    move v15, v6

    goto :goto_2

    :cond_5
    invoke-virtual {v10, v14}, Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v6

    cmp-long v6, v12, v6

    if-ltz v6, :cond_d

    invoke-virtual {v10, v14}, Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v6

    div-long v6, v12, v6

    invoke-virtual {v10, v14}, Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v18

    rem-long v12, v12, v18

    move v9, v8

    :goto_3
    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/utils/res/IntArrayWrapper;->getLength()I

    move-result v8

    if-ge v9, v8, :cond_c

    invoke-virtual {v3, v9}, Lcom/sun/org/apache/xml/internal/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v8

    move-object/from16 v19, v11

    move-wide/from16 p1, v12

    int-to-long v11, v8

    div-long v11, v6, v11

    const-wide/16 v16, 0x0

    cmp-long v8, v11, v16

    if-gtz v8, :cond_6

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v12, p1

    move-object/from16 v11, v19

    goto :goto_3

    :cond_6
    invoke-virtual {v4, v9}, Lcom/sun/org/apache/xml/internal/utils/res/StringArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    invoke-virtual {v8}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->getLength()I

    move-result v11

    const/4 v12, 0x1

    add-int/2addr v11, v12

    new-array v12, v11, [C

    move-object/from16 v20, v4

    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v8}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->getLength()I

    move-result v4

    if-ge v13, v4, :cond_7

    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v8, v13}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v13

    aput-char v13, v12, v4

    move v13, v4

    goto :goto_4

    :cond_7
    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v8, v13}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v4

    const/4 v8, 0x0

    aput-char v4, v12, v8

    long-to-int v4, v6

    invoke-virtual {v3, v9}, Lcom/sun/org/apache/xml/internal/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v8

    div-int/2addr v4, v8

    if-nez v4, :cond_8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    goto :goto_6

    :cond_8
    const-string v6, "multiplierChar"

    invoke-virtual {v0, v6}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    invoke-virtual {v6, v14}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v6

    if-ge v4, v11, :cond_b

    const-string v7, "precedes"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    add-int/lit8 v7, v15, 0x1

    aput-char v6, v1, v15

    add-int/lit8 v6, v7, 0x1

    aget-char v4, v12, v4

    aput-char v4, v1, v7

    move v15, v6

    goto :goto_6

    :cond_9
    const/4 v7, 0x1

    if-ne v4, v7, :cond_a

    invoke-virtual {v10}, Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;->getLength()I

    move-result v8

    sub-int/2addr v8, v7

    if-ne v14, v8, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v7, v15, 0x1

    aget-char v4, v12, v4

    aput-char v4, v1, v15

    move v15, v7

    :goto_5
    add-int/lit8 v4, v15, 0x1

    aput-char v6, v1, v15

    move v15, v4

    goto :goto_6

    :cond_b
    return-object v2

    :cond_c
    move-object/from16 v20, v4

    move-object/from16 v19, v11

    move-wide/from16 p1, v12

    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v12, p1

    goto :goto_8

    :cond_d
    :goto_7
    move-object/from16 v20, v4

    move-object/from16 v19, v11

    :goto_8
    invoke-virtual {v10}, Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;->getLength()I

    move-result v4

    if-lt v14, v4, :cond_e

    goto :goto_9

    :cond_e
    move-object/from16 v11, v19

    move-object/from16 v4, v20

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_f
    move-object/from16 v20, v4

    move-wide/from16 v12, p1

    const/4 v15, 0x0

    :goto_9
    const/4 v8, 0x0

    :goto_a
    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/utils/res/IntArrayWrapper;->getLength()I

    move-result v4

    if-ge v8, v4, :cond_14

    invoke-virtual {v3, v8}, Lcom/sun/org/apache/xml/internal/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    div-long v4, v12, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_10

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_10
    move-object/from16 v4, v20

    invoke-virtual {v4, v8}, Lcom/sun/org/apache/xml/internal/utils/res/StringArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->getLength()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    new-array v9, v6, [C

    const/4 v10, 0x0

    :goto_b
    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->getLength()I

    move-result v11

    if-ge v10, v11, :cond_11

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v5, v10}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v10

    aput-char v10, v9, v11

    move v10, v11

    goto :goto_b

    :cond_11
    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v5, v10}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v5

    const/4 v10, 0x0

    aput-char v5, v9, v10

    long-to-int v5, v12

    invoke-virtual {v3, v8}, Lcom/sun/org/apache/xml/internal/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v10

    div-int/2addr v5, v10

    invoke-virtual {v3, v8}, Lcom/sun/org/apache/xml/internal/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    rem-long/2addr v12, v10

    const-wide/16 v10, 0x0

    if-nez v5, :cond_12

    cmp-long v14, v12, v10

    if-nez v14, :cond_12

    goto :goto_c

    :cond_12
    if-ge v5, v6, :cond_13

    add-int/lit8 v6, v15, 0x1

    aget-char v5, v9, v5

    aput-char v5, v1, v15

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v20, v4

    move v15, v6

    goto :goto_a

    :cond_13
    return-object v2

    :cond_14
    :goto_c
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v15}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
