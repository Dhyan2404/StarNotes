.class public final Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008R\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u0004\u001a\u0004\u0008\u000f\u0010\u0006\"\u0004\u0008\u0010\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;",
        "",
        "",
        "a",
        "I",
        "getCode",
        "()I",
        "setCode",
        "(I)V",
        "code",
        "b",
        "getType",
        "setType",
        "type",
        "c",
        "getSyncType",
        "setSyncType",
        "syncType",
        "<init>",
        "()V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NETWORK_BAD:I = 0x2

.field public static final NETWORK_ERROR_WITH_RETRY:I = 0x0

.field public static final SYNC_ERROR_WITH_RETRY:I = 0x1

.field public static final SYNC_ERROR_WITH_SERVICE:I = 0x3

.field public static final UNKNOWN_ERROR:I = 0x4


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->Companion:Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->a:I

    sget-object v0, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getUNKNOWN_ERROR()I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->b:I

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->a:I

    return p0
.end method

.method public final getSyncType()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->c:I

    return p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->b:I

    return p0
.end method

.method public final setCode(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->a:I

    return-void
.end method

.method public final setSyncType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->c:I

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;->b:I

    return-void
.end method
