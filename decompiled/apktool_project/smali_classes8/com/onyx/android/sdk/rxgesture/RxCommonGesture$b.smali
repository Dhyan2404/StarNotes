.class public final synthetic Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$b;->e:Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$b;->e:Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->access$applyGestureFilter(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$b;->a(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
