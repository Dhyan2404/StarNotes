.class public final Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001f\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008,\u0010-J\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fJ\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0004R(\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R(\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0016\u001a\u0004\u0008\u001a\u0010\u0018R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\t8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR(\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000c8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R$\u0010%\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000f8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R(\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u0016\u001a\u0004\u0008(\u0010\u0018R\u0011\u0010*\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u0018R\u0014\u0010+\u001a\u00020\u000f8CX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010&\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;",
        "",
        "",
        "updateDocProgressBeanPushTime",
        "",
        "scope",
        "setScope",
        "documentId",
        "setDocumentId",
        "",
        "syncType",
        "setSyncType",
        "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;",
        "syncStatus",
        "setSyncStatus",
        "",
        "forceSave",
        "setForceSave",
        "accountId",
        "setAccountId",
        "<set-?>",
        "a",
        "Ljava/lang/String;",
        "getScope",
        "()Ljava/lang/String;",
        "b",
        "getDocumentId",
        "c",
        "I",
        "getSyncType",
        "()I",
        "d",
        "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;",
        "getSyncStatus",
        "()Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;",
        "e",
        "Z",
        "isForceSave",
        "()Z",
        "f",
        "getAccountId",
        "getDebugInfo",
        "debugInfo",
        "isNeedUpdate",
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

.field public c:I

.field public d:Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Z

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget v0, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->c:I

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->d:Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x6

    if-eq v0, p0, :cond_0

    const/4 p0, 0x7

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getAccountId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getDebugInfo()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocProgressBean{scope=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', documentId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', syncType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/android/sdk/replicator/bean/KSyncType;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/KSyncType;

    iget v2, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->c:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/bean/KSyncType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", syncStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->d:Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->getDebugInfoString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", forceSave="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", accountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->f:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getScope()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->d:Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    return-object p0
.end method

.method public final getSyncType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->c:I

    return p0
.end method

.method public final isForceSave()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->e:Z

    return p0
.end method

.method public final setAccountId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setForceSave(Z)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->e:Z

    return-object p0
.end method

.method public final setScope(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setSyncStatus(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->d:Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    return-object p0
.end method

.method public final setSyncType(I)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->c:I

    return-object p0
.end method

.method public final updateDocProgressBeanPushTime()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->d:Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->setPushAt(Ljava/util/Date;)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    :cond_0
    return-void
.end method
