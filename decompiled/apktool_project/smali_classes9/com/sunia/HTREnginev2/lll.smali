.class public final synthetic Lcom/sunia/HTREnginev2/lll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/permissionx/guolindev/callback/RequestCallback;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;

.field public final synthetic b:Lio/reactivex/rxjava3/subjects/PublishSubject;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lll;->a:Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lll;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lll;->a:Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lll;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->m(Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;Lio/reactivex/rxjava3/subjects/PublishSubject;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method
