.class public final Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001b\u0010\n\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0007\u0010\tR\u001b\u0010\u000f\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0008\u001a\u0004\u0008\r\u0010\u000eR$\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00108F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R$\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00178F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;",
        "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;",
        "f",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;",
        "createRequest",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "g",
        "getVirtualPage",
        "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "virtualPage",
        "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;",
        "value",
        "getInsertPageArgs",
        "()Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;",
        "setInsertPageArgs",
        "(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V",
        "insertPageArgs",
        "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "getReaderPageInfo",
        "()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "setReaderPageInfo",
        "(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V",
        "readerPageInfo",
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
.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest$createRequest$2;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest$createRequest$2;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->f:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest$virtualPage$2;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest$virtualPage$2;-><init>(Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->g:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCreateRequest(Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;)Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->f()Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;

    move-result-object p0

    return-object p0
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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->getInsertPageArgs()Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getInsertAt()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->f()Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->getVirtualPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->getInsertPageArgs()Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getAutoApplyPageMargin()Z

    move-result v3

    invoke-direct {v2, p1, v0, v1, v3}, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->getInsertPageArgs()Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getAutoScrollToInsertPage()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;->setScrollTo(Z)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/PageInsertedEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->getInsertPageArgs()Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/events/app/PageInsertedEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final f()Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;

    return-object p0
.end method

.method public final getInsertPageArgs()Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->f()Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->getInsertPageArgs()Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    move-result-object p0

    return-object p0
.end method

.method public final getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->f()Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getVirtualPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    return-object p0
.end method

.method public final setInsertPageArgs(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->f()Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->setInsertPageArgs(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V

    return-void
.end method

.method public final setReaderPageInfo(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->f()Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->setReaderPageInfo(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V

    return-void
.end method
