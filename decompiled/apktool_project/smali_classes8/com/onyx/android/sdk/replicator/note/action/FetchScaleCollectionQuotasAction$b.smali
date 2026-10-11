.class public final Lcom/onyx/android/sdk/replicator/note/action/FetchScaleCollectionQuotasAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/note/action/FetchScaleCollectionQuotasAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/action/FetchScaleCollectionQuotasAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/action/FetchScaleCollectionQuotasAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/FetchScaleCollectionQuotasAction$b;->e:Lcom/onyx/android/sdk/replicator/note/action/FetchScaleCollectionQuotasAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/lang/Integer;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/FetchScaleCollectionQuotasAction$b;->e:Lcom/onyx/android/sdk/replicator/note/action/FetchScaleCollectionQuotasAction;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/action/FetchScaleCollectionQuotasAction;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;->getSubItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/FetchScaleCollectionQuotasAction$b;->e:Lcom/onyx/android/sdk/replicator/note/action/FetchScaleCollectionQuotasAction;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/FetchScaleCollectionQuotasAction;->getSubCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v2, v0

    :cond_3
    check-cast v2, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;->getTotalQuota()J

    move-result-wide p0

    long-to-int p0, p0

    goto :goto_1

    :cond_4
    const/4 p0, -0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/FetchScaleCollectionQuotasAction$b;->a(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
