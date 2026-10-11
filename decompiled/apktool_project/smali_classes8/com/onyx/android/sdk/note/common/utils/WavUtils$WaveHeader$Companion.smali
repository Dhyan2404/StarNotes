.class public final Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader$Companion;",
        "",
        "()V",
        "HEADER_LENGTH",
        "",
        "isWave",
        "",
        "data",
        "",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isWave([B)Z
    .locals 7
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-eqz p1, :cond_5

    array-length v0, p1

    const/16 v1, 0x2c

    if-ge v0, v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->getFileID()[C

    move-result-object v1

    array-length v1, v1

    move v2, p0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p1, v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->getFileID()[C

    move-result-object v4

    aget-char v4, v4, v2

    int-to-byte v4, v4

    if-eq v3, v4, :cond_1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->getFileID()[C

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->getWavTag()[C

    move-result-object v2

    array-length v2, v2

    add-int/2addr v2, v1

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_4

    aget-byte v4, p1, v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->getWavTag()[C

    move-result-object v5

    sub-int v6, v3, v1

    aget-char v5, v5, v6

    int-to-byte v5, v5

    if-eq v4, v5, :cond_3

    return p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x1

    :cond_5
    :goto_2
    return p0
.end method
