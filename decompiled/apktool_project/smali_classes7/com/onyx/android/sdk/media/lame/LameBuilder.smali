.class public final Lcom/onyx/android/sdk/media/lame/LameBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;,
        Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008G\u0018\u00002\u00020\u0001:\u0002jkB\u0007\u00a2\u0006\u0004\u0008h\u0010iJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0002J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0002J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0002J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0002J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001bJ\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001eJ\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0002J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0002J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0002J\u0006\u0010&\u001a\u00020%R\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008\u0006\u0010+R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010(\u001a\u0004\u0008-\u0010*\"\u0004\u0008\u0008\u0010+R\"\u00100\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010(\u001a\u0004\u0008/\u0010*\"\u0004\u0008\n\u0010+R\"\u00104\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010(\u001a\u0004\u00082\u0010*\"\u0004\u00083\u0010+R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u0010(\u001a\u0004\u00086\u0010*\"\u0004\u0008\u0004\u0010+R\"\u00109\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u0010(\u001a\u0004\u00088\u0010*\"\u0004\u0008 \u0010+R\"\u0010<\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010(\u001a\u0004\u0008;\u0010*\"\u0004\u0008!\u0010+R\"\u0010@\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010(\u001a\u0004\u0008>\u0010*\"\u0004\u0008?\u0010+R\"\u0010D\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010(\u001a\u0004\u0008B\u0010*\"\u0004\u0008C\u0010+R\"\u0010J\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010H\"\u0004\u0008\u001a\u0010IR\"\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008K\u0010L\u001a\u0004\u0008M\u0010N\"\u0004\u0008\u001d\u0010OR\"\u0010U\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010Q\u001a\u0004\u0008R\u0010S\"\u0004\u0008\u001f\u0010TR$\u0010[\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008V\u0010W\u001a\u0004\u0008X\u0010Y\"\u0004\u0008\u000f\u0010ZR$\u0010^\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\\\u0010W\u001a\u0004\u0008]\u0010Y\"\u0004\u0008\u0011\u0010ZR$\u0010a\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008_\u0010W\u001a\u0004\u0008`\u0010Y\"\u0004\u0008\u0013\u0010ZR$\u0010d\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010W\u001a\u0004\u0008c\u0010Y\"\u0004\u0008\u0015\u0010ZR$\u0010g\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010W\u001a\u0004\u0008f\u0010Y\"\u0004\u0008\u0017\u0010Z\u00a8\u0006l"
    }
    d2 = {
        "Lcom/onyx/android/sdk/media/lame/LameBuilder;",
        "",
        "",
        "quality",
        "setQuality",
        "inSampleRate",
        "setInSampleRate",
        "outSampleRate",
        "setOutSampleRate",
        "bitrate",
        "setOutBitrate",
        "channels",
        "setOutChannels",
        "",
        "title",
        "setId3tagTitle",
        "artist",
        "setId3tagArtist",
        "album",
        "setId3tagAlbum",
        "comment",
        "setId3tagComment",
        "year",
        "setId3tagYear",
        "",
        "scaleAmount",
        "setScaleInput",
        "Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;",
        "mode",
        "setMode",
        "Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;",
        "setVbrMode",
        "setVbrQuality",
        "setAbrMeanBitrate",
        "freq",
        "setLowpassFreqency",
        "setHighpassFreqency",
        "Lcom/onyx/android/sdk/media/lame/OnyxLame;",
        "build",
        "a",
        "I",
        "getInSampleRate",
        "()I",
        "(I)V",
        "b",
        "getOutSampleRate",
        "c",
        "getOutBitrate",
        "outBitrate",
        "d",
        "getOutChannel",
        "setOutChannel",
        "outChannel",
        "e",
        "getQuality",
        "f",
        "getVbrQuality",
        "vbrQuality",
        "g",
        "getAbrMeanBitrate",
        "abrMeanBitrate",
        "h",
        "getLowpassFreq",
        "setLowpassFreq",
        "lowpassFreq",
        "i",
        "getHighpassFreq",
        "setHighpassFreq",
        "highpassFreq",
        "j",
        "F",
        "getScaleInput",
        "()F",
        "(F)V",
        "scaleInput",
        "k",
        "Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;",
        "getMode",
        "()Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;",
        "(Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;)V",
        "l",
        "Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;",
        "getVbrMode",
        "()Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;",
        "(Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;)V",
        "vbrMode",
        "m",
        "Ljava/lang/String;",
        "getId3tagTitle",
        "()Ljava/lang/String;",
        "(Ljava/lang/String;)V",
        "id3tagTitle",
        "n",
        "getId3tagArtist",
        "id3tagArtist",
        "o",
        "getId3tagAlbum",
        "id3tagAlbum",
        "p",
        "getId3tagComment",
        "id3tagComment",
        "q",
        "getId3tagYear",
        "id3tagYear",
        "<init>",
        "()V",
        "Mode",
        "VbrMode",
        "sdk-media_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:F

.field public k:Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xac44

    iput v0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->a:I

    const/16 v0, 0x80

    iput v0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->c:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->d:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->e:I

    iput v1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->f:I

    iput v0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->g:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->j:F

    sget-object v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;->DEFAULT:Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;

    iput-object v0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->k:Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;

    sget-object v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;->VBR_OFF:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    iput-object v0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->l:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    return-void
.end method


# virtual methods
.method public final build()Lcom/onyx/android/sdk/media/lame/OnyxLame;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/media/lame/OnyxLame;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/media/lame/OnyxLame;-><init>(Lcom/onyx/android/sdk/media/lame/LameBuilder;)V

    return-object v0
.end method

.method public final getAbrMeanBitrate()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->g:I

    return p0
.end method

.method public final getHighpassFreq()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->i:I

    return p0
.end method

.method public final getId3tagAlbum()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->o:Ljava/lang/String;

    return-object p0
.end method

.method public final getId3tagArtist()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final getId3tagComment()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final getId3tagTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final getId3tagYear()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->q:Ljava/lang/String;

    return-object p0
.end method

.method public final getInSampleRate()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->a:I

    return p0
.end method

.method public final getLowpassFreq()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->h:I

    return p0
.end method

.method public final getMode()Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->k:Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;

    return-object p0
.end method

.method public final getOutBitrate()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->c:I

    return p0
.end method

.method public final getOutChannel()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->d:I

    return p0
.end method

.method public final getOutSampleRate()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->b:I

    return p0
.end method

.method public final getQuality()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->e:I

    return p0
.end method

.method public final getScaleInput()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->j:F

    return p0
.end method

.method public final getVbrMode()Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->l:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    return-object p0
.end method

.method public final getVbrQuality()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->f:I

    return p0
.end method

.method public final setAbrMeanBitrate(I)Lcom/onyx/android/sdk/media/lame/LameBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->g:I

    return-object p0
.end method

.method public final setAbrMeanBitrate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->g:I

    return-void
.end method

.method public final setHighpassFreq(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->i:I

    return-void
.end method

.method public final setHighpassFreqency(I)Lcom/onyx/android/sdk/media/lame/LameBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->i:I

    return-object p0
.end method

.method public final setId3tagAlbum(Ljava/lang/String;)Lcom/onyx/android/sdk/media/lame/LameBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->o:Ljava/lang/String;

    return-object p0
.end method

.method public final setId3tagAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->o:Ljava/lang/String;

    return-void
.end method

.method public final setId3tagArtist(Ljava/lang/String;)Lcom/onyx/android/sdk/media/lame/LameBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final setId3tagArtist(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->n:Ljava/lang/String;

    return-void
.end method

.method public final setId3tagComment(Ljava/lang/String;)Lcom/onyx/android/sdk/media/lame/LameBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final setId3tagComment(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->p:Ljava/lang/String;

    return-void
.end method

.method public final setId3tagTitle(Ljava/lang/String;)Lcom/onyx/android/sdk/media/lame/LameBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final setId3tagTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->m:Ljava/lang/String;

    return-void
.end method

.method public final setId3tagYear(Ljava/lang/String;)Lcom/onyx/android/sdk/media/lame/LameBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->q:Ljava/lang/String;

    return-object p0
.end method

.method public final setId3tagYear(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->q:Ljava/lang/String;

    return-void
.end method

.method public final setInSampleRate(I)Lcom/onyx/android/sdk/media/lame/LameBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->a:I

    return-object p0
.end method

.method public final setInSampleRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->a:I

    return-void
.end method

.method public final setLowpassFreq(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->h:I

    return-void
.end method

.method public final setLowpassFreqency(I)Lcom/onyx/android/sdk/media/lame/LameBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->h:I

    return-object p0
.end method

.method public final setMode(Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;)Lcom/onyx/android/sdk/media/lame/LameBuilder;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->k:Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;

    return-object p0
.end method

.method public final setMode(Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->k:Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;

    return-void
.end method

.method public final setOutBitrate(I)Lcom/onyx/android/sdk/media/lame/LameBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->c:I

    return-object p0
.end method

.method public final setOutBitrate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->c:I

    return-void
.end method

.method public final setOutChannel(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->d:I

    return-void
.end method

.method public final setOutChannels(I)Lcom/onyx/android/sdk/media/lame/LameBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->d:I

    return-object p0
.end method

.method public final setOutSampleRate(I)Lcom/onyx/android/sdk/media/lame/LameBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->b:I

    return-object p0
.end method

.method public final setOutSampleRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->b:I

    return-void
.end method

.method public final setQuality(I)Lcom/onyx/android/sdk/media/lame/LameBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->e:I

    return-object p0
.end method

.method public final setQuality(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->e:I

    return-void
.end method

.method public final setScaleInput(F)Lcom/onyx/android/sdk/media/lame/LameBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->j:F

    return-object p0
.end method

.method public final setScaleInput(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->j:F

    return-void
.end method

.method public final setVbrMode(Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;)Lcom/onyx/android/sdk/media/lame/LameBuilder;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->l:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    return-object p0
.end method

.method public final setVbrMode(Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->l:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    return-void
.end method

.method public final setVbrQuality(I)Lcom/onyx/android/sdk/media/lame/LameBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->f:I

    return-object p0
.end method

.method public final setVbrQuality(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/media/lame/LameBuilder;->f:I

    return-void
.end method
