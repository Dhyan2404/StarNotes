.class public final Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;
.super Lcom/sunia/HTREnginev2/vod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$a;,
        Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;,
        Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;
    }
.end annotation


# static fields
.field public static final A:I = 0x9f

.field public static final A0:I = 0x31

.field public static final B:I = 0xff

.field public static final B0:I = 0x32

.field public static final C:I = 0x1f

.field public static final C0:I = 0x33

.field public static final D:I = 0x7f

.field public static final D0:I = 0x34

.field public static final E:I = 0x9f

.field public static final E0:I = 0x35

.field public static final F:I = 0xff

.field public static final F0:I = 0x39

.field public static final G:I = 0x0

.field public static final G0:I = 0x3a

.field public static final H:I = 0x3

.field public static final H0:I = 0x3c

.field public static final I:I = 0x8

.field public static final I0:I = 0x3d

.field public static final J:I = 0xc

.field public static final J0:I = 0x3f

.field public static final K:I = 0xd

.field public static final K0:I = 0x76

.field public static final L:I = 0xe

.field public static final L0:I = 0x77

.field public static final M:I = 0x10

.field public static final M0:I = 0x78

.field public static final N:I = 0x11

.field public static final N0:I = 0x79

.field public static final O:I = 0x17

.field public static final O0:I = 0x7a

.field public static final P:I = 0x18

.field public static final P0:I = 0x7b

.field public static final Q:I = 0x1f

.field public static final Q0:I = 0x7c

.field public static final R:I = 0x80

.field public static final R0:I = 0x7d

.field public static final S:I = 0x81

.field public static final S0:I = 0x7e

.field public static final T:I = 0x82

.field public static final T0:I = 0x7f

.field public static final U:I = 0x83

.field public static final V:I = 0x84

.field public static final W:I = 0x85

.field public static final X:I = 0x86

.field public static final Y:I = 0x87

.field public static final Z:I = 0x88

.field public static final a0:I = 0x89

.field public static final b0:I = 0x8a

.field public static final c0:I = 0x8b

.field public static final d0:I = 0x8c

.field public static final e0:I = 0x8d

.field public static final f0:I = 0x8e

.field public static final g0:I = 0x8f

.field public static final h0:I = 0x90

.field public static final i0:I = 0x91

.field public static final j0:I = 0x92

.field public static final k0:I = 0x97

.field public static final l0:I = 0x98

.field public static final m0:I = 0x99

.field public static final n0:I = 0x9a

.field public static final o0:I = 0x9b

.field public static final p0:I = 0x9c

.field public static final q0:I = 0x9d

.field public static final r0:I = 0x9e

.field public static final s0:I = 0x9f

.field public static final t:Ljava/lang/String; = "Cea708Decoder"

.field public static final t0:I = 0x7f

.field public static final u:I = 0x8

.field public static final u0:I = 0x20

.field public static final v:I = 0x2

.field public static final v0:I = 0x21

.field public static final w:I = 0x3

.field public static final w0:I = 0x25

.field public static final x:I = 0x4

.field public static final x0:I = 0x2a

.field public static final y:I = 0x1f

.field public static final y0:I = 0x2c

.field public static final z:I = 0x7f

.field public static final z0:I = 0x30


# instance fields
.field public final i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field public k:I

.field public final l:Z

.field public final m:I

.field public final n:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

.field public o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

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

