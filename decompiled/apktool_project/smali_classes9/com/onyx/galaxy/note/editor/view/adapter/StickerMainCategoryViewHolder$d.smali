.class public final Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->addImportEvent()V
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$d;->e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    if-eqz p1, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/ui/sticker/ImportStickerFileAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$d;->e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->access$getBundle$p(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/ui/sticker/ImportStickerFileAction;-><init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$d;->a(Z)V

    return-void
.end method
