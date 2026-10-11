.class public final Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0019\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\t\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008G\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u0011\u0010\u0012\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0006R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0006\"\u0004\u0008\u0016\u0010\u0008R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0006\"\u0004\u0008\u0019\u0010\u0008R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0006\"\u0004\u0008\u001c\u0010\u0008R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001c\u0010#\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0006\"\u0004\u0008%\u0010\u0008R\u001a\u0010&\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010 \"\u0004\u0008(\u0010\"R\u001c\u0010)\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0006\"\u0004\u0008+\u0010\u0008R\u001a\u0010,\u001a\u00020-X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u001a\u00102\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010 \"\u0004\u00084\u0010\"R\u001a\u00105\u001a\u00020-X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010/\"\u0004\u00087\u00101R\u001a\u00108\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010 \"\u0004\u0008:\u0010\"R\u001c\u0010;\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u0006\"\u0004\u0008=\u0010\u0008R\u001c\u0010>\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u0006\"\u0004\u0008@\u0010\u0008R\u0011\u0010A\u001a\u00020B8F\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010CR\u0011\u0010D\u001a\u00020B8F\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010CR\u0011\u0010E\u001a\u00020B8F\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010CR\u0011\u0010F\u001a\u00020B8F\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010CR\u001c\u0010G\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010\u0006\"\u0004\u0008I\u0010\u0008R\u001a\u0010J\u001a\u00020-X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010/\"\u0004\u0008L\u00101R\u001a\u0010M\u001a\u00020-X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010/\"\u0004\u0008O\u00101R\u001c\u0010P\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010\u0006\"\u0004\u0008R\u0010\u0008R\u001a\u0010S\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010 \"\u0004\u0008U\u0010\"R\u001c\u0010V\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010\u0006\"\u0004\u0008X\u0010\u0008R\u001c\u0010Y\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010\u0006\"\u0004\u0008[\u0010\u0008R\u001a\u0010\\\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010 \"\u0004\u0008^\u0010\"R\u001c\u0010_\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010\u0006\"\u0004\u0008a\u0010\u0008R\u001c\u0010b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008c\u0010\u0006\"\u0004\u0008d\u0010\u0008R\u001c\u0010e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u0010\u0006\"\u0004\u0008g\u0010\u0008R\u001a\u0010h\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010 \"\u0004\u0008j\u0010\"R\u001a\u0010k\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008l\u0010 \"\u0004\u0008m\u0010\"R\u001c\u0010n\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008o\u0010\u0006\"\u0004\u0008p\u0010\u0008R\u001a\u0010q\u001a\u00020-X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008r\u0010/\"\u0004\u0008s\u00101R\u001a\u0010t\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008u\u0010 \"\u0004\u0008v\u0010\"R\u001c\u0010w\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008x\u0010\u0006\"\u0004\u0008y\u0010\u0008R\u001c\u0010z\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008{\u0010\u0006\"\u0004\u0008|\u0010\u0008R\u001c\u0010}\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008~\u0010\u0006\"\u0004\u0008\u007f\u0010\u0008R\u001f\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0081\u0001\u0010\u0006\"\u0005\u0008\u0082\u0001\u0010\u0008R\u001f\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0084\u0001\u0010\u0006\"\u0005\u0008\u0085\u0001\u0010\u0008R\u001d\u0010\u0086\u0001\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0087\u0001\u0010 \"\u0005\u0008\u0088\u0001\u0010\"\u00a8\u0006\u0089\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "()V",
        "ISBN",
        "",
        "getISBN",
        "()Ljava/lang/String;",
        "setISBN",
        "(Ljava/lang/String;)V",
        "authors",
        "getAuthors",
        "setAuthors",
        "cloudId",
        "getCloudId",
        "setCloudId",
        "coverUrl",
        "getCoverUrl",
        "setCoverUrl",
        "debugInfo",
        "getDebugInfo",
        "description",
        "getDescription",
        "setDescription",
        "digest",
        "getDigest",
        "setDigest",
        "downloadInfo",
        "getDownloadInfo",
        "setDownloadInfo",
        "drmType",
        "",
        "getDrmType",
        "()I",
        "setDrmType",
        "(I)V",
        "encoding",
        "getEncoding",
        "setEncoding",
        "encryptionType",
        "getEncryptionType",
        "setEncryptionType",
        "extraAttributes",
        "getExtraAttributes",
        "setExtraAttributes",
        "favorite",
        "",
        "getFavorite",
        "()J",
        "setFavorite",
        "(J)V",
        "fetchSource",
        "getFetchSource",
        "setFetchSource",
        "fileOriginSize",
        "getFileOriginSize",
        "setFileOriginSize",
        "fileSyncStatus",
        "getFileSyncStatus",
        "setFileSyncStatus",
        "hashTag",
        "getHashTag",
        "setHashTag",
        "idString",
        "getIdString",
        "setIdString",
        "isDisabled",
        "",
        "()Z",
        "isEnabled",
        "isFileDisabledSync",
        "isUserDataDisabledSync",
        "language",
        "getLanguage",
        "setLanguage",
        "lastAccess",
        "getLastAccess",
        "setLastAccess",
        "lastModified",
        "getLastModified",
        "setLastModified",
        "location",
        "getLocation",
        "setLocation",
        "modeType",
        "getModeType",
        "setModeType",
        "name",
        "getName",
        "setName",
        "nativeAbsolutePath",
        "getNativeAbsolutePath",
        "setNativeAbsolutePath",
        "ordinal",
        "getOrdinal",
        "setOrdinal",
        "parentId",
        "getParentId",
        "setParentId",
        "progress",
        "getProgress",
        "setProgress",
        "publisher",
        "getPublisher",
        "setPublisher",
        "rating",
        "getRating",
        "setRating",
        "readingStatus",
        "getReadingStatus",
        "setReadingStatus",
        "series",
        "getSeries",
        "setSeries",
        "size",
        "getSize",
        "setSize",
        "status",
        "getStatus",
        "setStatus",
        "storageId",
        "getStorageId",
        "setStorageId",
        "tags",
        "getTags",
        "setTags",
        "title",
        "getTitle",
        "setTitle",
        "type",
        "getType",
        "setType",
        "uniqueCloudId",
        "getUniqueCloudId",
        "setUniqueCloudId",
        "userDataSyncStatus",
        "getUserDataSyncStatus",
        "setUserDataSyncStatus",
        "sdk-reader_overseasRelease"
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
.field private ISBN:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private authors:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cloudId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private coverUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private digest:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private downloadInfo:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private drmType:I

