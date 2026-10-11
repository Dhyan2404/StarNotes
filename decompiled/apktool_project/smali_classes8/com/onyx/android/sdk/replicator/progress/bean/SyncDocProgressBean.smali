.class public final Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0017\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0008J\u0013\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0096\u0002J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u0011\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0000H\u0096\u0002R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0004\u0010\u0015R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u0007\u0010\u001aR\"\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\n\u0010\u001fR\u0011\u0010!\u001a\u00020\u00058G\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0019\u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;",
        "",
        "",
        "syncType",
        "setSyncType",
        "",
        "accountId",
        "setAccountId",
        "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;",
        "syncStatus",
        "setSyncStatus",
        "",
        "other",
        "",
        "equals",
        "hashCode",
        "compareTo",
        "e",
        "I",
        "getSyncType",
        "()I",
        "(I)V",
        "f",
        "Ljava/lang/String;",
        "getAccountId",
        "()Ljava/lang/String;",
        "(Ljava/lang/String;)V",
        "g",
        "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;",
        "getSyncStatus",
        "()Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;",
        "(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)V",
        "getDebugInfoString",
        "debugInfoString",
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
.field public e:I

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->g:Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;)I
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->e:I

    iget v1, p1, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->e:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->compareTo(Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;

    iget v2, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->e:I

    iget v3, p1, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->e:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final getAccountId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getDebugInfoString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KSyncDocProgressBean{syncType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", accountId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', syncStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->g:Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->getDebugInfoString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->g:Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    return-object p0
.end method

.method public final getSyncType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->e:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->f:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final setAccountId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final setAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->f:Ljava/lang/String;

    return-void
.end method

.method public final setSyncStatus(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "syncStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->g:Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    return-object p0
.end method

.method public final setSyncStatus(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->g:Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    return-void
.end method

.method public final setSyncType(I)Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->e:I

    return-object p0
.end method

.method public final setSyncType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;->e:I

    return-void
.end method
