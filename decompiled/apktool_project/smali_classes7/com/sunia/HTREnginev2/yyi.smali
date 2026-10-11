.class public final synthetic Lcom/sunia/HTREnginev2/yyi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onegravity/rteditor/LinkFragment;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/onegravity/rteditor/LinkFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yyi;->e:Lcom/onegravity/rteditor/LinkFragment;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/yyi;->f:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/yyi;->g:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/yyi;->h:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yyi;->e:Lcom/onegravity/rteditor/LinkFragment;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yyi;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/yyi;->g:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yyi;->h:Landroid/app/Dialog;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/onegravity/rteditor/LinkFragment;->c(Lcom/onegravity/rteditor/LinkFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
