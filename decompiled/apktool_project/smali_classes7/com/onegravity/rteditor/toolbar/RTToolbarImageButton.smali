.class public Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "SourceFile"


# static fields
.field public static final i:[I


# instance fields
.field public h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/onegravity/rteditor/R$attr;->state_checked:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->i:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/onegravity/rteditor/R$attr;->rte_ToolbarButton:I

    invoke-direct {p0, p1, p2, v0}, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lcom/onegravity/rteditor/R$styleable;->ToolbarButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lcom/onegravity/rteditor/R$styleable;->ToolbarButton_checked:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->h:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->h:Z

    return p0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    sget-object v0, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->i:[I

    array-length v1, v0

    add-int/2addr p1, v1

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-boolean p0, p0, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->h:Z

    if-eqz p0, :cond_0

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->h:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/onegravity/rteditor/toolbar/RTToolbarImageButton;->h:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    return-void
.end method
