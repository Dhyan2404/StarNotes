.class public final synthetic Lcom/sunia/HTREnginev2/rpi;
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

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rpi;->a:Lcom/permissionx/guolindev/request/InvisibleFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rpi;->a:Lcom/permissionx/guolindev/request/InvisibleFragment;

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->l0(Lcom/permissionx/guolindev/request/InvisibleFragment;Ljava/util/Map;)V

    return-void
.end method
