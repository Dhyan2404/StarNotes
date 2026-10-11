.class public final synthetic Lcom/sunia/HTREnginev2/azm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/azm;->e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/azm;->f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/azm;->e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/azm;->f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->n(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    return-void
.end method
