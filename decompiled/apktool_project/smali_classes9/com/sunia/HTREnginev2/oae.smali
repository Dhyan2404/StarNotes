.class public final synthetic Lcom/sunia/HTREnginev2/oae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/common/action/TakePhotoAction;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/common/action/TakePhotoAction;Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/oae;->e:Lcom/onyx/galaxy/note/common/action/TakePhotoAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/oae;->f:Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/oae;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/oae;->e:Lcom/onyx/galaxy/note/common/action/TakePhotoAction;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/oae;->f:Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oae;->g:Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->a(Lcom/onyx/galaxy/note/common/action/TakePhotoAction;Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;Ljava/lang/Object;)V

    return-void
.end method
