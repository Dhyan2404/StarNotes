.class public Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$c;
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
        "Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$c;->a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;I)V
    .locals 0

    check-cast p1, Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;

    invoke-virtual {p0, p1, p2}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$c;->b(Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;I)V

    return-void
.end method

.method public b(Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;->getFontSize()I

    move-result p2

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$c;->a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;

    invoke-static {v0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->b(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->updateSpinnerTitle(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onegravity/rteditor/utils/Helper;->convertPxToSp(I)I

    move-result p1

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$c;->a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;

    invoke-static {p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->a(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)Lcom/onegravity/rteditor/RTToolbarListener;

    move-result-object p0

    sget-object p2, Lcom/onegravity/rteditor/effects/Effects;->FONTSIZE:Lcom/onegravity/rteditor/effects/Effect;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    return-void
.end method
