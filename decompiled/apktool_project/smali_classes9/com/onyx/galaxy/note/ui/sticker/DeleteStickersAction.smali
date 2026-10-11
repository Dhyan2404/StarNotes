.class public final Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;
.super Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeleteStickersAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteStickersAction.kt\ncom/onyx/galaxy/note/ui/sticker/DeleteStickersAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n766#2:47\n857#2,2:48\n*S KotlinDebug\n*F\n+ 1 DeleteStickersAction.kt\ncom/onyx/galaxy/note/ui/sticker/DeleteStickersAction\n*L\n16#1:47\n16#1:48,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "n",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "f",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "mainCategory",
        "",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
        "g",
        "Ljava/util/List;",
        "stickers",
        "",
        "h",
        "selections",
        "i",
        "selectedStickers",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;",
        "bundle",
        "<init>",
        "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Ljava/util/List;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeleteStickersAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteStickersAction.kt\ncom/onyx/galaxy/note/ui/sticker/DeleteStickersAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n766#2:47\n857#2,2:48\n*S KotlinDebug\n*F\n+ 1 DeleteStickersAction.kt\ncom/onyx/galaxy/note/ui/sticker/DeleteStickersAction\n*L\n16#1:47\n16#1:48,2\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Ljava/util/List;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainCategory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stickers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;-><init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;->f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    iput-object p3, p0, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;->g:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getSelectedItems(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;->h:Ljava/util/List;

    check-cast p3, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;->i:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getSelectedStickers$p(Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;->i:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;->m(Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;->n()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;->getBundle$note_overseasRelease()Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickerDoneEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickerDoneEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction$a;-><init>(Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction$b;->e:Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction$b;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction$c;-><init>(Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction$d;-><init>(Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction$e;->e:Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction$e;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/n3f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/n3f;-><init>(Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;->getBundle$note_overseasRelease()Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;->f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->deleteSelectedStickers(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    return-void
.end method
