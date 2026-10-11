.class public final Lcom/onyx/galaxy/note/category/action/CreateFolderAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateFolderAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateFolderAction.kt\ncom/onyx/galaxy/note/category/action/CreateFolderAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B3\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u0010\u0010\u0015\u001a\u000c\u0012\u0004\u0012\u00020\u00110\u0010j\u0002`\u0012\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u001e\u0010\u0015\u001a\u000c\u0012\u0004\u0012\u00020\u00110\u0010j\u0002`\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/CreateFolderAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "syncNoteModel",
        "",
        "m",
        "n",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "provider",
        "l",
        "",
        "g",
        "Ljava/lang/String;",
        "folderName",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;",
        "h",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "parentNode",
        "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;",
        "styleAttr",
        "Lcom/onyx/android/sdk/data/FolderCreateFrom;",
        "j",
        "Lcom/onyx/android/sdk/data/FolderCreateFrom;",
        "folderCreateFrom",
        "<init>",
        "(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;Lcom/onyx/android/sdk/data/FolderCreateFrom;)V",
        "note_overseasRelease"
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
        "SMAP\nCreateFolderAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateFolderAction.kt\ncom/onyx/galaxy/note/category/action/CreateFolderAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/base/data/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/data/FolderCreateFrom;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;Lcom/onyx/android/sdk/data/FolderCreateFrom;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/data/FolderCreateFrom;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;",
            "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;",
            "Lcom/onyx/android/sdk/data/FolderCreateFrom;",
            ")V"
        }
    .end annotation

    const-string v0, "folderName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentNode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "styleAttr"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folderCreateFrom"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->g:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    .line 7
    iput-object p3, p0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->i:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    .line 8
    iput-object p4, p0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->j:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;Lcom/onyx/android/sdk/data/FolderCreateFrom;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 1
    new-instance p3, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    invoke-direct {p3}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;-><init>()V

    .line 2
    sget-object p5, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p6, Lcom/onyx/galaxy/note/R$color;->folder_face_default_color:I

    invoke-virtual {p5, p6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p5

    invoke-virtual {p3, p5}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->setColor(I)V

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;Lcom/onyx/android/sdk/data/FolderCreateFrom;)V

    return-void
.end method

.method public static final synthetic access$createFolder(Lcom/onyx/galaxy/note/category/action/CreateFolderAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->l(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postEvent(Lcom/onyx/galaxy/note/category/action/CreateFolderAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->m(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final synthetic access$updateParentNode(Lcom/onyx/galaxy/note/category/action/CreateFolderAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->n(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->createNoteProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CreateFolderAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/CreateFolderAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/CreateFolderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CreateFolderAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/CreateFolderAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/CreateFolderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CreateFolderAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/CreateFolderAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/CreateFolderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->g:Ljava/lang/String;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->folder_name_max_input_length:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_2

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->checkNoteNameRepeat(Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    sget-object v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->i:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    invoke-virtual {v2, v0, v1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion;->createFolderModel(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->saveNote(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create folder SyncNoteModel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;-><init>()V

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v1, Lcom/onyx/galaxy/note/category/event/OnCreateFolderEvent;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/category/event/OnCreateFolderEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v0, Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->j:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;-><init>(Lcom/onyx/android/sdk/data/FolderCreateFrom;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->createChild(Ljava/lang/Object;Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->reorderFolderChildren(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->loadNotSavedList(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->isRootNode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->beforeSave()V

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    new-instance v2, Lcom/onyx/galaxy/note/category/action/CreateFolderAction$updateParentNode$1;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/category/action/CreateFolderAction$updateParentNode$1;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V

    invoke-virtual {v0, p0, v2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->setSaved(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;)V

    new-instance p0, Lcom/onyx/galaxy/note/category/action/UpdateNoteAction;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/onyx/galaxy/note/category/action/UpdateNoteAction;-><init>(Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction$d;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/action/CreateFolderAction$d;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/CreateFolderAction$e;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/CreateFolderAction$e;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
