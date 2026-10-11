.class public final synthetic Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


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

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$i;->e:Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$i;->e:Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->access$onHold(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$i;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method
