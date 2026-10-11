.class public Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/RTToolbar;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;
    }
.end annotation


# static fields
.field public static final v0:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public J:I

.field public O:I

.field public Q:Lcom/onegravity/colorpicker/ColorPickerListener;

.field public e:I

.field public f:Lcom/onegravity/rteditor/RTToolbarListener;

.field public g:Landroid/view/ViewGroup;

.field public h:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

.field public i:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

.field public j:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

.field public k:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

.field public final k0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f<",
            "Lcom/onegravity/rteditor/toolbar/spinner/FontSpinnerItem;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

.field public m:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

.field public n:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

.field public o:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

.field public p:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

.field public q:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

.field public final q0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f<",
            "Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

.field public s:Landroid/widget/Spinner;

.field public t:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter<",
            "Lcom/onegravity/rteditor/toolbar/spinner/FontSpinnerItem;",
            ">;"
        }
    .end annotation
.end field

.field public final t0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f<",
            "Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;",
            ">;"
        }
    .end annotation
.end field

.field public u:Landroid/widget/Spinner;

.field public final u0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f<",
            "Lcom/onegravity/rteditor/toolbar/spinner/BGColorSpinnerItem;",
            ">;"
        }
    .end annotation
.end field

.field public v:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter<",
            "Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;",
            ">;"
        }
    .end annotation
.end field

.field public w:Landroid/widget/Spinner;

.field public x:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter<",
            "+",
            "Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;",
            ">;"
        }
    .end annotation
.end field

.field public y:Landroid/widget/Spinner;

