.class public final Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->y(Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

.field public final synthetic f:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

.field public final synthetic g:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/common/data/ManageFolderContext;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$j;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$j;->f:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$j;->g:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$j;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->getSearchScope()Lcom/onyx/galaxy/note/category/data/SearchScope;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$j;->f:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->getSelectAll()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/SearchScope;->setSelectAllFolder(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$j;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->getSearchScope()Lcom/onyx/galaxy/note/category/data/SearchScope;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$j;->f:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->getSelectedFolderIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/SearchScope;->setFolderIds(Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$j;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->getSearchScope()Lcom/onyx/galaxy/note/category/data/SearchScope;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$j;->f:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->getSelectedFolderNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/SearchScope;->setFolderNames(Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$j;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->saveSearchScope()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$j;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$j;->g:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->updateSearchScope(Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$j;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->getEvent()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/editor/event/SearchScopeChangedEvent;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/event/SearchScopeChangedEvent;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$j;->a(Z)V

    return-void
.end method
