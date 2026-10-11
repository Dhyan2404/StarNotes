.class public final Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;
.super Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadRecentUseTemplatesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadRecentUseTemplatesAction.kt\ncom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n1549#2:74\n1620#2,3:75\n1603#2,9:78\n1855#2:87\n1856#2:89\n1612#2:90\n766#2:91\n857#2,2:92\n1#3:88\n*S KotlinDebug\n*F\n+ 1 LoadRecentUseTemplatesAction.kt\ncom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction\n*L\n37#1:74\n37#1:75,3\n41#1:78,9\n41#1:87\n41#1:89\n41#1:90\n42#1:91\n42#1:92,2\n41#1:88\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001c\u0010\n\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003H\u0002J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0003H\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;",
        "recentUseTemplate",
        "templateModel",
        "l",
        "",
        "m",
        "",
        "f",
        "I",
        "offset",
        "g",
        "limit",
        "<init>",
        "(II)V",
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
        "SMAP\nLoadRecentUseTemplatesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadRecentUseTemplatesAction.kt\ncom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n1549#2:74\n1620#2,3:75\n1603#2,9:78\n1855#2:87\n1856#2:89\n1612#2:90\n766#2:91\n857#2,2:92\n1#3:88\n*S KotlinDebug\n*F\n+ 1 LoadRecentUseTemplatesAction.kt\ncom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction\n*L\n37#1:74\n37#1:75,3\n41#1:78,9\n41#1:87\n41#1:89\n41#1:90\n42#1:91\n42#1:92,2\n41#1:88\n*E\n"
    }
.end annotation


# instance fields
.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;-><init>()V

    iput p1, p0, Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;->f:I

    iput p2, p0, Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;->g:I

    return-void
.end method

.method public static final synthetic access$load(Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;->n()Ljava/util/List;

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
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
    .locals 5

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->clone(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->setFromMMKV(Z)V

    sget-object v3, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->Companion:Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper$Companion;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getCategoryId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v3, v4, v0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper$Companion;->generateResourceId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->setTemplateUniqueId(Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getResourceList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->setResourceList(Ljava/util/List;)V

    sget-object p2, Lcom/onyx/android/sdk/genericshape/GeoFactory;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoFactory;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->getGeoContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseGeoLayout(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getFillColor()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->selectByFillColor(Ljava/lang/Integer;)Z

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getSpacing()F

    move-result p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->setCurSpacing(F)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setTemplateResourceWrapper(Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;)V

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Z
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->Companion:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getSizeFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat$Companion;->isCustom(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final n()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserTemplateProvider()Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;

    move-result-object v0

    iget v1, p0, Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;->f:I

    iget v2, p0, Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->loadRecentUseTemplates(II)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->getContentId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->loadTemplateListByIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    sget-object v2, Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction$load$templateMap$1;->INSTANCE:Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction$load$templateMap$1;

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->getContentId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    invoke-virtual {p0, v3, v4}, Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;->l(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;->m(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
