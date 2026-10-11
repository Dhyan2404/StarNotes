.class public final Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;
.super Lcom/permissionx/guolindev/request/BaseTask;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;",
        "Lcom/permissionx/guolindev/request/BaseTask;",
        "permissionBuilder",
        "Lcom/permissionx/guolindev/request/PermissionBuilder;",
        "(Lcom/permissionx/guolindev/request/PermissionBuilder;)V",
        "request",
        "",
        "requestAgain",
        "permissions",
        "",
        "",
        "permissionx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V
    .locals 1
    .param p1    # Lcom/permissionx/guolindev/request/PermissionBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "permissionBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/permissionx/guolindev/request/BaseTask;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    return-void
.end method


# virtual methods
.method public request()V
    .locals 3

    iget-object v0, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->shouldRequestWriteSettingsPermission()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x17

    const-string v2, "android.permission.WRITE_SETTINGS"

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/BaseTask;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    iget-object v1, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/BaseTask;->finish()V

    goto :goto_1

    :cond_2
    :goto_0
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    iget-object v2, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/BaseTask;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v2, p0, v0, v1}, Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;Z)V

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/BaseTask;->getExplainScope()Lcom/permissionx/guolindev/request/ExplainScope;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Lcom/permissionx/guolindev/callback/ExplainReasonCallback;->onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    iget-object v0, v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/BaseTask;->finish()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/BaseTask;->finish()V

    :goto_1
    return-void
.end method

.method public requestAgain(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/permissionx/guolindev/request/BaseTask;->pb:Lcom/permissionx/guolindev/request/PermissionBuilder;

    invoke-virtual {p1, p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->requestWriteSettingsPermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V

    return-void
.end method
