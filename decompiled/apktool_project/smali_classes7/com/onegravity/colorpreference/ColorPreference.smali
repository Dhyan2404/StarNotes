.class public Lcom/onegravity/colorpreference/ColorPreference;
.super Landroid/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;


# instance fields
.field public e:[I

.field public f:I

.field public final g:I

.field public final h:I

.field public i:I

.field public j:Lcom/onegravity/colorpreference/ColorShape;

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    new-array v0, p1, [I

    .line 2
    iput-object v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->e:[I

    .line 3
    iput p1, p0, Lcom/onegravity/colorpreference/ColorPreference;->f:I

    .line 4
    sget v0, Lcom/onegravity/colorpicker/R$layout;->pref_color_layout:I

    iput v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->g:I

    .line 5
    sget v0, Lcom/onegravity/colorpicker/R$layout;->pref_color_layout_large:I

    iput v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->h:I

    const/4 v0, 0x5

    .line 6
    iput v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->i:I

    .line 7
    sget-object v0, Lcom/onegravity/colorpreference/ColorShape;->CIRCLE:Lcom/onegravity/colorpreference/ColorShape;

    iput-object v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->j:Lcom/onegravity/colorpreference/ColorShape;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->k:Z

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/onegravity/colorpreference/ColorPreference;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    new-array v0, p1, [I

    .line 11
    iput-object v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->e:[I

    .line 12
    iput p1, p0, Lcom/onegravity/colorpreference/ColorPreference;->f:I

    .line 13
    sget v0, Lcom/onegravity/colorpicker/R$layout;->pref_color_layout:I

    iput v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->g:I

    .line 14
    sget v0, Lcom/onegravity/colorpicker/R$layout;->pref_color_layout_large:I

    iput v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->h:I

    const/4 v0, 0x5

    .line 15
    iput v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->i:I

    .line 16
    sget-object v0, Lcom/onegravity/colorpreference/ColorShape;->CIRCLE:Lcom/onegravity/colorpreference/ColorShape;

    iput-object v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->j:Lcom/onegravity/colorpreference/ColorShape;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->k:Z

    .line 18
    invoke-virtual {p0, p2, p1}, Lcom/onegravity/colorpreference/ColorPreference;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    new-array v0, p1, [I

    .line 20
    iput-object v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->e:[I

    .line 21
    iput p1, p0, Lcom/onegravity/colorpreference/ColorPreference;->f:I

    .line 22
    sget p1, Lcom/onegravity/colorpicker/R$layout;->pref_color_layout:I

    iput p1, p0, Lcom/onegravity/colorpreference/ColorPreference;->g:I

    .line 23
    sget p1, Lcom/onegravity/colorpicker/R$layout;->pref_color_layout_large:I

    iput p1, p0, Lcom/onegravity/colorpreference/ColorPreference;->h:I

    const/4 p1, 0x5

    .line 24
    iput p1, p0, Lcom/onegravity/colorpreference/ColorPreference;->i:I

    .line 25
    sget-object p1, Lcom/onegravity/colorpreference/ColorShape;->CIRCLE:Lcom/onegravity/colorpreference/ColorShape;

    iput-object p1, p0, Lcom/onegravity/colorpreference/ColorPreference;->j:Lcom/onegravity/colorpreference/ColorShape;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/onegravity/colorpreference/ColorPreference;->k:Z

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/onegravity/colorpreference/ColorPreference;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/onegravity/colorpicker/R$styleable;->ColorPreference:[I

    invoke-virtual {v0, p1, v1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/onegravity/colorpicker/R$styleable;->ColorPreference_numColumns:I

    iget v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->i:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/onegravity/colorpreference/ColorPreference;->i:I

    sget p2, Lcom/onegravity/colorpicker/R$styleable;->ColorPreference_colorShape:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-static {p2}, Lcom/onegravity/colorpreference/ColorShape;->getShape(I)Lcom/onegravity/colorpreference/ColorShape;

    move-result-object p2

    iput-object p2, p0, Lcom/onegravity/colorpreference/ColorPreference;->j:Lcom/onegravity/colorpreference/ColorShape;

    sget p2, Lcom/onegravity/colorpicker/R$styleable;->ColorPreference_viewSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-static {p2}, Lcom/onegravity/colorpreference/PreviewSize;->getSize(I)Lcom/onegravity/colorpreference/PreviewSize;

    move-result-object p2

    sget v1, Lcom/onegravity/colorpicker/R$styleable;->ColorPreference_showDialog:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->k:Z

    sget v0, Lcom/onegravity/colorpicker/R$styleable;->ColorPreference_colorChoices:I

    sget v1, Lcom/onegravity/colorpicker/R$array;->default_color_choice_values:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onegravity/colorpreference/a;->b(ILandroid/content/Context;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->e:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p1, Lcom/onegravity/colorpreference/PreviewSize;->NORMAL:Lcom/onegravity/colorpreference/PreviewSize;

    if-ne p2, p1, :cond_0

    iget p1, p0, Lcom/onegravity/colorpreference/ColorPreference;->g:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/onegravity/colorpreference/ColorPreference;->h:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "color_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/onegravity/colorpreference/ColorPreference;->f:I

    return p0
.end method

.method public onAttachedToActivity()V
    .locals 2

    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    iget-boolean v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onegravity/colorpreference/ColorPreference;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/onegravity/colorpreference/a;->a(Landroid/content/Context;Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    sget v0, Lcom/onegravity/colorpicker/R$id;->color_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/onegravity/colorpreference/ColorPreferenceView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/onegravity/colorpreference/ColorPreferenceView;

    iget p0, p0, Lcom/onegravity/colorpreference/ColorPreference;->f:I

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/onegravity/colorpreference/ColorPreferenceView;->setPreviewColor(IZ)V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 8

    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    iget-boolean v0, p0, Lcom/onegravity/colorpreference/ColorPreference;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onegravity/colorpreference/ColorPreference;->getFragmentTag()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/onegravity/colorpreference/ColorPreference;->i:I

    iget-object v5, p0, Lcom/onegravity/colorpreference/ColorPreference;->j:Lcom/onegravity/colorpreference/ColorShape;

    iget-object v6, p0, Lcom/onegravity/colorpreference/ColorPreference;->e:[I

    invoke-virtual {p0}, Lcom/onegravity/colorpreference/ColorPreference;->getValue()I

    move-result v7

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/onegravity/colorpreference/a;->c(Landroid/content/Context;Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;Ljava/lang/String;ILcom/onegravity/colorpreference/ColorShape;[II)V

    :cond_0
    return-void
.end method

.method public onColorSelected(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpreference/ColorPreference;->setValue(I)V

    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onegravity/colorpreference/ColorPreference;->setValue(I)V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/onegravity/colorpreference/ColorPreference;->f:I

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistInt(I)Z

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
