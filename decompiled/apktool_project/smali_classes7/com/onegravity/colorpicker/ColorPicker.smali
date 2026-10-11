.class public Lcom/onegravity/colorpicker/ColorPicker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/colorpicker/OnColorChangedListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static final o:Ljava/lang/String; = "wheel"

.field public static final p:Ljava/lang/String; = "exact"

.field public static q:I


# instance fields
.field public final e:I

.field public final f:Landroid/content/Context;

.field public final g:I

.field public h:I

.field public final i:Z

.field public j:Landroid/app/Dialog;

.field public final k:Lcom/onegravity/colorpicker/ColorPickerListener;

.field public l:Lcom/onegravity/colorpicker/ColorWheelComponent;

.field public m:Lcom/onegravity/colorpicker/ExactComponent;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLcom/onegravity/colorpicker/ColorPickerListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/onegravity/colorpicker/ColorPicker;->q:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/onegravity/colorpicker/ColorPicker;->q:I

    iput v0, p0, Lcom/onegravity/colorpicker/ColorPicker;->e:I

    iput-object p1, p0, Lcom/onegravity/colorpicker/ColorPicker;->f:Landroid/content/Context;

    iput p2, p0, Lcom/onegravity/colorpicker/ColorPicker;->g:I

    iput p2, p0, Lcom/onegravity/colorpicker/ColorPicker;->h:I

    iput-boolean p3, p0, Lcom/onegravity/colorpicker/ColorPicker;->i:Z

    iput-object p4, p0, Lcom/onegravity/colorpicker/ColorPicker;->k:Lcom/onegravity/colorpicker/ColorPickerListener;

    return-void
.end method

.method public static synthetic a(Lcom/onegravity/colorpicker/ColorPicker;)I
    .locals 0

    iget p0, p0, Lcom/onegravity/colorpicker/ColorPicker;->g:I

    return p0
.end method

