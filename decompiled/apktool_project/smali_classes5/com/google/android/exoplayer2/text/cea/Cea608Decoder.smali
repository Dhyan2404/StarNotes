.class public final Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;
.super Lcom/sunia/HTREnginev2/vod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "Cea608Decoder"

.field public static final B:I = 0x4

.field public static final C:I = 0x2

.field public static final D:I = 0x1

.field public static final E:I = 0x0

.field public static final F:I = 0x1

.field public static final G:I = 0x0

.field public static final H:I = 0x1

.field public static final I:I = 0x0

.field public static final J:I = 0x1

.field public static final K:I = 0x2

.field public static final L:I = 0x3

.field public static final M:[I

.field public static final MIN_DATA_CHANNEL_TIMEOUT_MS:J = 0x3e80L

.field public static final N:[I

.field public static final O:[I

.field public static final P:I = 0x7

.field public static final Q:I = 0x8

.field public static final R:I = 0x4

.field public static final S:B = -0x4t

.field public static final T:B = 0x20t

.field public static final U:B = 0x21t

.field public static final V:B = 0x24t

.field public static final W:B = 0x25t

.field public static final X:B = 0x26t

.field public static final Y:B = 0x27t

.field public static final Z:B = 0x29t

.field public static final a0:B = 0x2at

.field public static final b0:B = 0x2bt

.field public static final c0:B = 0x2ct

.field public static final d0:B = 0x2dt

.field public static final e0:B = 0x2et

.field public static final f0:B = 0x2ft

.field public static final g0:[I

.field public static final h0:[I

.field public static final i0:[I

.field public static final j0:[I

.field public static final k0:[Z


# instance fields
.field public final i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:J

.field public final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

.field public p:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public r:I

.field public s:I

.field public t:Z

.field public u:Z

.field public v:B

.field public w:B

.field public x:I

.field public y:Z

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->M:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->N:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->O:[I

    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->g0:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->h0:[I

    const/16 v0, 0x20

    new-array v1, v0, [I

    fill-array-data v1, :array_5

    sput-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->i0:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->j0:[I

    const/16 v0, 0x100

    new-array v0, v0, [Z

    fill-array-data v0, :array_7

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->k0:[Z

    return-void

    :array_0
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x10
        0x14
        0x18
        0x1c
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0xff0100
        -0xffff01
        -0xff0001
        -0x10000
        -0x100
        -0xff01
    .end array-data

    :array_3
    .array-data 4
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0xe1
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0xe9
        0x5d
        0xed
        0xf3
        0xfa
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0xe7
        0xf7
        0xd1
        0xf1
        0x25a0
    .end array-data

    :array_4
    .array-data 4
        0xae
        0xb0
        0xbd
        0xbf
        0x2122
        0xa2
        0xa3
        0x266a
        0xe0
        0x20
        0xe8
        0xe2
        0xea
        0xee
        0xf4
        0xfb
    .end array-data

    :array_5
    .array-data 4
        0xc1
        0xc9
        0xd3
        0xda
        0xdc
        0xfc
        0x2018
        0xa1
        0x2a
        0x27
        0x2014
        0xa9
        0x2120
        0x2022
        0x201c
        0x201d
        0xc0
        0xc2
        0xc7
        0xc8
        0xca
        0xcb
        0xeb
        0xce
        0xcf
        0xef
        0xd4
        0xd9
        0xf9
        0xdb
        0xab
        0xbb
    .end array-data

    :array_6
    .array-data 4
        0xc3
        0xe3
        0xcd
        0xcc
        0xec
        0xd2
        0xf2
        0xd5
        0xf5
        0x7b
        0x7d
        0x5c
        0x5e
        0x5f
        0x7c
        0x7e
        0xc4
        0xe4
        0xd6
        0xf6
        0xdf
        0xa5
        0xa4
        0x2502
        0xc5
        0xe5
        0xd8
        0xf8
        0x250c
        0x2510
        0x2514
        0x2518
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 7

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/vod;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->n:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->x:I

    const-wide/16 v3, 0x0

    cmp-long v0, p3, v3

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-lez v0, :cond_0

    const-wide/16 v5, 0x3e8

    mul-long/2addr p3, v5

    goto :goto_0

    :cond_0
    move-wide p3, v3

    :goto_0
    iput-wide p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->m:J

    const-string p3, "application/x-mp4-cea-608"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x2

    const/4 p4, 0x3

    if-eqz p1, :cond_1

    move p1, p3

    goto :goto_1

    :cond_1
    move p1, p4

    :goto_1
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->j:I

    const/4 p1, 0x1

    if-eq p2, p1, :cond_5

    if-eq p2, p3, :cond_4

    if-eq p2, p4, :cond_3

    if-eq p2, v2, :cond_2

    const-string p2, "Cea608Decoder"

    const-string p3, "Invalid channel. Defaulting to CC1."

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->l:I

    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->k:I

    goto :goto_2

    :cond_2
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->l:I

    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->k:I

    goto :goto_2

    :cond_3
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->l:I

    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->k:I

    goto :goto_2

    :cond_4
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->l:I

    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->k:I

    goto :goto_2

    :cond_5
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->l:I

    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->k:I

    :goto_2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->z(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->y()V

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->y:Z

    iput-wide v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->z:J

    return-void
.end method

.method public static synthetic b()[I
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->O:[I

    return-object v0
.end method

.method public static c(B)C
    .locals 1

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 p0, p0, -0x20

    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->g0:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method public static d(B)I
    .locals 0

    shr-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static f(B)C
    .locals 1

    and-int/lit8 p0, p0, 0x1f

    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->i0:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method public static g(B)C
    .locals 1

    and-int/lit8 p0, p0, 0x1f

    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->j0:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method public static h(BB)C
    .locals 0

    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->f(B)C

    move-result p0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->g(B)C

    move-result p0

    return p0
.end method

.method public static i(B)C
    .locals 1

    and-int/lit8 p0, p0, 0xf

    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->h0:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method public static m(B)Z
    .locals 0

    and-int/lit16 p0, p0, 0xe0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static n(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf6

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xe0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static o(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xf0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static p(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf6

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xf0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static q(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xc0

    const/16 p1, 0x40

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static r(B)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static t(B)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static u(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xf0

    const/16 p1, 0x30

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static v(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    const/16 p0, 0x21

    if-lt p1, p0, :cond_0

    const/16 p0, 0x23

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static w(B)Z
    .locals 2

    const/4 v0, 0x1

    if-gt v0, p0, :cond_0

    const/16 v1, 0xf

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final A(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->s:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->m(I)V

    return-void
.end method

.method public final B()Z
    .locals 6

    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->m:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->z:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/vod;->getPositionUs()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->z:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->m:J

    cmp-long p0, v2, v4

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final C(B)Z
    .locals 1

    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->m(B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->d(B)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->x:I

    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->x:I

    iget p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->l:I

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public createSubtitle()Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->p:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->q:Ljava/util/List;

    new-instance p0, Lcom/sunia/HTREnginev2/wod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/wod;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public decode(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 9

    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    const/4 p1, 0x0

    move v0, p1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->j:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_11

    const/4 v1, 0x2

    if-ne v2, v1, :cond_1

    const/4 v1, -0x4

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    int-to-byte v1, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->k:I

    if-eq v5, v6, :cond_3

    goto :goto_0

    :cond_3
    and-int/lit8 v5, v2, 0x7f

    int-to-byte v5, v5

    and-int/lit8 v6, v4, 0x7f

    int-to-byte v6, v6

    if-nez v5, :cond_4

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->t:Z

    and-int/lit8 v1, v1, 0x4

    const/4 v8, 0x4

    if-ne v1, v8, :cond_5

    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->k0:[Z

    aget-boolean v2, v1, v2

    if-eqz v2, :cond_5

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, p1

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->t:Z

    invoke-virtual {p0, v1, v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->s(ZBB)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->t:Z

    if-nez v1, :cond_8

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->y()V

    :cond_7
    :goto_3
    move v0, v3

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->x(BB)V

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->y:Z

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->C(B)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    invoke-static {v5}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->m(B)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->u(BB)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    invoke-static {v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->i(B)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->e(C)V

    goto :goto_3

    :cond_b
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->n(BB)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->f()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->h(BB)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->e(C)V

    goto :goto_3

    :cond_c
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o(BB)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->j(B)V

    goto :goto_3

    :cond_d
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->q(BB)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->l(BB)V

    goto :goto_3

    :cond_e
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->v(BB)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    add-int/lit8 v6, v6, -0x20

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->a(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;I)I

    goto :goto_3

    :cond_f
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->p(BB)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->k(B)V

    goto :goto_3

    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    invoke-static {v5}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->c(B)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->e(C)V

    and-int/lit16 v0, v6, 0xe0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    invoke-static {v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->c(B)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->e(C)V

    goto :goto_3

    :cond_11
    if-eqz v0, :cond_13

    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->r:I

    if-eq p1, v3, :cond_12

    const/4 v0, 0x3

    if-ne p1, v0, :cond_13

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->p:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/vod;->getPositionUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->z:J

    :cond_13
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sunia/HTREnginev2/vod;->dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    move-result-object p0

    return-object p0
.end method

.method public dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/sunia/HTREnginev2/vod;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/vod;->getAvailableOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->p:Ljava/util/List;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->z:J

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->createSubtitle()Lcom/google/android/exoplayer2/text/Subtitle;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/vod;->getPositionUs()J

    move-result-wide v2

    const-wide v5, 0x7fffffffffffffffL

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->setContent(JLcom/google/android/exoplayer2/text/Subtitle;J)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    const/high16 v6, -0x80000000

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->g(I)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_0

    iget v5, v5, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v3, v0, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/Cue;

    if-eqz v5, :cond_3

    iget v6, v5, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    if-eq v6, v2, :cond_2

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->g(I)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/Cue;

    :cond_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v4
.end method

.method public flush()V
    .locals 2

    invoke-super {p0}, Lcom/sunia/HTREnginev2/vod;->flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->p:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->q:Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->z(I)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->A(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->y()V

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->t:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->u:Z

    iput-byte v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->v:B

    iput-byte v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->w:B

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->x:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->y:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->z:J

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "Cea608Decoder"

    return-object p0
.end method

.method public isNewSubtitleDataAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->p:Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->q:Ljava/util/List;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->e(C)V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    shr-int/2addr p1, v1

    and-int/lit8 p1, p1, 0x7

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->p(IZ)V

    return-void
.end method

.method public final k(B)V
    .locals 4

    const/16 v0, 0x20

    const/4 v1, 0x2

    if-eq p1, v0, :cond_5

    const/16 v0, 0x29

    const/4 v2, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->r:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v3, 0x21

    if-eq p1, v3, :cond_2

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->p:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->y()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->y()V

    goto :goto_0

    :pswitch_2
    if-ne v1, v0, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->i()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->k()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->p:Ljava/util/List;

    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->r:I

    if-eq p1, v0, :cond_1

    if-ne p1, v2, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->y()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->f()V

    :cond_3
    :goto_0
    return-void

    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->z(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->A(I)V

    return-void

    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->z(I)V

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->A(I)V

    return-void

    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->z(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->A(I)V

    return-void

    :cond_4
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->z(I)V

    return-void

    :cond_5
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->z(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l(BB)V
    .locals 5

    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->M:[I

    and-int/lit8 p1, p1, 0x7

    aget p1, v0, p1

    and-int/lit8 v0, p2, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->b(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->r:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->i()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->r:I

    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->s:I

    invoke-direct {v0, v3, v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->c(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;I)I

    :cond_3
    and-int/lit8 p1, p2, 0x10

    const/16 v0, 0x10

    if-ne p1, v0, :cond_4

    move p1, v2

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v2, :cond_5

    move v1, v2

    :cond_5
    shr-int/2addr p2, v2

    and-int/lit8 p2, p2, 0x7

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    if-eqz p1, :cond_6

    const/16 v2, 0x8

    goto :goto_2

    :cond_6
    move v2, p2

    :goto_2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->p(IZ)V

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    sget-object p1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->N:[I

    aget p1, p1, p2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->d(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;I)I

    :cond_7
    return-void
.end method

.method public bridge synthetic queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sunia/HTREnginev2/vod;->queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public final s(ZBB)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->r(B)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->u:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-byte p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->v:B

    if-ne p1, p2, :cond_0

    iget-byte p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->w:B

    if-ne p1, p3, :cond_0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->u:Z

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->u:Z

    iput-byte p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->v:B

    iput-byte p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->w:B

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->u:Z

    :goto_0
    return v0
.end method

.method public bridge synthetic setPositionUs(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sunia/HTREnginev2/vod;->setPositionUs(J)V

    return-void
.end method

.method public final x(BB)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->w(B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->y:Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->t(B)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x20

    if-eq p2, p1, :cond_1

    const/16 p1, 0x2f

    if-eq p2, p1, :cond_1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->y:Z

    goto :goto_0

    :cond_1
    :pswitch_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->y:Z

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final y()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->r:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->j(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->n:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final z(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->r:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->r:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$a;->l(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->y()V

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_4

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->p:Ljava/util/List;

    :cond_4
    return-void
.end method
