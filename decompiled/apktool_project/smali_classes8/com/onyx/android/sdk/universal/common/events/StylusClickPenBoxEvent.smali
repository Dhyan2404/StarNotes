.class public final Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "a",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "getPenArgs",
        "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "penArgs",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V",
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


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;->a:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    return-void
.end method


# virtual methods
.method public final getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;->a:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    return-object p0
.end method