.field private encoding:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private encryptionType:I

.field private extraAttributes:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private favorite:J

.field private fetchSource:I

.field private fileOriginSize:J

.field private fileSyncStatus:I

.field private hashTag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private idString:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastAccess:J

.field private lastModified:J

.field private location:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private modeType:I

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nativeAbsolutePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ordinal:I

.field private parentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private progress:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private publisher:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rating:I

.field private readingStatus:I

.field private series:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private size:J

.field private status:I

.field private storageId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tags:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private uniqueCloudId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private userDataSyncStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->modeType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->fileSyncStatus:I

    iput v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->userDataSyncStatus:I

    return-void
.end method


# virtual methods
.method public final getAuthors()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->authors:Ljava/lang/String;

    return-object p0
.end method

.method public final getCloudId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->cloudId:Ljava/lang/String;

    return-object p0
.end method

.method public final getCoverUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->coverUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getDebugInfo()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->nativeAbsolutePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", docId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", create = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uniqueCloudId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->uniqueCloudId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", update = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->status:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getDigest()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->digest:Ljava/lang/String;

    return-object p0
.end method

.method public final getDownloadInfo()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->downloadInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final getDrmType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->drmType:I

    return p0
.end method

.method public final getEncoding()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method public final getEncryptionType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->encryptionType:I

    return p0
.end method

.method public final getExtraAttributes()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->extraAttributes:Ljava/lang/String;

    return-object p0
.end method

.method public final getFavorite()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->favorite:J

    return-wide v0
.end method

.method public final getFetchSource()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->fetchSource:I

    return p0
.end method

.method public final getFileOriginSize()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->fileOriginSize:J

    return-wide v0
.end method

.method public final getFileSyncStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->fileSyncStatus:I

    return p0
.end method

.method public final getHashTag()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->hashTag:Ljava/lang/String;

    return-object p0
.end method

