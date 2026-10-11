.class public final Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel$FetchSource;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u001e\u0018\u00002\u00020\u0001:\u0001*B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000f\"\u0004\u0008\u0017\u0010\u0011R\u001a\u0010\u0018\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000f\"\u0004\u0008\u001a\u0010\u0011R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R\u001a\u0010$\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u000f\"\u0004\u0008&\u0010\u0011R\u001c\u0010\'\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "()V",
        "description",
        "",
        "getDescription",
        "()Ljava/lang/String;",
        "setDescription",
        "(Ljava/lang/String;)V",
        "digest",
        "getDigest",
        "setDigest",
        "encryptionType",
        "",
        "getEncryptionType",
        "()I",
        "setEncryptionType",
        "(I)V",
        "extraAttributes",
        "getExtraAttributes",
        "setExtraAttributes",
        "fetchSource",
        "getFetchSource",
        "setFetchSource",
        "modeType",
        "getModeType",
        "setModeType",
        "name",
        "getName",
        "setName",
        "parentUniqueId",
        "getParentUniqueId",
        "setParentUniqueId",
        "queryString",
        "getQueryString",
        "setQueryString",
        "status",
        "getStatus",
        "setStatus",
        "storageId",
        "getStorageId",
        "setStorageId",
        "FetchSource",
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
.field private description:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private digest:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private encryptionType:I

.field private extraAttributes:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fetchSource:I

.field private modeType:I

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private parentUniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private queryString:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private status:I

.field private storageId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->modeType:I

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getDigest()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->digest:Ljava/lang/String;

    return-object p0
.end method

.method public final getEncryptionType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->encryptionType:I

    return p0
.end method

.method public final getExtraAttributes()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->extraAttributes:Ljava/lang/String;

    return-object p0
.end method

.method public final getFetchSource()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->fetchSource:I

    return p0
.end method

.method public final getModeType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->modeType:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getParentUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->parentUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final getQueryString()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->queryString:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->status:I

    return p0
.end method

.method public final getStorageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->storageId:Ljava/lang/String;

    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->description:Ljava/lang/String;

    return-void
.end method

.method public final setDigest(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->digest:Ljava/lang/String;

    return-void
.end method

.method public final setEncryptionType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->encryptionType:I

    return-void
.end method

.method public final setExtraAttributes(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->extraAttributes:Ljava/lang/String;

    return-void
.end method

.method public final setFetchSource(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->fetchSource:I

    return-void
.end method

.method public final setModeType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->modeType:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->name:Ljava/lang/String;

    return-void
.end method

.method public final setParentUniqueId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->parentUniqueId:Ljava/lang/String;

    return-void
.end method

.method public final setQueryString(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->queryString:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->status:I

    return-void
.end method

.method public final setStorageId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;->storageId:Ljava/lang/String;

    return-void
.end method
