.class public final Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008 \u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\'\u0010(J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0016\u0010\u000b\u001a\u00020\u00002\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0002J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0002J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0002R$\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R$\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0014\u001a\u0004\u0008\u0018\u0010\u0016R$\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00058\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR4\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00088\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R$\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u0014\u001a\u0004\u0008\"\u0010\u0016R$\u0010%\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u0014\u001a\u0004\u0008$\u0010\u0016R\u0011\u0010&\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u001c\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;",
        "",
        "",
        "total",
        "setTotal",
        "",
        "finished",
        "setFinished",
        "",
        "",
        "errorTypes",
        "setErrorTypes",
        "completed",
        "setCompleted",
        "pushCompletedCount",
        "setPushCompletedCount",
        "count",
        "setPullCompletedCount",
        "<set-?>",
        "a",
        "J",
        "getTotal",
        "()J",
        "b",
        "getCompleted",
        "c",
        "Z",
        "isFinished",
        "()Z",
        "d",
        "Ljava/util/List;",
        "getErrorTypes",
        "()Ljava/util/List;",
        "e",
        "getPushCompletedCount",
        "f",
        "getPullCompletedCount",
        "pullCompletedCount",
        "isSuccess",
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
.field public a:J

.field public b:J

.field public c:Z

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCompleted()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->b:J

    return-wide v0
.end method

.method public final getErrorTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->d:Ljava/util/List;

    return-object p0
.end method

.method public final getPullCompletedCount()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->f:J

    return-wide v0
.end method

.method public final getPushCompletedCount()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->e:J

    return-wide v0
.end method

.method public final getTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->a:J

    return-wide v0
.end method

.method public final isFinished()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->c:Z

    return p0
.end method

.method public final isSuccess()Z
    .locals 4

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->b:J

    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->a:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setCompleted(J)Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->b:J

    return-object p0
.end method

.method public final setErrorTypes(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->d:Ljava/util/List;

    return-object p0
.end method

.method public final setFinished(Z)Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->c:Z

    return-object p0
.end method

.method public final setPullCompletedCount(J)Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->f:J

    return-object p0
.end method

.method public final setPushCompletedCount(J)Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->e:J

    return-object p0
.end method

.method public final setTotal(J)Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->a:J

    return-object p0
.end method
