.class public final Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u0012\u0006\u0010\u001a\u001a\u00020\u0018\u0012\u0006\u0010\u001d\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u000c\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J \u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010 \u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001f\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "",
        "isDuplicatedName",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
        "providerHolder",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;",
        "resourceModel",
        "g",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;",
        "shapeBean",
        "h",
        "",
        "title",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "audioInfoBean",
        "i",
        "Ljava/lang/String;",
        "newName",
        "j",
        "Z",
        "checkDuplicated",
        "k",
        "duplicatedName",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;Z)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioInfoBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->h:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->i:Ljava/lang/String;

    .line 6
    iput-boolean p4, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->j:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->h:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/NoteBundle;->findShapeBean(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->ensureGlobalNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;->getResourceModel()Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->j:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->i:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->k:Z

    return-void

    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->g(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->h:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->setAudioPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->h:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, v2}, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->h(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/audio/CheckAudioDuplicatedNameRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->h:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-direct {v0, v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/audio/CheckAudioDuplicatedNameRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/request/audio/CheckAudioDuplicatedNameRequest;->isDuplicatedName()Z

    move-result p0

    return p0
.end method

.method public final g(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->i:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->setTitle(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->setRevisionId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteResourceProvider()Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;->saveResourceModel(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final h(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;->getShapeModel()Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->getShapeById(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    sget-object v0, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/ResourceModels;

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->createShapeResourceByModel(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0, p3}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setResource(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;)V

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;->setShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public final isDuplicatedName()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;->k:Z

    return p0
.end method
