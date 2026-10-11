.class public Lcom/onegravity/colorpreference/ColorPickerPreference;
.super Lcom/onegravity/colorpreference/ColorPreferenceCompat;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/colorpicker/ColorPickerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onegravity/colorpreference/ColorPreferenceCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/onegravity/colorpreference/ColorPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/onegravity/colorpreference/ColorPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    new-instance v0, Lcom/onegravity/colorpicker/ColorPicker;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onegravity/colorpreference/ColorPreferenceCompat;->getValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/onegravity/colorpicker/ColorPicker;-><init>(Landroid/content/Context;IZLcom/onegravity/colorpicker/ColorPickerListener;)V

    invoke-virtual {v0}, Lcom/onegravity/colorpicker/ColorPicker;->show()I

    return-void
.end method

.method public onColorChanged(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpreference/ColorPreferenceCompat;->setValue(I)V

    return-void
.end method

.method public onDialogClosing()V
    .locals 0

    return-void
.end method
