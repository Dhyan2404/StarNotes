.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$h;
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


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;->getSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->access$setSelection$p(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;->getContentPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->access$setContentPath$p(Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction$h;->a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;)V

    return-void
.end method
