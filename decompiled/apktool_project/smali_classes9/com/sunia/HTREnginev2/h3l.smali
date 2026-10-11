.class public final synthetic Lcom/sunia/HTREnginev2/h3l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/permissionx/guolindev/dialog/RationaleDialog;

.field public final synthetic f:Lcom/permissionx/guolindev/request/ChainTask;


# direct methods
.method public synthetic constructor <init>(Lcom/permissionx/guolindev/dialog/RationaleDialog;Lcom/permissionx/guolindev/request/ChainTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/h3l;->e:Lcom/permissionx/guolindev/dialog/RationaleDialog;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/h3l;->f:Lcom/permissionx/guolindev/request/ChainTask;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/h3l;->e:Lcom/permissionx/guolindev/dialog/RationaleDialog;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h3l;->f:Lcom/permissionx/guolindev/request/ChainTask;

    invoke-static {v0, p0, p1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->a(Lcom/permissionx/guolindev/dialog/RationaleDialog;Lcom/permissionx/guolindev/request/ChainTask;Landroid/view/View;)V

    return-void
.end method
