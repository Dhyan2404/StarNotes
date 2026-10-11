.class public Landroidx/databinding/ViewDataBinding$k;
.super Landroidx/databinding/ObservableMap$OnMapChangedCallback;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/pek;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/ObservableMap$OnMapChangedCallback;",
        "Lcom/sunia/HTREnginev2/pek<",
        "Landroidx/databinding/ObservableMap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/r5o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/HTREnginev2/r5o<",
            "Landroidx/databinding/ObservableMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/databinding/ObservableMap$OnMapChangedCallback;-><init>()V

    new-instance v0, Lcom/sunia/HTREnginev2/r5o;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/sunia/HTREnginev2/r5o;-><init>(Landroidx/databinding/ViewDataBinding;ILcom/sunia/HTREnginev2/pek;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$k;->a:Lcom/sunia/HTREnginev2/r5o;

    return-void
.end method


# virtual methods
.method public a(Landroidx/databinding/ObservableMap;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/databinding/ObservableMap;->addOnMapChangedCallback(Landroidx/databinding/ObservableMap$OnMapChangedCallback;)V

    return-void
.end method

.method public bridge synthetic addListener(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/databinding/ObservableMap;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$k;->a(Landroidx/databinding/ObservableMap;)V

    return-void
.end method

.method public b(Landroidx/databinding/ObservableMap;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/databinding/ObservableMap;->removeOnMapChangedCallback(Landroidx/databinding/ObservableMap$OnMapChangedCallback;)V

    return-void
.end method

.method public getListener()Lcom/sunia/HTREnginev2/r5o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sunia/HTREnginev2/r5o<",
            "Landroidx/databinding/ObservableMap;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding$k;->a:Lcom/sunia/HTREnginev2/r5o;

    return-object p0
.end method

.method public onMapChanged(Landroidx/databinding/ObservableMap;Ljava/lang/Object;)V
    .locals 1

    iget-object p2, p0, Landroidx/databinding/ViewDataBinding$k;->a:Lcom/sunia/HTREnginev2/r5o;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/r5o;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$k;->a:Lcom/sunia/HTREnginev2/r5o;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/r5o;->b()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding$k;->a:Lcom/sunia/HTREnginev2/r5o;

    iget p0, p0, Lcom/sunia/HTREnginev2/r5o;->b:I

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Landroidx/databinding/ViewDataBinding;->handleFieldChange(ILjava/lang/Object;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic removeListener(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/databinding/ObservableMap;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$k;->b(Landroidx/databinding/ObservableMap;)V

    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    return-void
.end method
