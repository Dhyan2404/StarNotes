.class public Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f<",
        "Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;->a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;I)V
    .locals 0

    check-cast p1, Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;

    invoke-virtual {p0, p1, p2}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;->b(Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;I)V

    return-void
.end method

.method public b(Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->isCustom()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;->a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;

    new-instance v0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d$a;

    invoke-direct {v0, p0, p1}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d$a;-><init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;)V

    invoke-static {p2, v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->d(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;Lcom/onegravity/colorpicker/ColorPickerListener;)Lcom/onegravity/colorpicker/ColorPickerListener;

    new-instance p1, Lcom/onegravity/colorpicker/ColorPicker;

    iget-object p2, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;->a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;->a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;

    invoke-static {v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->e(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)I

    move-result v0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;->a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;

    invoke-static {p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->c(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)Lcom/onegravity/colorpicker/ColorPickerListener;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1, p0}, Lcom/onegravity/colorpicker/ColorPicker;-><init>(Landroid/content/Context;IZLcom/onegravity/colorpicker/ColorPickerListener;)V

    invoke-virtual {p1}, Lcom/onegravity/colorpicker/ColorPicker;->show()I

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;->a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;

    invoke-static {p2}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->a(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)Lcom/onegravity/rteditor/RTToolbarListener;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->getColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;->a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;

    invoke-static {p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->a(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)Lcom/onegravity/rteditor/RTToolbarListener;

    move-result-object p0

    sget-object p2, Lcom/onegravity/rteditor/effects/Effects;->FONTCOLOR:Lcom/onegravity/rteditor/effects/Effect;

    invoke-interface {p0, p2, p1}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
