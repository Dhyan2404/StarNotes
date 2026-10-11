.class public final Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateVirtualDocRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateVirtualDocRequest.kt\ncom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n1864#2,3:150\n1549#2:153\n1620#2,3:154\n1855#2,2:157\n*S KotlinDebug\n*F\n+ 1 CreateVirtualDocRequest.kt\ncom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest\n*L\n100#1:150,3\n117#1:153\n117#1:154,3\n129#1:157,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u00a2\u0006\u0004\u00085\u00106J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0002J\u0008\u0010\u000b\u001a\u00020\u0004H\u0002J\u0008\u0010\u000c\u001a\u00020\u0004H\u0002J\u0008\u0010\r\u001a\u00020\u0004H\u0002J\u0008\u0010\u000e\u001a\u00020\u0004H\u0002J\u0012\u0010\u0011\u001a\u00020\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0016R\"\u0010\u0019\u001a\u00020\u00188\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010 \u001a\u00020\u001f8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\'0&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010(R\u001d\u0010-\u001a\u0008\u0012\u0004\u0012\u00020*0&8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010(\u001a\u0004\u0008+\u0010,R$\u00104\u001a\u0004\u0018\u00010.8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103\u00a8\u00067"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;",
        "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "",
        "execute",
        "k",
        "j",
        "i",
        "l",
        "h",
        "o",
        "p",
        "n",
        "f",
        "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "templateJsonBean",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;",
        "docOptions",
        "m",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "noteCreateInfo",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "getNoteModel",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "setNoteModel",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V",
        "Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;",
        "args",
        "Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;",
        "setArgs",
        "(Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;)V",
        "",
        "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
        "Ljava/util/List;",
        "ftsContentList",
        "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "getReaderPathInfoList",
        "()Ljava/util/List;",
        "readerPathInfoList",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "getToc",
        "()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "setToc",
        "(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V",
        "toc",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V",
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
        "SMAP\nCreateVirtualDocRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateVirtualDocRequest.kt\ncom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n1864#2,3:150\n1549#2:153\n1620#2,3:154\n1855#2,2:157\n*S KotlinDebug\n*F\n+ 1 CreateVirtualDocRequest.kt\ncom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest\n*L\n100#1:150,3\n117#1:153\n117#1:154,3\n129#1:157,2\n*E\n"
    }
.end annotation


# instance fields
.field public args:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

.field public final f:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public noteModel:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteCreateInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->g:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->f()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->j()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->i()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->l()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->isAbort()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->o()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->k(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->n()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getCoverJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->g(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getPaperBeanList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;->getPaperJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->g(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->copyTemplateToDocumentDir(Ljava/lang/String;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    return-void
.end method

.method public final getArgs()Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->args:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "args"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->noteModel:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "noteModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getReaderPathInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->h:Ljava/util/List;

    return-object p0
.end method

.method public final getToc()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->i:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;

    return-object p0
.end method

.method public final h()V
    .locals 7

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getActiveScene()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->isPdfScribbleScene(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v2, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->g:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    new-instance v5, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;

    invoke-direct {v5}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;-><init>()V

    sget-object v6, Lcom/onyx/android/sdk/data/common/data/TextContentType;->PDF:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setType(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setPageUniqueId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->getPageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setContent(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->toNoteDocBean()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;->setNoteCreateInfo(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->handle(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;)V

    return-void
.end method

.method public final j()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;->createOpenDocArgs(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->openVirtualDoc(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V

    return-void
.end method

.method public final k(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 10

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getDEFAULT_SMALL_THUMBNAIL_SIZE()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentOriginRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPage(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    new-instance v0, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->toSize(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentOriginRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;-><init>(Ljava/lang/String;ILcom/onyx/android/sdk/base/data/Size;Landroid/graphics/RectF;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->setArgs(Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;)V

    return-void
.end method

.method public final l()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setReaderPathInfoList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->i:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setToc(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->onDocCreated()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->h()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->fillVirtualTocTree(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setReaderPathInfoList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setToc(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->m(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;)V

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;)V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->isEnabledContinuousPage()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setEnabledContinuousPage(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->getLayoutType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setLayoutType(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->getPageColumnCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setPageColumnCount(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->getScrollerVerticalGravity()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setScrollerVerticalGravity(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->getScrollerHorizontalGravity()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setScrollerHorizontalGravity(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->isEnabledAdaptiveStrokeWidth()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setEnabledAdaptiveStrokeWidth(Z)V

    return-void
.end method

.method public final n()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->setNoteModel(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public final o()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocSave;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocSave;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocSave;->save(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->save()Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->p()V

    return-void
.end method

.method public final p()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->getDocFtsProvider(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->g:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->saveFtsContent(Ljava/util/Collection;)V

    sget-object p0, Lcom/onyx/android/sdk/data/common/data/TextContentType;->PDF:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->savePageStates(Ljava/util/Collection;Lcom/onyx/android/sdk/data/common/data/TextContentType;)V

    return-void
.end method

.method public final setArgs(Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->args:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    return-void
.end method

.method public final setNoteModel(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->noteModel:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-void
.end method

.method public final setToc(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->i:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;

    return-void
.end method
