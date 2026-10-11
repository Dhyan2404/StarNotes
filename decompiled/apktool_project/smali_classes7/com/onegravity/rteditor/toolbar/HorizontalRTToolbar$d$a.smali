.class public Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/colorpicker/ColorPickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;->b(Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;

.field public final synthetic f:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d$a;->f:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;

    iput-object p2, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d$a;->e:Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d$a;->f:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;

    iget-object v0, v0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;->a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;

    invoke-static {v0, p1}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->f(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;I)I

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d$a;->e:Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;

    invoke-virtual {v0, p1}, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->setColor(I)V

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d$a;->f:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;

    iget-object v0, v0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;->a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;

    invoke-static {v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->g(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d$a;->f:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;

    iget-object v0, v0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;->a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;

    invoke-static {v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->a(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)Lcom/onegravity/rteditor/RTToolbarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d$a;->f:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$d;->a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;

    invoke-static {p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->a(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)Lcom/onegravity/rteditor/RTToolbarListener;

    move-result-object p0

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->FONTCOLOR:Lcom/onegravity/rteditor/effects/Effect;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDialogClosing()V
    .locals 0

    return-void
.end method
