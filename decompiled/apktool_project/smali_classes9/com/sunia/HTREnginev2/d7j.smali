.class public final synthetic Lcom/sunia/HTREnginev2/d7j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d7j;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d7j;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->b(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;)V

    return-void
.end method
