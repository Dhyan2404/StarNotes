.class public final Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0015\u001a\u00020\u0007H\u0007J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0007R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001e\u0010\u000c\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR\u001e\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\t\"\u0004\u0008\u0011\u0010\u000bR\u001e\u0010\u0012\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\t\"\u0004\u0008\u0014\u0010\u000b\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;",
        "",
        "()V",
        "isStorageTooLow",
        "",
        "()Z",
        "storageLeft",
        "",
        "getStorageLeft",
        "()J",
        "setStorageLeft",
        "(J)V",
        "storageLimit",
        "getStorageLimit",
        "setStorageLimit",
        "storageRed",
        "getStorageRed",
        "setStorageRed",
        "storageUsed",
        "getStorageUsed",
        "setStorageUsed",
        "getStorageRedMB",
        "useStorage",
        "",
        "bytes",
        "sdk-data_release"
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
.field private storageLeft:J
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        name = "storage_left"
    .end annotation
.end field

.field private storageLimit:J
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        name = "storage_limit"
    .end annotation
.end field

.field private storageRed:J
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        name = "storage_red"
    .end annotation
.end field

.field private storageUsed:J
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        name = "storage_used"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStorageLeft()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->storageLeft:J

    return-wide v0
.end method

.method public final getStorageLimit()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->storageLimit:J

    return-wide v0
.end method

.method public final getStorageRed()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->storageRed:J

    return-wide v0
.end method

.method public final getStorageRedMB()J
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/StorageUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/StorageUtils;

    iget-wide v1, p0, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->storageRed:J

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/StorageUtils;->convertBytesToMB(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getStorageUsed()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->storageUsed:J

    return-wide v0
.end method

.method public final isStorageTooLow()Z
    .locals 4

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->storageLeft:J

    iget-wide v2, p0, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->storageRed:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setStorageLeft(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->storageLeft:J

    return-void
.end method

.method public final setStorageLimit(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->storageLimit:J

    return-void
.end method

.method public final setStorageRed(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->storageRed:J

    return-void
.end method

.method public final setStorageUsed(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->storageUsed:J

    return-void
.end method

.method public final useStorage(J)V
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->storageUsed:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->storageUsed:J

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->storageLeft:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->storageLeft:J

    return-void
.end method
