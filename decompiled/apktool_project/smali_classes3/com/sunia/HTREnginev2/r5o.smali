.class public Lcom/sunia/HTREnginev2/r5o;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "Landroidx/databinding/ViewDataBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/pek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/HTREnginev2/pek<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:I

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILcom/sunia/HTREnginev2/pek;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Lcom/sunia/HTREnginev2/pek<",
            "TT;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput p2, p0, Lcom/sunia/HTREnginev2/r5o;->b:I

    iput-object p3, p0, Lcom/sunia/HTREnginev2/r5o;->a:Lcom/sunia/HTREnginev2/pek;

    return-void
.end method


# virtual methods
.method public a()Landroidx/databinding/ViewDataBinding;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/r5o;->e()Z

    :cond_0
    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r5o;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public c(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r5o;->a:Lcom/sunia/HTREnginev2/pek;

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/pek;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/r5o;->e()Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/r5o;->c:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r5o;->a:Lcom/sunia/HTREnginev2/pek;

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/pek;->addListener(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/r5o;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/r5o;->a:Lcom/sunia/HTREnginev2/pek;

    invoke-interface {v1, v0}, Lcom/sunia/HTREnginev2/pek;->removeListener(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sunia/HTREnginev2/r5o;->c:Ljava/lang/Object;

    return v0
.end method
