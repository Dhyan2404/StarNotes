.class public final synthetic Lcom/sunia/HTREnginev2/j0f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field public final synthetic g:Landroidx/fragment/app/DefaultSpecialEffectsController;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/DefaultSpecialEffectsController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j0f;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/j0f;->f:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/j0f;->g:Landroidx/fragment/app/DefaultSpecialEffectsController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/j0f;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/j0f;->f:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j0f;->g:Landroidx/fragment/app/DefaultSpecialEffectsController;

    invoke-static {v0, v1, p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->l(Ljava/util/List;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/DefaultSpecialEffectsController;)V

    return-void
.end method