.field public z:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter<",
            "+",
            "Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->v0:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x1000000

    .line 2
    iput p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->J:I

    .line 3
    iput p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->O:I

    .line 4
    new-instance p1, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$b;

    invoke-direct {p1, p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$b;-><init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->k0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    .line 5
    new-instance p1, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$c;

    invoke-direct {p1, p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$c;-><init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->q0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    .line 6
    new-instance p1, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;

    invoke-direct {p1, p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;-><init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->t0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    .line 7
    new-instance p1, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$e;

    invoke-direct {p1, p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$e;-><init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->u0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    .line 8
    invoke-virtual {p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->l()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x1000000

    .line 10
    iput p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->J:I

    .line 11
    iput p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->O:I

    .line 12
    new-instance p1, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$b;

    invoke-direct {p1, p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$b;-><init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->k0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    .line 13
    new-instance p1, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$c;

    invoke-direct {p1, p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$c;-><init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->q0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    .line 14
    new-instance p1, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;

    invoke-direct {p1, p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;-><init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->t0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    .line 15
    new-instance p1, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$e;

    invoke-direct {p1, p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$e;-><init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->u0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    .line 16
    invoke-virtual {p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->l()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x1000000

    .line 18
    iput p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->J:I

    .line 19
    iput p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->O:I

    .line 20
    new-instance p1, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$b;

    invoke-direct {p1, p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$b;-><init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->k0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    .line 21
    new-instance p1, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$c;

    invoke-direct {p1, p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$c;-><init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->q0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    .line 22
    new-instance p1, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;

    invoke-direct {p1, p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;-><init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->t0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    .line 23
    new-instance p1, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$e;

    invoke-direct {p1, p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$e;-><init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->u0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    .line 24
    invoke-virtual {p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->l()V

    return-void
.end method

.method public static synthetic a(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)Lcom/onegravity/rteditor/RTToolbarListener;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->v:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    return-object p0
.end method

.method public static synthetic c(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)Lcom/onegravity/colorpicker/ColorPickerListener;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->Q:Lcom/onegravity/colorpicker/ColorPickerListener;

    return-object p0
.end method

.method public static synthetic d(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;Lcom/onegravity/colorpicker/ColorPickerListener;)Lcom/onegravity/colorpicker/ColorPickerListener;
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->Q:Lcom/onegravity/colorpicker/ColorPickerListener;

    return-object p1
.end method

.method public static synthetic e(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->J:I

    return p0
.end method

.method public static synthetic f(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;I)I
    .locals 0

    iput p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->J:I

    return p1
.end method

.method public static synthetic g(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->x:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    return-object p0
.end method

.method private getBGColorItems()Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems<",
            "Lcom/onegravity/rteditor/toolbar/spinner/BGColorSpinnerItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;

    invoke-direct {v0}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/onegravity/rteditor/R$string;->rte_toolbar_color_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/onegravity/rteditor/toolbar/spinner/BGColorSpinnerItem;

    iget v4, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->J:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/onegravity/rteditor/toolbar/spinner/BGColorSpinnerItem;-><init>(ILjava/lang/String;ZZ)V

    invoke-virtual {v0, v3}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;->add(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/onegravity/rteditor/R$array;->rte_toolbar_fontcolors_values:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_0

    aget-object v8, v3, v7

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    new-instance v9, Lcom/onegravity/rteditor/toolbar/spinner/BGColorSpinnerItem;

    invoke-direct {v9, v8, v2, v6, v6}, Lcom/onegravity/rteditor/toolbar/spinner/BGColorSpinnerItem;-><init>(ILjava/lang/String;ZZ)V

    invoke-virtual {v0, v9}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;->add(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    sget v2, Lcom/onegravity/rteditor/R$string;->rte_toolbar_color_custom:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/onegravity/rteditor/toolbar/spinner/BGColorSpinnerItem;

    iget p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->J:I

    invoke-direct {v2, p0, v1, v6, v5}, Lcom/onegravity/rteditor/toolbar/spinner/BGColorSpinnerItem;-><init>(ILjava/lang/String;ZZ)V

    invoke-virtual {v0, v2}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;->add(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;)V

    return-object v0
.end method

.method private getFontColorItems()Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems<",
            "Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;

    invoke-direct {v0}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/onegravity/rteditor/R$string;->rte_toolbar_color_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;

    iget v4, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->J:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;-><init>(ILjava/lang/String;ZZ)V

    invoke-virtual {v0, v3}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;->add(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/onegravity/rteditor/R$array;->rte_toolbar_fontcolors_values:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_0

    aget-object v8, v3, v7

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    new-instance v9, Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;

    invoke-direct {v9, v8, v2, v6, v6}, Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;-><init>(ILjava/lang/String;ZZ)V

    invoke-virtual {v0, v9}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;->add(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    sget v2, Lcom/onegravity/rteditor/R$string;->rte_toolbar_color_custom:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;

    iget p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->J:I

    invoke-direct {v2, p0, v1, v6, v5}, Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;-><init>(ILjava/lang/String;ZZ)V

    invoke-virtual {v0, v2}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;->add(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;)V

    return-object v0
.end method

.method private getFontItems()Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems<",
            "Lcom/onegravity/rteditor/toolbar/spinner/FontSpinnerItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/onegravity/rteditor/fonts/FontManager;->getFonts(Landroid/content/Context;)Ljava/util/SortedSet;

    move-result-object p0

    new-instance v0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;

    invoke-direct {v0}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;-><init>()V

    new-instance v1, Lcom/onegravity/rteditor/toolbar/spinner/FontSpinnerItem;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/onegravity/rteditor/toolbar/spinner/FontSpinnerItem;-><init>(Lcom/onegravity/rteditor/fonts/RTTypeface;)V

    invoke-virtual {v0, v1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;->add(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/fonts/RTTypeface;

    new-instance v2, Lcom/onegravity/rteditor/toolbar/spinner/FontSpinnerItem;

    invoke-direct {v2, v1}, Lcom/onegravity/rteditor/toolbar/spinner/FontSpinnerItem;-><init>(Lcom/onegravity/rteditor/fonts/RTTypeface;)V

    invoke-virtual {v0, v2}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;->add(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getTextSizeItems()Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems<",
            "Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;

    invoke-direct {v0}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance v1, Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;->add(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;)V

    sget v1, Lcom/onegravity/rteditor/R$array;->rte_toolbar_fontsizes_entries:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/onegravity/rteditor/R$array;->rte_toolbar_fontsizes_values:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    new-instance v4, Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;

    aget v5, p0, v3

    aget-object v6, v1, v3

    invoke-direct {v4, v5, v6, v2}, Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v4}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;->add(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic h(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->O:I

    return p0
.end method

.method public static synthetic i(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;I)I
    .locals 0

    iput p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->O:I

    return p1
.end method

.method public static synthetic j(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->z:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    return-object p0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->e:I

    return p0
.end method

.method public getToolbarContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final k(Landroid/widget/Spinner;IILcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;)Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;",
            ">(",
            "Landroid/widget/Spinner;",
            "II",
            "Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems<",
            "TT;>;",
            "Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f<",
            "TT;>;)",
            "Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    invoke-direct {v1, v0, p4, p2, p3}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;-><init>(Landroid/content/Context;Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;II)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p4}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;->getSelectedItem()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    new-instance p2, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$a;

    invoke-direct {p2, p0, v1, p5}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$a;-><init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;)V

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final l()V
    .locals 2

    sget-object v0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->v0:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iput v1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->e:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p1
.end method

.method public final n(ILandroid/widget/Spinner;Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/Spinner;",
            "Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter<",
            "+",
            "Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;",
            ">;)V"
        }
    .end annotation

    const p0, 0xffffff

    and-int/2addr p1, p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p3, v0}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->getItem(I)Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;

    invoke-virtual {v1}, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->getColor()I

    move-result v1

    and-int/2addr v1, p0

    if-ne p1, v1, :cond_0

    invoke-virtual {p3, v0}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->setSelectedItem(I)V

    invoke-virtual {p2, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_bold:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->h:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->BOLD:Lcom/onegravity/rteditor/effects/Effect;

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->h:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_italic:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->i:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->ITALIC:Lcom/onegravity/rteditor/effects/Effect;

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->i:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_underline:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->j:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->UNDERLINE:Lcom/onegravity/rteditor/effects/Effect;

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->j:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_strikethrough:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->k:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->STRIKETHROUGH:Lcom/onegravity/rteditor/effects/Effect;

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->k:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_superscript:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->l:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->SUPERSCRIPT:Lcom/onegravity/rteditor/effects/Effect;

    iget-object v1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->l:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {v1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->l:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p1, :cond_1b

    invoke-virtual {p1, v2}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->SUBSCRIPT:Lcom/onegravity/rteditor/effects/Effect;

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_subscript:I

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->SUBSCRIPT:Lcom/onegravity/rteditor/effects/Effect;

    iget-object v1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {v1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->l:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p1, :cond_1b

    invoke-virtual {p1, v2}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->SUPERSCRIPT:Lcom/onegravity/rteditor/effects/Effect;

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->l:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_align_left:I

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->n:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_6
    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->o:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_7
    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->p:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_8
    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    sget-object p1, Lcom/onegravity/rteditor/effects/Effects;->ALIGNMENT:Lcom/onegravity/rteditor/effects/AlignmentEffect;

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-interface {p0, p1, v0}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_align_center:I

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->n:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_a
    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->o:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_b
    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->p:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v2}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_c
    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    sget-object p1, Lcom/onegravity/rteditor/effects/Effects;->ALIGNMENT:Lcom/onegravity/rteditor/effects/AlignmentEffect;

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-interface {p0, p1, v0}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_align_right:I

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->n:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v2}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_e
    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->o:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v2}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_f
    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->p:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_10
    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    sget-object p1, Lcom/onegravity/rteditor/effects/Effects;->ALIGNMENT:Lcom/onegravity/rteditor/effects/AlignmentEffect;

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-interface {p0, p1, v0}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_bullet:I

    if-ne p1, v0, :cond_12

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->q:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->q:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    sget-object v1, Lcom/onegravity/rteditor/effects/Effects;->BULLET:Lcom/onegravity/rteditor/effects/BulletEffect;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->r:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p0, :cond_1b

    invoke-virtual {p0, v2}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    goto/16 :goto_0

    :cond_12
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_number:I

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->r:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->r:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    sget-object v1, Lcom/onegravity/rteditor/effects/Effects;->NUMBER:Lcom/onegravity/rteditor/effects/NumberEffect;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->q:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p0, :cond_1b

    invoke-virtual {p0, v2}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    goto :goto_0

    :cond_13
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_inc_indent:I

    if-ne p1, v0, :cond_14

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    sget-object p1, Lcom/onegravity/rteditor/effects/Effects;->INDENTATION:Lcom/onegravity/rteditor/effects/IndentationEffect;

    invoke-static {}, Lcom/onegravity/rteditor/utils/Helper;->getLeadingMarging()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    goto :goto_0

    :cond_14
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_dec_indent:I

    if-ne p1, v0, :cond_15

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    sget-object p1, Lcom/onegravity/rteditor/effects/Effects;->INDENTATION:Lcom/onegravity/rteditor/effects/IndentationEffect;

    invoke-static {}, Lcom/onegravity/rteditor/utils/Helper;->getLeadingMarging()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    goto :goto_0

    :cond_15
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_link:I

    if-ne p1, v0, :cond_16

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    invoke-interface {p0}, Lcom/onegravity/rteditor/RTToolbarListener;->onCreateLink()V

    goto :goto_0

    :cond_16
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_image:I

    if-ne p1, v0, :cond_17

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    invoke-interface {p0}, Lcom/onegravity/rteditor/RTToolbarListener;->onPickImage()V

    goto :goto_0

    :cond_17
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_image_capture:I

    if-ne p1, v0, :cond_18

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    invoke-interface {p0}, Lcom/onegravity/rteditor/RTToolbarListener;->onCaptureImage()V

    goto :goto_0

    :cond_18
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_clear:I

    if-ne p1, v0, :cond_19

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    invoke-interface {p0}, Lcom/onegravity/rteditor/RTToolbarListener;->onClearFormatting()V

    goto :goto_0

    :cond_19
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_undo:I

    if-ne p1, v0, :cond_1a

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    invoke-interface {p0}, Lcom/onegravity/rteditor/RTToolbarListener;->onUndo()V

    goto :goto_0

    :cond_1a
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_redo:I

    if-ne p1, v0, :cond_1b

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    invoke-interface {p0}, Lcom/onegravity/rteditor/RTToolbarListener;->onRedo()V

    :cond_1b
    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 7

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_bold:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->h:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_italic:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->i:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_underline:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->j:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_strikethrough:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->k:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_superscript:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->l:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_subscript:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_align_left:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->n:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_align_center:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->o:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_align_right:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->p:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_bullet:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->q:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_number:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->r:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_inc_indent:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_dec_indent:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_link:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_image:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_undo:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_redo:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_clear:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.any"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_image_capture:I

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m(I)Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    goto :goto_0

    :cond_0
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_image_capture:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_font:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->s:Landroid/widget/Spinner;

    sget v3, Lcom/onegravity/rteditor/R$layout;->rte_toolbar_font_spinner:I

    sget v4, Lcom/onegravity/rteditor/R$layout;->rte_toolbar_spinner_item:I

    invoke-direct {p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->getFontItems()Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;

    move-result-object v5

    iget-object v6, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->k0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->k(Landroid/widget/Spinner;IILcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;)Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->t:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_fontsize:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->u:Landroid/widget/Spinner;

    sget v3, Lcom/onegravity/rteditor/R$layout;->rte_toolbar_fontsize_spinner:I

    sget v4, Lcom/onegravity/rteditor/R$layout;->rte_toolbar_spinner_item:I

    invoke-direct {p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->getTextSizeItems()Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;

    move-result-object v5

    iget-object v6, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->q0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    invoke-virtual/range {v1 .. v6}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->k(Landroid/widget/Spinner;IILcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;)Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->v:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_fontcolor:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->w:Landroid/widget/Spinner;

    sget v3, Lcom/onegravity/rteditor/R$layout;->rte_toolbar_fontcolor_spinner:I

    sget v4, Lcom/onegravity/rteditor/R$layout;->rte_toolbar_fontcolor_spinner_item:I

    invoke-direct {p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->getFontColorItems()Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;

    move-result-object v5

    iget-object v6, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->t0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    invoke-virtual/range {v1 .. v6}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->k(Landroid/widget/Spinner;IILcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;)Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->x:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    sget v0, Lcom/onegravity/rteditor/R$id;->toolbar_bgcolor:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->y:Landroid/widget/Spinner;

    sget v3, Lcom/onegravity/rteditor/R$layout;->rte_toolbar_bgcolor_spinner:I

    sget v4, Lcom/onegravity/rteditor/R$layout;->rte_toolbar_bgcolor_spinner_item:I

    invoke-direct {p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->getBGColorItems()Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;

    move-result-object v5

    iget-object v6, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->u0:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    invoke-virtual/range {v1 .. v6}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->k(Landroid/widget/Spinner;IILcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;)Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->z:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    return-void
.end method

.method public removeBGColor()V
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->y:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->z:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->setSelectedItem(I)V

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->y:Landroid/widget/Spinner;

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public removeFontColor()V
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->w:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->x:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->setSelectedItem(I)V

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->w:Landroid/widget/Spinner;

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public removeToolbarListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 4

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->n:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne p1, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->o:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz v0, :cond_3

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p1, v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_3
    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->p:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p0, :cond_5

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_5
    return-void
.end method

.method public setBGColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->y:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->z:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    invoke-virtual {p0, p1, v0, v1}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->n(ILandroid/widget/Spinner;Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;)V

    :cond_0
    return-void
.end method

.method public setBold(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->h:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setBullet(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->q:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setFont(Lcom/onegravity/rteditor/fonts/RTTypeface;)V
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->s:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->t:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    invoke-virtual {v1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->t:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    invoke-virtual {v1, v0}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->getItem(I)Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/toolbar/spinner/FontSpinnerItem;

    invoke-virtual {v1}, Lcom/onegravity/rteditor/toolbar/spinner/FontSpinnerItem;->getTypeface()Lcom/onegravity/rteditor/fonts/RTTypeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onegravity/rteditor/fonts/RTTypeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->t:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    invoke-virtual {p1, v0}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->setSelectedItem(I)V

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->s:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->t:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    invoke-virtual {p1, v0}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->setSelectedItem(I)V

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->s:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setFontColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->w:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->x:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    invoke-virtual {p0, p1, v0, v1}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->n(ILandroid/widget/Spinner;Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;)V

    :cond_0
    return-void
.end method

.method public setFontSize(I)V
    .locals 3

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->u:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->v:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->updateSpinnerTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->v:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    invoke-virtual {p1, v0}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->setSelectedItem(I)V

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->u:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/onegravity/rteditor/utils/Helper;->convertSpToPx(I)I

    move-result p1

    iget-object v1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->v:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->updateSpinnerTitle(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->v:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    invoke-virtual {v1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->v:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    invoke-virtual {v1, v0}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->getItem(I)Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;

    invoke-virtual {v1}, Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;->getFontSize()I

    move-result v1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->v:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    invoke-virtual {p1, v0}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->setSelectedItem(I)V

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->u:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setItalic(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->i:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setNumber(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->r:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setStrikethrough(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->k:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setSubscript(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->m:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setSuperscript(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->l:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setToolbarContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->g:Landroid/view/ViewGroup;

    return-void
.end method

.method public setToolbarListener(Lcom/onegravity/rteditor/RTToolbarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f:Lcom/onegravity/rteditor/RTToolbarListener;

    return-void
.end method

.method public setUnderline(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->j:Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
