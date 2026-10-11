.class public final Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/utils/WavUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WaveHeader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0019\n\u0002\u0008\u0018\n\u0002\u0010\n\n\u0002\u0008#\n\u0002\u0010\u0012\n\u0002\u0008\u0007\u0018\u0000 M2\u00020\u0001:\u0001MB\u0007\u00a2\u0006\u0004\u0008K\u0010LJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004H\u0002J\u0018\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0017\u0010\u0010\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0016\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001a\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\r\u001a\u0004\u0008\u0017\u0010\u000f\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001e\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\r\u001a\u0004\u0008\u001c\u0010\u000f\"\u0004\u0008\u001d\u0010\u0019R\"\u0010\"\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0011\u001a\u0004\u0008 \u0010\u0013\"\u0004\u0008!\u0010\u0015R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\"\u0010.\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010%\u001a\u0004\u0008,\u0010\'\"\u0004\u0008-\u0010)R\"\u00102\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u0010\u0011\u001a\u0004\u00080\u0010\u0013\"\u0004\u00081\u0010\u0015R\"\u00106\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010\u0011\u001a\u0004\u00084\u0010\u0013\"\u0004\u00085\u0010\u0015R\"\u0010:\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u0010%\u001a\u0004\u00088\u0010\'\"\u0004\u00089\u0010)R\"\u0010>\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010%\u001a\u0004\u0008<\u0010\'\"\u0004\u0008=\u0010)R\"\u0010B\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010\r\u001a\u0004\u0008@\u0010\u000f\"\u0004\u0008A\u0010\u0019R\"\u0010F\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010\u0011\u001a\u0004\u0008D\u0010\u0013\"\u0004\u0008E\u0010\u0015R\u0011\u0010J\u001a\u00020G8F\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010I\u00a8\u0006N"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;",
        "",
        "Ljava/io/ByteArrayOutputStream;",
        "bos",
        "",
        "s",
        "",
        "c",
        "n",
        "b",
        "",
        "id",
        "a",
        "[C",
        "getFileID",
        "()[C",
        "fileID",
        "I",
        "getFileLength",
        "()I",
        "setFileLength",
        "(I)V",
        "fileLength",
        "getWavTag",
        "setWavTag",
        "([C)V",
        "wavTag",
        "d",
        "getFmtHdrID",
        "setFmtHdrID",
        "FmtHdrID",
        "e",
        "getFmtHdrLeth",
        "setFmtHdrLeth",
        "FmtHdrLeth",
        "",
        "f",
        "S",
        "getFormatTag",
        "()S",
        "setFormatTag",
        "(S)V",
        "FormatTag",
        "g",
        "getChannels",
        "setChannels",
        "Channels",
        "h",
        "getSamplesPerSec",
        "setSamplesPerSec",
        "SamplesPerSec",
        "i",
        "getAvgBytesPerSec",
        "setAvgBytesPerSec",
        "AvgBytesPerSec",
        "j",
        "getBlockAlign",
        "setBlockAlign",
        "BlockAlign",
        "k",
        "getBitsPerSample",
        "setBitsPerSample",
        "BitsPerSample",
        "l",
        "getDataHdrID",
        "setDataHdrID",
        "DataHdrID",
        "m",
        "getDataHdrLeth",
        "setDataHdrLeth",
        "DataHdrLeth",
        "",
        "getHeader",
        "()[B",
        "header",
        "<init>",
        "()V",
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HEADER_LENGTH:I = 0x2c


