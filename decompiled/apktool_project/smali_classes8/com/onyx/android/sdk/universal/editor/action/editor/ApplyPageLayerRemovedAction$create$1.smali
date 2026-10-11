.class final Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
    value = "SMAP\nApplyPageLayerRemovedAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplyPageLayerRemovedAction.kt\ncom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction$create$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1855#2,2:36\n*S KotlinDebug\n*F\n+ 1 ApplyPageLayerRemovedAction.kt\ncom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction$create$1\n*L\n27#1:36,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
        "SMAP\nApplyPageLayerRemovedAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplyPageLayerRemovedAction.kt\ncom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction$create$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1855#2,2:36\n*S KotlinDebug\n*F\n+ 1 ApplyPageLayerRemovedAction.kt\ncom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction$create$1\n*L\n27#1:36,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction$create$1;->invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->ensureGlobalNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction;->access$getLayerIdList$p(Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->removeLayers(Ljava/util/List;)V

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getLoadedNotePages()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction;

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    .line 7
    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v2

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction;->access$getLayerIdList$p(Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageLayerRemovedAction;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->removeLayers(Ljava/util/List;)V

    .line 8
    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getLayerIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setCurrentLayerId(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    goto :goto_0

    :cond_0
    return-void
.end method