.field public r:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public s:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 3
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/vod;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->k:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->m:I

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseCea708InitializationData(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->l:Z

    const/16 p2, 0x8

    new-array v0, p2, [Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    new-instance v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->r:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->q()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->r:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->j()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->c()Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$a;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$a;->b()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$a;->a:Lcom/google/android/exoplayer2/text/Cue;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public createSubtitle()Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->p:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->q:Ljava/util/List;

    new-instance p0, Lcom/sunia/HTREnginev2/wod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/wod;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final d(I)V
    .locals 4

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x11

    const-string v2, "Cea708Decoder"

    if-lt p1, v1, :cond_0

    const/16 v1, 0x17

    if-gt p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x37

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    const/16 v1, 0x1f

    if-lt p1, v0, :cond_1

    if-gt p1, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid C0 command: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->r()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->b()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->c()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->p:Ljava/util/List;

    :cond_4
    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public decode(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 8

    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_9

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    int-to-byte v5, v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    int-to-byte v6, v6

    const/4 v7, 0x2

    if-eq v1, v7, :cond_2

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "Cea708Decoder"

    if-ne v1, v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b()V

    and-int/lit16 v0, v5, 0xc0

    shr-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->k:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->r()V

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->k:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x47

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Sequence number discontinuity. previous="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " current="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->k:I

    and-int/lit8 p1, v5, 0x3f

    if-nez p1, :cond_5

    const/16 p1, 0x40

    :cond_5
    new-instance v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->r:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;

    iget-object p1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;->c:[B

    iget v0, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;->d:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;->d:I

    aput-byte v6, p1, v0

    goto :goto_2

    :cond_6
    if-ne v1, v7, :cond_7

    move v3, v4

    :cond_7
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->r:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;

    if-nez v0, :cond_8

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object p1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;->c:[B

    iget v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;->d:I

    add-int/lit8 v2, v1, 0x1

    aput-byte v5, p1, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;->d:I

    aput-byte v6, p1, v2

    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->r:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;

    iget v0, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;->d:I

    iget p1, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;->b:I

    mul-int/2addr p1, v7

    sub-int/2addr p1, v4

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b()V

    goto/16 :goto_0

    :cond_9
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

.method public bridge synthetic dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sunia/HTREnginev2/vod;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final e(I)V
    .locals 4

    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid C1 command: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cea708Decoder"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_1
    add-int/lit16 p1, p1, -0x98

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h(I)V

    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->s:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->s:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    goto/16 :goto_5

    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->i()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->p()V

    goto/16 :goto_5

    :pswitch_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->i()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o()V

    goto/16 :goto_5

    :pswitch_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->i()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 p1, 0x18

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n()V

    goto/16 :goto_5

    :pswitch_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->i()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->m()V

    goto/16 :goto_5

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->r()V

    goto/16 :goto_5

    :pswitch_7
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    :goto_0
    :pswitch_8
    if-gt v2, v1, :cond_9

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->l()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_9
    move p1, v2

    :goto_1
    if-gt p1, v1, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->k()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->p(Z)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :goto_2
    :pswitch_a
    if-gt v2, v1, :cond_9

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->p(Z)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_b
    move p1, v2

    :goto_3
    if-gt p1, v1, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->p(Z)V

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :goto_4
    :pswitch_c
    if-gt v2, v1, :cond_9

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->e()V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :pswitch_d
    add-int/lit8 p1, p1, -0x80

    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->s:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->s:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    :cond_9
    :goto_5
    :pswitch_e
    return-void

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final f(I)V
    .locals 1

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    if-gt p1, v0, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 p1, 0x18

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 3

    invoke-super {p0}, Lcom/sunia/HTREnginev2/vod;->flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->p:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->q:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->s:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->r()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->r:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;

    return-void
.end method

.method public final g(I)V
    .locals 1

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 p1, 0x28

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "Cea708Decoder"

    return-object p0
.end method

.method public final h(I)V
    .locals 14

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    aget-object v1, v0, p1

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iget-object v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    iget-object v7, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    iget-object v9, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    iget-object v10, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v10, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v12, 0x6

    invoke-virtual {v10, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    iget-object v12, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v12, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    move v5, p1

    invoke-virtual/range {v1 .. v13}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->f(ZZZIZIIIIIII)V

    return-void
.end method

.method public final i(I)V
    .locals 1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x266b

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    :goto_0
    return-void
.end method

.method public isNewSubtitleDataAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->p:Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->q:Ljava/util/List;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    return-void
.end method

.method public final k(I)V
    .locals 2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_9

    const/16 v0, 0x21

    if-eq p1, v0, :cond_8

    const/16 v1, 0x25

    if-eq p1, v1, :cond_7

    const/16 v1, 0x2a

    if-eq p1, v1, :cond_6

    const/16 v1, 0x2c

    if-eq p1, v1, :cond_5

    const/16 v1, 0x3f

    if-eq p1, v1, :cond_4

    const/16 v1, 0x39

    if-eq p1, v1, :cond_3

    const/16 v1, 0x3a

    if-eq p1, v1, :cond_2

    const/16 v1, 0x3c

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3d

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid G2 character: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cea708Decoder"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x250c

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x2518

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto/16 :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x2500

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto/16 :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x2514

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto/16 :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x2510

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto/16 :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x2502

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto/16 :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x215e

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto/16 :goto_0

    :pswitch_7
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x215d

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto/16 :goto_0

    :pswitch_8
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x215c

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto/16 :goto_0

    :pswitch_9
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x215b

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto/16 :goto_0

    :pswitch_a
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x2022

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto/16 :goto_0

    :pswitch_b
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x201d

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto/16 :goto_0

    :pswitch_c
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x201c

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto/16 :goto_0

    :pswitch_d
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x2019

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto :goto_0

    :pswitch_e
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x2018

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto :goto_0

    :pswitch_f
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x2588

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x2120

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x153

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x161

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x2122

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x178

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x152

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x160

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x2026

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto :goto_0

    :cond_8
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0xa0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto :goto_0

    :cond_9
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x76
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l(I)V
    .locals 2

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x33c4

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid G3 character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    const/16 p1, 0x5f

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->a(C)V

    :goto_0
    return-void
.end method

.method public final m()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->m(IIIZZII)V

    return-void
.end method

.method public final n()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->h(IIII)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    invoke-static {v3, v4, v5, v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->h(IIII)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    invoke-static {v3, v4, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->g(III)I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->n(III)V

    return-void
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->o(II)V

    return-void
.end method

.method public final p()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->h(IIII)I

    move-result v6

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->g(III)I

    move-result v7

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    move v9, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v8

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->q(IIZIIII)V

    return-void
.end method

.method public final q()V
    .locals 11
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "currentDtvCcPacket"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->r:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;

    iget v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;->d:I

    iget v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;->b:I

    mul-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const-string v5, "Cea708Decoder"

    const/4 v6, 0x2

    if-eq v1, v3, :cond_0

    mul-int/2addr v2, v6

    sub-int/2addr v2, v4

    iget v0, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;->a:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v7, 0x73

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "DtvCcPacket ended prematurely; size is "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but current index is "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (sequence number "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->r:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;

    iget-object v2, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;->c:[B

    iget v1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$c;->d:I

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([BI)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid extended service number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "serviceNumber is non-zero ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when blockSize is 0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->m:I

    if-eq v0, v2, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v0

    const/16 v2, 0x8

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v3

    if-lez v3, :cond_e

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v3

    if-ge v3, v0, :cond_e

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/16 v6, 0x10

    const/16 v7, 0xff

    const/16 v8, 0x9f

    const/16 v9, 0x7f

    const/16 v10, 0x1f

    if-eq v3, v6, :cond_9

    if-gt v3, v10, :cond_5

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d(I)V

    goto :goto_0

    :cond_5
    if-gt v3, v9, :cond_6

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->i(I)V

    goto :goto_1

    :cond_6
    if-gt v3, v8, :cond_7

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e(I)V

    goto :goto_1

    :cond_7
    if-gt v3, v7, :cond_8

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j(I)V

    goto :goto_1

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x21

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Invalid base command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-gt v3, v10, :cond_a

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->f(I)V

    goto :goto_0

    :cond_a
    if-gt v3, v9, :cond_b

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->k(I)V

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_b
    if-gt v3, v8, :cond_c

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->g(I)V

    goto :goto_0

    :cond_c
    if-gt v3, v7, :cond_d

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->l(I)V

    goto :goto_1

    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x25

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Invalid extended command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->p:Ljava/util/List;

    :cond_f
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

.method public final r()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$b;->l()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    invoke-super {p0}, Lcom/sunia/HTREnginev2/vod;->release()V

    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sunia/HTREnginev2/vod;->setPositionUs(J)V

    return-void
.end method
