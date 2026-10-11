.class public Lcom/onegravity/colorpreference/ColorDialog;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/colorpreference/ColorDialog$Builder;,
        Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "num_columns"

.field public static final h:Ljava/lang/String; = "color_shape"

.field public static final i:Ljava/lang/String; = "color_choices"

.field public static final j:Ljava/lang/String; = "selected_color"


# instance fields
.field public e:Landroid/widget/GridLayout;

.field public f:Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ILcom/onegravity/colorpreference/ColorShape;[II)Lcom/onegravity/colorpreference/ColorDialog;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "num_columns"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "color_shape"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "color_choices"

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p0, "selected_color"

    invoke-virtual {v0, p0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Lcom/onegravity/colorpreference/ColorDialog;

    invoke-direct {p0}, Lcom/onegravity/colorpreference/ColorDialog;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lcom/onegravity/colorpreference/ColorDialog;->f:Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onegravity/colorpreference/ColorDialog;->e:Landroid/widget/GridLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/onegravity/colorpreference/ColorDialog;->e:Landroid/widget/GridLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v3, p0, Lcom/onegravity/colorpreference/ColorDialog;->e:Landroid/widget/GridLayout;

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/onegravity/colorpreference/ColorDialog;->e:Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object p0, p0, Lcom/onegravity/colorpreference/ColorDialog;->e:Landroid/widget/GridLayout;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sget v3, Lcom/onegravity/colorpicker/R$dimen;->color_grid_extra_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Landroid/view/Window;->setLayout(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    instance-of v0, p1, Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpreference/ColorDialog;->setOnColorSelectedListener(Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/onegravity/colorpreference/ColorDialog;->a()V

    return-void
.end method

.method public setOnColorSelectedListener(Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/colorpreference/ColorDialog;->f:Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;

    return-void
.end method
