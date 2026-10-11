.class public final synthetic Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$j;->e:Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$j;->e:Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;->onMultiFingerClicked(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture$j;->a(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object p0

    return-object p0
.end method