# instance fields
.field public final a:[C
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I

.field public c:[C
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:[C
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:I

.field public f:S

.field public g:S

.field public h:I

.field public i:I

.field public j:S

.field public k:S

.field public l:[C
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->Companion:Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->a:[C

    new-array v1, v0, [C

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->c:[C

    new-array v1, v0, [C

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->d:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->l:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x52s
        0x49s
        0x46s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x57s
        0x41s
        0x56s
        0x45s
    .end array-data

    :array_2
    .array-data 2
        0x66s
        0x6ds
        0x74s
        0x20s
    .end array-data

    :array_3
    .array-data 2
        0x64s
        0x61s
        0x74s
        0x61s
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/io/ByteArrayOutputStream;[C)V
    .locals 2

    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-char v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/io/ByteArrayOutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x4

    new-array p0, p0, [B

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p0, v1

    shl-int/lit8 v0, p2, 0x8

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p0, v1

    shl-int/lit8 v0, p2, 0x10

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p0, v1

    shl-int/lit8 p2, p2, 0x18

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    const/4 v0, 0x0

    aput-byte p2, p0, v0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final c(Ljava/io/ByteArrayOutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [B

    shl-int/lit8 v0, p2, 0x10

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p0, v1

    shl-int/lit8 p2, p2, 0x18

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    const/4 v0, 0x0

    aput-byte p2, p0, v0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final getAvgBytesPerSec()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->i:I

    return p0
.end method

.method public final getBitsPerSample()S
    .locals 0

    iget-short p0, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->k:S

    return p0
.end method

.method public final getBlockAlign()S
    .locals 0

    iget-short p0, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->j:S

    return p0
.end method

.method public final getChannels()S
    .locals 0

    iget-short p0, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->g:S

    return p0
.end method

.method public final getDataHdrID()[C
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->l:[C

    return-object p0
.end method

.method public final getDataHdrLeth()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->m:I

    return p0
.end method

.method public final getFileID()[C
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->a:[C

    return-object p0
.end method

.method public final getFileLength()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->b:I

    return p0
.end method

.method public final getFmtHdrID()[C
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->d:[C

    return-object p0
.end method

.method public final getFmtHdrLeth()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->e:I

    return p0
.end method

.method public final getFormatTag()S
    .locals 0

    iget-short p0, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->f:S

    return p0
.end method

.method public final getHeader()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->a:[C

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->a(Ljava/io/ByteArrayOutputStream;[C)V

    iget v1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->b(Ljava/io/ByteArrayOutputStream;I)V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->c:[C

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->a(Ljava/io/ByteArrayOutputStream;[C)V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->d:[C

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->a(Ljava/io/ByteArrayOutputStream;[C)V

    iget v1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->e:I

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->b(Ljava/io/ByteArrayOutputStream;I)V

    iget-short v1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->f:S

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->c(Ljava/io/ByteArrayOutputStream;I)V

    iget-short v1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->g:S

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->c(Ljava/io/ByteArrayOutputStream;I)V

    iget v1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->b(Ljava/io/ByteArrayOutputStream;I)V

    iget v1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->i:I

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->b(Ljava/io/ByteArrayOutputStream;I)V

    iget-short v1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->j:S

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->c(Ljava/io/ByteArrayOutputStream;I)V

    iget-short v1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->k:S

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->c(Ljava/io/ByteArrayOutputStream;I)V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->l:[C

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->a(Ljava/io/ByteArrayOutputStream;[C)V

    iget v1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->m:I

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->b(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getSamplesPerSec()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->h:I

    return p0
.end method

.method public final getWavTag()[C
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->c:[C

    return-object p0
.end method

.method public final setAvgBytesPerSec(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->i:I

    return-void
.end method

.method public final setBitsPerSample(S)V
    .locals 0

    iput-short p1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->k:S

    return-void
.end method

.method public final setBlockAlign(S)V
    .locals 0

    iput-short p1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->j:S

    return-void
.end method

.method public final setChannels(S)V
    .locals 0

    iput-short p1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->g:S

    return-void
.end method

.method public final setDataHdrID([C)V
    .locals 1
    .param p1    # [C
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->l:[C

    return-void
.end method

.method public final setDataHdrLeth(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->m:I

    return-void
.end method

.method public final setFileLength(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->b:I

    return-void
.end method

.method public final setFmtHdrID([C)V
    .locals 1
    .param p1    # [C
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->d:[C

    return-void
.end method

.method public final setFmtHdrLeth(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->e:I

    return-void
.end method

.method public final setFormatTag(S)V
    .locals 0

    iput-short p1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->f:S

    return-void
.end method

.method public final setSamplesPerSec(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->h:I

    return-void
.end method

.method public final setWavTag([C)V
    .locals 1
    .param p1    # [C
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->c:[C

    return-void
.end method