.method public final getISBN()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->ISBN:Ljava/lang/String;

    return-object p0
.end method

.method public final getIdString()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->idString:Ljava/lang/String;

    return-object p0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->language:Ljava/lang/String;

    return-object p0
.end method

.method public final getLastAccess()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->lastAccess:J

    return-wide v0
.end method

.method public final getLastModified()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->lastModified:J

    return-wide v0
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->location:Ljava/lang/String;

    return-object p0
.end method

.method public final getModeType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->modeType:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getNativeAbsolutePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->nativeAbsolutePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrdinal()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->ordinal:I

    return p0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getProgress()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->progress:Ljava/lang/String;

    return-object p0
.end method

.method public final getPublisher()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->publisher:Ljava/lang/String;

    return-object p0
.end method

.method public final getRating()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->rating:I

    return p0
.end method

.method public final getReadingStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->readingStatus:I

    return p0
.end method

.method public final getSeries()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->series:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->size:J

    return-wide v0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->status:I

    return p0
.end method

.method public final getStorageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->storageId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTags()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->tags:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final getUniqueCloudId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->uniqueCloudId:Ljava/lang/String;

    return-object p0
.end method

.method public final getUserDataSyncStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->userDataSyncStatus:I

    return p0
.end method

.method public final isDisabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->isEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->status:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFileDisabledSync()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->fileSyncStatus:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUserDataDisabledSync()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->userDataSyncStatus:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setAuthors(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->authors:Ljava/lang/String;

    return-void
.end method

.method public final setCloudId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->cloudId:Ljava/lang/String;

    return-void
.end method

.method public final setCoverUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->description:Ljava/lang/String;

    return-void
.end method

.method public final setDigest(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->digest:Ljava/lang/String;

    return-void
.end method

.method public final setDownloadInfo(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->downloadInfo:Ljava/lang/String;

    return-void
.end method

.method public final setDrmType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->drmType:I

    return-void
.end method

.method public final setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->encoding:Ljava/lang/String;

    return-void
.end method

.method public final setEncryptionType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->encryptionType:I

    return-void
.end method

.method public final setExtraAttributes(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->extraAttributes:Ljava/lang/String;

    return-void
.end method

.method public final setFavorite(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->favorite:J

    return-void
.end method

.method public final setFetchSource(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->fetchSource:I

    return-void
.end method

.method public final setFileOriginSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->fileOriginSize:J

    return-void
.end method

.method public final setFileSyncStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->fileSyncStatus:I

    return-void
.end method

.method public final setHashTag(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->hashTag:Ljava/lang/String;

    return-void
.end method

.method public final setISBN(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->ISBN:Ljava/lang/String;

    return-void
.end method

.method public final setIdString(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->idString:Ljava/lang/String;

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->language:Ljava/lang/String;

    return-void
.end method

.method public final setLastAccess(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->lastAccess:J

    return-void
.end method

.method public final setLastModified(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->lastModified:J

    return-void
.end method

.method public final setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->location:Ljava/lang/String;

    return-void
.end method

.method public final setModeType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->modeType:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->name:Ljava/lang/String;

    return-void
.end method

.method public final setNativeAbsolutePath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->nativeAbsolutePath:Ljava/lang/String;

    return-void
.end method

.method public final setOrdinal(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->ordinal:I

    return-void
.end method

.method public final setParentId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->parentId:Ljava/lang/String;

    return-void
.end method

.method public final setProgress(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->progress:Ljava/lang/String;

    return-void
.end method

.method public final setPublisher(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->publisher:Ljava/lang/String;

    return-void
.end method

.method public final setRating(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->rating:I

    return-void
.end method

.method public final setReadingStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->readingStatus:I

    return-void
.end method

.method public final setSeries(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->series:Ljava/lang/String;

    return-void
.end method

.method public final setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->size:J

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->status:I

    return-void
.end method

.method public final setStorageId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->storageId:Ljava/lang/String;

    return-void
.end method

.method public final setTags(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->tags:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->title:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->type:Ljava/lang/String;

    return-void
.end method

.method public final setUniqueCloudId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->uniqueCloudId:Ljava/lang/String;

    return-void
.end method

.method public final setUserDataSyncStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;->userDataSyncStatus:I

    return-void
.end method
