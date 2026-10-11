.class public final synthetic Lcom/sunia/HTREnginev2/ill;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/permissionx/guolindev/callback/ExplainReasonCallback;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ill;->a:Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ill;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ill;->a:Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ill;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->l(Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;Ljava/lang/String;Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V

    return-void
.end method
