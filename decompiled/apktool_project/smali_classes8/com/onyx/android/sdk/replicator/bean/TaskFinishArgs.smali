.class public final Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0002R$\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\t\u001a\u0004\u0008\r\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;",
        "",
        "",
        "post",
        "setPostProgress",
        "syncNext",
        "setSyncNext",
        "<set-?>",
        "a",
        "Z",
        "isPostProgress",
        "()Z",
        "b",
        "isSyncNext",
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
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isPostProgress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;->a:Z

    return p0
.end method

.method public final isSyncNext()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;->b:Z

    return p0
.end method

.method public final setPostProgress(Z)Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;->a:Z

    return-object p0
.end method

.method public final setSyncNext(Z)Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;->b:Z

    return-object p0
.end method
