.class public final Lcom/onyx/android/sdk/replicator/note/data/constant/SyncConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/constant/SyncConstant;",
        "",
        "()V",
        "NOT_MIGRATE_NOTE_FILE_SIZE_VALUE",
        "",
        "RECOMPUTE_SHAPE_RECT_SIZE_THRESHOLD",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/SyncConstant;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NOT_MIGRATE_NOTE_FILE_SIZE_VALUE:J = -0x1L

.field public static final RECOMPUTE_SHAPE_RECT_SIZE_THRESHOLD:F = 3.0f


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/constant/SyncConstant;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/constant/SyncConstant;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/SyncConstant;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/SyncConstant;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
