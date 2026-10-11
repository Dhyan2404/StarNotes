.class public final Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;
.super Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction<",
        "Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImportOfficialTemplateCoverToDBAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportOfficialTemplateCoverToDBAction.kt\ncom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,156:1\n1603#2,9:157\n1855#2:166\n1856#2:168\n1612#2:169\n1855#2,2:170\n1603#2,9:172\n1855#2:181\n1856#2:183\n1612#2:184\n1855#2,2:185\n1#3:167\n1#3:182\n*S KotlinDebug\n*F\n+ 1 ImportOfficialTemplateCoverToDBAction.kt\ncom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction\n*L\n66#1:157,9\n66#1:166\n66#1:168\n66#1:169\n68#1:170,2\n88#1:172,9\n88#1:181\n88#1:183\n88#1:184\n90#1:185,2\n66#1:167\n88#1:182\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0013\u00a2\u0006\u0004\u0008 \u0010!J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0012\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\nH\u0002J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\nH\u0002J\u000e\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\nH\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "n",
        "m",
        "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
        "coverModel",
        "l",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;",
        "o",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;",
        "q",
        "Lcom/onyx/android/sdk/replicator/note/bean/TemplateJsonList;",
        "r",
        "Lcom/onyx/android/sdk/replicator/note/bean/CoverJsonList;",
        "p",
        "Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;",
        "f",
        "Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;",
        "importDataStrategy",
        "",
        "Ljava/lang/reflect/Field;",
        "g",
        "[Ljava/lang/reflect/Field;",
        "rawResFields",
        "",
        "h",
        "Z",
        "isVersionLatest",
        "<init>",
        "(Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;)V",
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
        "SMAP\nImportOfficialTemplateCoverToDBAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportOfficialTemplateCoverToDBAction.kt\ncom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,156:1\n1603#2,9:157\n1855#2:166\n1856#2:168\n1612#2:169\n1855#2,2:170\n1603#2,9:172\n1855#2:181\n1856#2:183\n1612#2:184\n1855#2,2:185\n1#3:167\n1#3:182\n*S KotlinDebug\n*F\n+ 1 ImportOfficialTemplateCoverToDBAction.kt\ncom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction\n*L\n66#1:157,9\n66#1:166\n66#1:168\n66#1:169\n68#1:170,2\n88#1:172,9\n88#1:181\n88#1:183\n88#1:184\n90#1:185,2\n66#1:167\n88#1:182\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:[Ljava/lang/reflect/Field;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;-><init>(Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "importDataStrategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;->f:Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    .line 3
    const-class p1, Lcom/onyx/android/sdk/universal/R$raw;

    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    const-string v0, "getFields(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;->g:[Ljava/lang/reflect/Field;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 5
    sget-object p1, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;->COMPARE_REVISION:Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;-><init>(Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;)V

    return-void
.end method

.method public static final synthetic access$importCover(Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;->m()V

    return-void
.end method

.method public static final synthetic access$importTemplate(Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;->n()V

    return-void
.end method

.method public static final synthetic access$isVersionLatest$p(Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;->h:Z

    return p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;",
            ">;"
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

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction$create$3;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction$create$3;-><init>(Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;)V

    sget-object v3, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction$create$4;->INSTANCE:Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction$create$4;

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction$c;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getCategoryId()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "SIMPLE"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/common/data/template/OfficialCoverConst;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/template/OfficialCoverConst;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/template/OfficialCoverConst;->getMap()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getTitleResName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->Companion:Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper$Companion;->generateResourceId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper$Companion;->generateResourceIndexKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 8

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;->f:Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    sget-object v3, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;->COMPARE_REVISION:Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/onyx/android/sdk/data/common/data/template/TemplateCoverConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/template/TemplateCoverConstant;

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getUserCoverRevision(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/common/data/template/TemplateCoverConstant;->isLatestCoverRevision(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;->h:Z

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getUserDataProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getDbProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getCoverProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;->p()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;->o()Ljava/util/List;

    move-result-object v3

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/bean/CoverJsonList;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/bean/CoverJsonList;->getCoverModel()Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/bean/CoverJsonList;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/bean/CoverJsonList;->getCoverModel()Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;->l(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/bean/CoverJsonList;->getTemplateResourceList()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-static {v5, v6}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    invoke-virtual {v0, v3, p0}, Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;->saveCoverCategoryList(Ljava/util/List;Z)J

    invoke-virtual {v0, v4, p0}, Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;->saveCoverList(Ljava/util/List;Z)J

    invoke-virtual {v0, v5, p0}, Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;->saveTemplateResourceList(Ljava/util/List;Z)J

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/16 v0, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->setUserCoverRevision(Ljava/lang/String;I)V

    return-void
.end method

.method public final n()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;->f:Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    sget-object v3, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;->COMPARE_REVISION:Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/onyx/android/sdk/data/common/data/template/TemplateCoverConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/template/TemplateCoverConstant;

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getUserTemplateRevision(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/common/data/template/TemplateCoverConstant;->isLatestTemplateRevision(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;->h:Z

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getUserDataProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getDbProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getTemplateProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;->r()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;->q()Ljava/util/List;

    move-result-object p0

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/bean/TemplateJsonList;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateJsonList;->getTemplateModel()Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/bean/TemplateJsonList;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateJsonList;->getTemplateResourceList()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->saveTemplateCategoryList(Ljava/util/List;Z)J

    invoke-virtual {v0, v3, v2}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->saveTemplateList(Ljava/util/List;Z)J

    invoke-virtual {v0, v4, v2}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->saveTemplateResourceList(Ljava/util/List;Z)J

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/16 v0, 0x18

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->setUserTemplateRevision(Ljava/lang/String;I)V

    return-void
.end method

.method public final o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    const-string v0, "category_cover"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getRawIdentifier(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RawResourceUtil;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->contentOfRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction$loadCoverCategoryListFromRes$1;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction$loadCoverCategoryListFromRes$1;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p0
.end method

.method public final p()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/CoverJsonList;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;->g:[Ljava/lang/reflect/Field;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getName(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "cover"

    invoke-static {v4, v7, v2, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    sget-object v5, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getRawIdentifier(Ljava/lang/String;)I

    move-result v4

    sget-object v6, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RawResourceUtil;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v6, v5, v4}, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->contentOfRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v6, Lcom/onyx/android/sdk/replicator/note/bean/CoverJsonList;

    invoke-virtual {v5, v4, v6}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/bean/CoverJsonList;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    const-string v0, "category_template"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getRawIdentifier(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RawResourceUtil;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->contentOfRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction$loadTemplateCategoryListFromRes$1;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction$loadTemplateCategoryListFromRes$1;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p0
.end method

.method public final r()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/TemplateJsonList;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;->g:[Ljava/lang/reflect/Field;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getName(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "template"

    invoke-static {v4, v7, v2, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    sget-object v5, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getRawIdentifier(Ljava/lang/String;)I

    move-result v4

    sget-object v6, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RawResourceUtil;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v6, v5, v4}, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->contentOfRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v6, Lcom/onyx/android/sdk/replicator/note/bean/TemplateJsonList;

    invoke-virtual {v5, v4, v6}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/bean/TemplateJsonList;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
