.class public final synthetic Lcom/sunia/HTREnginev2/yym;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yym;->e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/yym;->f:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/yym;->g:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yym;->e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yym;->f:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yym;->g:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->m(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Landroid/view/View;)V

    return-void
.end method
