.class public final Lcom/onyx/android/sdk/universal/editor/request/ScaleRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u000b\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\"\u0010\u0013\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/ScaleRequest;",
        "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "",
        "execute",
        "Landroid/graphics/Matrix;",
        "f",
        "Landroid/graphics/Matrix;",
        "getGestureDeltaMatrix",
        "()Landroid/graphics/Matrix;",
        "gestureDeltaMatrix",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "g",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "getVirtualDocViewInfo",
        "()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "setVirtualDocViewInfo",
        "(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V",
        "virtualDocViewInfo",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Landroid/graphics/Matrix;)V",
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
.field public final f:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gestureDeltaMatrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/ScaleRequest;->f:Landroid/graphics/Matrix;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/ScaleRequest;->g:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/ScaleRequest;->f:Landroid/graphics/Matrix;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->scaleRange(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lorg/apache/commons/lang3/Range;

    move-result-object v2

    const-string v3, "scaleRange(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->applyMatrix(Landroid/graphics/Matrix;Lorg/apache/commons/lang3/Range;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->collectVirtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/ScaleRequest;->g:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    return-void
.end method

.method public final getGestureDeltaMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/ScaleRequest;->f:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/ScaleRequest;->g:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

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

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/ScaleRequest;->g:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    return-void
.end method
