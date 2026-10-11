.class public Lcom/sunia/HTREnginev2/i3o;
.super Lcom/sunia/HTREnginev2/k4o;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/k3o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/k4o;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static d(Landroid/view/ViewGroup;)Lcom/sunia/HTREnginev2/i3o;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/k4o;->c(Landroid/view/View;)Lcom/sunia/HTREnginev2/k4o;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/i3o;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k4o;->a:Lcom/sunia/HTREnginev2/k4o$a;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/k4o$a;->b(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k4o;->a:Lcom/sunia/HTREnginev2/k4o$a;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/k4o$a;->h(Landroid/view/View;)V

    return-void
.end method
