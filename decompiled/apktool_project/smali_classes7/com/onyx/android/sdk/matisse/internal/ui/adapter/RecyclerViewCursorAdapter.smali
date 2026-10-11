.class public abstract Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field public d:Landroid/database/Cursor;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->swapCursor(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/database/Cursor;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->d:Landroid/database/Cursor;

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->d:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->b(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->d:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->d:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->b(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->d:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->d:Landroid/database/Cursor;

    iget p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->e:I

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not move cursor to position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " when trying to get an item id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot lookup item id when cursor is in invalid state."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->d:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->d:Landroid/database/Cursor;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->getItemViewType(ILandroid/database/Cursor;)I

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not move cursor to position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " when trying to get item view type."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getItemViewType(ILandroid/database/Cursor;)I
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->d:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->b(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->d:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->d:Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not move cursor to position "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " when trying to bind view holder"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot bind view holder when cursor is in invalid state."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation
.end method

.method public swapCursor(Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->d:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->d:Landroid/database/Cursor;

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->e:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->d:Landroid/database/Cursor;

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->e:I

    :goto_0
    return-void
.end method
