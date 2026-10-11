.class public final synthetic Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture$a;->e:Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;

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

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture$a;->e:Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->access$handleLongPressTimer(Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture$a;->a(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    return-void
.end method
