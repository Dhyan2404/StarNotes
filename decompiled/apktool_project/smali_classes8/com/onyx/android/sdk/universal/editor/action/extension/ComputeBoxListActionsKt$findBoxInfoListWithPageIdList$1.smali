.class final Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$findBoxInfoListWithPageIdList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt;->findBoxInfoListWithPageIdList(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/Collection;Z)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComputeBoxListActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComputeBoxListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$findBoxInfoListWithPageIdList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,173:1\n1603#2,9:174\n1855#2:183\n1856#2:185\n1612#2:186\n1855#2,2:187\n1#3:184\n*S KotlinDebug\n*F\n+ 1 ComputeBoxListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$findBoxInfoListWithPageIdList$1\n*L\n47#1:174,9\n47#1:183\n47#1:185\n47#1:186\n51#1:187,2\n47#1:184\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "workBundle",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
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
        "SMAP\nComputeBoxListActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComputeBoxListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$findBoxInfoListWithPageIdList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,173:1\n1603#2,9:174\n1855#2:183\n1856#2:185\n1612#2:186\n1855#2,2:187\n1#3:184\n*S KotlinDebug\n*F\n+ 1 ComputeBoxListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$findBoxInfoListWithPageIdList$1\n*L\n47#1:174,9\n47#1:183\n47#1:185\n47#1:186\n51#1:187,2\n47#1:184\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $notePageIdList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $updateToVisibleBox:Z


# direct methods
.method public constructor <init>(Ljava/util/Collection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$findBoxInfoListWithPageIdList$1;->$notePageIdList:Ljava/util/Collection;

    iput-boolean p2, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$findBoxInfoListWithPageIdList$1;->$updateToVisibleBox:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$findBoxInfoListWithPageIdList$1;->invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Ljava/util/List;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$findBoxInfoListWithPageIdList$1;->$notePageIdList:Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->findBoxInfoByPageId(Ljava/lang/String;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$findBoxInfoListWithPageIdList$1;->$updateToVisibleBox:Z

    if-eqz p0, :cond_2

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    .line 10
    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->updateToVisibleBox(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    goto :goto_1

    :cond_2
    return-object v1
.end method
