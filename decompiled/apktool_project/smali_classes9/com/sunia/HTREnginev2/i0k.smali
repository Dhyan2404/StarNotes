.class public final synthetic Lcom/sunia/HTREnginev2/i0k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/i0k;->e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/i0k;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/i0k;->e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i0k;->f:Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->s(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method
