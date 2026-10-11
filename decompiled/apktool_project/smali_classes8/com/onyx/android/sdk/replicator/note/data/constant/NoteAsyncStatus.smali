.class public final Lcom/onyx/android/sdk/replicator/note/data/constant/NoteAsyncStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/constant/NoteAsyncStatus;",
        "",
        "()V",
        "ASYNC_STATUS_ASYNC_FAIL",
        "",
        "ASYNC_STATUS_ASYNC_SUCCESS",
        "ASYNC_STATUS_EXPORTING",
        "ASYNC_STATUS_EXPORTING_FAIL",
        "ASYNC_STATUS_NORMAL",
        "ASYNC_STATUS_NO_AUTH",
        "ASYNC_STATUS_SYNCING",
        "ASYNC_STATUS_TO_BE_SYNC",
        "ASYNC_STATUS_TO_ONYX_SYNC_SUCCESS",
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
.field public static final ASYNC_STATUS_ASYNC_FAIL:I = 0x2

.field public static final ASYNC_STATUS_ASYNC_SUCCESS:I = 0x3

.field public static final ASYNC_STATUS_EXPORTING:I = 0x4

.field public static final ASYNC_STATUS_EXPORTING_FAIL:I = 0x5

.field public static final ASYNC_STATUS_NORMAL:I = 0x0

.field public static final ASYNC_STATUS_NO_AUTH:I = 0x6

.field public static final ASYNC_STATUS_SYNCING:I = 0x1

.field public static final ASYNC_STATUS_TO_BE_SYNC:I = 0x7

.field public static final ASYNC_STATUS_TO_ONYX_SYNC_SUCCESS:I = 0x8

.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteAsyncStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteAsyncStatus;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteAsyncStatus;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteAsyncStatus;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteAsyncStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
