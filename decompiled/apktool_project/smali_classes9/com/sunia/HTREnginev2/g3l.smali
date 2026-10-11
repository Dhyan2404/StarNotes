.class public final synthetic Lcom/sunia/HTREnginev2/g3l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/permissionx/guolindev/dialog/RationaleDialog;

.field public final synthetic f:Z

.field public final synthetic g:Lcom/permissionx/guolindev/request/ChainTask;

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Lcom/permissionx/guolindev/request/PermissionBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/g3l;->e:Lcom/permissionx/guolindev/dialog/RationaleDialog;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/g3l;->f:Z

    iput-object p3, p0, Lcom/sunia/HTREnginev2/g3l;->g:Lcom/permissionx/guolindev/request/ChainTask;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/g3l;->h:Ljava/util/List;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/g3l;->i:Lcom/permissionx/guolindev/request/PermissionBuilder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/g3l;->e:Lcom/permissionx/guolindev/dialog/RationaleDialog;

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/g3l;->f:Z

    iget-object v2, p0, Lcom/sunia/HTREnginev2/g3l;->g:Lcom/permissionx/guolindev/request/ChainTask;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/g3l;->h:Ljava/util/List;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/g3l;->i:Lcom/permissionx/guolindev/request/PermissionBuilder;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/permissionx/guolindev/request/PermissionBuilder;->e(Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/view/View;)V

    return-void
.end method
