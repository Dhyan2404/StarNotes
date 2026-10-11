.class public final synthetic Lcom/sunia/HTREnginev2/v7m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

.field public final synthetic f:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v7m;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/v7m;->f:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/v7m;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v7m;->f:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->k(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Landroid/view/View;)V

    return-void
.end method
