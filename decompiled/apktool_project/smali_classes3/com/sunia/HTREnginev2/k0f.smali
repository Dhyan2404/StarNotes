.class public final synthetic Lcom/sunia/HTREnginev2/k0f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field public final synthetic f:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field public final synthetic g:Z

.field public final synthetic h:Landroidx/collection/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k0f;->e:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/k0f;->f:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iput-boolean p3, p0, Lcom/sunia/HTREnginev2/k0f;->g:Z

    iput-object p4, p0, Lcom/sunia/HTREnginev2/k0f;->h:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k0f;->e:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/k0f;->f:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/k0f;->g:Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0f;->h:Landroidx/collection/ArrayMap;

    invoke-static {v0, v1, v2, p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->j(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/ArrayMap;)V

    return-void
.end method
