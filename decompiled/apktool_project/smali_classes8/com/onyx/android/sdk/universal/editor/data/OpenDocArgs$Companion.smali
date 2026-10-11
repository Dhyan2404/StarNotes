.class public final Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;",
        "",
        "()V",
        "createDummyArgs",
        "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;",
        "createFrom",
        "noteModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "createOpenDocArgs",
        "noteCreateInfo",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDummyArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;-><init>()V

    return-object p0
.end method

.method public final createFrom(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "noteModel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setDocumentId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setParentUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getActiveScene()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setActiveScene(I)V

    sget-object p1, Lcom/onyx/android/sdk/reader/config/ReaderConfig;->INSTANCE:Lcom/onyx/android/sdk/reader/config/ReaderConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/config/ReaderConfig;->templateReaderPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setPath(Ljava/lang/String;)V

    return-object p0
.end method

.method public final createOpenDocArgs(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "noteCreateInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setDocumentId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getNoteName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getParentUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setParentUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getScene()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setActiveScene(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setNoteCreateInfo(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getContentPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setPath(Ljava/lang/String;)V

    return-object p0
.end method
