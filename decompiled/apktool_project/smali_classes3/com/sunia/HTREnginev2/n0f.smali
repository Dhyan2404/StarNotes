.class public final synthetic Lcom/sunia/HTREnginev2/n0f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/fragment/app/DefaultSpecialEffectsController$c;

.field public final synthetic f:Landroidx/fragment/app/SpecialEffectsController$Operation;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController$c;Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/n0f;->e:Landroidx/fragment/app/DefaultSpecialEffectsController$c;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/n0f;->f:Landroidx/fragment/app/SpecialEffectsController$Operation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/n0f;->e:Landroidx/fragment/app/DefaultSpecialEffectsController$c;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/n0f;->f:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-static {v0, p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->i(Landroidx/fragment/app/DefaultSpecialEffectsController$c;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    return-void
.end method
