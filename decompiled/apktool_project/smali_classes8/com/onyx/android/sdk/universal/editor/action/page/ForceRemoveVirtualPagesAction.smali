.class public final Lcom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForceRemoveVirtualPagesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForceRemoveVirtualPagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,67:1\n1549#2:68\n1620#2,3:69\n1549#2:72\n1620#2,3:73\n766#2:76\n857#2,2:77\n1549#2:79\n1620#2,3:80\n1855#2,2:83\n1855#2,2:85\n*S KotlinDebug\n*F\n+ 1 ForceRemoveVirtualPagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction\n*L\n40#1:68\n40#1:69,3\n48#1:72\n48#1:73,3\n50#1:76\n50#1:77,2\n54#1:79\n54#1:80,3\n57#1:83,2\n61#1:85,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0002H\u0002J\u001e\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0002H\u0002R\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "l",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
        "pageModelList",
        "",
        "n",
        "m",
        "h",
        "Ljava/util/List;",
        "pageIdList",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V",
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
        "SMAP\nForceRemoveVirtualPagesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForceRemoveVirtualPagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,67:1\n1549#2:68\n1620#2,3:69\n1549#2:72\n1620#2,3:73\n766#2:76\n857#2,2:77\n1549#2:79\n1620#2,3:80\n1855#2,2:83\n1855#2,2:85\n*S KotlinDebug\n*F\n+ 1 ForceRemoveVirtualPagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction\n*L\n40#1:68\n40#1:69,3\n48#1:72\n48#1:73,3\n50#1:76\n50#1:77,2\n54#1:79\n54#1:80,3\n57#1:83,2\n61#1:85,2\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageIdList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction;->h:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$forceDeleteVirtualPages(Lcom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction;Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction;->l(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction$create$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createCoreObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction;->h:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualPageQueryArgsKt;->loadVirtualPageById(Ljava/util/Collection;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualPageModelList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction;->m(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction;->n(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/List;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)V"
        }
    .end annotation

    move-object p0, p2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setRevisionId(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setStatus(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->saveVirtualPageList(Ljava/util/List;)V

    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualDocModel()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->toPagePathInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;->getRelativePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentRelativePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getDefaultTemplate()Lcom/onyx/android/sdk/data/common/data/template/TemplateData;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;->getContentRelativePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentRelativePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_1

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentRelativePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction$removePageTemplateFile$3;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction$removePageTemplateFile$3;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/ForceRemoveVirtualPagesAction;)V

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/base/extension/AnyKt;->transform(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;

    sget-object p2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_5

    :cond_6
    return-void
.end method
