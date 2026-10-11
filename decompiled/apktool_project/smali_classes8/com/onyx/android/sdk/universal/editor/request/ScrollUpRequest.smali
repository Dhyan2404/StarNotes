.class public final Lcom/onyx/android/sdk/universal/editor/request/ScrollUpRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/ScrollUpRequest;",
        "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;",
        "scrollInfo",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "virtualDocViewInfo",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "getVirtualDocViewInfo",
        "()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "setVirtualDocViewInfo",
        "(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public virtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scrollInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/ScrollUpRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/request/ScrollUpRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->getHeight()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->updateViewportSize(Lcom/onyx/android/sdk/base/data/Size;Z)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/ScrollUpRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->getOffsetY()F

    move-result v2

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->scrollBy(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->collectVirtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/request/ScrollUpRequest;->setVirtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/ScrollUpRequest;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/ScrollUpRequest;->virtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "virtualDocViewInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setVirtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/ScrollUpRequest;->virtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    return-void
.end method
