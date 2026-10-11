.class public final Lcom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClearVirtualPageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClearVirtualPageRequest.kt\ncom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,30:1\n98#2,4:31\n*S KotlinDebug\n*F\n+ 1 ClearVirtualPageRequest.kt\ncom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest\n*L\n23#1:31,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR$\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest;",
        "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "",
        "execute",
        "",
        "f",
        "I",
        "getPageIndex",
        "()I",
        "setPageIndex",
        "(I)V",
        "pageIndex",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "g",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "getVirtualPage",
        "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "setVirtualPage",
        "(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V",
        "virtualPage",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nClearVirtualPageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClearVirtualPageRequest.kt\ncom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,30:1\n98#2,4:31\n*S KotlinDebug\n*F\n+ 1 ClearVirtualPageRequest.kt\ncom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest\n*L\n23#1:31,4\n*E\n"
    }
.end annotation


# instance fields
.field public f:I

.field public g:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest;->f:I

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest;->g:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pageIndex = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest;->f:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest;->g:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest;->g:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->clearPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    const/4 p0, 0x1

    invoke-static {p1, v3, p0, v3}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->postVirtualDocViewInfo$default(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest;->f:I

    return p0
.end method

.method public final getVirtualPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest;->g:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    return-object p0
.end method

.method public final setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest;->f:I

    return-void
.end method

.method public final setVirtualPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest;->g:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    return-void
.end method
