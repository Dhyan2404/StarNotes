.class public Lcom/onegravity/colorpicker/ColorWheelComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/onegravity/colorpicker/OnColorChangedListener;

.field public final b:I

.field public final c:Z

.field public final d:I

.field public e:Lcom/onegravity/colorpicker/ColorWheelView;


# direct methods
.method public constructor <init>(IIZLcom/onegravity/colorpicker/OnColorChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->b:I

    iput p2, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->d:I

    iput-boolean p3, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->c:Z

    iput-object p4, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->a:Lcom/onegravity/colorpicker/OnColorChangedListener;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->e:Lcom/onegravity/colorpicker/ColorWheelView;

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/ColorWheelView;->setColor(I)V

    return-void
.end method

.method public b(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/onegravity/colorpicker/R$layout;->dialog_color_wheel:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/onegravity/colorpicker/R$id;->picker:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/onegravity/colorpicker/ColorWheelView;

    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->e:Lcom/onegravity/colorpicker/ColorWheelView;

    sget v0, Lcom/onegravity/colorpicker/R$id;->valuebar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/onegravity/colorpicker/ValueBar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->e:Lcom/onegravity/colorpicker/ColorWheelView;

    invoke-virtual {v1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->addValueBar(Lcom/onegravity/colorpicker/ValueBar;)V

    :cond_0
    sget v0, Lcom/onegravity/colorpicker/R$id;->saturationbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/onegravity/colorpicker/SaturationBar;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->e:Lcom/onegravity/colorpicker/ColorWheelView;

    invoke-virtual {v1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->addSaturationBar(Lcom/onegravity/colorpicker/SaturationBar;)V

    :cond_1
    sget v0, Lcom/onegravity/colorpicker/R$id;->opacitybar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/onegravity/colorpicker/OpacityBar;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->c:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->e:Lcom/onegravity/colorpicker/ColorWheelView;

    invoke-virtual {v1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->addOpacityBar(Lcom/onegravity/colorpicker/OpacityBar;)V

    :cond_2
    iget-boolean v1, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->c:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->e:Lcom/onegravity/colorpicker/ColorWheelView;

    iget v1, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->b:I

    invoke-virtual {v0, v1}, Lcom/onegravity/colorpicker/ColorWheelView;->setOldCenterColor(I)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->e:Lcom/onegravity/colorpicker/ColorWheelView;

    iget v1, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->d:I

    invoke-virtual {v0, v1}, Lcom/onegravity/colorpicker/ColorWheelView;->setColor(I)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->e:Lcom/onegravity/colorpicker/ColorWheelView;

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->a:Lcom/onegravity/colorpicker/OnColorChangedListener;

    invoke-virtual {v0, p0}, Lcom/onegravity/colorpicker/ColorWheelView;->setOnColorChangedListener(Lcom/onegravity/colorpicker/OnColorChangedListener;)V

    return-object p1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorWheelComponent;->e:Lcom/onegravity/colorpicker/ColorWheelView;

    invoke-virtual {p0}, Lcom/onegravity/colorpicker/ColorWheelView;->getColor()I

    move-result p0

    return p0
.end method
