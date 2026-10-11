.class public final synthetic Lcom/sunia/HTREnginev2/i3l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic e:Lcom/permissionx/guolindev/request/PermissionBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/i3l;->e:Lcom/permissionx/guolindev/request/PermissionBuilder;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i3l;->e:Lcom/permissionx/guolindev/request/PermissionBuilder;

    invoke-static {p0, p1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->d(Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/content/DialogInterface;)V

    return-void
.end method
