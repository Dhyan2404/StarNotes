.class public abstract Lcom/chad/library/adapter4/loadState/LoadState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter4/loadState/LoadState$Error;,
        Lcom/chad/library/adapter4/loadState/LoadState$Loading;,
        Lcom/chad/library/adapter4/loadState/LoadState$None;,
        Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\n\u000b\u000c\rB\u0011\u0008\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0004\u000e\u000f\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/chad/library/adapter4/loadState/LoadState;",
        "",
        "",
        "a",
        "Z",
        "getEndOfPaginationReached",
        "()Z",
        "endOfPaginationReached",
        "<init>",
        "(Z)V",
        "Error",
        "Loading",
        "None",
        "NotLoading",
        "Lcom/chad/library/adapter4/loadState/LoadState$Error;",
        "Lcom/chad/library/adapter4/loadState/LoadState$Loading;",
        "Lcom/chad/library/adapter4/loadState/LoadState$None;",
        "Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/chad/library/adapter4/loadState/LoadState;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/chad/library/adapter4/loadState/LoadState;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final getEndOfPaginationReached()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter4/loadState/LoadState;->a:Z

    return p0
.end method
