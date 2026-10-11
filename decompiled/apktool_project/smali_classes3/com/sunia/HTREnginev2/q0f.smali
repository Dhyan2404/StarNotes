.class public final synthetic Lcom/sunia/HTREnginev2/q0f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/fragment/app/DefaultSpecialEffectsController;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Landroidx/fragment/app/DefaultSpecialEffectsController$a;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q0f;->e:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/q0f;->f:Landroid/view/View;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/q0f;->g:Landroidx/fragment/app/DefaultSpecialEffectsController$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q0f;->e:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/q0f;->f:Landroid/view/View;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q0f;->g:Landroidx/fragment/app/DefaultSpecialEffectsController$a;

    invoke-static {v0, v1, p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->a(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$a;)V

    return-void
.end method
