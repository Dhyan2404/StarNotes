.class public final Lsun/font/ScriptRun;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DONE:I = -0x1

.field static final LEAD_LIMIT:I = 0xdc00

.field static final LEAD_START:I = 0xd800

.field static final LEAD_SURROGATE_SHIFT:I = 0xa

.field static final SURROGATE_OFFSET:I = -0x35fdc00

.field static final SURROGATE_START:I = 0x10000

.field static final TAIL_LIMIT:I = 0xe000

.field static final TAIL_START:I = 0xdc00

.field private static final pairedCharExtra:I

.field private static final pairedCharPower:I

.field private static pairedChars:[I


# instance fields
.field private parenSP:I

.field private scriptCode:I

.field private scriptLimit:I

.field private scriptStart:I

.field private stack:[I

.field private text:[C

.field private textLimit:I

.field private textStart:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lsun/font/ScriptRun;->pairedChars:[I

    array-length v0, v0

    invoke-static {v0}, Lsun/font/ScriptRun;->highBit(I)B

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sput v0, Lsun/font/ScriptRun;->pairedCharPower:I

    sget-object v1, Lsun/font/ScriptRun;->pairedChars:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    sput v1, Lsun/font/ScriptRun;->pairedCharExtra:I

    return-void

    :array_0
    .array-data 4
        0x28
        0x29
        0x3c
        0x3e
        0x5b
        0x5d
        0x7b
        0x7d
        0xab
        0xbb
        0x2018
        0x2019
        0x201c
        0x201d
        0x2039
        0x203a
        0x3008
        0x3009
        0x300a
        0x300b
        0x300c
        0x300d
        0x300e
        0x300f
        0x3010
        0x3011
        0x3014
        0x3015
        0x3016
        0x3017
        0x3018
        0x3019
        0x301a
        0x301b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lsun/font/ScriptRun;->init([CII)V

    return-void
.end method

.method private static getPairIndex(I)I
    .locals 4

    sget v0, Lsun/font/ScriptRun;->pairedCharPower:I

    sget-object v1, Lsun/font/ScriptRun;->pairedChars:[I

    sget v2, Lsun/font/ScriptRun;->pairedCharExtra:I

    aget v1, v1, v2

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    shr-int/lit8 v0, v0, 0x1

    sget-object v1, Lsun/font/ScriptRun;->pairedChars:[I

    add-int v3, v2, v0

    aget v1, v1, v3

    if-lt p0, v1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_2
    sget-object v0, Lsun/font/ScriptRun;->pairedChars:[I

    aget v0, v0, v2

    if-eq v0, p0, :cond_3

    const/4 v2, -0x1

    :cond_3
    return v2
.end method

.method private static highBit(I)B
    .locals 3

    if-gtz p0, :cond_0

    const/16 p0, -0x20

    return p0

    :cond_0
    const/high16 v0, 0x10000

    const/16 v1, 0x10

    if-lt p0, v0, :cond_1

    shr-int/lit8 p0, p0, 0x10

    int-to-byte v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x100

    if-lt p0, v2, :cond_2

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    :cond_2
    if-lt p0, v1, :cond_3

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    :cond_3
    const/4 v1, 0x4

    if-lt p0, v1, :cond_4

    shr-int/lit8 p0, p0, 0x2

    add-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :cond_4
    const/4 v1, 0x2

    if-lt p0, v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_5
    return v0
.end method

.method private nextCodePoint()I
    .locals 5

    iget v0, p0, Lsun/font/ScriptRun;->scriptLimit:I

    iget v1, p0, Lsun/font/ScriptRun;->textLimit:I

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v2, p0, Lsun/font/ScriptRun;->text:[C

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lsun/font/ScriptRun;->scriptLimit:I

    aget-char v0, v2, v0

    const v4, 0xd800

    if-lt v0, v4, :cond_1

    const v4, 0xdc00

    if-ge v0, v4, :cond_1

    if-ge v3, v1, :cond_1

    aget-char v1, v2, v3

    if-lt v1, v4, :cond_1

    const v2, 0xe000

    if-ge v1, v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lsun/font/ScriptRun;->scriptLimit:I

    shl-int/lit8 p0, v0, 0xa

    add-int/2addr p0, v1

    const v0, -0x35fdc00

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method private pushback(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_0

    iget p1, p0, Lsun/font/ScriptRun;->scriptLimit:I

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lsun/font/ScriptRun;->scriptLimit:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lsun/font/ScriptRun;->scriptLimit:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lsun/font/ScriptRun;->scriptLimit:I

    :cond_1
    :goto_0
    return-void
.end method

.method private static sameScript(II)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p0, p1, :cond_1

    if-le p0, v0, :cond_1

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public getScriptCode()I
    .locals 0

    iget p0, p0, Lsun/font/ScriptRun;->scriptCode:I

    return p0
.end method

.method public getScriptLimit()I
    .locals 0

    iget p0, p0, Lsun/font/ScriptRun;->scriptLimit:I

    return p0
.end method

.method public getScriptStart()I
    .locals 0

    iget p0, p0, Lsun/font/ScriptRun;->scriptStart:I

    return p0
.end method

.method public init([CII)V
    .locals 1

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    iput-object p1, p0, Lsun/font/ScriptRun;->text:[C

    iput p2, p0, Lsun/font/ScriptRun;->textStart:I

    add-int/2addr p3, p2

    iput p3, p0, Lsun/font/ScriptRun;->textLimit:I

    iput p2, p0, Lsun/font/ScriptRun;->scriptStart:I

    iput p2, p0, Lsun/font/ScriptRun;->scriptLimit:I

    const/4 p1, -0x1

    iput p1, p0, Lsun/font/ScriptRun;->scriptCode:I

    const/4 p1, 0x0

    iput p1, p0, Lsun/font/ScriptRun;->parenSP:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public next()Z
    .locals 10

    iget v0, p0, Lsun/font/ScriptRun;->parenSP:I

    iget v1, p0, Lsun/font/ScriptRun;->scriptLimit:I

    iget v2, p0, Lsun/font/ScriptRun;->textLimit:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    :cond_0
    iput v3, p0, Lsun/font/ScriptRun;->scriptCode:I

    iput v1, p0, Lsun/font/ScriptRun;->scriptStart:I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lsun/font/ScriptRun;->nextCodePoint()I

    move-result v1

    const/4 v2, -0x1

    const/4 v4, 0x1

    if-eq v1, v2, :cond_b

    invoke-static {v1}, Lsun/font/ScriptRunData;->getScript(I)I

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Lsun/font/ScriptRun;->getPairIndex(I)I

    move-result v2

    :cond_2
    if-ltz v2, :cond_8

    and-int/lit8 v6, v2, 0x1

    if-nez v6, :cond_5

    iget-object v6, p0, Lsun/font/ScriptRun;->stack:[I

    const/16 v7, 0x20

    if-nez v6, :cond_3

    new-array v6, v7, [I

    iput-object v6, p0, Lsun/font/ScriptRun;->stack:[I

    goto :goto_1

    :cond_3
    iget v8, p0, Lsun/font/ScriptRun;->parenSP:I

    array-length v9, v6

    if-ne v8, v9, :cond_4

    array-length v8, v6

    add-int/2addr v8, v7

    new-array v7, v8, [I

    array-length v8, v6

    invoke-static {v6, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v7, p0, Lsun/font/ScriptRun;->stack:[I

    :cond_4
    :goto_1
    iget-object v6, p0, Lsun/font/ScriptRun;->stack:[I

    iget v7, p0, Lsun/font/ScriptRun;->parenSP:I

    add-int/lit8 v8, v7, 0x1

    aput v2, v6, v7

    add-int/lit8 v7, v8, 0x1

    iput v7, p0, Lsun/font/ScriptRun;->parenSP:I

    iget v7, p0, Lsun/font/ScriptRun;->scriptCode:I

    aput v7, v6, v8

    goto :goto_4

    :cond_5
    iget v6, p0, Lsun/font/ScriptRun;->parenSP:I

    if-lez v6, :cond_8

    and-int/lit8 v6, v2, -0x2

    :goto_2
    iget v7, p0, Lsun/font/ScriptRun;->parenSP:I

    add-int/lit8 v7, v7, -0x2

    iput v7, p0, Lsun/font/ScriptRun;->parenSP:I

    if-ltz v7, :cond_6

    iget-object v8, p0, Lsun/font/ScriptRun;->stack:[I

    aget v8, v8, v7

    if-eq v8, v6, :cond_6

    goto :goto_2

    :cond_6
    if-ltz v7, :cond_7

    iget-object v5, p0, Lsun/font/ScriptRun;->stack:[I

    add-int/lit8 v7, v7, 0x1

    aget v5, v5, v7

    goto :goto_3

    :cond_7
    iput v3, p0, Lsun/font/ScriptRun;->parenSP:I

    :goto_3
    iget v6, p0, Lsun/font/ScriptRun;->parenSP:I

    if-ge v6, v0, :cond_8

    move v0, v6

    :cond_8
    :goto_4
    iget v6, p0, Lsun/font/ScriptRun;->scriptCode:I

    invoke-static {v6, v5}, Lsun/font/ScriptRun;->sameScript(II)Z

    move-result v6

    if-eqz v6, :cond_a

    iget v1, p0, Lsun/font/ScriptRun;->scriptCode:I

    if-gt v1, v4, :cond_9

    if-le v5, v4, :cond_9

    iput v5, p0, Lsun/font/ScriptRun;->scriptCode:I

    :goto_5
    iget v1, p0, Lsun/font/ScriptRun;->parenSP:I

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Lsun/font/ScriptRun;->stack:[I

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lsun/font/ScriptRun;->scriptCode:I

    aput v5, v1, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_9
    if-lez v2, :cond_1

    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lsun/font/ScriptRun;->parenSP:I

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lsun/font/ScriptRun;->parenSP:I

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, v1}, Lsun/font/ScriptRun;->pushback(I)V

    :cond_b
    return v4
.end method
