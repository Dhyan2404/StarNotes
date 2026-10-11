.class public final synthetic Lcom/sunia/HTREnginev2/xyi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lcom/onegravity/rteditor/LinkFragment;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/onegravity/rteditor/LinkFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xyi;->a:Lcom/onegravity/rteditor/LinkFragment;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xyi;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/xyi;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/xyi;->d:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xyi;->a:Lcom/onegravity/rteditor/LinkFragment;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xyi;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xyi;->c:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xyi;->d:Landroid/app/Dialog;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/onegravity/rteditor/LinkFragment;->b(Lcom/onegravity/rteditor/LinkFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/content/DialogInterface;)V

    return-void
.end method
