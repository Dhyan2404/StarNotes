.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->o(Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/geometry/data/TouchData;

.field public final synthetic g:Lcom/onyx/android/sdk/base/data/TouchPoint;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$f;->f:Lcom/onyx/android/sdk/geometry/data/TouchData;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$f;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$f;->f:Lcom/onyx/android/sdk/geometry/data/TouchData;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$f;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->access$tryPressErase(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$f;->a(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
