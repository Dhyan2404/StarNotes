.class public final synthetic Lcom/sunia/HTREnginev2/r7m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

.field public final synthetic f:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/r7m;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/r7m;->f:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/r7m;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r7m;->f:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;

    check-cast p1, Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->d(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;)V

    return-void
.end method
