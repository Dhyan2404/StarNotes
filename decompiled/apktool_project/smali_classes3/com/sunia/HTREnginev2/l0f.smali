.class public final synthetic Lcom/sunia/HTREnginev2/l0f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/fragment/app/FragmentTransitionImpl;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/l0f;->e:Landroidx/fragment/app/FragmentTransitionImpl;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/l0f;->f:Landroid/view/View;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/l0f;->g:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/l0f;->e:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/l0f;->f:Landroid/view/View;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l0f;->g:Landroid/graphics/Rect;

    invoke-static {v0, v1, p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->k(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
