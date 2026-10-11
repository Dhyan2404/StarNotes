.class public final Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u00085\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 f2\u00020\u0001:\u0001fB\u0011\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008e\u0010+J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000bJ\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0012\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0000J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0017\u001a\u00020\u0002J\u0006\u0010\u0018\u001a\u00020\u0002J\u0006\u0010\u0019\u001a\u00020\u0002J\u0006\u0010\u001a\u001a\u00020\u0002J\u0006\u0010\u001b\u001a\u00020\u0002J\u000e\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0014J\u000e\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0014J\u0006\u0010 \u001a\u00020\u0002J\u0006\u0010!\u001a\u00020\u0010J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0014J\u000e\u0010$\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\u0014J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0014J\u0008\u0010\'\u001a\u00020\u0004H\u0016R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008\u0006\u0010+R$\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010(\u001a\u0004\u0008-\u0010*\"\u0004\u0008\u0008\u0010+R$\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010(\u001a\u0004\u0008/\u0010*\"\u0004\u0008\n\u0010+R\"\u0010\u000c\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103\"\u0004\u0008\r\u00104R\"\u0010\u000e\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u00101\u001a\u0004\u00086\u00103\"\u0004\u0008\u000f\u00104R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008\u0016\u0010;R\u0016\u0010\u001c\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u00108R\"\u0010\"\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u00108\u001a\u0004\u0008>\u0010:\"\u0004\u0008#\u0010;R\u0016\u0010@\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u00108R\u0016\u0010\u001e\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u00108R\"\u0010%\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u00108\u001a\u0004\u0008C\u0010:\"\u0004\u0008&\u0010;R\"\u0010F\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\"\u0010Q\u001a\u00020J8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008K\u0010L\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\"\u0010U\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008R\u0010E\u001a\u0004\u0008S\u0010G\"\u0004\u0008T\u0010IR$\u0010]\u001a\u0004\u0018\u00010V8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008W\u0010X\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\R\"\u0010a\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008^\u00101\u001a\u0004\u0008_\u00103\"\u0004\u0008`\u00104R\u0014\u0010b\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010GR\u0011\u0010c\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010GR\u0011\u0010d\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008d\u0010G\u00a8\u0006g"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
        "",
        "",
        "a",
        "",
        "documentId",
        "setDocumentId",
        "groupId",
        "setGroupId",
        "userId",
        "setUserId",
        "",
        "triggerSource",
        "setTriggerSource",
        "retryCount",
        "setRetryCount",
        "",
        "isNoteDocument",
        "isNoteLibrary",
        "addRetryCount",
        "",
        "createAt",
        "setCreateAt",
        "onOpen",
        "onStart",
        "onPrepareStart",
        "printSyncLog",
        "onClose",
        "openAt",
        "setOpenAt",
        "closeAt",
        "setCloseAt",
        "reset",
        "hasStarted",
        "startAt",
        "setStartAt",
        "setPrepareStartAt",
        "planCloseAt",
        "setPlanCloseAt",
        "toString",
        "Ljava/lang/String;",
        "getDocumentId",
        "()Ljava/lang/String;",
        "(Ljava/lang/String;)V",
        "b",
        "getGroupId",
        "c",
        "getUserId",
        "d",
        "I",
        "getTriggerSource",
        "()I",
        "(I)V",
        "e",
        "getRetryCount",
        "f",
        "J",
        "getCreateAt",
        "()J",
        "(J)V",
        "g",
        "h",
        "getStartAt",
        "i",
        "prepareStartAt",
        "j",
        "k",
        "getPlanCloseAt",
        "l",
        "Z",
        "isNoticedPullData",
        "()Z",
        "setNoticedPullData",
        "(Z)V",
        "Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;",
        "m",
        "Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;",
        "getSyncStatus",
        "()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;",
        "setSyncStatus",
        "(Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;)V",
        "syncStatus",
        "n",
        "getDebugLog",
        "setDebugLog",
        "debugLog",
        "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;",
        "o",
        "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;",
        "getSyncGateway",
        "()Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;",
        "setSyncGateway",
        "(Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;)V",
        "syncGateway",
        "p",
        "getDocType",
        "setDocType",
        "docType",
        "isRetry",
        "isWaitingClose",
        "isWaiting",
        "<init>",
        "Companion",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

.field public d:I

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:Z

.field public m:Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Z

.field public o:Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->Companion:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->a:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->d:I

    .line 4
    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->m:Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    .line 5
    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->p:I

    .line 6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->a()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->setCreateAt(J)Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    return-void
.end method

.method public final addRetryCount()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->e:I

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->d:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getCreateAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->f:J

    return-wide v0
.end method

.method public final getDebugLog()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->n:Z

    return p0
.end method

.method public final getDocType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->p:I

    return p0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getGroupId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlanCloseAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->k:J

    return-wide v0
.end method

.method public final getRetryCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->e:I

    return p0
.end method

.method public final getStartAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->h:J

    return-wide v0
.end method

.method public final getSyncGateway()Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->o:Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    return-object p0
.end method

.method public final getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->m:Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    return-object p0
.end method

.method public final getTriggerSource()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->d:I

    return p0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final hasStarted()Z
    .locals 4

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->h:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNoteDocument()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->p:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNoteLibrary()Z
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->p:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNoticedPullData()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->l:Z

    return p0
.end method

.method public final isWaiting()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->m:Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->getShapeStatus()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isWaitingClose()Z
    .locals 4

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->isWaiting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->k:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onClose()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->setCloseAt(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->l:Z

    return-void
.end method

.method public final onOpen()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->setOpenAt(J)V

    return-void
.end method

.method public final onPrepareStart()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->setPrepareStartAt(J)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->setStartAt(J)Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    return-void
.end method

.method public final printSyncLog()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->m:Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->hasSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    const-class v1, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sync use time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->j:J

    iget-wide v5, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->i:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->m:Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->toDataString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->isWaiting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->k:J

    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->m:Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    :cond_1
    return-void
.end method

.method public final setCloseAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->j:J

    return-void
.end method

.method public final setCreateAt(J)Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->f:J

    return-object p0
.end method

.method public final setCreateAt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->f:J

    return-void
.end method

.method public final setDebugLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->n:Z

    return-void
.end method

.method public final setDocType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->p:I

    return-void
.end method

.method public final setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setDocumentId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public final setGroupId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public final setNoticedPullData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->l:Z

    return-void
.end method

.method public final setOpenAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->g:J

    return-void
.end method

.method public final setPlanCloseAt(J)Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->k:J

    return-object p0
.end method

.method public final setPlanCloseAt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->k:J

    return-void
.end method

.method public final setPrepareStartAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->i:J

    return-void
.end method

.method public final setRetryCount(I)Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->e:I

    return-object p0
.end method

.method public final setRetryCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->e:I

    return-void
.end method

.method public final setStartAt(J)Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->h:J

    return-object p0
.end method

.method public final setStartAt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->h:J

    return-void
.end method

.method public final setSyncGateway(Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->o:Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    return-void
.end method

.method public final setSyncStatus(Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->m:Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    return-void
.end method

.method public final setTriggerSource(I)Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->d:I

    return-object p0
.end method

.method public final setTriggerSource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->d:I

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "documentId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", triggerSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", createAt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->f:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", syncStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->m:Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
