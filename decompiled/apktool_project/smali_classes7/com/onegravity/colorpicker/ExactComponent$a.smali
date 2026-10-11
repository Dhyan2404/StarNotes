.class public Lcom/onegravity/colorpicker/ExactComponent$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/colorpicker/ExactComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onegravity/colorpicker/ExactComponent;


# direct methods
.method public constructor <init>(Lcom/onegravity/colorpicker/ExactComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/colorpicker/ExactComponent$a;->e:Lcom/onegravity/colorpicker/ExactComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object p1, p0, Lcom/onegravity/colorpicker/ExactComponent$a;->e:Lcom/onegravity/colorpicker/ExactComponent;

    invoke-static {p1}, Lcom/onegravity/colorpicker/ExactComponent;->a(Lcom/onegravity/colorpicker/ExactComponent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/onegravity/colorpicker/ExactComponent$a;->e:Lcom/onegravity/colorpicker/ExactComponent;

    invoke-static {p1}, Lcom/onegravity/colorpicker/ExactComponent;->b(Lcom/onegravity/colorpicker/ExactComponent;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onegravity/colorpicker/ExactComponent$a;->e:Lcom/onegravity/colorpicker/ExactComponent;

    invoke-static {v0}, Lcom/onegravity/colorpicker/ExactComponent;->c(Lcom/onegravity/colorpicker/ExactComponent;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onegravity/colorpicker/ExactComponent$a;->e:Lcom/onegravity/colorpicker/ExactComponent;

    invoke-static {v1}, Lcom/onegravity/colorpicker/ExactComponent;->d(Lcom/onegravity/colorpicker/ExactComponent;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onegravity/colorpicker/ExactComponent$a;->e:Lcom/onegravity/colorpicker/ExactComponent;

    invoke-static {v2}, Lcom/onegravity/colorpicker/ExactComponent;->e(Lcom/onegravity/colorpicker/ExactComponent;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onegravity/colorpicker/ExactComponent$a;->e:Lcom/onegravity/colorpicker/ExactComponent;

    invoke-static {v3}, Lcom/onegravity/colorpicker/ExactComponent;->f(Lcom/onegravity/colorpicker/ExactComponent;)Z

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/onegravity/colorpicker/Util;->convertToColorInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    iget-object v0, p0, Lcom/onegravity/colorpicker/ExactComponent$a;->e:Lcom/onegravity/colorpicker/ExactComponent;

    invoke-static {v0}, Lcom/onegravity/colorpicker/ExactComponent;->g(Lcom/onegravity/colorpicker/ExactComponent;)Lcom/onegravity/colorpicker/ColorWheelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ExactComponent$a;->e:Lcom/onegravity/colorpicker/ExactComponent;

    invoke-static {v0}, Lcom/onegravity/colorpicker/ExactComponent;->h(Lcom/onegravity/colorpicker/ExactComponent;)Lcom/onegravity/colorpicker/OnColorChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onegravity/colorpicker/ExactComponent$a;->e:Lcom/onegravity/colorpicker/ExactComponent;

    invoke-static {p0}, Lcom/onegravity/colorpicker/ExactComponent;->h(Lcom/onegravity/colorpicker/ExactComponent;)Lcom/onegravity/colorpicker/OnColorChangedListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onegravity/colorpicker/OnColorChangedListener;->onColorChanged(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
