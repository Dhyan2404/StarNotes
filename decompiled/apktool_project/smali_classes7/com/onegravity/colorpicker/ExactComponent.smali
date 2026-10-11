.class public Lcom/onegravity/colorpicker/ExactComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/onegravity/colorpicker/OnColorChangedListener;

.field public b:Landroid/widget/EditText;

.field public c:Landroid/widget/EditText;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/EditText;

.field public f:Lcom/onegravity/colorpicker/ColorWheelView;

.field public final g:I

.field public final h:Z

.field public i:I

.field public j:Z

.field public final k:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(IIZLcom/onegravity/colorpicker/OnColorChangedListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onegravity/colorpicker/ExactComponent$a;

    invoke-direct {v0, p0}, Lcom/onegravity/colorpicker/ExactComponent$a;-><init>(Lcom/onegravity/colorpicker/ExactComponent;)V

    iput-object v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->k:Landroid/text/TextWatcher;

    iput p1, p0, Lcom/onegravity/colorpicker/ExactComponent;->g:I

    iput p2, p0, Lcom/onegravity/colorpicker/ExactComponent;->i:I

    iput-boolean p3, p0, Lcom/onegravity/colorpicker/ExactComponent;->h:Z

    iput-object p4, p0, Lcom/onegravity/colorpicker/ExactComponent;->a:Lcom/onegravity/colorpicker/OnColorChangedListener;

    return-void
.end method

.method public static synthetic a(Lcom/onegravity/colorpicker/ExactComponent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/colorpicker/ExactComponent;->j:Z

    return p0
.end method

.method public static synthetic b(Lcom/onegravity/colorpicker/ExactComponent;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ExactComponent;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic c(Lcom/onegravity/colorpicker/ExactComponent;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ExactComponent;->c:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic d(Lcom/onegravity/colorpicker/ExactComponent;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ExactComponent;->d:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic e(Lcom/onegravity/colorpicker/ExactComponent;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ExactComponent;->e:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic f(Lcom/onegravity/colorpicker/ExactComponent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/colorpicker/ExactComponent;->h:Z

    return p0
.end method

.method public static synthetic g(Lcom/onegravity/colorpicker/ExactComponent;)Lcom/onegravity/colorpicker/ColorWheelView;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ExactComponent;->f:Lcom/onegravity/colorpicker/ColorWheelView;

    return-object p0
.end method

.method public static synthetic h(Lcom/onegravity/colorpicker/ExactComponent;)Lcom/onegravity/colorpicker/OnColorChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ExactComponent;->a:Lcom/onegravity/colorpicker/OnColorChangedListener;

    return-object p0
.end method


# virtual methods
.method public i(Landroid/content/Context;I)V
    .locals 1

    iput p2, p0, Lcom/onegravity/colorpicker/ExactComponent;->i:I

    invoke-virtual {p0, p2}, Lcom/onegravity/colorpicker/ExactComponent;->l(I)V

    iget-object p2, p0, Lcom/onegravity/colorpicker/ExactComponent;->f:Lcom/onegravity/colorpicker/ColorWheelView;

    iget v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->g:I

    invoke-virtual {p2, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->setOldCenterColor(I)V

    iget-object p2, p0, Lcom/onegravity/colorpicker/ExactComponent;->f:Lcom/onegravity/colorpicker/ColorWheelView;

    iget v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->i:I

    invoke-virtual {p2, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/onegravity/colorpicker/ExactComponent;->c:Landroid/widget/EditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public j(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/onegravity/colorpicker/R$layout;->dialog_color_exact:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/onegravity/colorpicker/R$id;->exactA:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->b:Landroid/widget/EditText;

    sget v0, Lcom/onegravity/colorpicker/R$id;->exactR:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->c:Landroid/widget/EditText;

    sget v0, Lcom/onegravity/colorpicker/R$id;->exactG:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->d:Landroid/widget/EditText;

    sget v0, Lcom/onegravity/colorpicker/R$id;->exactB:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->e:Landroid/widget/EditText;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/onegravity/colorpicker/ExactComponent;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/onegravity/colorpicker/ExactComponent;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/onegravity/colorpicker/ExactComponent;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/onegravity/colorpicker/ExactComponent;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->b:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/onegravity/colorpicker/ExactComponent;->h:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->g:I

    invoke-virtual {p0, v0}, Lcom/onegravity/colorpicker/ExactComponent;->l(I)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/onegravity/colorpicker/ExactComponent;->k:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/onegravity/colorpicker/ExactComponent;->k:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/onegravity/colorpicker/ExactComponent;->k:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/onegravity/colorpicker/ExactComponent;->k:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget v0, Lcom/onegravity/colorpicker/R$id;->picker_exact:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/onegravity/colorpicker/ColorWheelView;

    iput-object v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->f:Lcom/onegravity/colorpicker/ColorWheelView;

    iget v1, p0, Lcom/onegravity/colorpicker/ExactComponent;->g:I

    invoke-virtual {v0, v1}, Lcom/onegravity/colorpicker/ColorWheelView;->setOldCenterColor(I)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->f:Lcom/onegravity/colorpicker/ColorWheelView;

    iget p0, p0, Lcom/onegravity/colorpicker/ExactComponent;->i:I

    invoke-virtual {v0, p0}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    return-object p1
.end method

.method public k(Landroid/content/Context;)V
    .locals 1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/onegravity/colorpicker/ExactComponent;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public final l(I)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->j:Z

    invoke-static {p1}, Lcom/onegravity/colorpicker/Util;->convertToARGB(I)[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/onegravity/colorpicker/ExactComponent;->b:Landroid/widget/EditText;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/onegravity/colorpicker/ExactComponent;->c:Landroid/widget/EditText;

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->d:Landroid/widget/EditText;

    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ExactComponent;->e:Landroid/widget/EditText;

    const/4 v1, 0x3

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/onegravity/colorpicker/ExactComponent;->j:Z

    return-void
.end method
