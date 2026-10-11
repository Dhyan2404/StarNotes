.class public final synthetic Lcom/sunia/HTREnginev2/lxj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lxj;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lxj;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lxj;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lxj;->f:Ljava/util/List;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->r0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/util/List;Z)V

    return-void
.end method
