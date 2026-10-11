.class public final Lorg/apache/poi/hwpf/converter/NumberFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ROMAN_LETTERS:[Ljava/lang/String;

.field private static final ROMAN_VALUES:[I

.field private static final T_ARABIC:I = 0x0

.field private static final T_LOWER_LETTER:I = 0x4

.field private static final T_LOWER_ROMAN:I = 0x2

.field private static final T_ORDINAL:I = 0x5

.field private static final T_UPPER_LETTER:I = 0x3

.field private static final T_UPPER_ROMAN:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const-string v0, "m"

    const-string v1, "cm"

    const-string v2, "d"

    const-string v3, "cd"

    const-string v4, "c"

    const-string v5, "xc"

    const-string v6, "l"

    const-string v7, "xl"

    const-string v8, "x"

    const-string v9, "ix"

    const-string v10, "v"

    const-string v11, "iv"

    const-string v12, "i"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/converter/NumberFormatter;->ROMAN_LETTERS:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hwpf/converter/NumberFormatter;->ROMAN_VALUES:[I

    return-void

    :array_0
    .array-data 4
        0x3e8
        0x384
        0x1f4
        0x190
        0x64
        0x5a
        0x32
        0x28
        0xa
        0x9
        0x5
        0x4
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumber(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/hwpf/converter/NumberFormatter;->toLetters(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lorg/apache/poi/hwpf/converter/NumberFormatter;->toLetters(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lorg/apache/poi/hwpf/converter/NumberFormatter;->toRoman(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lorg/apache/poi/hwpf/converter/NumberFormatter;->toRoman(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toLetters(I)Ljava/lang/String;
    .locals 4

    if-lez p0, :cond_1

    const/16 v0, 0x21

    new-array v1, v0, [C

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    rem-int/lit8 v2, p0, 0x1a

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v2, 0x61

    int-to-char v3, v3

    aput-char v3, v1, v0

    sub-int/2addr p0, v2

    div-int/lit8 p0, p0, 0x1a

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    rsub-int/lit8 v2, v0, 0x21

    invoke-direct {p0, v1, v0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toRoman(I)Ljava/lang/String;
    .locals 4

    if-lez p0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/apache/poi/hwpf/converter/NumberFormatter;->ROMAN_LETTERS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    sget-object v3, Lorg/apache/poi/hwpf/converter/NumberFormatter;->ROMAN_VALUES:[I

    aget v3, v3, v1

    :goto_1
    if-lt p0, v3, :cond_0

    sub-int/2addr p0, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
