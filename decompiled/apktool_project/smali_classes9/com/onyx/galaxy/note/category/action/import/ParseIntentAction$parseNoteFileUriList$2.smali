.class public final Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->E(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2;->e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2;->e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->access$getImportSelectedContext$p(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;)Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "importSelectedContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2$1;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2;->e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    invoke-direct {v0, v1, v2, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2$1;-><init>(Ljava/util/List;Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2;->e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->access$getActivityContext$p(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2$a;->e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2$a;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
