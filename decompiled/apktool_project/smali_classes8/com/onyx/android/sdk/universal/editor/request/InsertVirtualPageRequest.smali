.class public final Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0017\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0010\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;",
        "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "",
        "execute",
        "",
        "f",
        "I",
        "pageIndex",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "g",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "virtualPage",
        "",
        "h",
        "Z",
        "autoApplyPageMargin",
        "i",
        "getScrollTo",
        "()Z",
        "setScrollTo",
        "(Z)V",
        "scrollTo",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Z)V",
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
.field public final f:I

.field public final g:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    .line 3
    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;->f:I

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;->g:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    .line 5
    iput-boolean p4, p0, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;->h:Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;->i:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Z)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pageIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;->f:I

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;->g:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-interface {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->insertPage(ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;->g:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;->h:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->copyPageMarginConfig(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->setPageId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->updatePageMargin(Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->boxInfoSnapshot()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->updateDataAndApplyScale(Ljava/util/List;)V

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;->i:Z

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getEnableFreeMovePaper()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->scrollTo$default(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;Ljava/lang/String;FFILjava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->postVirtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/String;)V

    return-void
.end method

.method public final getScrollTo()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;->i:Z

    return p0
.end method

.method public final setScrollTo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;->i:Z

    return-void
.end method
