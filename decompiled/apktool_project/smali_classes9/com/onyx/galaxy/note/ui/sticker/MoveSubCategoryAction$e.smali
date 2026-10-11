.class public final Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$e;
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$e;->e:Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/sticker/action/MoveCategoryAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$e;->e:Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;->access$getNewCategoryId$p(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/MoveCategoryAction;-><init>(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$e;->a(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
