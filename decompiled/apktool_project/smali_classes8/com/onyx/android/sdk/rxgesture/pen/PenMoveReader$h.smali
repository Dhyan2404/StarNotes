.class public final synthetic Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->m(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$h;->e:Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$h;->e:Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->access$filterByTime(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$h;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result p0

    return p0
.end method
