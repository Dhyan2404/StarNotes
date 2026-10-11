.class public final synthetic Lcom/sunia/HTREnginev2/j3l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

.field public final synthetic f:Lcom/onyx/android/sdk/ui/PermissionDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;Lcom/onyx/android/sdk/ui/PermissionDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j3l;->e:Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/j3l;->f:Lcom/onyx/android/sdk/ui/PermissionDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/j3l;->e:Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j3l;->f:Lcom/onyx/android/sdk/ui/PermissionDialog;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->b(Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;Lcom/onyx/android/sdk/ui/PermissionDialog;Landroid/view/View;)V

    return-void
.end method
