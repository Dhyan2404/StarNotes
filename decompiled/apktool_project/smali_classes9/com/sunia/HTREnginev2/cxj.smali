.class public final synthetic Lcom/sunia/HTREnginev2/cxj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/permissionx/guolindev/callback/RequestCallback;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

.field public final synthetic b:Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cxj;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/cxj;->b:Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cxj;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cxj;->b:Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->s0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method
