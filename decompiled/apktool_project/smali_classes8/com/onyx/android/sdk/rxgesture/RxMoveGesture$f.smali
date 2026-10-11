.class public final synthetic Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$f;->e:Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$f;->e:Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;->access$onMoving(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture$f;->a(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
