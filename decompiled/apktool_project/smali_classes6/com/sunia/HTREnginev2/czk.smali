.class public Lcom/sunia/HTREnginev2/czk;
.super Lcom/sunia/HTREnginev2/qqf;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/a;I)V
    .locals 0
    .param p1    # Lcom/google/android/material/textfield/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/qqf;-><init>(Lcom/google/android/material/textfield/a;)V

    sget p1, Lcom/google/android/material/R$drawable;->design_password_eye:I

    iput p1, p0, Lcom/sunia/HTREnginev2/czk;->e:I

    new-instance p1, Lcom/sunia/HTREnginev2/bzk;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/bzk;-><init>(Lcom/sunia/HTREnginev2/czk;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/czk;->g:Landroid/view/View$OnClickListener;

    if-eqz p2, :cond_0

    iput p2, p0, Lcom/sunia/HTREnginev2/czk;->e:I

    :cond_0
    return-void
.end method

.method public static synthetic v(Lcom/sunia/HTREnginev2/czk;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/czk;->y(Landroid/view/View;)V

    return-void
.end method

.method public static x(Landroid/widget/EditText;)Z
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0x90

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result p0

    const/16 v0, 0xe0

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic y(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/sunia/HTREnginev2/czk;->f:Landroid/widget/EditText;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/czk;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/czk;->f:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/czk;->f:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/czk;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/qqf;->r()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/qqf;->r()V

    return-void
.end method

.method public c()I
    .locals 0
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    sget p0, Lcom/google/android/material/R$string;->password_toggle_content_description:I

    return p0
.end method

.method public d()I
    .locals 0
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    iget p0, p0, Lcom/sunia/HTREnginev2/czk;->e:I

    return p0
.end method

.method public f()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/czk;->g:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public l()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public m()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/czk;->w()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public n(Landroid/widget/EditText;)V
    .locals 0
    .param p1    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sunia/HTREnginev2/czk;->f:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/qqf;->r()V

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/czk;->f:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/czk;->x(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/czk;->f:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/czk;->f:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    return-void
.end method

.method public final w()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/czk;->f:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
