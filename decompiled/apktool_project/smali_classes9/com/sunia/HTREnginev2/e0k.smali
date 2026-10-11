.class public final synthetic Lcom/sunia/HTREnginev2/e0k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

.field public final synthetic h:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e0k;->e:Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/e0k;->f:Ljava/util/List;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/e0k;->g:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/e0k;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/e0k;->e:Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/e0k;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/e0k;->g:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e0k;->h:Ljava/util/List;

    invoke-static {v0, v1, v2, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->n(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Ljava/util/List;)V

    return-void
.end method
