.class public final Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction;
.super Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadTemplateCategoryListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadTemplateCategoryListAction.kt\ncom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1549#2:31\n1620#2,3:32\n*S KotlinDebug\n*F\n+ 1 LoadTemplateCategoryListAction.kt\ncom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction\n*L\n28#1:31\n28#1:32,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u001d\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "",
        "f",
        "Z",
        "boundlessPaperOnly",
        "",
        "g",
        "Ljava/util/List;",
        "getTypes",
        "()Ljava/util/List;",
        "types",
        "<init>",
        "(ZLjava/util/List;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLoadTemplateCategoryListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadTemplateCategoryListAction.kt\ncom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1549#2:31\n1620#2,3:32\n*S KotlinDebug\n*F\n+ 1 LoadTemplateCategoryListAction.kt\ncom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction\n*L\n28#1:31\n28#1:32,3\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Z

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "types"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;-><init>()V

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction;->f:Z

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction;->g:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$loadList(Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction;->l()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->loadOnyxAccountObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction;->g:Ljava/util/List;

    return-object p0
.end method

.method public final l()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getUserDataProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getDbProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getTemplateProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;

    move-result-object v0

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction;->f:Z

    if-eqz v1, :cond_0

    const-string v1, "BASE"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction;->g:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->loadTemplateCategoryList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;

    invoke-static {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverPaperExtKt;->convertToTemplateCategory(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;)Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method
