.class public final Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet$Companion;",
        "",
        "()V",
        "ensureObject",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;",
        "audioData",
        "hasData",
        "",
        "sdk-replicator_overseasRelease"
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
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet$Companion;-><init>()V

    return-void
.end method

.method public static synthetic ensureObject$default(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet$Companion;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet$Companion;->ensureObject(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;)Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ensureObject(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;)Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->ensureUniqueId()Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final hasData(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->hasAudioFile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
