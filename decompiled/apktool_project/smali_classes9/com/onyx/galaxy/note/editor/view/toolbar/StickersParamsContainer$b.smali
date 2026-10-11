.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;->e(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer$b;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer$b;->f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer$b;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;->access$onItemSelected(Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/SaveRecentUsageAction;

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer$b;->f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/replicator/sticker/action/SaveRecentUsageAction;-><init>(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer$b;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;->access$loadData(Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer$b;->a(Ljava/lang/String;)V

    return-void
.end method
