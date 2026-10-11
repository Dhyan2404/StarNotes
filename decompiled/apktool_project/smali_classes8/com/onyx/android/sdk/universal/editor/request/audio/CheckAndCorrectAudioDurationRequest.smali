.class public final Lcom/onyx/android/sdk/universal/editor/request/audio/CheckAndCorrectAudioDurationRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckAndCorrectAudioDurationRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckAndCorrectAudioDurationRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/CheckAndCorrectAudioDurationRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1855#2,2:47\n*S KotlinDebug\n*F\n+ 1 CheckAndCorrectAudioDurationRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/CheckAndCorrectAudioDurationRequest\n*L\n25#1:47,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0011\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/audio/CheckAndCorrectAudioDurationRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
        "providerHolder",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;",
        "shapeBean",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "g",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "h",
        "Ljava/util/List;",
        "shapeBeanList",
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
        "SMAP\nCheckAndCorrectAudioDurationRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckAndCorrectAudioDurationRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/CheckAndCorrectAudioDurationRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1855#2,2:47\n*S KotlinDebug\n*F\n+ 1 CheckAndCorrectAudioDurationRequest.kt\ncom/onyx/android/sdk/universal/editor/request/audio/CheckAndCorrectAudioDurationRequest\n*L\n25#1:47,2\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;",
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
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeBeanList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CheckAndCorrectAudioDurationRequest;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CheckAndCorrectAudioDurationRequest;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CheckAndCorrectAudioDurationRequest;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/request/audio/CheckAndCorrectAudioDurationRequest;->f(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;)V
    .locals 4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;->getResourceModel()Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->getAudioDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;->getAudioDuration(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->setAudioDuration(J)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;->getAudioInfoBean()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->setDuration(J)V

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteResourceProvider()Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;->saveResourceModel(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/audio/CheckAndCorrectAudioDurationRequest;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method
