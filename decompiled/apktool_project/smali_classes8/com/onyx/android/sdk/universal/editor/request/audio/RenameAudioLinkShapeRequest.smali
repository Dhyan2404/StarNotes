.class public final Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenameAudioLinkShapeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenameAudioLinkShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n766#2:56\n857#2,2:57\n*S KotlinDebug\n*F\n+ 1 RenameAudioLinkShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest\n*L\n30#1:56\n30#1:57,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R$\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "g",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "audioInfoBean",
        "",
        "i",
        "Ljava/lang/String;",
        "newName",
        "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;",
        "j",
        "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;",
        "getTransformShapeContext",
        "()Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;",
        "setTransformShapeContext",
        "(Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;)V",
        "transformShapeContext",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;)V",
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
        "SMAP\nRenameAudioLinkShapeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenameAudioLinkShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n766#2:56\n857#2,2:57\n*S KotlinDebug\n*F\n+ 1 RenameAudioLinkShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest\n*L\n30#1:56\n30#1:57,2\n*E\n"
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

.field public j:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;)V
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

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;->h:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 17
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "noteBundle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-interface {v2, v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getNotePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v10, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v10, v9}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isLinkShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    sget-object v6, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->Companion:Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;->createByViewPort(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v6

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v9, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-interface {v8}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {v9, v10, v11}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez v10, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v10}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->isLinkAudioType()Z

    move-result v11

    if-nez v11, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v10}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getValue()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {v9, v11, v12}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    if-nez v11, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v11}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getAudioPath()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;->h:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {v13}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getAudioPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, v0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;->i:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->setValue(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    iget-object v11, v0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;->i:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->setRemark(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {v9, v10}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setText(Ljava/lang/String;)V

    sget-object v9, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;

    invoke-virtual {v9, v6, v8, v10}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->resetSize(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V

    sget-object v9, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    invoke-virtual {v9, v5, v8}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->saveShape(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v1, v8}, Lcom/onyx/android/sdk/note/NoteBundle;->postAddShapeEvent(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    new-instance v9, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v11

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc

    const/16 v16, 0x0

    move-object v10, v9

    invoke-direct/range {v10 .. v16}, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;->j:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    goto :goto_2

    :cond_9
    return-void
.end method

.method public final getTransformShapeContext()Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;->j:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    return-object p0
.end method

.method public final setTransformShapeContext(Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;->j:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    return-void
.end method
