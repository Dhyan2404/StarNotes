.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;->erasing(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

.field public final synthetic g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$b;->f:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$b;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$b;->f:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$b;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-static {v0, v1, p0, v2, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;->access$overlayErasing(Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$b;->a(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
