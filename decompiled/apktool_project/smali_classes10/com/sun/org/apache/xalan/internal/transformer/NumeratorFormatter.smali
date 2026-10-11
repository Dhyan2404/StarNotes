.class Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;
    }
.end annotation


# static fields
.field private static final m_alphaCountTable:[C

.field private static final m_romanConvertTable:[Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;


# instance fields
.field m_formatTokenizer:Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;

.field m_formatter:Ljava/text/NumberFormat;

.field m_locale:Ljava/util/Locale;

.field m_processor:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

.field protected m_xslNumberElement:Lorg/w3c/dom/Element;


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

    sput-object v0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter;->m_romanConvertTable:[Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter;->m_alphaCountTable:[C

    return-void

    :array_0
    .array-data 2
        0x5as
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
    .end array-data
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter;->m_xslNumberElement:Lorg/w3c/dom/Element;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter;->m_processor:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    return-void
.end method


# virtual methods
.method public int2alphaCount(I[C)Ljava/lang/String;
    .locals 9

    array-length p0, p2

    const/16 v0, 0x64

    new-array v1, v0, [C

    const/16 v2, 0x63

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v3

    move v6, v4

    :cond_0
    if-eqz v5, :cond_2

    if-eqz v6, :cond_1

    add-int/lit8 v6, p0, -0x1

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v4

    goto :goto_1

    :cond_2
    :goto_0
    add-int/lit8 v5, p0, -0x1

    move v6, v5

    :goto_1
    add-int v5, p1, v6

    rem-int/2addr v5, p0

    div-int/2addr p1, p0

    if-nez v5, :cond_3

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v2, -0x1

    aget-char v8, p2, v5

    aput-char v8, v1, v2

    move v2, v7

    if-gtz p1, :cond_0

    :goto_2
    new-instance p0, Ljava/lang/String;

    add-int/lit8 p1, v2, 0x1

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    invoke-direct {p0, v1, p1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public long2roman(JZ)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "#E("

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    sget-object v3, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter;->m_romanConvertTable:[Lcom/sun/org/apache/xalan/internal/transformer/DecimalToRoman;

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
