.class public final synthetic Lcom/sunia/HTREnginev2/kll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/permissionx/guolindev/callback/ExplainReasonCallback;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kll;->a:Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;

    return-void
.end method


# virtual methods
.method public final onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kll;->a:Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->l(Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V

    return-void
.end method
