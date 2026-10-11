.class public final Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->P()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$c;->e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$c;->e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->access$getStickerListAdapter$p(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "stickerListAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$c;->e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->access$updateLayout(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V

    return-void
.end method
