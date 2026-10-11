.class public Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;
.super Lorg/apache/commons/collections4/trie/KeyAnalyzer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/trie/KeyAnalyzer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;

.field public static final LENGTH:I = 0x10

.field private static final MSB:I = 0x8000

.field private static final serialVersionUID:J = -0x6198478d83fdbdfdL


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;

    invoke-direct {v0}, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;->INSTANCE:Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;-><init>()V

    return-void
.end method

.method private static mask(I)I
    .locals 1

    const v0, 0x8000

    ushr-int p0, v0, p0

    return p0
.end method


# virtual methods
.method public bridge synthetic bitIndex(Ljava/lang/Object;IILjava/lang/Object;II)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p4, Ljava/lang/String;

    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;->bitIndex(Ljava/lang/String;IILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public bitIndex(Ljava/lang/String;IILjava/lang/String;II)I
    .locals 5

    .line 2
    rem-int/lit8 p0, p2, 0x10

    if-nez p0, :cond_7

    rem-int/lit8 p0, p5, 0x10

    if-nez p0, :cond_7

    rem-int/lit8 p0, p3, 0x10

    if-nez p0, :cond_7

    rem-int/lit8 p0, p6, 0x10

    if-nez p0, :cond_7

    .line 3
    div-int/lit8 p2, p2, 0x10

    .line 4
    div-int/lit8 p5, p5, 0x10

    .line 5
    div-int/lit8 p3, p3, 0x10

    add-int/2addr p3, p2

    .line 6
    div-int/lit8 p6, p6, 0x10

    add-int/2addr p6, p5

    .line 7
    invoke-static {p3, p6}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    if-ge v2, p0, :cond_5

    add-int v3, p2, v2

    add-int v4, p5, v2

    if-lt v3, p3, :cond_0

    move v3, v0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_1
    if-eqz p4, :cond_2

    if-lt v4, p6, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {p4, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    :cond_2
    :goto_2
    move v4, v0

    :goto_3
    if-eq v3, v4, :cond_3

    xor-int p0, v3, v4

    mul-int/lit8 v2, v2, 0x10

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    add-int/2addr v2, p0

    add-int/lit8 v2, v2, -0x10

    return v2

    :cond_3
    if-eqz v3, :cond_4

    move v1, v0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 p0, -0x2

    return p0

    .line 11
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The offsets and lengths must be at Character boundaries"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bitsPerElement()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public bridge synthetic isBitSet(Ljava/lang/Object;II)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;->isBitSet(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public isBitSet(Ljava/lang/String;II)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    if-lt p2, p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    div-int/lit8 p3, p2, 0x10

    .line 3
    rem-int/lit8 p2, p2, 0x10

    .line 4
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p2}, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;->mask(I)I

    move-result p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    :goto_0
    return p0
.end method

.method public bridge synthetic isPrefix(Ljava/lang/Object;IILjava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;->isPrefix(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPrefix(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 0

    .line 2
    rem-int/lit8 p0, p2, 0x10

    if-nez p0, :cond_0

    rem-int/lit8 p0, p3, 0x10

    if-nez p0, :cond_0

    .line 3
    div-int/lit8 p2, p2, 0x10

    div-int/lit8 p3, p3, 0x10

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot determine prefix outside of Character boundaries"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic lengthInBits(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;->lengthInBits(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public lengthInBits(Ljava/lang/String;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x10

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
