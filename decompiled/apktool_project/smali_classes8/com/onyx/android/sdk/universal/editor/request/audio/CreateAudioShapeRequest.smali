.class public final Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateAudioShapeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateAudioShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n1#2:188\n766#3:189\n857#3,2:190\n*S KotlinDebug\n*F\n+ 1 CreateAudioShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest\n*L\n171#1:189\n171#1:190,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u001a\u001a\u00020\u0018\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u00084\u00105J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0014\u001a\u00020\u000cH\u0002J\u0008\u0010\u0015\u001a\u00020\u000cH\u0002J\u0008\u0010\u0017\u001a\u00020\u0016H\u0002R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0019R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u001bR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u001cR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u001dR\"\u0010$\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R$\u0010+\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R$\u00103\u001a\u0004\u0018\u00010,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102\u00a8\u00066"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "f",
        "",
        "documentId",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "audioInfoBean",
        "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;",
        "k",
        "",
        "i",
        "g",
        "h",
        "",
        "j",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "",
        "Z",
        "getAddToCmdStack",
        "()Z",
        "setAddToCmdStack",
        "(Z)V",
        "addToCmdStack",
        "l",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "getAudioShape",
        "()Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "setAudioShape",
        "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
        "audioShape",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;",
        "m",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;",
        "getResourceModel",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;",
        "setResourceModel",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)V",
        "resourceModel",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V",
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
        "SMAP\nCreateAudioShapeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateAudioShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n1#2:188\n766#3:189\n857#3,2:190\n*S KotlinDebug\n*F\n+ 1 CreateAudioShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest\n*L\n171#1:189\n171#1:190,2\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Z

.field public l:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notePage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioInfoBean"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->i:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->j:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->k:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->i:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v4, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getResource(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->j:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getAudioPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz v1, :cond_4

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->l:Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getResource(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->j:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->i(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;->setAudioDuration(J)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->j:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->setTitle(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/ResourceModels;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->fromShapeResource(Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    move-result-object v2

    :cond_3
    iput-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->m:Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteResourceProvider()Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->m:Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;->saveResourceModel(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->i:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->f(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->l:Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->i:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->saveShape(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    :goto_2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->l:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->j:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->m:Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-virtual {p1, v0, v1, v2}, Lcom/onyx/android/sdk/note/NoteBundle;->addAudioShapeBean(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->l:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/NoteBundle;->postAddShapeEvent(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->k:Z

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getCommandManager()Lcom/onyx/android/sdk/note/common/command/CommandManager;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->l:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->addShapesUndoRedoCommand(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    move-result-object p0

    if-eqz p0, :cond_5

    new-instance v1, Lcom/onyx/android/sdk/note/common/event/CommandEvent;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/note/common/event/CommandEvent;-><init>(Lcom/onyx/android/sdk/note/common/command/Command;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/NoteBundle;->postEvent(Ljava/lang/Object;)V

    :cond_5
    if-eqz v0, :cond_6

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanCreatedEvent;

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanCreatedEvent;-><init>(Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/NoteBundle;->postEvent(Ljava/lang/Object;)V

    :cond_6
    sget-object p0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocSave;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocSave;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocSave;->savePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)V

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewportCenterRect()Landroid/graphics/RectF;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v1, v5

    invoke-direct {v2, v3, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    sget-object p2, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;

    invoke-virtual {p2, v2, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->matrixTouchPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->create(I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v4

    invoke-interface {v4, v3, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v3, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->j()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->j()F

    move-result v5

    mul-float/2addr v0, v5

    add-float/2addr v2, v0

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    invoke-virtual {p2, v3, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->matrixTouchPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-interface {v4, p2, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->ensureShapeUniqueId()V

    sget-object p2, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {p2, v4, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->setShapeZOrder(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    sget-object p2, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->j:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->k(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object p0

    invoke-virtual {p2, v4, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setResource(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;-><init>()V

    invoke-interface {v4, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeExtraAttributes;->setExtraBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;)V

    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeTime()V

    return-object v4
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->j:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->h()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->j:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->setTitle(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public final getAddToCmdStack()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->k:Z

    return p0
.end method

.method public final getAudioShape()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->l:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public final getResourceModel()Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->m:Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/replicator/note/db/ResourceQueryArgsExtKt;->loadDocResourceListQuery(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteResourceProvider()Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;->loadResourceList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->i:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getRemoveResourceIdList()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v3, v4

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/universal/R$string;->record_title_prefix:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    sget-object v1, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/ResourceModels;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->containsTitle(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    return-wide v2

    :cond_0
    :try_start_0
    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getAudioPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;->getAudioDuration(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getDuration()J

    move-result-wide v0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v4, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parsing audio duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", record duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getDuration()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5, v6}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long p0, v0, v2

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final j()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getScale()F

    move-result p0

    return p0
.end method

.method public final k(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getAudioPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteResourceProvider()Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;->loadFromPath(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->m:Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->m:Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    if-nez v2, :cond_1

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;-><init>()V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->setLocalPath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->setType(I)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->setTitle(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->i(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->setAudioDuration(J)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getCreationTime()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    iput-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->m:Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteResourceProvider()Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->m:Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;->saveResourceModel(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)V

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/ResourceModels;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->m:Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->createShapeResourceByModel(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setAddToCmdStack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->k:Z

    return-void
.end method

.method public final setAudioShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->l:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method

.method public final setResourceModel(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->m:Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    return-void
.end method
