.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$d;->f:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$d;->f:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->display(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$d;->a(Lcom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest;)V

    return-void
.end method
