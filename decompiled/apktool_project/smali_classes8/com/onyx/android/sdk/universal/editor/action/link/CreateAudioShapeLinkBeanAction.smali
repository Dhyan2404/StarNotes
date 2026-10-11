.class public final Lcom/onyx/android/sdk/universal/editor/action/link/CreateAudioShapeLinkBeanAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002R\u0017\u0010\u000b\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/link/CreateAudioShapeLinkBeanAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "getAudioInfoBean",
        "()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "audioInfoBean",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V",
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
.field public final h:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioInfoBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/link/CreateAudioShapeLinkBeanAction;->h:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    return-void
.end method

.method public static final synthetic access$createLinkBean(Lcom/onyx/android/sdk/universal/editor/action/link/CreateAudioShapeLinkBeanAction;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/link/CreateAudioShapeLinkBeanAction;->l()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

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
            "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/link/CreateAudioShapeLinkBeanAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/link/CreateAudioShapeLinkBeanAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/link/CreateAudioShapeLinkBeanAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getAudioInfoBean()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/link/CreateAudioShapeLinkBeanAction;->h:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
    .locals 10

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    new-instance v9, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->setDocumentId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->setTitle(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;-><init>()V

    const-string v1, "AUDIO"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->setKey(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/link/CreateAudioShapeLinkBeanAction;->h:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->setValue(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {v0, v9}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->setDocBean(Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/link/CreateAudioShapeLinkBeanAction;->h:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->setRemark(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->getICON_TITLE_BOX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->setDisplayStyle(I)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    return-object v0
.end method
