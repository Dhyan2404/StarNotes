.class public final Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR.\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0018\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;",
        "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;",
        "getCopyArgs",
        "()Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;",
        "setCopyArgs",
        "(Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;)V",
        "copyArgs",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "pagePair",
        "Lkotlin/Pair;",
        "getPagePair",
        "()Lkotlin/Pair;",
        "setPagePair",
        "(Lkotlin/Pair;)V",
        "getCopyPage",
        "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "copyPage",
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


# instance fields
.field public f:Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public pagePair:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;-><init>(IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyArgs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;->getSrcIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->copyPage(Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v9

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v3

    invoke-interface {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->boxInfoSnapshot()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->updateDataAndApplyScale(Ljava/util/List;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, v2

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->scrollTo$default(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;Ljava/lang/String;FFILjava/lang/Object;)Z

    invoke-virtual {v9}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->alignCenter()V

    invoke-static {p1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->postVirtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;->setPagePair(Lkotlin/Pair;)V

    return-void
.end method

.method public final getCopyArgs()Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;

    return-object p0
.end method

.method public final getCopyPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;->getPagePair()Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    return-object p0
.end method

.method public final getPagePair()Lkotlin/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;->pagePair:Lkotlin/Pair;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "pagePair"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setCopyArgs(Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;

    return-void
.end method

.method public final setPagePair(Lkotlin/Pair;)V
    .locals 1
    .param p1    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;->pagePair:Lkotlin/Pair;

    return-void
.end method
