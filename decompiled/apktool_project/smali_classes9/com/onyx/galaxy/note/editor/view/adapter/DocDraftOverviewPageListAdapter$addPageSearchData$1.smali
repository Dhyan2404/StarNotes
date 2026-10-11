.class final Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter$addPageSearchData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;->addPageSearchData(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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


# instance fields
.field final synthetic $currentIndex:I

.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;",
            "Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter$addPageSearchData$1;->$list:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter$addPageSearchData$1;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter$addPageSearchData$1;->$currentIndex:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter$addPageSearchData$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter$addPageSearchData$1;->$list:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter$addPageSearchData$1$1;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter$addPageSearchData$1;->$currentIndex:I

    invoke-direct {v1, v2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter$addPageSearchData$1$1;-><init>(I)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter$addPageSearchData$1;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter$addPageSearchData$1;->$currentIndex:I

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;->setCurrentIndex(I)V

    :cond_0
    return-void
.end method
