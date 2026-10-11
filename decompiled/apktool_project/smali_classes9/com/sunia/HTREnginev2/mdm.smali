.class public final synthetic Lcom/sunia/HTREnginev2/mdm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mdm;->e:Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mdm;->e:Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->b(Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;Landroid/view/View;)V

    return-void
.end method
