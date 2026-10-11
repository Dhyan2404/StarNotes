.class public Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/converter/tagsoup/Scanner;
.implements Lorg/xml/sax/Locator;


# static fields
.field public static final A0:I = 0x19

.field public static final B0:I = 0x1a

.field public static final C0:I = 0x1b

.field public static final D0:I = 0x1c

.field public static final E0:I = 0x1d

.field public static final F0:I = 0x1e

.field public static final G0:I = 0x1f

.field public static final H0:I = 0x20

.field public static final I0:I = 0x21

.field public static final J:I = 0xc

.field public static final J0:I = 0x22

.field public static final K0:I = 0x23

.field public static final L0:I = 0x1

.field public static final M0:I = 0x2

.field public static final N0:I = 0x3

.field public static final O:I = 0xd

.field public static final O0:I = 0x4

.field public static final P0:I = 0x5

.field public static final Q:I = 0xe

.field public static final Q0:I = 0x6

.field public static final R0:I = 0x7

.field public static final S0:I = 0x8

.field public static final T0:I = 0x9

.field public static final U0:I = 0xa

.field public static final V0:I = 0xb

.field public static final W0:I = 0xc

.field public static final X0:I = 0xd

.field public static final Y0:I = 0xe

.field public static final Z:I = 0xf

.field public static final Z0:I = 0xf

.field public static final a1:I = 0x10

.field public static final b1:I = 0x11

.field public static final c1:I = 0x12

.field public static final d1:I = 0x13

.field public static final e1:I = 0x14

.field public static final f1:I = 0x15

.field public static final g1:I = 0x16

.field public static final h1:I = 0x17

.field public static final i1:I = 0x18

.field public static final j1:I = 0x19

.field public static final k0:I = 0x10

.field public static final k1:I = 0x1a

.field public static final l1:I = 0x1b

.field public static final m1:I = 0x1c

.field public static final n1:I = 0x1d

.field public static final o1:I = 0x1e

.field public static final p:I = 0x1

.field public static final p1:I = 0x1f

.field public static final q:I = 0x2

.field public static final q0:I = 0x11

.field public static final q1:I = 0x20

.field public static final r:I = 0x3

