.class public final Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResourceModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceModel.kt\ncom/onyx/android/sdk/replicator/note/db/model/ResourceModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,114:1\n1#2:115\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010&\u001a\u00020\'H\u0016J\u0006\u0010(\u001a\u00020\u000bJ\u0008\u0010)\u001a\u0004\u0018\u00010\u000bJ\u0008\u0010*\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020,J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010/\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000bJ\u0010\u00100\u001a\u00020\u00002\u0008\u00101\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0019\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001bJ\u0010\u0010\"\u001a\u00020\u00002\u0008\u0010 \u001a\u0004\u0018\u00010\u000bJ\u000e\u0010%\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u001bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000fR\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\r\"\u0004\u0008\u0019\u0010\u000fR\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001c\u0010 \u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\r\"\u0004\u0008\"\u0010\u000fR\u001a\u0010#\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001d\"\u0004\u0008%\u0010\u001f\u00a8\u00062"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "Ljava/io/Serializable;",
        "()V",
        "audioDuration",
        "",
        "getAudioDuration",
        "()J",
        "setAudioDuration",
        "(J)V",
        "documentId",
        "",
        "getDocumentId",
        "()Ljava/lang/String;",
        "setDocumentId",
        "(Ljava/lang/String;)V",
        "localPath",
        "getLocalPath",
        "setLocalPath",
        "ossUrl",
        "getOssUrl",
        "setOssUrl",
        "relativePath",
        "revisionId",
        "getRevisionId",
        "setRevisionId",
        "status",
        "",
        "getStatus",
        "()I",
        "setStatus",
        "(I)V",
        "title",
        "getTitle",
        "setTitle",
        "type",
        "getType",
        "setType",
        "beforeSave",
        "",
        "ensureUniqueId",
        "getPath",
        "getRelativePath",
        "isEnabled",
        "",
        "isRemoved",
        "duration",
        "docId",
        "setRelativePath",
        "path",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nResourceModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceModel.kt\ncom/onyx/android/sdk/replicator/note/db/model/ResourceModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,114:1\n1#2:115\n*E\n"
    }
.end annotation


# instance fields
.field private audioDuration:J

.field private documentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private localPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ossUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private relativePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private revisionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private status:I

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeSave()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->beforeSave()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->ensureUniqueId()Ljava/lang/String;

    return-void
.end method

.method public final ensureUniqueId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAudioDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->audioDuration:J

    return-wide v0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->documentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocalPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->localPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getOssUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->ossUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->documentId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->relativePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;->Companion:Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->relativePath:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource$Companion;->searchLocalPathByRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->localPath:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_7

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->localPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    sget-object v1, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;->Companion:Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->localPath:Ljava/lang/String;

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, p0

    :goto_3
    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource$Companion;->searchLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->localPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getRelativePath()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->relativePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->relativePath:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->documentId:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v1, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ResourcePaths;

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->relativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->relativePath:Ljava/lang/String;

    return-object v1
.end method

.method public final getRevisionId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->revisionId:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->status:I

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->type:I

    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->status:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRemoved()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->status:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setAudioDuration(J)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->audioDuration:J

    return-object p0
.end method

.method public final setAudioDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->audioDuration:J

    return-void
.end method

.method public final setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->documentId:Ljava/lang/String;

    return-object p0
.end method

.method public final setDocumentId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->documentId:Ljava/lang/String;

    return-void
.end method

.method public final setLocalPath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->localPath:Ljava/lang/String;

    return-object p0
.end method

.method public final setLocalPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->localPath:Ljava/lang/String;

    return-void
.end method

.method public final setOssUrl(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->ossUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setOssUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->ossUrl:Ljava/lang/String;

    return-void
.end method

.method public final setRelativePath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->relativePath:Ljava/lang/String;

    return-object p0
.end method

.method public final setRevisionId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->revisionId:Ljava/lang/String;

    return-object p0
.end method

.method public final setRevisionId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->revisionId:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(I)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->status:I

    return-object p0
.end method

.method public final setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->status:I

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->title:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->type:I

    return-object p0
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->type:I

    return-void
.end method
