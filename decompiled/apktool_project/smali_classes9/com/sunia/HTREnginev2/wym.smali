.class public final synthetic Lcom/sunia/HTREnginev2/wym;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerCategorySelectAdapter;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerCategorySelectAdapter;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wym;->e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerCategorySelectAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/wym;->f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wym;->e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerCategorySelectAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wym;->f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerCategorySelectAdapter;->l(Lcom/onyx/galaxy/note/editor/view/adapter/StickerCategorySelectAdapter;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Landroid/view/View;)V

    return-void
.end method
