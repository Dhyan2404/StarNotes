.class public final synthetic Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$d;->e:Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;

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

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$d;->e:Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->access$onSingleTap(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture$d;->a(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    return-void
.end method
