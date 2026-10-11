.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/HWRGestureHandleAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/HWRGestureHandleAction;->hitTestVisibleBoxTouchData(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;
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
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/HWRGestureHandleAction;

.field public final synthetic f:Lcom/onyx/android/sdk/geometry/data/TouchData;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/HWRGestureHandleAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRGestureHandleAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/HWRGestureHandleAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRGestureHandleAction$c;->f:Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRGestureHandleAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/HWRGestureHandleAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRGestureHandleAction$c;->f:Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->performTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRGestureHandleAction$c;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method
