.class public final synthetic Lcom/sunia/HTREnginev2/jll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/permissionx/guolindev/callback/RequestCallback;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

.field public final synthetic b:Lio/reactivex/rxjava3/subjects/PublishSubject;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jll;->a:Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/jll;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jll;->a:Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jll;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->m(Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;Lio/reactivex/rxjava3/subjects/PublishSubject;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method
