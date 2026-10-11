.class public Landroidx/transition/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroidx/transition/b;


# direct methods
.method public constructor <init>(Landroidx/transition/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/b$a;->e:Landroidx/transition/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Landroidx/transition/b$a;->e:Landroidx/transition/b;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    iget-object v0, p0, Landroidx/transition/b$a;->e:Landroidx/transition/b;

    iget-object v1, v0, Landroidx/transition/b;->e:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/transition/b;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/transition/b$a;->e:Landroidx/transition/b;

    iget-object v0, v0, Landroidx/transition/b;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    iget-object p0, p0, Landroidx/transition/b$a;->e:Landroidx/transition/b;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/transition/b;->e:Landroid/view/ViewGroup;

    iput-object v0, p0, Landroidx/transition/b;->f:Landroid/view/View;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
