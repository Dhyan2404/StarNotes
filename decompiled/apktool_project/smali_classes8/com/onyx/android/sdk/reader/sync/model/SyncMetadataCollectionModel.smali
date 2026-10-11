.class public final Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataCollectionModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataCollectionModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "()V",
        "documentUniqueId",
        "",
        "getDocumentUniqueId",
        "()Ljava/lang/String;",
        "setDocumentUniqueId",
        "(Ljava/lang/String;)V",
        "libraryUniqueId",
        "getLibraryUniqueId",
        "setLibraryUniqueId",
        "modeType",
        "",
        "getModeType",
        "()I",
        "setModeType",
        "(I)V",
        "status",
        "getStatus",
        "setStatus",
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
.field private documentUniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private libraryUniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private modeType:I

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataCollectionModel;->modeType:I

    return-void
.end method


# virtual methods
.method public final getDocumentUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataCollectionModel;->documentUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final getLibraryUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataCollectionModel;->libraryUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final getModeType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataCollectionModel;->modeType:I

    return p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataCollectionModel;->status:I

    return p0
.end method

.method public final setDocumentUniqueId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataCollectionModel;->documentUniqueId:Ljava/lang/String;

    return-void
.end method

.method public final setLibraryUniqueId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataCollectionModel;->libraryUniqueId:Ljava/lang/String;

    return-void
.end method

.method public final setModeType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataCollectionModel;->modeType:I

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataCollectionModel;->status:I

    return-void
.end method
