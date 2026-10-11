.class public final Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->Y()Lio/reactivex/rxjava3/core/Observable;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPageRecycleBinPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageRecycleBinPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$onDocOpenedObservable$3\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,344:1\n256#2,2:345\n*S KotlinDebug\n*F\n+ 1 PageRecycleBinPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$onDocOpenedObservable$3\n*L\n280#1:345,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPageRecycleBinPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageRecycleBinPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$onDocOpenedObservable$3\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,344:1\n256#2,2:345\n*S KotlinDebug\n*F\n+ 1 PageRecycleBinPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$onDocOpenedObservable$3\n*L\n280#1:345,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$i;->e:Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$i;->e:Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->emptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    const-string v0, "emptyView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$i;->a(Ljava/util/List;)V

    return-void
.end method
