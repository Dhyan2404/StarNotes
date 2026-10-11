.class public final Lcom/onyx/android/sdk/universal/editor/request/ReloadBoxManagerWithSettingsRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/ReloadBoxManagerWithSettingsRequest;",
        "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "",
        "execute",
        "f",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/ReloadBoxManagerWithSettingsRequest;->f(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 9

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->copyCurrentOrFirstVisibleBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    :cond_1
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->initBoxManagerBySettings(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setViewport(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->boxInfoSnapshot()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setData(Ljava/util/List;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v8, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->updateCurrentMinScale(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->isEnabledContinuousScroll()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v8}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentMinScale()F

    move-result p0

    invoke-virtual {v8, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->initScale(F)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->scrollTo$default(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;Ljava/lang/String;FFILjava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->alignCenter()V

    goto :goto_0

    :cond_4
    invoke-virtual {v8}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->alignCenter()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p0

    invoke-virtual {v8, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->initScale(F)V

    iget p0, v1, Landroid/graphics/RectF;->left:F

    neg-float p0, p0

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {v8, v0, p0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->scrollTo(Ljava/lang/String;FF)Z

    :goto_0
    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->postVirtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/String;)V

    return-void
.end method
