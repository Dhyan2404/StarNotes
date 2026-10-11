.class public final Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u001d\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008$\u0010%J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\tR(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R(\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0010\u001a\u0004\u0008\u0014\u0010\u0012R(\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0012R$\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0010\u001a\u0004\u0008\u0018\u0010\u0012\"\u0004\u0008\u0019\u0010\u001aR$\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR$\u0010\u000c\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u001d\u001a\u0004\u0008!\u0010\u001fR\u0013\u0010#\u001a\u0004\u0018\u00010\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u0012\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;",
        "",
        "",
        "recordId",
        "setRecordId",
        "localSavePath",
        "setLocalSavePath",
        "ossFilePath",
        "setOssFilePath",
        "",
        "syncStatus",
        "setSyncStatus",
        "recordType",
        "setRecordType",
        "<set-?>",
        "a",
        "Ljava/lang/String;",
        "getRecordId",
        "()Ljava/lang/String;",
        "b",
        "getLocalSavePath",
        "c",
        "getOssFilePath",
        "d",
        "getRetryOssPath",
        "setRetryOssPath",
        "(Ljava/lang/String;)V",
        "retryOssPath",
        "e",
        "I",
        "getSyncStatus",
        "()I",
        "f",
        "getRecordType",
        "getSyncOssPath",
        "syncOssPath",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocalSavePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getOssFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getRecordId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getRecordType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->f:I

    return p0
.end method

.method public final getRetryOssPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getSyncOssPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->d:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->c:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public final getSyncStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->e:I

    return p0
.end method

.method public final setLocalSavePath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setOssFilePath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final setRecordId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setRecordType(I)Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->f:I

    return-object p0
.end method

.method public final setRetryOssPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->d:Ljava/lang/String;

    return-void
.end method

.method public final setSyncStatus(I)Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->e:I

    return-object p0
.end method
