.class public Lcom/sun/org/apache/xml/internal/utils/XML11Char;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MASK_XML11_CONTENT:I = 0x20

.field public static final MASK_XML11_CONTENT_INTERNAL:I = 0x30

.field public static final MASK_XML11_CONTROL:I = 0x10

.field public static final MASK_XML11_NAME:I = 0x8

.field public static final MASK_XML11_NAME_START:I = 0x4

.field public static final MASK_XML11_NCNAME:I = 0x80

.field public static final MASK_XML11_NCNAME_START:I = 0x40

.field public static final MASK_XML11_SPACE:I = 0x2

.field public static final MASK_XML11_VALID:I = 0x1

.field private static final XML11CHARS:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->XML11CHARS:[B

    const/4 v1, 0x1

    const/16 v2, 0x9

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v4, 0x23

    aput-byte v4, v0, v2

    const/16 v2, 0xa

    const/4 v5, 0x3

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    const/16 v6, 0xd

    invoke-static {v0, v2, v6, v3}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v5, v0, v6

    const/16 v2, 0xe

    const/16 v5, 0x20

    invoke-static {v0, v2, v5, v3}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v4, v0, v5

    const/16 v2, 0x21

    const/16 v5, 0x26

    invoke-static {v0, v2, v5, v2}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v1, v0, v5

    const/16 v5, 0x27

    const/16 v6, 0x2d

    invoke-static {v0, v5, v6, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v5, 0x2f

    const/16 v7, -0x57

    invoke-static {v0, v6, v5, v7}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v2, v0, v5

    const/16 v5, 0x30

    const/16 v8, 0x3a

    invoke-static {v0, v5, v8, v7}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v6, v0, v8

    const/16 v5, 0x3b

    aput-byte v2, v0, v5

    const/16 v5, 0x3c

    aput-byte v1, v0, v5

    const/16 v5, 0x3d

    const/16 v6, 0x41

    invoke-static {v0, v5, v6, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v5, 0x5b

    const/16 v8, -0x13

    invoke-static {v0, v6, v5, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v6, 0x5d

    invoke-static {v0, v5, v6, v2}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v1, v0, v6

    const/16 v1, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    aput-byte v8, v0, v1

    const/16 v1, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v5, 0x7b

    invoke-static {v0, v1, v5, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x7f

    invoke-static {v0, v5, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v5, 0x85

    invoke-static {v0, v1, v5, v3}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v4, v0, v5

    const/16 v1, 0x86

    const/16 v5, 0xa0

    invoke-static {v0, v1, v5, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0xb7

    invoke-static {v0, v5, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v7, v0, v1

    const/16 v1, 0xb8

    const/16 v3, 0xc0

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0xc0

    const/16 v3, 0xd7

    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0xd7

    aput-byte v2, v0, v1

    const/16 v1, 0xd8

    const/16 v3, 0xf7

    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0xf7

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v3, 0x300

    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x300

    const/16 v3, 0x370

    invoke-static {v0, v1, v3, v7}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x370

    const/16 v3, 0x37e

    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x37e

    aput-byte v2, v0, v1

    const/16 v1, 0x37f

    const/16 v3, 0x2000

    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x2000

    const/16 v3, 0x200c

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x200c

    const/16 v3, 0x200e

    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x200e

    const/16 v3, 0x2028

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x2028

    aput-byte v4, v0, v1

    const/16 v1, 0x2029

    const/16 v3, 0x203f

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x203f

    const/16 v3, 0x2041

    invoke-static {v0, v1, v3, v7}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x2041

    const/16 v3, 0x2070

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x2070

    const/16 v3, 0x2190

    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x2190

    const/16 v3, 0x2c00

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x2c00

    const/16 v3, 0x2ff0

    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x2ff0

    const/16 v3, 0x3001

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x3001

    const v3, 0xd800

    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const v1, 0xe000

    const v3, 0xf900

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const v1, 0xf900

    const v3, 0xfdd0

    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const v1, 0xfdd0

    const v3, 0xfdf0

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const v1, 0xfdf0

    const v2, 0xfffe

    invoke-static {v0, v1, v2, v8}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isXML11Content(I)Z
    .locals 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    sget-object v1, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->XML11CHARS:[B

    aget-byte v1, v1, p0

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_1

    :cond_0
    if-gt v0, p0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isXML11InternalEntityContent(I)Z
    .locals 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    sget-object v1, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->XML11CHARS:[B

    aget-byte v1, v1, p0

    and-int/lit8 v1, v1, 0x30

    if-nez v1, :cond_1

    :cond_0
    if-gt v0, p0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isXML11Invalid(I)Z
    .locals 0

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11Valid(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isXML11NCName(I)Z
    .locals 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    sget-object v1, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->XML11CHARS:[B

    aget-byte v1, v1, p0

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    :cond_0
    if-gt v0, p0, :cond_2

    const/high16 v0, 0xf0000

    if-ge p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isXML11NCNameStart(I)Z
    .locals 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    sget-object v1, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->XML11CHARS:[B

    aget-byte v1, v1, p0

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_1

    :cond_0
    if-gt v0, p0, :cond_2

    const/high16 v0, 0xf0000

    if-ge p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isXML11Name(I)Z
    .locals 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    sget-object v1, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->XML11CHARS:[B

    aget-byte v1, v1, p0

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    :cond_0
    if-lt p0, v0, :cond_2

    const/high16 v0, 0xf0000

    if-ge p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isXML11NameHighSurrogate(I)Z
    .locals 1

    const v0, 0xd800

    if-gt v0, p0, :cond_0

    const v0, 0xdb7f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isXML11NameStart(I)Z
    .locals 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    sget-object v1, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->XML11CHARS:[B

    aget-byte v1, v1, p0

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    :cond_0
    if-gt v0, p0, :cond_2

    const/high16 v0, 0xf0000

    if-ge p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isXML11Space(I)Z
    .locals 1

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->XML11CHARS:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isXML11Valid(I)Z
    .locals 3

    const/4 v0, 0x1

    const/high16 v1, 0x10000

    if-ge p0, v1, :cond_0

    sget-object v2, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->XML11CHARS:[B

    aget-byte v2, v2, p0

    and-int/2addr v2, v0

    if-nez v2, :cond_2

    :cond_0
    if-gt v1, p0, :cond_1

    const v1, 0x10ffff

    if-gt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isXML11ValidLiteral(I)Z
    .locals 3

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    sget-object v1, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->XML11CHARS:[B

    aget-byte v1, v1, p0

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    :cond_0
    if-gt v0, p0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isXML11ValidNCName(Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11NCNameStart(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    if-le v0, v4, :cond_2

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/XMLChar;->supplemental(CC)I

    move-result v2

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11NCNameStart(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    return v1

    :cond_3
    move v2, v4

    :goto_1
    if-ge v2, v0, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11NCName(I)Z

    move-result v5

    if-nez v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_4

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/sun/org/apache/xml/internal/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v3, v5}, Lcom/sun/org/apache/xml/internal/utils/XMLChar;->supplemental(CC)I

    move-result v3

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11NCName(I)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    return v1

    :cond_5
    add-int/2addr v2, v4

    goto :goto_1

    :cond_6
    return v4
.end method

.method public static isXML11ValidName(Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11NameStart(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    if-le v0, v4, :cond_2

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/XMLChar;->supplemental(CC)I

    move-result v2

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11NameStart(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    return v1

    :cond_3
    move v2, v4

    :goto_1
    if-ge v2, v0, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11Name(I)Z

    move-result v5

    if-nez v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_4

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/sun/org/apache/xml/internal/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v3, v5}, Lcom/sun/org/apache/xml/internal/utils/XMLChar;->supplemental(CC)I

    move-result v3

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11Name(I)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    return v1

    :cond_5
    add-int/2addr v2, v4

    goto :goto_1

    :cond_6
    return v4
.end method

.method public static isXML11ValidNmtoken(Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11Name(I)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_1

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/sun/org/apache/xml/internal/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v4, v5}, Lcom/sun/org/apache/xml/internal/utils/XMLChar;->supplemental(CC)I

    move-result v4

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11Name(I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return v3
.end method

.method public static isXML11ValidQName(Ljava/lang/String;)Z
    .locals 4

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-lez v0, :cond_2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method
