.class public final Lcom/onyx/galaxy/note/ui/sticker/DeleteMaterialCategoryAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/ui/sticker/DeleteMaterialCategoryAction;->l()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/sticker/DeleteMaterialCategoryAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/sticker/DeleteMaterialCategoryAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/sticker/DeleteMaterialCategoryAction$d;->e:Lcom/onyx/galaxy/note/ui/sticker/DeleteMaterialCategoryAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsStickerAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsStickerAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/sticker/DeleteMaterialCategoryAction$d;->e:Lcom/onyx/galaxy/note/ui/sticker/DeleteMaterialCategoryAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/sticker/DeleteMaterialCategoryAction;->access$getSubCategory$p(Lcom/onyx/galaxy/note/ui/sticker/DeleteMaterialCategoryAction;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsStickerAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/sticker/DeleteMaterialCategoryAction$d;->a(Z)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
