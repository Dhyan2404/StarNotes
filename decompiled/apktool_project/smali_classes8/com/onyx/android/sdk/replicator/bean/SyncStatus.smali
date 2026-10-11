.class public final Lcom/onyx/android/sdk/replicator/bean/SyncStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/bean/SyncStatus;",
        "",
        "()V",
        "PENDING",
        "",
        "SYNCING",
        "SYNC_DISABLE",
        "SYNC_ERROR",
        "SYNC_NO_DATA",
        "SYNC_STOP",
        "SYNC_SUCCESS",
        "SYNC_UPDATING",
        "SYNC_WAITING",
        "UNCONNECTED",
        "isFinished",
        "",
        "status",
        "toString",
        "",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/bean/SyncStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PENDING:I = 0x0

.field public static final SYNCING:I = 0x1

.field public static final SYNC_DISABLE:I = 0x7

.field public static final SYNC_ERROR:I = 0x3

.field public static final SYNC_NO_DATA:I = 0x8

.field public static final SYNC_STOP:I = 0x4

.field public static final SYNC_SUCCESS:I = 0x2

.field public static final SYNC_UPDATING:I = 0x6

.field public static final SYNC_WAITING:I = 0x5

.field public static final UNCONNECTED:I = 0x9


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/SyncStatus;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/bean/SyncStatus;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/bean/SyncStatus;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/SyncStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isFinished(I)Z
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final toString(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const-string p0, "SYNC_NO_DATA"

    goto :goto_0

    :pswitch_1
    const-string p0, "SYNC_DISABLE"

    goto :goto_0

    :pswitch_2
    const-string p0, "SYNC_UPDATING"

    goto :goto_0

    :pswitch_3
    const-string p0, "SYNC_WAITING"

    goto :goto_0

    :pswitch_4
    const-string p0, "SYNC_STOP"

    goto :goto_0

    :pswitch_5
    const-string p0, "SYNC_ERROR"

    goto :goto_0

    :pswitch_6
    const-string p0, "SYNC_SUCCESS"

    goto :goto_0

    :pswitch_7
    const-string p0, "SYNCING"

    goto :goto_0

    :pswitch_8
    const-string p0, "PENDING"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
