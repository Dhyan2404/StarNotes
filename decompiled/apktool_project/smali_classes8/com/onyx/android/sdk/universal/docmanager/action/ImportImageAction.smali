.class public final Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImportImageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportImageAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/ImportImageAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,122:1\n1855#2,2:123\n*S KotlinDebug\n*F\n+ 1 ImportImageAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/ImportImageAction\n*L\n99#1:123,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u00a2\u0006\u0004\u0008)\u0010*J\u0006\u0010\u0002\u001a\u00020\u0000J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u001c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00032\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0003H\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u001a\u001a\u00020\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R$\u0010\"\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "disablePostEvent",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "o",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;",
        "importImageState",
        "q",
        "",
        "p",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "modelList",
        "n",
        "r",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;",
        "args",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "getNoteCreateInfo",
        "()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "noteCreateInfo",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "j",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "getImportModel",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "setImportModel",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V",
        "importModel",
        "",
        "k",
        "Z",
        "enablePostEvent",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;)V",
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
        "SMAP\nImportImageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportImageAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/ImportImageAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,122:1\n1855#2,2:123\n*S KotlinDebug\n*F\n+ 1 ImportImageAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/ImportImageAction\n*L\n99#1:123,2\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;)V
    .locals 20
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "editorBundle"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->h:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;->getNoteName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;->getTagList()Ljava/util/List;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;->getParentId()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    move-object v3, v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3f6a

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/util/List;ZILcom/onyx/android/sdk/replicator/note/bean/SizeFormat;Landroid/graphics/RectF;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->i:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->k:Z

    return-void
.end method

.method public static final synthetic access$createNote(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$disablePostEventIfMultipleTask(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->o()V

    return-void
.end method

.method public static final synthetic access$getEnablePostEvent$p(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->k:Z

    return p0
.end method

.method public static final synthetic access$postImportProgressEventByState(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->q(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;)V

    return-void
.end method

.method public static final synthetic access$updateFolderCover(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->r()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->m(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;->COMPLETE:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->q(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;->IMPORTING:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->q(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/page/ImportImagesAsTemplateModelsAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->h:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;->getUriList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->i:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/page/ImportImagesAsTemplateModelsAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$a;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$b;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$c;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/eji;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/eji;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnComplete(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final disablePostEvent()Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->k:Z

    return-object p0
.end method

.method public final getImportModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->j:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-object p0
.end method

.method public final getNoteCreateInfo()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->i:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    return-object p0
.end method

.method public final n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "empty, import image as note fail"

    invoke-virtual {p1, v0, v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->i:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getPaperBeanList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    sget-object v2, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3, v4}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->toPaperBean$default(Lcom/onyx/android/sdk/universal/ui/data/Templates;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/android/sdk/genericshape/GeoLayout;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->i:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-direct {p1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$d;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$d;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$e;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$e;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$f;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$f;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->h:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;->getImportSelectedContext()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->isMultipleDoc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->disablePostEvent()Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;

    :cond_0
    return-void
.end method

.method public final p()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->h:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;->getUriList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final q(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;)V
    .locals 13

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/universal/R$integer;->seek_bar_max_size:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lkotlin/random/Random$Default;->nextInt(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->p()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->p()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lkotlin/random/Random$Default;->nextInt(II)I

    move-result v2

    :cond_0
    move v6, v2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->p()I

    move-result v7

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->h:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;->getImportSelectedContext()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    move-result-object v9

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->h:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;->getUriList()Ljava/util/List;

    move-result-object v10

    const/16 v11, 0x10

    const/4 v12, 0x0

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;IIIILcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;->COMPLETE:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsDoneEvent;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsDoneEvent;-><init>(Ljava/util/List;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final r()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->i:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getParentUniqueId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateFolderCoverAction;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateFolderCoverAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$g;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setImportModel(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->j:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-void
.end method
