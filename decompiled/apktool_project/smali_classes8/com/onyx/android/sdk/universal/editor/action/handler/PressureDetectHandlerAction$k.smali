.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->u(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
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

.field public final synthetic f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

.field public final synthetic g:Lcom/onyx/android/sdk/geometry/data/TouchData;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$k;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$k;->f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$k;->g:Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;->getSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$k;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$k;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$k;->f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$k;->g:Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-static {v1, v2, p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->access$startTextSelection(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$k;->a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
