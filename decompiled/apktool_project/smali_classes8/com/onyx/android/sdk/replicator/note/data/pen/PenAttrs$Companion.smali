.class public final Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs$Companion;",
        "",
        "()V",
        "copy",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;",
        "attrs",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final copy(Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "attrs"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->clone()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
