.class public final Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$b;->e:Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$b;->e:Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;->access$setNewCategoryId$p(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$b;->e:Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;->access$setNewCategoryId$p(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$b;->a(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
