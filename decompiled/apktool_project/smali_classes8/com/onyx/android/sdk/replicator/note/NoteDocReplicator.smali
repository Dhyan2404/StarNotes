.class public final Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;
.super Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010(\u001a\u00020&\u0012\u0006\u00105\u001a\u000204\u00a2\u0006\u0004\u00086\u00107J\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000cH\u0007J\u0008\u0010\u000e\u001a\u00020\u0004H\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0008\u0010\u0011\u001a\u00020\u0000H\u0016J\u0008\u0010\u0012\u001a\u00020\u0000H\u0016J\u0008\u0010\u0013\u001a\u00020\u0000H\u0016J\u0006\u0010\u0014\u001a\u00020\u0000J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u0016\u001a\u00020\u0004H\u0002J\u0018\u0010\u001a\u001a\u00020\u00042\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0002J\u0008\u0010\u001b\u001a\u00020\u0004H\u0002J\u0008\u0010\u001c\u001a\u00020\u0004H\u0002J\u0008\u0010\u001d\u001a\u00020\u0004H\u0002J\u0008\u0010\u001e\u001a\u00020\u0004H\u0002J\u0010\u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0018H\u0002J\u0018\u0010\"\u001a\u00020\u00042\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0002J\u0018\u0010$\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u0018H\u0002J\u0010\u0010%\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u0007H\u0002R\u0014\u0010(\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\'R\u001b\u0010,\u001a\u00020\u00028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010)\u001a\u0004\u0008*\u0010+R\u001b\u00100\u001a\u00020-8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010)\u001a\u0004\u0008.\u0010/R\u001a\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000f018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u00102\u00a8\u00068"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;",
        "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
        "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;",
        "createDocDataReplicator",
        "",
        "reset",
        "stop",
        "",
        "getDocumentId",
        "Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;",
        "event",
        "onDocDataSyncProgressEvent",
        "Lcom/onyx/android/sdk/replicator/event/DocRequestEvent;",
        "onDocRequestEvent",
        "postDocSyncProgressImpl",
        "",
        "tryCloseReplicator",
        "closeReplicator",
        "start",
        "resumeReplicator",
        "startDataReplicator",
        "j",
        "i",
        "",
        "",
        "errorTypes",
        "h",
        "f",
        "l",
        "p",
        "k",
        "status",
        "n",
        "types",
        "e",
        "requestId",
        "o",
        "m",
        "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;",
        "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;",
        "treeReplicator",
        "Lkotlin/Lazy;",
        "g",
        "()Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;",
        "dataReplicator",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "c",
        "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "rxScheduler",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "postProgressFilter",
        "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
        "info",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V",
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
.field public final e:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/base/rx/RxFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "treeReplicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;-><init>(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->e:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator$dataReplicator$2;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator$dataReplicator$2;-><init>(Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->f:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator$rxScheduler$2;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator$rxScheduler$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->g:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-direct {p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->h:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->register(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->onOpen()V

    return-void
.end method

.method private final c()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method


# virtual methods
.method public closeReplicator()Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->unRegister(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->g()Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->close()V

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->onClose()V

    .line 5
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->c()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->shutdown()V

    .line 6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->printSyncLog()V

    return-object p0
.end method

.method public bridge synthetic closeReplicator()Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->closeReplicator()Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;

    move-result-object p0

    return-object p0
.end method

.method public final createDocDataReplicator()Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;->setDocumentId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getDebugLog()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;->setDebugLog(Z)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/NoteDocDataReplicator;

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/note/NoteDocDataReplicator;-><init>(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;)V

    return-object p0
.end method

.method public final e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->addErrorTypes(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->l()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->isFinished()Z

    move-result v0

    const-string v1, "note doc: "

    const-class v2, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sync finish: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->k()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can not sync finish:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final g()Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    return-object p0
.end method

.method public getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->n(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->e(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->f()V

    sget-object p1, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    const-class v0, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "documentId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "data sync error"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->e(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->n(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->f()V

    return-void
.end method

.method public final j(Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->i()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->getErrorTypes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->h(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->e:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;-><init>(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->isSyncSuccess()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;->setSuccess(Z)Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final l()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->h:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->postDocSyncProgressImpl()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->h:Lcom/onyx/android/sdk/base/rx/RxFilter;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->removeRequestStatus(Ljava/lang/String;)V

    return-void
.end method

.method public final n(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->setDataStatus(I)V

    return-void
.end method

.method public final o(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->setRequestStatus(Ljava/lang/String;I)V

    return-void
.end method

.method public final onDocDataSyncProgressEvent(Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->getTotal()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->setTotalDataCount(J)Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->getCompleted()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->setCompletedDataCount(J)Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->getPullCompletedCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->setCompletedPullDataCount(J)Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->getPushCompletedCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->setCompletedPushDataCount(J)Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->l()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->updateSyncCloudSuccess()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->j(Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;)V

    return-void
.end method

.method public final onDocRequestEvent(Lcom/onyx/android/sdk/replicator/event/DocRequestEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/event/DocRequestEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/DocRequestEvent;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/DocRequestEvent;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/DocRequestEvent;->getStatus()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->o(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/DocRequestEvent;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->m(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->f()V

    return-void
.end method

.method public final p()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->h:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->h:Lcom/onyx/android/sdk/base/rx/RxFilter;

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator$a;-><init>(Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->subscribeThrottleFirst(JLio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public postDocSyncProgressImpl()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->getKSyncStatusWithCloudFile()Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->hasPullDocData()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->getPullAt()Ljava/util/Date;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->setPullAt(Ljava/util/Date;)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->hasPushDocData()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->getPushAt()Ljava/util/Date;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->setPushAt(Ljava/util/Date;)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v2

    const-string v3, "note"

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setScope(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setSyncType(I)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setAccountId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setSyncStatus(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->isNoteDocument()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->hasPushedData()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setScope(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setSyncType(I)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setAccountId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->setStatus(I)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setSyncStatus(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->e:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;-><init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_4
    :goto_2
    sget-object p0, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;

    new-instance v0, Lcom/onyx/android/sdk/replicator/event/SyncProgressUpdateEvent;

    new-instance v2, Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v2}, Lcom/onyx/android/sdk/replicator/event/SyncProgressUpdateEvent;-><init>(Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->reset()V

    return-void
.end method

.method public resumeReplicator()Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->g()Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->startSync()V

    return-object p0
.end method

.method public bridge synthetic resumeReplicator()Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->resumeReplicator()Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;

    move-result-object p0

    return-object p0
.end method

.method public start()Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->p()V

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->startDataReplicator()Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;

    return-object p0
.end method

.method public bridge synthetic start()Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->start()Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;

    move-result-object p0

    return-object p0
.end method

.method public final startDataReplicator()Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->n(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->g()Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->startSync()V

    return-object p0
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->g()Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->stop()V

    return-void
.end method

.method public tryCloseReplicator()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;->closeReplicator()Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;

    const/4 p0, 0x1

    return p0
.end method
