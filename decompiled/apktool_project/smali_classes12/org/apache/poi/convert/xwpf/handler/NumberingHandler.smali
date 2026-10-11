.class Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/htmlgen/ConverterHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;,
        Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;
    }
.end annotation


# instance fields
.field private final allAbstractNumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentAbstractNumId:I

.field private currentNumId:I

.field private final currentNumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private levels:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final numIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

.field private final overrideMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->allAbstractNumMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->numIdMap:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->overrideMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->currentNumMap:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->currentAbstractNumId:I

    iput v0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->currentNumId:I

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->initNumbering()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Integer;)Ljava/util/TreeMap;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->lambda$getParagraphCTLvl$0(Ljava/lang/Integer;)Ljava/util/TreeMap;

    move-result-object p0

    return-object p0
.end method

.method private addNumFormatSuffix(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getSuff()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelSuffix;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelSuffix;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLevelSuffix$Enum;

    move-result-object p0

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLevelSuffix;->NOTHING:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLevelSuffix$Enum;

    if-ne p0, v0, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-result-object p0

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->JAPANESE_LEGAL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->JAPANESE_COUNTING:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->JAPANESE_DIGITAL_TEN_THOUSAND:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->CHINESE_COUNTING:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->CHINESE_COUNTING_THOUSAND:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->CHINESE_LEGAL_SIMPLIFIED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p2
.end method

.method private addSuffix(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelSuffix;Lorg/jsoup/nodes/Element;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelSuffix;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLevelSuffix$Enum;

    move-result-object p0

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLevelSuffix;->TAB:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLevelSuffix$Enum;

    if-ne p0, p1, :cond_1

    new-instance p0, Lorg/jsoup/nodes/TextNode;

    const-string p1, "\u00a0\u00a0\u00a0\u00a0"

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLevelSuffix;->SPACE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLevelSuffix$Enum;

    if-ne p0, p1, :cond_2

    new-instance p0, Lorg/jsoup/nodes/TextNode;

    const-string p1, "\u00a0"

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :cond_2
    :goto_0
    return-void
.end method

.method private getCTNumPr(Lorg/apache/poi/xwpf/usermodel/XWPFStyles;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;
    .locals 1

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getStyleID()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    move-result-object p2

    if-nez p2, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getCTStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object p0

    if-eqz p0, :cond_4

    :cond_6
    return-object p0
.end method

.method private getLvString(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;I)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->access$300(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->access$000(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-result-object p1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->DECIMAL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-ne p1, v0, :cond_0

    add-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->LOWER_LETTER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-ne p1, v0, :cond_1

    add-int/lit8 p0, p0, 0x61

    add-int/2addr p0, p2

    add-int/lit8 p0, p0, -0x1

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->UPPER_LETTER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-ne p1, v0, :cond_2

    add-int/lit8 p0, p0, 0x41

    add-int/2addr p0, p2

    add-int/lit8 p0, p0, -0x1

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->LOWER_ROMAN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-ne p1, v0, :cond_3

    add-int/2addr p0, p2

    invoke-static {p0}, Lorg/apache/poi/util/Roman;->toRoman(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->UPPER_ROMAN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-ne p1, v0, :cond_4

    add-int/2addr p0, p2

    invoke-static {p0}, Lorg/apache/poi/util/Roman;->toRoman(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->JAPANESE_LEGAL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-eq p1, v0, :cond_f

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->JAPANESE_COUNTING:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-eq p1, v0, :cond_f

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->JAPANESE_DIGITAL_TEN_THOUSAND:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->CHINESE_COUNTING:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-eq p1, v0, :cond_e

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->CHINESE_COUNTING_THOUSAND:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-ne p1, v0, :cond_6

    goto :goto_1

    :cond_6
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->CHINESE_LEGAL_SIMPLIFIED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-ne p1, v0, :cond_7

    add-int/2addr p0, p2

    invoke-static {p0}, Lorg/apache/poi/util/ChineseNumber;->toChineseLegal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->IDEOGRAPH_TRADITIONAL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-ne p1, v0, :cond_8

    add-int/2addr p0, p2

    invoke-static {p0}, Lorg/apache/poi/util/ChineseNumber;->toTianGan(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->IDEOGRAPH_ZODIAC:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-ne p1, v0, :cond_9

    add-int/2addr p0, p2

    invoke-static {p0}, Lorg/apache/poi/util/ChineseNumber;->toDiZhi(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->DECIMAL_ENCLOSED_CIRCLE_CHINESE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-eq p1, v0, :cond_d

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->DECIMAL_ENCLOSED_CIRCLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-ne p1, v1, :cond_a

    goto :goto_0

    :cond_a
    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;->IDEOGRAPH_ENCLOSED_CIRCLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    if-ne p1, v1, :cond_b

    add-int/2addr p0, p2

    invoke-static {p0}, Lorg/apache/poi/util/ChineseNumber;->toChinese(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "(%s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    if-ne p1, v0, :cond_c

    add-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\uff08%d\uff09"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    add-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    :goto_0
    add-int/lit16 p0, p0, 0x2460

    add-int/2addr p0, p2

    add-int/lit8 p0, p0, -0x1

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    :goto_1
    add-int/2addr p0, p2

    invoke-static {p0}, Lorg/apache/poi/util/ChineseNumber;->toChinese(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_2
    add-int/2addr p0, p2

    invoke-static {p0}, Lorg/apache/poi/util/ChineseNumber;->toChinese(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLvTextArgs(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;I)[Ljava/lang/Object;
    .locals 4

    new-array v0, p2, [Ljava/lang/String;

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->access$100(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    if-ltz p2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->levels:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->access$200(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->getLvString(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->getLvString(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-gt v1, p2, :cond_1

    aput-object p0, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private getLvlArgLen(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-char v2, p0, v0

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getLvlStart(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->overrideMap:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->access$600(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;->access$500(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->access$100(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->access$300(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)I

    move-result p0

    return p0
.end method

.method private getNumLvText(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->access$000(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getLvlText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;->getVal()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(%)([\\d]{1})"

    const-string v2, "$1s"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "([\\d]+)(%s)"

    const-string v2, "$1"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->access$000(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->addNumFormatSuffix(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->getLvlArgLen(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->getLvTextArgs(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initNumbering()V
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getAbstractNums()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getAbstractNumId()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->sizeOfLvlArray()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    iget-object v6, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->allAbstractNumMap:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getLvlList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    invoke-interface {v7}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v7}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->isSetNumStyleLink()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getNumStyleLink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v6

    invoke-interface {v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->isSetStyleLink()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getStyleLink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    iget-object v4, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->allAbstractNumMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_6

    iget-object v4, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->allAbstractNumMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getNums()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getNumId()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->numIdMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->sizeOfLvlOverrideArray()I

    move-result v4

    if-lez v4, :cond_8

    new-instance v4, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {v4, v3, v2}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;-><init>(II)V

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->overrideMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getLvlOverrideList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->isSetStartOverride()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->getStartOverride()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;->addLvlStartMap(II)V

    goto :goto_4

    :cond_c
    return-void
.end method

.method private static synthetic lambda$getParagraphCTLvl$0(Ljava/lang/Integer;)Ljava/util/TreeMap;
    .locals 0

    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    return-object p0
.end method

.method private removeExceedLvl(Ljava/util/TreeMap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    if-le p0, p2, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setNumberingStyle(Lorg/apache/poi/convert/HtmlDocumentFacade;Lorg/apache/poi/style/ParagraphStyles;Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;Lorg/jsoup/nodes/Element;)V
    .locals 5

    invoke-static {p3}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->access$000(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    move-result-object p3

    invoke-interface {p3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getSuff()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelSuffix;

    move-result-object p3

    invoke-direct {p0, p3, p4}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->addSuffix(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelSuffix;Lorg/jsoup/nodes/Element;)V

    invoke-virtual {p2}, Lorg/apache/poi/style/ParagraphStyles;->getTextIndent()Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/style/UnitValue;->getValue()F

    move-result p3

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_1

    const-string p3, "display:inline-block;text-indent:0;"

    const-string v0, "numbering"

    invoke-virtual {p1, p4, v0, p3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/poi/style/UnitValue;->getNumberValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/poi/style/ParagraphStyles;->getMarginStyles()Lorg/apache/poi/style/MarginStyles;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/style/MarginStyles;->getLeftNumberValue()F

    move-result p2

    cmpl-float v1, p2, p0

    const-string v2, "px;"

    const-string v3, "min-width:"

    if-lez v1, :cond_0

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-float/2addr p2, p0

    float-to-double v3, p2

    invoke-static {v3, v4}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p4, v0, p0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private updateOverrideLevel(I)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->overrideMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->currentNumMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;->access$400(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;)I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;->access$500(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TreeMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->access$302(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;I)I

    const/4 v2, 0x0

    invoke-static {v3, v2}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->access$202(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;I)I

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->allAbstractNumMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->overrideMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->currentNumMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->numIdMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getParagraphCTLvl(Lorg/apache/poi/xwpf/usermodel/XWPFStyles;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->allAbstractNumMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->getCTNumPr(Lorg/apache/poi/xwpf/usermodel/XWPFStyles;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p2

    if-nez p2, :cond_2

    return-object v1

    :cond_2
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object p2

    if-nez p2, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getIlvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->numIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->allAbstractNumMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lorg/apache/poi/util/CollectionUtils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-object v1

    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    iget v1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->currentAbstractNumId:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->currentAbstractNumId:I

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->currentNumMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/poi/convert/xwpf/handler/a;

    invoke-direct {v2}, Lorg/apache/poi/convert/xwpf/handler/a;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    iput-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->levels:Ljava/util/TreeMap;

    :cond_8
    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->levels:Ljava/util/TreeMap;

    invoke-direct {p0, v1, p1}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->removeExceedLvl(Ljava/util/TreeMap;I)V

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->levels:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;

    if-nez v1, :cond_9

    new-instance v1, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x0

    move-object v2, v1

    move v4, p2

    move v6, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;IIII)V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->levels:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    invoke-static {v1}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->access$208(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)I

    :goto_2
    iget p1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->currentNumId:I

    if-eq p1, p2, :cond_a

    iput p2, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->currentNumId:I

    invoke-direct {p0, p2}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->updateOverrideLevel(I)V

    :cond_a
    return-object v1
.end method

.method public handleNumbering(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/style/ParagraphStyles;Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;Lorg/jsoup/nodes/Element;)V
    .locals 7

    invoke-static {p3}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p4}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object p1

    invoke-direct {p0, p3}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->getNumLvText(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createSpan()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-static {v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v0

    invoke-virtual {p3}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->getCtLvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/poi/style/ParagraphStyles;->getTextStyles()Lorg/apache/poi/style/TextStyles;

    move-result-object v3

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "s"

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Lorg/apache/poi/style/TextStyles;->toStyle(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v5, v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lorg/apache/poi/style/TextStyles;->getFetcher()Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;

    invoke-virtual {v3}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getTheme()Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFTheme;)V

    new-instance v6, Lorg/apache/poi/convert/xwpf/property/RunPropertyFetcher;

    invoke-direct {v6, v2}, Lorg/apache/poi/convert/xwpf/property/RunPropertyFetcher;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V

    invoke-virtual {v4, v6}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->addFetcher(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)V

    invoke-virtual {v3}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->addFetcher(Ljava/util/List;)V

    new-instance v2, Lorg/apache/poi/style/TextRunStyles;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v4, v3}, Lorg/apache/poi/style/TextRunStyles;-><init>(Lorg/apache/poi/style/ParagraphStyles;Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;Z)V

    invoke-virtual {v2, v0}, Lorg/apache/poi/style/TextStyles;->toStyle(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v5, v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    invoke-static {p4, v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->insertAfterAbsoluteImage(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->setNumberingStyle(Lorg/apache/poi/convert/HtmlDocumentFacade;Lorg/apache/poi/style/ParagraphStyles;Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;Lorg/jsoup/nodes/Element;)V

    :cond_2
    :goto_1
    return-void
.end method
