.class public Lcom/onegravity/colorpicker/ColorPicker$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onegravity/colorpicker/ColorPicker;->k(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/onegravity/colorpicker/ColorPicker;


# direct methods
.method public constructor <init>(Lcom/onegravity/colorpicker/ColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/colorpicker/ColorPicker$d;->a:Lcom/onegravity/colorpicker/ColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 5

    const-string v0, "wheel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorPicker$d;->a:Lcom/onegravity/colorpicker/ColorPicker;

    new-instance v0, Lcom/onegravity/colorpicker/ColorWheelComponent;

    invoke-static {p1}, Lcom/onegravity/colorpicker/ColorPicker;->a(Lcom/onegravity/colorpicker/ColorPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/onegravity/colorpicker/ColorPicker$d;->a:Lcom/onegravity/colorpicker/ColorPicker;

    invoke-static {v2}, Lcom/onegravity/colorpicker/ColorPicker;->c(Lcom/onegravity/colorpicker/ColorPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/onegravity/colorpicker/ColorPicker$d;->a:Lcom/onegravity/colorpicker/ColorPicker;

    invoke-static {v3}, Lcom/onegravity/colorpicker/ColorPicker;->f(Lcom/onegravity/colorpicker/ColorPicker;)Z

    move-result v3

    iget-object v4, p0, Lcom/onegravity/colorpicker/ColorPicker$d;->a:Lcom/onegravity/colorpicker/ColorPicker;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onegravity/colorpicker/ColorWheelComponent;-><init>(IIZLcom/onegravity/colorpicker/OnColorChangedListener;)V

    invoke-static {p1, v0}, Lcom/onegravity/colorpicker/ColorPicker;->e(Lcom/onegravity/colorpicker/ColorPicker;Lcom/onegravity/colorpicker/ColorWheelComponent;)Lcom/onegravity/colorpicker/ColorWheelComponent;

    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorPicker$d;->a:Lcom/onegravity/colorpicker/ColorPicker;

    invoke-static {p1}, Lcom/onegravity/colorpicker/ColorPicker;->d(Lcom/onegravity/colorpicker/ColorPicker;)Lcom/onegravity/colorpicker/ColorWheelComponent;

    move-result-object p1

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorPicker$d;->a:Lcom/onegravity/colorpicker/ColorPicker;

    invoke-static {p0}, Lcom/onegravity/colorpicker/ColorPicker;->g(Lcom/onegravity/colorpicker/ColorPicker;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onegravity/colorpicker/ColorWheelComponent;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "exact"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorPicker$d;->a:Lcom/onegravity/colorpicker/ColorPicker;

    new-instance v0, Lcom/onegravity/colorpicker/ExactComponent;

    invoke-static {p1}, Lcom/onegravity/colorpicker/ColorPicker;->a(Lcom/onegravity/colorpicker/ColorPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/onegravity/colorpicker/ColorPicker$d;->a:Lcom/onegravity/colorpicker/ColorPicker;

    invoke-static {v2}, Lcom/onegravity/colorpicker/ColorPicker;->c(Lcom/onegravity/colorpicker/ColorPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/onegravity/colorpicker/ColorPicker$d;->a:Lcom/onegravity/colorpicker/ColorPicker;

    invoke-static {v3}, Lcom/onegravity/colorpicker/ColorPicker;->f(Lcom/onegravity/colorpicker/ColorPicker;)Z

    move-result v3

    iget-object v4, p0, Lcom/onegravity/colorpicker/ColorPicker$d;->a:Lcom/onegravity/colorpicker/ColorPicker;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onegravity/colorpicker/ExactComponent;-><init>(IIZLcom/onegravity/colorpicker/OnColorChangedListener;)V

    invoke-static {p1, v0}, Lcom/onegravity/colorpicker/ColorPicker;->i(Lcom/onegravity/colorpicker/ColorPicker;Lcom/onegravity/colorpicker/ExactComponent;)Lcom/onegravity/colorpicker/ExactComponent;

    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorPicker$d;->a:Lcom/onegravity/colorpicker/ColorPicker;

    invoke-static {p1}, Lcom/onegravity/colorpicker/ColorPicker;->h(Lcom/onegravity/colorpicker/ColorPicker;)Lcom/onegravity/colorpicker/ExactComponent;

    move-result-object p1

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorPicker$d;->a:Lcom/onegravity/colorpicker/ColorPicker;

    invoke-static {p0}, Lcom/onegravity/colorpicker/ColorPicker;->g(Lcom/onegravity/colorpicker/ColorPicker;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onegravity/colorpicker/ExactComponent;->j(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
