.class public final Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckDocumentFontAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckDocumentFontAction.kt\ncom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n1360#2:49\n1446#2,5:50\n1655#2,8:55\n1360#2:63\n1446#2,5:64\n1549#2:69\n1620#2,3:70\n1655#2,8:73\n*S KotlinDebug\n*F\n+ 1 CheckDocumentFontAction.kt\ncom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction\n*L\n33#1:49\n33#1:50,5\n34#1:55,8\n43#1:63\n43#1:64,5\n44#1:69\n44#1:70,3\n45#1:73,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0008\u001a\u00020\u0006H\u0002R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "m",
        "l",
        "",
        "h",
        "Ljava/util/Set;",
        "names",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
        "SMAP\nCheckDocumentFontAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckDocumentFontAction.kt\ncom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n1360#2:49\n1446#2,5:50\n1655#2,8:55\n1360#2:63\n1446#2,5:64\n1549#2:69\n1620#2,3:70\n1655#2,8:73\n*S KotlinDebug\n*F\n+ 1 CheckDocumentFontAction.kt\ncom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction\n*L\n33#1:49\n33#1:50,5\n34#1:55,8\n43#1:63\n43#1:64,5\n44#1:69\n44#1:70,3\n45#1:73,8\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction;->h:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$checkHwrTextFont(Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction;->l()V

    return-void
.end method

.method public static final synthetic access$checkTextBoxFont(Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction;->m()V

    return-void
.end method

.method public static final synthetic access$getNames$p(Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction;->h:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction$b;-><init>(Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction$c;-><init>(Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteShapeProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v1}, Lcom/onyx/android/sdk/replicator/note/db/ShapeQueryArgsExtKt;->loadShapeFontQuery(I)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;->loadShapeList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    sget-object v3, Lcom/onyx/android/sdk/replicator/note/utils/TextShapes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/TextShapes;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/replicator/note/utils/TextShapes;->parseHwrTextShapeFontList(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lonyx/org/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction;->h:Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final m()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteShapeProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/onyx/android/sdk/replicator/note/db/ShapeQueryArgsExtKt;->loadShapeFontQuery(I)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;->loadShapeList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    sget-object v3, Lcom/onyx/android/sdk/replicator/note/utils/TextShapes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/TextShapes;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/replicator/note/utils/TextShapes;->parseTextShapeFontList(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lonyx/org/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction;->h:Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
