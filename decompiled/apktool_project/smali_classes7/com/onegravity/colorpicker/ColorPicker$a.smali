.class public Lcom/onegravity/colorpicker/ColorPicker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onegravity/colorpicker/ColorPicker;->show()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onegravity/colorpicker/ColorPicker;


# direct methods
.method public constructor <init>(Lcom/onegravity/colorpicker/ColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/colorpicker/ColorPicker$a;->e:Lcom/onegravity/colorpicker/ColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorPicker$a;->e:Lcom/onegravity/colorpicker/ColorPicker;

    invoke-static {p0}, Lcom/onegravity/colorpicker/ColorPicker;->a(Lcom/onegravity/colorpicker/ColorPicker;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/onegravity/colorpicker/ColorPicker;->b(Lcom/onegravity/colorpicker/ColorPicker;I)V

    return-void
.end method
