.class public final synthetic Lcom/sunia/HTREnginev2/h7j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic e:Landroid/view/ScaleGestureDetector;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ScaleGestureDetector;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/h7j;->e:Landroid/view/ScaleGestureDetector;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/h7j;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/h7j;->e:Landroid/view/ScaleGestureDetector;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h7j;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-static {v0, p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->c(Landroid/view/ScaleGestureDetector;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
