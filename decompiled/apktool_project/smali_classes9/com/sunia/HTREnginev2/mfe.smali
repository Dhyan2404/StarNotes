.class public final synthetic Lcom/sunia/HTREnginev2/mfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;


# direct methods
.method public synthetic constructor <init>(Landroid/view/WindowManager$LayoutParams;Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mfe;->e:Landroid/view/WindowManager$LayoutParams;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/mfe;->f:Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mfe;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mfe;->f:Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->b(Landroid/view/WindowManager$LayoutParams;Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;Landroid/animation/ValueAnimator;)V

    return-void
.end method
