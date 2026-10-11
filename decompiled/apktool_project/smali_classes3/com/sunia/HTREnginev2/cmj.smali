.class public final synthetic Lcom/sunia/HTREnginev2/cmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic e:Landroidx/core/view/MenuHostHelper;

.field public final synthetic f:Landroidx/lifecycle/Lifecycle$State;

.field public final synthetic g:Landroidx/core/view/MenuProvider;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/MenuHostHelper;Landroidx/lifecycle/Lifecycle$State;Landroidx/core/view/MenuProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cmj;->e:Landroidx/core/view/MenuHostHelper;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/cmj;->f:Landroidx/lifecycle/Lifecycle$State;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/cmj;->g:Landroidx/core/view/MenuProvider;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cmj;->e:Landroidx/core/view/MenuHostHelper;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/cmj;->f:Landroidx/lifecycle/Lifecycle$State;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cmj;->g:Landroidx/core/view/MenuProvider;

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/core/view/MenuHostHelper;->a(Landroidx/core/view/MenuHostHelper;Landroidx/lifecycle/Lifecycle$State;Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
