.class public final Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "a",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "getPenArgs",
        "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "penArgs",
        "",
        "b",
        "Z",
        "getAddPen",
        "()Z",
        "addPen",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Z)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Z)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;->a:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    iput-boolean p2, p0, Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Z)V

    return-void
.end method


# virtual methods
.method public final getAddPen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;->b:Z

    return p0
.end method

.method public final getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;->a:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    return-object p0
.end method
