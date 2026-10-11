.class final Lcom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction$showInputDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction;->l()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/android/sdk/ui/NameEditDialog;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShowNameInputDialogAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowNameInputDialogAction.kt\ncom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction$showInputDialog$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,50:1\n1747#2,3:51\n*S KotlinDebug\n*F\n+ 1 ShowNameInputDialogAction.kt\ncom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction$showInputDialog$1\n*L\n33#1:51,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Lcom/onyx/android/sdk/ui/NameEditDialog;",
        "text",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShowNameInputDialogAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowNameInputDialogAction.kt\ncom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction$showInputDialog$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,50:1\n1747#2,3:51\n*S KotlinDebug\n*F\n+ 1 ShowNameInputDialogAction.kt\ncom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction$showInputDialog$1\n*L\n33#1:51,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $subject:Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction;Lio/reactivex/rxjava3/subjects/ReplaySubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction;",
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction$showInputDialog$1;->this$0:Lcom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction$showInputDialog$1;->$subject:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/ui/NameEditDialog;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction$showInputDialog$1;->invoke(Lcom/onyx/android/sdk/ui/NameEditDialog;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/ui/NameEditDialog;Ljava/lang/String;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/ui/NameEditDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 3
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->sort_name_empty_tips:I

    invoke-static {p0, p1, v2, v4, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction$showInputDialog$1;->this$0:Lcom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction;

    invoke-static {v0}, Lcom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction;->access$getSubCategories$p(Lcom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 5
    instance-of v5, v0, Ljava/util/Collection;

    if-eqz v5, :cond_3

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v1, v2

    goto :goto_1

    .line 6
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    .line 7
    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_1
    if-eqz v1, :cond_5

    .line 8
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->duplicated_category:I

    invoke-static {p0, p1, v2, v4, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    .line 9
    :cond_5
    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/sticker/ShowNameInputDialogAction$showInputDialog$1;->$subject:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->dismiss()V

    return-void
.end method
