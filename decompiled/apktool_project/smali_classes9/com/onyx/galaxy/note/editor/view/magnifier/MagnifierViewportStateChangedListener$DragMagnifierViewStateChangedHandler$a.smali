.class public final Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->p()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$getMagnifierViewportEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v0, v4, v2, v3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->i(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$getMagnifierViewEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p1, p0, v1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->c(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$setScrolling$p(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$getMagnifierViewportEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getOffsetX()F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getOffsetY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->d(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;FF)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$getMagnifierViewEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getOffsetX()F

    move-result v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$getMagnifierViewportRatio(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getOffsetY()F

    move-result p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$getMagnifierViewportRatio(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)F

    move-result p0

    mul-float/2addr p1, p0

    invoke-static {v0, v1, v2, p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->d(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;FF)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a;->a(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V

    return-void
.end method
