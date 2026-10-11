.class public final synthetic Lcom/sunia/HTREnginev2/vpi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/permissionx/guolindev/request/InvisibleFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/permissionx/guolindev/request/InvisibleFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vpi;->a:Lcom/permissionx/guolindev/request/InvisibleFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vpi;->a:Lcom/permissionx/guolindev/request/InvisibleFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->q0(Lcom/permissionx/guolindev/request/InvisibleFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