.method public static synthetic b(Lcom/onegravity/colorpicker/ColorPicker;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/ColorPicker;->j(I)V

    return-void
.end method

.method public static synthetic c(Lcom/onegravity/colorpicker/ColorPicker;)I
    .locals 0

    iget p0, p0, Lcom/onegravity/colorpicker/ColorPicker;->h:I

    return p0
.end method

.method public static synthetic d(Lcom/onegravity/colorpicker/ColorPicker;)Lcom/onegravity/colorpicker/ColorWheelComponent;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorPicker;->l:Lcom/onegravity/colorpicker/ColorWheelComponent;

    return-object p0
.end method

.method public static synthetic e(Lcom/onegravity/colorpicker/ColorPicker;Lcom/onegravity/colorpicker/ColorWheelComponent;)Lcom/onegravity/colorpicker/ColorWheelComponent;
    .locals 0

    iput-object p1, p0, Lcom/onegravity/colorpicker/ColorPicker;->l:Lcom/onegravity/colorpicker/ColorWheelComponent;

    return-object p1
.end method

.method public static synthetic f(Lcom/onegravity/colorpicker/ColorPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/colorpicker/ColorPicker;->i:Z

    return p0
.end method

.method public static synthetic g(Lcom/onegravity/colorpicker/ColorPicker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorPicker;->f:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic h(Lcom/onegravity/colorpicker/ColorPicker;)Lcom/onegravity/colorpicker/ExactComponent;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorPicker;->m:Lcom/onegravity/colorpicker/ExactComponent;

    return-object p0
.end method

.method public static synthetic i(Lcom/onegravity/colorpicker/ColorPicker;Lcom/onegravity/colorpicker/ExactComponent;)Lcom/onegravity/colorpicker/ExactComponent;
    .locals 0

    iput-object p1, p0, Lcom/onegravity/colorpicker/ColorPicker;->m:Lcom/onegravity/colorpicker/ExactComponent;

    return-object p1
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorPicker;->j:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getColor()I
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorPicker;->l:Lcom/onegravity/colorpicker/ColorWheelComponent;

    invoke-virtual {p0}, Lcom/onegravity/colorpicker/ColorWheelComponent;->d()I

    move-result p0

    return p0
.end method

.method public final j(I)V
    .locals 1

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorPicker;->k:Lcom/onegravity/colorpicker/ColorPickerListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/onegravity/colorpicker/OnColorChangedListener;->onColorChanged(I)V

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorPicker;->k:Lcom/onegravity/colorpicker/ColorPickerListener;

    invoke-interface {p0}, Lcom/onegravity/colorpicker/ColorPickerListener;->onDialogClosing()V

    :cond_0
    return-void
.end method

.method public final k(Landroid/view/View;)V
    .locals 5

    const v0, 0x1020012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    invoke-virtual {p1}, Landroid/widget/TabHost;->clearAllTabs()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    new-instance v0, Lcom/onegravity/colorpicker/ColorPicker$d;

    invoke-direct {v0, p0}, Lcom/onegravity/colorpicker/ColorPicker$d;-><init>(Lcom/onegravity/colorpicker/ColorPicker;)V

    const-string v1, "wheel"

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    iget-object v3, p0, Lcom/onegravity/colorpicker/ColorPicker;->f:Landroid/content/Context;

    sget v4, Lcom/onegravity/colorpicker/R$string;->color_picker_wheel:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const-string v2, "exact"

    invoke-virtual {p1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    iget-object v3, p0, Lcom/onegravity/colorpicker/ColorPicker;->f:Landroid/content/Context;

    sget v4, Lcom/onegravity/colorpicker/R$string;->color_picker_exact:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual {p1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorPicker;->n:Ljava/lang/String;

    if-eqz p0, :cond_0

    move-object v1, p0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 0

    iput p1, p0, Lcom/onegravity/colorpicker/ColorPicker;->h:I

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorPicker;->k:Lcom/onegravity/colorpicker/ColorPickerListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onegravity/colorpicker/OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/onegravity/colorpicker/ColorPicker;->n:Ljava/lang/String;

    const-string v0, "wheel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorPicker;->l:Lcom/onegravity/colorpicker/ColorWheelComponent;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorPicker;->m:Lcom/onegravity/colorpicker/ExactComponent;

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorPicker;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ExactComponent;->k(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorPicker;->l:Lcom/onegravity/colorpicker/ColorWheelComponent;

    iget p0, p0, Lcom/onegravity/colorpicker/ColorPicker;->h:I

    invoke-virtual {p1, p0}, Lcom/onegravity/colorpicker/ColorWheelComponent;->a(I)V

    goto :goto_0

    :cond_0
    const-string v0, "exact"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorPicker;->m:Lcom/onegravity/colorpicker/ExactComponent;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorPicker;->l:Lcom/onegravity/colorpicker/ColorWheelComponent;

    invoke-virtual {p1}, Lcom/onegravity/colorpicker/ColorWheelComponent;->c()V

    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorPicker;->m:Lcom/onegravity/colorpicker/ExactComponent;

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorPicker;->f:Landroid/content/Context;

    iget p0, p0, Lcom/onegravity/colorpicker/ColorPicker;->h:I

    invoke-virtual {p1, v0, p0}, Lcom/onegravity/colorpicker/ExactComponent;->i(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public show()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorPicker;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/onegravity/colorpicker/R$layout;->dialog_color_picker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onegravity/colorpicker/ColorPicker;->k(Landroid/view/View;)V

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/onegravity/colorpicker/ColorPicker;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/onegravity/colorpicker/ColorPicker$c;

    invoke-direct {v1, p0}, Lcom/onegravity/colorpicker/ColorPicker$c;-><init>(Lcom/onegravity/colorpicker/ColorPicker;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/onegravity/colorpicker/ColorPicker$b;

    invoke-direct {v1, p0}, Lcom/onegravity/colorpicker/ColorPicker$b;-><init>(Lcom/onegravity/colorpicker/ColorPicker;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/onegravity/colorpicker/ColorPicker$a;

    invoke-direct {v1, p0}, Lcom/onegravity/colorpicker/ColorPicker$a;-><init>(Lcom/onegravity/colorpicker/ColorPicker;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorPicker;->j:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorPicker;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorPicker;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget p0, p0, Lcom/onegravity/colorpicker/ColorPicker;->e:I

    return p0
.end method
