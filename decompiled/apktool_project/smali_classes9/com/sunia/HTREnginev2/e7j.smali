.class public final synthetic Lcom/sunia/HTREnginev2/e7j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e7j;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e7j;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->a(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)V

    return-void
.end method
