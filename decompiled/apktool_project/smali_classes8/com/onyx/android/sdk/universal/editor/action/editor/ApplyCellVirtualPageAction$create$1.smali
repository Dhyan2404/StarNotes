.class final Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApplyCellVirtualPageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplyCellVirtualPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction$create$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n1#2:42\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "workBundle",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nApplyCellVirtualPageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplyCellVirtualPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction$create$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n1#2:42\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction$create$1;->invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v0

    instance-of v1, v0, Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v1

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction;

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction;->access$getCellVirtualPage$p(Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getCellInfoCopy()Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isOwner(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->removePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v1

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction;

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction;->access$getCellVirtualPage$p(Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->addPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    .line 7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->save()Z

    .line 8
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction;->access$getCellVirtualPage$p(Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager;->updateBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const/4 p0, 0x1

    .line 9
    invoke-static {p1, v2, p0, v2}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->postVirtualDocViewInfo$default(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
