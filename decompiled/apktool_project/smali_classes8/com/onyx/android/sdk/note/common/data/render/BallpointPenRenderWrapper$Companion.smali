.class public final Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper$Companion;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper;",
        "penConfig",
        "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/onyx/android/sdk/pen/NeoPenConfig;)Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/pen/NeoPenConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "penConfig"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/pen/NeoBallpointInkPen;->Companion:Lcom/onyx/android/sdk/pen/NeoBallpointInkPen$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pen/NeoBallpointInkPen$Companion;->create(Lcom/onyx/android/sdk/pen/NeoPenConfig;)Lcom/onyx/android/sdk/pen/NeoPen;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->getColor()I

    move-result p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ColorKt;->isColorOpaque(I)Z

    move-result p1

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper;

    invoke-direct {v1, p0, p1, v0}, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper;-><init>(Lcom/onyx/android/sdk/pen/NeoPen;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
