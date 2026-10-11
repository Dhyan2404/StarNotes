.class final Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$deletePenBox$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;->t(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPenListPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PenListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PenListPopup$deletePenBox$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,278:1\n1549#2:279\n1620#2,3:280\n*S KotlinDebug\n*F\n+ 1 PenListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PenListPopup$deletePenBox$1\n*L\n155#1:279\n155#1:280,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        "editTextStr",
        "",
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
        "SMAP\nPenListPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PenListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PenListPopup$deletePenBox$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,278:1\n1549#2:279\n1620#2,3:280\n*S KotlinDebug\n*F\n+ 1 PenListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PenListPopup$deletePenBox$1\n*L\n155#1:279\n155#1:280,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $penBoxList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;",
            ">;",
            "Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$deletePenBox$1;->$penBoxList:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$deletePenBox$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/ui/CommonDialog;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$deletePenBox$1;->invoke(Lcom/onyx/android/sdk/ui/CommonDialog;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/ui/CommonDialog;Ljava/lang/String;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/ui/CommonDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "editTextStr"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$deletePenBox$1;->$penBoxList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    .line 4
    sget-object v1, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPenList$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5
    :cond_0
    sget-object p2, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$deletePenBox$1;->$penBoxList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    .line 9
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getId()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->deletePencilBox(Ljava/util/List;)V

    .line 12
    sget-object p2, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->hasPenBox()Z

    move-result p2

    if-nez p2, :cond_2

    .line 13
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$deletePenBox$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/common/events/DeleteAllPenBoxEvent;

    invoke-direct {p2}, Lcom/onyx/android/sdk/universal/common/events/DeleteAllPenBoxEvent;-><init>()V

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    .line 14
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$deletePenBox$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void

    .line 15
    :cond_2
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$deletePenBox$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;->access$reloadPenBoxList(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;)V

    .line 16
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$deletePenBox$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/universal/common/events/DeletePenBoxEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/common/events/DeletePenBoxEvent;-><init>(Ljava/util/List;)V

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    .line 17
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$deletePenBox$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;->access$updatePenBoxBatchView(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;)V

    return-void
.end method
