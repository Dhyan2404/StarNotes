.class public final synthetic Lcom/onyx/galaxy/note/editor/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/b;->e:Landroidx/recyclerview/widget/RecyclerView;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/ui/b;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/b;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget p0, p0, Lcom/onyx/galaxy/note/editor/ui/b;->f:I

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$onExcerptInsertedEvent$2$1;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
