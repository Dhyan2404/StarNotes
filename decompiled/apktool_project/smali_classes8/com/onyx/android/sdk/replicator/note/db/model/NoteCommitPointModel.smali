.class public final Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0018\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\nJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\nJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0004J\u0010\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u001d\u001a\u00020\u00002\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0004J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\nR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000c\"\u0004\u0008 \u0010\u000e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "()V",
        "commitId",
        "",
        "getCommitId",
        "()Ljava/lang/String;",
        "setCommitId",
        "(Ljava/lang/String;)V",
        "commitStatus",
        "",
        "getCommitStatus",
        "()I",
        "setCommitStatus",
        "(I)V",
        "commitType",
        "getCommitType",
        "setCommitType",
        "documentUniqueId",
        "getDocumentUniqueId",
        "setDocumentUniqueId",
        "pageUniqueId",
        "getPageUniqueId",
        "setPageUniqueId",
        "recordFileExtension",
        "getRecordFileExtension",
        "setRecordFileExtension",
        "recordFilePath",
        "getRecordFilePath",
        "setRecordFilePath",
        "recordType",
        "getRecordType",
        "setRecordType",
        "status",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private commitId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private commitStatus:I

.field private commitType:I

.field private documentUniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pageUniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recordFileExtension:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recordFilePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recordType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->documentUniqueId:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->commitStatus:I

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->recordType:I

    return-void
.end method


# virtual methods
.method public final getCommitId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->commitId:Ljava/lang/String;

    return-object p0
.end method

.method public final getCommitStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->commitStatus:I

    return p0
.end method

.method public final getCommitType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->commitType:I

    return p0
.end method

.method public final getDocumentUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->documentUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->pageUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final getRecordFileExtension()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->recordFileExtension:Ljava/lang/String;

    return-object p0
.end method

.method public final getRecordFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->recordFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getRecordType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->recordType:I

    return p0
.end method

.method public final setCommitId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->commitId:Ljava/lang/String;

    return-object p0
.end method

.method public final setCommitId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->commitId:Ljava/lang/String;

    return-void
.end method

.method public final setCommitStatus(I)Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->commitStatus:I

    return-object p0
.end method

.method public final setCommitStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->commitStatus:I

    return-void
.end method

.method public final setCommitType(I)Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->commitType:I

    return-object p0
.end method

.method public final setCommitType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->commitType:I

    return-void
.end method

.method public final setDocumentUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "documentUniqueId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->documentUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final setDocumentUniqueId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->documentUniqueId:Ljava/lang/String;

    return-void
.end method

.method public final setPageUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->pageUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final setPageUniqueId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->pageUniqueId:Ljava/lang/String;

    return-void
.end method

.method public final setRecordFileExtension(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->recordFileExtension:Ljava/lang/String;

    return-object p0
.end method

.method public final setRecordFileExtension(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->recordFileExtension:Ljava/lang/String;

    return-void
.end method

.method public final setRecordFilePath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->recordFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public final setRecordFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->recordFilePath:Ljava/lang/String;

    return-void
.end method

.method public final setRecordType(I)Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->recordType:I

    return-object p0
.end method

.method public final setRecordType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->recordType:I

    return-void
.end method
