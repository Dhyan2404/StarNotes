.class public final Lcom/onyx/android/sdk/theme/drawables/FilterableStateListDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/theme/drawables/FilterableStateListDrawable;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/theme/drawables/FilterableStateListDrawable;->f:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/drawables/FilterableStateListDrawable;->g:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/graphics/ColorFilter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/drawables/FilterableStateListDrawable;->g:Landroid/util/SparseArray;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2
    iget p1, p0, Lcom/onyx/android/sdk/theme/drawables/FilterableStateListDrawable;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/onyx/android/sdk/theme/drawables/FilterableStateListDrawable;->f:I

    return-void
.end method

.method public addState([ILandroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V
    .locals 1

    if-nez p3, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/theme/drawables/FilterableStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/theme/drawables/FilterableStateListDrawable;->f:I

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/theme/drawables/FilterableStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/drawables/FilterableStateListDrawable;->g:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    return-object p0
.end method

.method public selectDrawable(I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/onyx/android/sdk/theme/drawables/FilterableStateListDrawable;->e:I

    :goto_0
    iput p1, p0, Lcom/onyx/android/sdk/theme/drawables/FilterableStateListDrawable;->e:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/drawables/FilterableStateListDrawable;->a(I)Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/android/sdk/theme/drawables/FilterableStateListDrawable;->e:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    return v0
.end method
