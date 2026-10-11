.class public Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$b;
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
        "Lcom/onegravity/rteditor/toolbar/spinner/FontSpinnerItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$b;->a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;I)V
    .locals 0

    check-cast p1, Lcom/onegravity/rteditor/toolbar/spinner/FontSpinnerItem;

    invoke-virtual {p0, p1, p2}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$b;->b(Lcom/onegravity/rteditor/toolbar/spinner/FontSpinnerItem;I)V

    return-void
.end method

.method public b(Lcom/onegravity/rteditor/toolbar/spinner/FontSpinnerItem;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/spinner/FontSpinnerItem;->getTypeface()Lcom/onegravity/rteditor/fonts/RTTypeface;

    move-result-object p1

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$b;->a:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;

    invoke-static {p0}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->a(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;)Lcom/onegravity/rteditor/RTToolbarListener;

    move-result-object p0

    sget-object p2, Lcom/onegravity/rteditor/effects/Effects;->TYPEFACE:Lcom/onegravity/rteditor/effects/Effect;

    invoke-interface {p0, p2, p1}, Lcom/onegravity/rteditor/RTToolbarListener;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    return-void
.end method
