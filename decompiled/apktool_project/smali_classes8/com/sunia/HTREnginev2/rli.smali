.class public final synthetic Lcom/sunia/HTREnginev2/rli;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;

.field public final synthetic g:Lio/reactivex/rxjava3/subjects/ReplaySubject;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lio/reactivex/rxjava3/subjects/ReplaySubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rli;->e:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/rli;->f:Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/rli;->g:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rli;->e:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/rli;->f:Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rli;->g:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;->m(Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lio/reactivex/rxjava3/subjects/ReplaySubject;)V

    return-void
.end method
