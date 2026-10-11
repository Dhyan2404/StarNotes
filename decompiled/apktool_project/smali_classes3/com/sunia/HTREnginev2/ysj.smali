.class public final synthetic Lcom/sunia/HTREnginev2/ysj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/ysj;->e:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ysj;->f:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/ysj;->e:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ysj;->f:Landroid/os/Bundle;

    invoke-static {v0, p0, p1}, Landroidx/navigation/Navigation;->a(ILandroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method
