.class public final Lcom/sunia/HTREnginev2/yao;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroid/graphics/drawable/Drawable$ConstantState;

.field public c:Landroid/content/res/ColorStateList;

.field public d:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/yao;)V
    .locals 1
    .param p1    # Lcom/sunia/HTREnginev2/yao;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/yao;->c:Landroid/content/res/ColorStateList;

    sget-object v0, Lcom/sunia/HTREnginev2/wao;->k:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/yao;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/sunia/HTREnginev2/yao;->a:I

    iput v0, p0, Lcom/sunia/HTREnginev2/yao;->a:I

    iget-object v0, p1, Lcom/sunia/HTREnginev2/yao;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/yao;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v0, p1, Lcom/sunia/HTREnginev2/yao;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/yao;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/yao;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yao;->d:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yao;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/yao;->a:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yao;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    or-int/2addr p0, v0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/yao;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/xao;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/xao;-><init>(Lcom/sunia/HTREnginev2/yao;Landroid/content/res/Resources;)V

    return-object v0
.end method