.field public static r1:[I = null

.field public static final s:I = 0x4

.field public static final t:I = 0x5

.field public static final t0:I = 0x12

.field public static final u:I = 0x6

.field public static final u0:I = 0x13

.field public static final v:I = 0x7

.field public static final v0:I = 0x14

.field public static final w:I = 0x8

.field public static final w0:I = 0x15

.field public static final x:I = 0x9

.field public static final x0:I = 0x16

.field public static final y:I = 0xa

.field public static final y0:I = 0x17

.field public static final z:I = 0xb

.field public static final z0:I = 0x18


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:[C

.field public n:I

.field public o:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x250

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->r1:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2f
        0x5
        0x16
        0x1
        0x3d
        0x4
        0x3
        0x1
        0x3e
        0x6
        0x1c
        0x1
        0x0
        0x1b
        0x1
        0x1
        -0x1
        0x6
        0x15
        0x1
        0x20
        0x4
        0x18
        0x1
        0xa
        0x4
        0x18
        0x1
        0x9
        0x4
        0x18
        0x2
        0x27
        0x7
        0x22
        0x2
        0x0
        0x1b
        0x2
        0x2
        -0x1
        0x8
        0x15
        0x2
        0x20
        0x1d
        0x2
        0x2
        0xa
        0x1d
        0x2
        0x2
        0x9
        0x1d
        0x2
        0x3
        0x27
        0x1c
        0x2
        0x3
        0x22
        0x1c
        0x1f
        0x3
        0x3e
        0x8
        0x1c
        0x3
        0x0
        0x1b
        0x20
        0x3
        -0x1
        0x8
        0x15
        0x3
        0x20
        0x1c
        0x3
        0x3
        0xa
        0x1c
        0x3
        0x3
        0x9
        0x1c
        0x3
        0x4
        0x43
        0x1c
        0x5
        0x4
        0x0
        0x1c
        0x13
        0x4
        -0x1
        0x1c
        0x15
        0x5
        0x44
        0x1c
        0x6
        0x5
        0x0
        0x1c
        0x13
        0x5
        -0x1
        0x1c
        0x15
        0x6
        0x41
        0x1c
        0x7
        0x6
        0x0
        0x1c
        0x13
        0x6
        -0x1
        0x1c
        0x15
        0x7
        0x54
        0x1c
        0x8
        0x7
        0x0
        0x1c
        0x13
        0x7
        -0x1
        0x1c
        0x15
        0x8
        0x41
        0x1c
        0x9
        0x8
        0x0
        0x1c
        0x13
        0x8
        -0x1
        0x1c
        0x15
        0x9
        0x5b
        0x1c
        0xc
        0x9
        0x0
        0x1c
        0x13
        0x9
        -0x1
        0x1c
        0x15
        0xa
        0x3c
        0x1b
        0xb
        0xa
        0x0
        0x1b
        0xa
        0xa
        -0x1
        0x17
        0x15
        0xb
        0x2f
        0x20
        0x19
        0xb
        0x0
        0x1b
        0xa
        0xb
        -0x1
        0x20
        0x15
        0xc
        0x5d
        0x1b
        0xd
        0xc
        0x0
        0x1b
        0xc
        0xc
        -0x1
        0x1c
        0x15
        0xd
        0x5d
        0x1b
        0xe
        0xd
        0x0
        0x1b
        0xc
        0xd
        -0x1
        0x1c
        0x15
        0xe
        0x3e
        0x9
        0x1c
        0xe
        0x0
        0x1b
        0xc
        0xe
        -0x1
        0x1c
        0x15
        0xf
        0x2d
        0x1c
        0x10
        0xf
        0x0
        0x1b
        0x10
        0xf
        -0x1
        0xa
        0x15
        0x10
        0x2d
        0x1c
        0x11
        0x10
        0x0
        0x1b
        0x10
        0x10
        -0x1
        0xa
        0x15
        0x11
        0x2d
        0x1c
        0x12
        0x11
        0x0
        0x14
        0x10
        0x11
        -0x1
        0xa
        0x15
        0x12
        0x2d
        0x16
        0x12
        0x12
        0x3e
        0xa
        0x1c
        0x12
        0x0
        0x15
        0x10
        0x12
        -0x1
        0xa
        0x15
        0x13
        0x2d
        0x1c
        0xf
        0x13
        0x5b
        0x1c
        0x4
        0x13
        0x3e
        0x1c
        0x1c
        0x13
        0x0
        0x1b
        0x14
        0x13
        -0x1
        0x1c
        0x15
        0x14
        0x3e
        0xb
        0x1c
        0x14
        0x0
        0x1b
        0x14
        0x14
        -0x1
        0x1c
        0x15
        0x16
        0x3e
        0xc
        0x1c
        0x16
        0x0
        0x1b
        0x1
        0x16
        0x20
        0x1c
        0x22
        0x16
        0xa
        0x1c
        0x22
        0x16
        0x9
        0x1c
        0x22
        0x17
        0x0
        0xd
        0x17
        0x17
        -0x1
        0xd
        0x15
        0x18
        0x3d
        0x1c
        0x3
        0x18
        0x3e
        0x3
        0x1c
        0x18
        0x0
        0x2
        0x1
        0x18
        -0x1
        0x3
        0x15
        0x18
        0x20
        0x1c
        0x18
        0x18
        0xa
        0x1c
        0x18
        0x18
        0x9
        0x1c
        0x18
        0x19
        0x3e
        0xf
        0x1c
        0x19
        0x0
        0x1b
        0x19
        0x19
        -0x1
        0xf
        0x15
        0x19
        0x20
        0x1c
        0x19
        0x19
        0xa
        0x1c
        0x19
        0x19
        0x9
        0x1c
        0x19
        0x1a
        0x2f
        0x1c
        0x16
        0x1a
        0x3e
        0x11
        0x1c
        0x1a
        0x0
        0x1b
        0x1a
        0x1a
        -0x1
        0x1c
        0x15
        0x1a
        0x20
        0x10
        0x22
        0x1a
        0xa
        0x10
        0x22
        0x1a
        0x9
        0x10
        0x22
        0x1b
        0x0
        0xd
        0x1b
        0x1b
        -0x1
        0xd
        0x15
        0x1c
        0x26
        0xe
        0x17
        0x1c
        0x3c
        0x17
        0x21
        0x1c
        0x0
        0x1b
        0x1c
        0x1c
        -0x1
        0x17
        0x15
        0x1d
        0x3e
        0x18
        0x1c
        0x1d
        0x0
        0x1b
        0x1d
        0x1d
        -0x1
        0x18
        0x15
        0x1e
        0x3e
        0x1a
        0x1c
        0x1e
        0x0
        0x1b
        0x1e
        0x1e
        -0x1
        0x1a
        0x15
        0x1e
        0x20
        0x19
        0x1d
        0x1e
        0xa
        0x19
        0x1d
        0x1e
        0x9
        0x19
        0x1d
        0x1f
        0x22
        0x7
        0x22
        0x1f
        0x0
        0x1b
        0x1f
        0x1f
        -0x1
        0x8
        0x15
        0x1f
        0x20
        0x1d
        0x1f
        0x1f
        0xa
        0x1d
        0x1f
        0x1f
        0x9
        0x1d
        0x1f
        0x20
        0x3e
        0x8
        0x1c
        0x20
        0x0
        0x1b
        0x20
        0x20
        -0x1
        0x8
        0x15
        0x20
        0x20
        0x7
        0x22
        0x20
        0xa
        0x7
        0x22
        0x20
        0x9
        0x7
        0x22
        0x21
        0x21
        0x1c
        0x13
        0x21
        0x3f
        0x1c
        0x1e
        0x21
        0x2f
        0x1c
        0x19
        0x21
        0x3c
        0x1b
        0x21
        0x21
        0x0
        0x1b
        0x1a
        0x21
        -0x1
        0x13
        0x15
        0x21
        0x20
        0x12
        0x1c
        0x21
        0xa
        0x12
        0x1c
        0x21
        0x9
        0x12
        0x1c
        0x22
        0x2f
        0x1c
        0x16
        0x22
        0x3e
        0x1e
        0x1c
        0x22
        0x0
        0x1b
        0x1
        0x22
        -0x1
        0x1e
        0x15
        0x22
        0x20
        0x1c
        0x22
        0x22
        0xa
        0x1c
        0x22
        0x22
        0x9
        0x1c
        0x22
        0x23
        0x0
        0xd
        0x23
        0x23
        -0x1
        0xd
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->o:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x20ac
        0xfffd
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0xfffd
        0x17d
        0xfffd
        0xfffd
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0xfffd
        0x17e
        0x178
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->j:I

    iput v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->h:I

    iget v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->i:I

    iput v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->g:I

    return-void
.end method

.method public final b(ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->c(Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    iget-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    int-to-char p0, p1

    aput-char p0, p2, v0

    return-void
.end method

.method public final c(Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    array-length v2, v1

    add-int/lit8 v2, v2, -0x14

    if-lt v0, v2, :cond_2

    iget v2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->k:I

    const/16 v3, 0x1c

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [C

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v4, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1, v1, v4, v0}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->pcdata([CII)V

    iput v4, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    :cond_2
    :goto_1
    return-void
.end method

.method public final d(Ljava/lang/String;ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->b(ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p3}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->c(Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final e(Ljava/io/PushbackReader;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, -0x1

    if-eq p2, p0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PushbackReader;->unread(I)V

    :cond_0
    return-void
.end method

.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->h:I

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->g:I

    return p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->f:Ljava/lang/String;

    return-object p0
.end method

.method public resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->f:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->j:I

    iput p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->i:I

    iput p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->h:I

    iput p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->g:I

    return-void
.end method

.method public scan(Ljava/io/Reader;Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x1c

    iput v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->k:I

    instance-of v4, v1, Ljava/io/PushbackReader;

    if-eqz v4, :cond_0

    check-cast v1, Ljava/io/PushbackReader;

    goto :goto_1

    :cond_0
    instance-of v4, v1, Ljava/io/BufferedReader;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/PushbackReader;

    invoke-direct {v4, v1}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/io/PushbackReader;

    new-instance v5, Ljava/io/BufferedReader;

    const/16 v6, 0xc8

    invoke-direct {v5, v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-direct {v4, v5}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Ljava/io/PushbackReader;->read()I

    move-result v4

    const v5, 0xfeff

    if-eq v4, v5, :cond_2

    invoke-virtual {v0, v1, v4}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->e(Ljava/io/PushbackReader;I)V

    :cond_2
    :goto_2
    iget v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->k:I

    const/16 v5, 0x15

    const/4 v6, 0x0

    if-eq v4, v5, :cond_21

    invoke-virtual {v1}, Ljava/io/PushbackReader;->read()I

    move-result v4

    int-to-char v5, v4

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Ljava/io/PushbackReader;->read()I

    move-result v9

    goto :goto_3

    :cond_3
    move v9, v8

    :goto_3
    if-eqz v7, :cond_4

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    const/16 v11, 0x9f

    const/16 v12, 0x80

    if-nez v7, :cond_5

    if-lt v4, v12, :cond_5

    if-gt v4, v11, :cond_5

    iget-object v13, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->o:[I

    add-int/lit8 v4, v4, -0x80

    aget v4, v13, v4

    :cond_5
    const/16 v13, 0xa

    if-nez v7, :cond_6

    const/16 v14, 0xd

    if-ne v4, v14, :cond_6

    invoke-virtual {v1}, Ljava/io/PushbackReader;->read()I

    move-result v4

    if-eq v4, v13, :cond_6

    invoke-virtual {v0, v1, v4}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->e(Ljava/io/PushbackReader;I)V

    move v4, v13

    :cond_6
    const/4 v14, 0x1

    if-nez v7, :cond_7

    if-ne v4, v13, :cond_7

    iget v15, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->i:I

    add-int/2addr v15, v14

    iput v15, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->i:I

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->j:I

    goto :goto_5

    :cond_7
    iget v15, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->j:I

    add-int/2addr v15, v14

    iput v15, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->j:I

    :goto_5
    const/16 v15, 0x20

    if-eqz v7, :cond_8

    if-ge v4, v15, :cond_8

    if-eq v4, v13, :cond_8

    const/16 v13, 0x9

    if-eq v4, v13, :cond_8

    if-eq v4, v8, :cond_8

    goto :goto_2

    :cond_8
    move v13, v6

    move/from16 v16, v13

    :goto_6
    sget-object v3, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->r1:[I

    array-length v11, v3

    if-ge v13, v11, :cond_c

    iget v11, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->k:I

    aget v12, v3, v13

    if-eq v11, v12, :cond_9

    if-eqz v16, :cond_b

    goto :goto_8

    :cond_9
    add-int/lit8 v11, v13, 0x1

    aget v11, v3, v11

    if-nez v11, :cond_a

    add-int/lit8 v11, v13, 0x2

    aget v16, v3, v11

    add-int/lit8 v11, v13, 0x3

    aget v3, v3, v11

    iput v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->l:I

    goto :goto_7

    :cond_a
    if-nez v7, :cond_b

    if-ne v11, v4, :cond_b

    add-int/lit8 v11, v13, 0x2

    aget v16, v3, v11

    add-int/lit8 v13, v13, 0x3

    aget v3, v3, v13

    iput v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->l:I

    goto :goto_8

    :cond_b
    :goto_7
    add-int/lit8 v13, v13, 0x4

    const/16 v11, 0x9f

    const/16 v12, 0x80

    goto :goto_6

    :cond_c
    :goto_8
    move/from16 v3, v16

    const/16 v11, 0x3c

    const/16 v12, 0x2d

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t process state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    if-lez v3, :cond_d

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    :cond_d
    iget-object v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v3, v6, v4}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->pcdata([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    goto :goto_9

    :pswitch_1
    invoke-virtual {v0, v1, v4}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->e(Ljava/io/PushbackReader;I)V

    iget v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->j:I

    sub-int/2addr v3, v14

    iput v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->j:I

    goto :goto_9

    :pswitch_2
    iget-object v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v3, v6, v4}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->stagc([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    goto :goto_9

    :pswitch_3
    invoke-virtual {v0, v15, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->b(ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    goto :goto_9

    :pswitch_4
    invoke-virtual {v0, v10, v4, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->d(Ljava/lang/String;ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    goto :goto_9

    :pswitch_5
    iget-object v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v3, v6, v4}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->pitarget([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    iget-object v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    invoke-interface {v2, v3, v6, v6}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->pi([CII)V

    goto :goto_9

    :pswitch_6
    iget-object v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v3, v6, v4}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->pitarget([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    goto :goto_9

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->a()V

    iget-object v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v3, v6, v4}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->pi([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    goto :goto_9

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->a()V

    iget-object v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v3, v6, v4}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->pcdata([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    goto :goto_9

    :pswitch_9
    invoke-virtual {v0, v12, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->b(ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    invoke-virtual {v0, v15, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->b(ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    goto :goto_9

    :pswitch_a
    invoke-virtual {v0, v12, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->b(ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    invoke-virtual {v0, v15, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->b(ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    :pswitch_b
    invoke-virtual {v0, v12, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->b(ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    invoke-virtual {v0, v10, v4, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->d(Ljava/lang/String;ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    :goto_9
    :pswitch_c
    const/16 v3, 0x1c

    goto/16 :goto_c

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->a()V

    invoke-virtual {v0, v11, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->b(ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    iget-object v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v3, v6, v4}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->pcdata([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    goto :goto_9

    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->a()V

    invoke-virtual {v0, v11, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->b(ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    invoke-virtual {v0, v10, v4, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->d(Ljava/lang/String;ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    goto :goto_9

    :pswitch_f
    iget-object v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v3, v6, v4}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->gi([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    iget-object v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    invoke-interface {v2, v3, v6, v6}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->stagc([CII)V

    goto :goto_9

    :pswitch_10
    iget-object v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v3, v6, v4}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->gi([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    goto :goto_9

    :pswitch_11
    iget-object v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v3, v6, v4}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->etag([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    goto :goto_9

    :pswitch_12
    iget-object v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v5, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v3, v6, v5}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->pcdata([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-virtual {v0, v10, v4, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->d(Ljava/lang/String;ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    goto :goto_9

    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->a()V

    iget v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->k:I

    const/16 v11, 0x17

    const/16 v12, 0x23

    const/16 v13, 0x1b

    if-ne v3, v11, :cond_e

    if-ne v5, v12, :cond_e

    iput v13, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->l:I

    invoke-virtual {v0, v10, v4, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->d(Ljava/lang/String;ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    goto :goto_9

    :cond_e
    if-ne v3, v13, :cond_10

    const/16 v15, 0x78

    if-eq v5, v15, :cond_f

    const/16 v15, 0x58

    if-ne v5, v15, :cond_10

    :cond_f
    iput v12, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->l:I

    invoke-virtual {v0, v10, v4, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->d(Ljava/lang/String;ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    goto :goto_9

    :cond_10
    if-ne v3, v11, :cond_11

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v0, v10, v4, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->d(Ljava/lang/String;ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    goto :goto_9

    :cond_11
    iget v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->k:I

    if-ne v3, v13, :cond_12

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v0, v10, v4, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->d(Ljava/lang/String;ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    goto/16 :goto_9

    :cond_12
    iget v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->k:I

    if-ne v3, v12, :cond_14

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "abcdefABCDEF"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v8, :cond_14

    :cond_13
    invoke-virtual {v0, v10, v4, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->d(Ljava/lang/String;ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    goto/16 :goto_9

    :cond_14
    iget-object v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v5, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    sub-int/2addr v5, v14

    invoke-interface {v2, v3, v14, v5}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->entity([CII)V

    invoke-interface/range {p2 .. p2}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->getEntity()I

    move-result v3

    if-eqz v3, :cond_1b

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    const/16 v5, 0x80

    if-lt v3, v5, :cond_15

    const/16 v5, 0x9f

    if-gt v3, v5, :cond_15

    iget-object v5, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->o:[I

    add-int/lit8 v3, v3, -0x80

    aget v3, v5, v3

    :cond_15
    const/16 v5, 0x20

    if-ge v3, v5, :cond_16

    goto :goto_a

    :cond_16
    const v5, 0xd800

    if-lt v3, v5, :cond_17

    const v6, 0xdfff

    if-gt v3, v6, :cond_17

    goto :goto_a

    :cond_17
    const v6, 0xffff

    if-gt v3, v6, :cond_18

    invoke-virtual {v0, v3, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->b(ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    goto :goto_a

    :cond_18
    const/high16 v6, 0x10000

    sub-int/2addr v3, v6

    shr-int/lit8 v6, v3, 0xa

    add-int/2addr v6, v5

    invoke-virtual {v0, v6, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->b(ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    and-int/lit16 v3, v3, 0x3ff

    const v5, 0xdc00

    add-int/2addr v3, v5

    invoke-virtual {v0, v3, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->b(ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    :goto_a
    if-nez v7, :cond_19

    const/16 v3, 0x3b

    if-eq v4, v3, :cond_1d

    :cond_19
    if-eqz v7, :cond_1a

    invoke-virtual {v0, v1, v9}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->e(Ljava/io/PushbackReader;I)V

    iget v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->j:I

    sub-int/2addr v3, v14

    iput v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->j:I

    :cond_1a
    invoke-virtual {v0, v1, v4}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->e(Ljava/io/PushbackReader;I)V

    iget v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->j:I

    sub-int/2addr v3, v14

    iput v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->j:I

    goto :goto_b

    :cond_1b
    if-eqz v7, :cond_1c

    invoke-virtual {v0, v1, v9}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->e(Ljava/io/PushbackReader;I)V

    iget v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->j:I

    sub-int/2addr v3, v14

    iput v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->j:I

    :cond_1c
    invoke-virtual {v0, v1, v4}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->e(Ljava/io/PushbackReader;I)V

    iget v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->j:I

    sub-int/2addr v3, v14

    iput v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->j:I

    :cond_1d
    :goto_b
    const/16 v3, 0x1c

    iput v3, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->l:I

    goto/16 :goto_c

    :pswitch_14
    const/16 v3, 0x1c

    invoke-virtual/range {p0 .. p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->a()V

    iget v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    if-lez v4, :cond_1e

    iget-object v5, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    invoke-interface {v2, v5, v6, v4}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->gi([CII)V

    :cond_1e
    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    iget-object v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    invoke-interface {v2, v4, v6, v6}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->stage([CII)V

    goto/16 :goto_c

    :pswitch_15
    const/16 v3, 0x1c

    iget-object v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v5, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v4, v6, v5}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->decl([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    goto/16 :goto_c

    :pswitch_16
    const/16 v3, 0x1c

    invoke-virtual/range {p0 .. p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->a()V

    iget-object v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v5, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v4, v6, v5}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->cmnt([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    goto/16 :goto_c

    :pswitch_17
    const/16 v3, 0x1c

    invoke-virtual/range {p0 .. p0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->a()V

    iget v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    if-le v4, v14, :cond_1f

    add-int/lit8 v4, v4, -0x2

    iput v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    :cond_1f
    iget-object v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v5, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v4, v6, v5}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->pcdata([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    goto/16 :goto_c

    :pswitch_18
    const/16 v3, 0x1c

    iget-object v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v5, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v4, v6, v5}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->aval([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    iget-object v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    invoke-interface {v2, v4, v6, v6}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->stagc([CII)V

    goto :goto_c

    :pswitch_19
    const/16 v3, 0x1c

    iget-object v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v5, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v4, v6, v5}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->aval([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    goto :goto_c

    :pswitch_1a
    const/16 v3, 0x1c

    iget-object v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v5, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v4, v6, v5}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->aname([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    iget-object v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    invoke-interface {v2, v4, v6, v6}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->adup([CII)V

    iget-object v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v5, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v4, v6, v5}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->stagc([CII)V

    goto :goto_c

    :pswitch_1b
    const/16 v3, 0x1c

    iget-object v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v5, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v4, v6, v5}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->aname([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    iget-object v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    invoke-interface {v2, v4, v6, v6}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->adup([CII)V

    goto :goto_c

    :pswitch_1c
    const/16 v3, 0x1c

    iget-object v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v5, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v4, v6, v5}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->aname([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    goto :goto_c

    :pswitch_1d
    const/16 v3, 0x1c

    iget-object v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v5, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v4, v6, v5}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->adup([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    iget-object v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    invoke-interface {v2, v4, v6, v6}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->stagc([CII)V

    goto :goto_c

    :pswitch_1e
    const/16 v3, 0x1c

    iget-object v5, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v7, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v5, v6, v7}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->adup([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    if-eqz v10, :cond_20

    invoke-virtual {v0, v10, v4, v2}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->d(Ljava/lang/String;ILcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V

    goto :goto_c

    :pswitch_1f
    const/16 v3, 0x1c

    iget-object v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    iget v5, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    invoke-interface {v2, v4, v6, v5}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->adup([CII)V

    iput v6, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->n:I

    :cond_20
    :goto_c
    iget v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->l:I

    iput v4, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->k:I

    goto/16 :goto_2

    :pswitch_20
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTMLScanner can\'t cope with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    iget-object v0, v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->m:[C

    invoke-interface {v2, v0, v6, v6}, Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;->eof([CII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startCDATA()V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;->l:I

    return-void
.end method
