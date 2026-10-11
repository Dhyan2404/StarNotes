.class public abstract Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final END:I = -0x1

.field private static final Hundreds:[Ljava/lang/String;

.field private static final Ones:[Ljava/lang/String;

.field private static final Tens:[Ljava/lang/String;

.field private static final Thousands:[Ljava/lang/String;


# instance fields
.field public final _document:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

.field protected _format:Ljava/lang/String;

.field private _formatToks:Ljava/util/Vector;

.field protected _groupSep:Ljava/lang/String;

.field protected _groupSize:I

.field public final _iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

.field protected _lang:Ljava/lang/String;

.field protected _letterValue:Ljava/lang/String;

.field private _nFormats:I

.field private _nSepars:I

.field protected _node:I

.field protected _nodeType:I

.field private _separFirst:Z

.field private _separLast:Z

.field private _separToks:Ljava/util/Vector;

.field private _tempBuffer:Ljava/lang/StringBuffer;

.field public final _translet:Lcom/sun/org/apache/xalan/internal/xsltc/Translet;

.field protected _value:D


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "mm"

    const-string v1, "mmm"

    const-string v2, ""

    const-string v3, "m"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->Thousands:[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "c"

    const-string v3, "cc"

    const-string v4, "ccc"

    const-string v5, "cd"

    const-string v6, "d"

    const-string v7, "dc"

    const-string v8, "dcc"

    const-string v9, "dccc"

    const-string v10, "cm"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->Hundreds:[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "x"

    const-string v3, "xx"

    const-string v4, "xxx"

    const-string v5, "xl"

    const-string v6, "l"

    const-string v7, "lx"

    const-string v8, "lxx"

    const-string v9, "lxxx"

    const-string v10, "xc"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->Tens:[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "i"

    const-string v3, "ii"

    const-string v4, "iii"

    const-string v5, "iv"

    const-string v6, "v"

    const-string v7, "vi"

    const-string v8, "vii"

    const-string v9, "viii"

    const-string v10, "ix"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->Ones:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_node:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nodeType:I

    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    iput-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_value:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separFirst:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separLast:Z

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separToks:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_formatToks:Ljava/util/Vector;

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nSepars:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nFormats:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_tempBuffer:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/Translet;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_document:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-void
.end method

.method private alphaValue(III)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-gtz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sub-int v1, p3, p2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, p1, -0x1

    rem-int v3, v2, v1

    add-int/2addr v3, p2

    int-to-char v3, v3

    if-le p1, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr v2, v1

    invoke-direct {p0, v2, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->alphaValue(III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private formatValue(ILjava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-char v1, v1

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_groupSize:I

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_0

    :cond_0
    move-object v2, p3

    :goto_0
    const-string v3, ""

    :goto_1
    if-lez p1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v5, p1, 0xa

    add-int/2addr v5, v1

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    div-int/lit8 p1, p1, 0xa

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge p1, v4, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_groupSize:I

    if-lez p1, :cond_9

    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-ge v0, p1, :cond_9

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    sub-int/2addr p1, v0

    iget p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_groupSize:I

    rem-int/2addr p1, p2

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_groupSep:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const/16 p2, 0x69

    const-string v0, "alphabetic"

    if-ne v1, p2, :cond_5

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_letterValue:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->romanValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_5
    const/16 p2, 0x49

    if-ne v1, p2, :cond_6

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_letterValue:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->romanValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_6
    const/16 p2, 0x3b1

    if-lt v1, p2, :cond_7

    const/16 p2, 0x3c9

    if-gt v1, p2, :cond_7

    goto :goto_5

    :cond_7
    move p2, v1

    :goto_4
    add-int/lit8 v0, p2, 0x1

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_8

    move p2, v0

    goto :goto_4

    :cond_8
    :goto_5
    invoke-direct {p0, p1, v1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->alphaValue(III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    :goto_6
    return-void
.end method

.method private romanValue(I)Ljava/lang/String;
    .locals 2

    if-lez p1, :cond_1

    const/16 p0, 0xfa0

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->Thousands:[Ljava/lang/String;

    div-int/lit16 v1, p1, 0x3e8

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->Hundreds:[Ljava/lang/String;

    div-int/lit8 v1, p1, 0x64

    rem-int/lit8 v1, v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->Tens:[Ljava/lang/String;

    div-int/lit8 v1, p1, 0xa

    rem-int/lit8 v1, v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->Ones:[Ljava/lang/String;

    rem-int/lit8 p1, p1, 0xa

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final setTokens(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_format:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_format:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separFirst:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separLast:Z

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nSepars:I

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nFormats:I

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separToks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_formatToks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    move v4, v1

    move v3, v2

    :cond_1
    :goto_0
    const-string v5, "."

    if-ge v3, v0, :cond_9

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v7, v3

    :goto_1
    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_1

    :cond_3
    :goto_2
    if-le v7, v3, :cond_5

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separToks:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separFirst:Z

    move v4, v2

    :cond_4
    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_formatToks:Ljava/util/Vector;

    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    if-ne v7, v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v5, v7

    :goto_3
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_8

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v4, v2

    goto :goto_3

    :cond_8
    :goto_4
    move v3, v5

    if-le v3, v7, :cond_1

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separToks:Ljava/util/Vector;

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separToks:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nSepars:I

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_formatToks:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nFormats:I

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nSepars:I

    if-le v0, p1, :cond_a

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separLast:Z

    :cond_a
    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separFirst:Z

    if-eqz p1, :cond_b

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nSepars:I

    :cond_b
    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separLast:Z

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nSepars:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nSepars:I

    :cond_c
    iget p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nSepars:I

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separToks:Ljava/util/Vector;

    invoke-virtual {p1, v5, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nSepars:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nSepars:I

    :cond_d
    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separFirst:Z

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nSepars:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nSepars:I

    :cond_e
    return-void
.end method


# virtual methods
.method public formatNumbers(I)Ljava/lang/String;
    .locals 0

    .line 1
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->formatNumbers([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatNumbers([I)Ljava/lang/String;
    .locals 10

    .line 2
    array-length v0, p1

    .line 3
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_format:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    const/high16 v5, -0x80000000

    if-ge v3, v0, :cond_1

    .line 4
    aget v6, p1, v3

    if-eq v6, v5, :cond_0

    move v4, v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    const-string p0, ""

    return-object p0

    .line 5
    :cond_2
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_tempBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 6
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_tempBuffer:Ljava/lang/StringBuffer;

    .line 7
    iget-boolean v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separFirst:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separToks:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    move v4, v1

    move v6, v2

    move v7, v6

    :goto_1
    if-ge v6, v0, :cond_8

    .line 8
    aget v8, p1, v6

    if-eq v8, v5, :cond_7

    if-nez v1, :cond_4

    .line 9
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separToks:Ljava/util/Vector;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v4, v9

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_formatToks:Ljava/util/Vector;

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v8, v1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->formatValue(ILjava/lang/String;Ljava/lang/StringBuffer;)V

    .line 11
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nFormats:I

    if-ne v9, v1, :cond_5

    add-int/lit8 v9, v9, -0x1

    :cond_5
    move v7, v9

    .line 12
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nSepars:I

    if-lt v4, v1, :cond_6

    add-int/lit8 v4, v4, -0x1

    :cond_6
    move v1, v2

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 13
    :cond_8
    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separLast:Z

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_separToks:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getCounter()Ljava/lang/String;
.end method

.method public getCounter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->setFormatting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->getCounter()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public matchesCount(I)Z
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nodeType:I

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_document:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getExpandedTypeID(I)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matchesFrom(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setDefaultFormatting()Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;
    .locals 6

    const-string v1, "1"

    const-string v2, "en"

    const-string v3, "alphabetic"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->setFormatting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFormatting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_lang:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_groupSep:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_letterValue:Ljava/lang/String;

    :try_start_0
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_groupSize:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_groupSize:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->setTokens(Ljava/lang/String;)V

    return-void
.end method

.method public abstract setStartNode(I)Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;
.end method

.method public setValue(D)Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;
    .locals 0

    iput-wide p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_value:D

    return-object p0
.end method
