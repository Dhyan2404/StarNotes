.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->t(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$f;->f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->access$getDraggingCursorIndex$p(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$f;->f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->access$getStartPosition$p(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;->setStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$f;->f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->access$getEndPosition$p(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;->setEndPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$f;->a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;)V

    return-void
.end method
