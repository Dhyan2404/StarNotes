.class public Lcom/sunia/HTREnginev2/k4o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/ViewOverlayImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/k4o$a;
    }
.end annotation


# instance fields
.field public a:Lcom/sunia/HTREnginev2/k4o$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sunia/HTREnginev2/k4o$a;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/sunia/HTREnginev2/k4o$a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/sunia/HTREnginev2/k4o;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/k4o;->a:Lcom/sunia/HTREnginev2/k4o$a;

    return-void
.end method

.method public static c(Landroid/view/View;)Lcom/sunia/HTREnginev2/k4o;
    .locals 5

    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/sunia/HTREnginev2/k4o$a;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/sunia/HTREnginev2/k4o$a;

    iget-object p0, v3, Lcom/sunia/HTREnginev2/k4o$a;->h:Lcom/sunia/HTREnginev2/k4o;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sunia/HTREnginev2/i3o;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lcom/sunia/HTREnginev2/i3o;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k4o;->a:Lcom/sunia/HTREnginev2/k4o$a;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/k4o$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k4o;->a:Lcom/sunia/HTREnginev2/k4o$a;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/k4o$a;->g(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
