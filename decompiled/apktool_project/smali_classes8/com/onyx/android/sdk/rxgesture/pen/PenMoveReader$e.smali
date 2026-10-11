.class public final Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->l(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$e;->e:Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$e;->e:Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-static {p0, v0, p1, v1, v2}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->access$filterByTime(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;J)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$e;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result p0

    return p0
.end method
