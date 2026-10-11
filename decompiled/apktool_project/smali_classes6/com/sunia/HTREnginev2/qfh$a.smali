.class public Lcom/sunia/HTREnginev2/qfh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/qfh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final f:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final synthetic g:Lcom/sunia/HTREnginev2/qfh;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/qfh;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qfh$a;->g:Lcom/sunia/HTREnginev2/qfh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qfh$a;->e:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/qfh$a;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qfh$a;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qfh$a;->g:Lcom/sunia/HTREnginev2/qfh;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/qfh;->i:Landroid/widget/OverScroller;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qfh$a;->g:Lcom/sunia/HTREnginev2/qfh;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qfh$a;->e:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/qfh$a;->f:Landroid/view/View;

    iget-object v3, v0, Lcom/sunia/HTREnginev2/qfh;->i:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/qfh;->i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qfh$a;->f:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/qfh$a;->g:Lcom/sunia/HTREnginev2/qfh;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qfh$a;->e:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qfh$a;->f:Landroid/view/View;

    invoke-virtual {v0, v1, p0}, Lcom/sunia/HTREnginev2/qfh;->g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
