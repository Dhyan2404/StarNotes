.class public final Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFTSProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FTSProvider.kt\ncom/onyx/android/sdk/replicator/fts/provider/FTSProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,205:1\n1855#2,2:206\n766#2:208\n857#2,2:209\n1855#2,2:211\n1549#2:240\n1620#2,3:241\n1549#2:244\n1620#2,3:245\n1549#2:254\n1620#2,3:255\n1549#2:258\n1620#2,3:259\n1549#2:262\n1620#2,3:263\n1477#2:290\n1502#2,3:291\n1505#2,3:301\n1549#2:315\n1620#2,3:316\n1855#2,2:324\n1855#2,2:326\n1549#2:328\n1620#2,3:329\n56#3,8:213\n48#3,5:221\n64#3,4:226\n48#3,5:230\n48#3,5:235\n29#3:248\n48#3,5:249\n56#3,8:266\n48#3,5:274\n64#3,4:279\n58#3:283\n29#3:284\n48#3,5:285\n48#3,5:319\n29#3:332\n48#3,5:333\n29#3:338\n48#3,5:339\n372#4,7:294\n526#4:304\n511#4,6:305\n125#5:311\n152#5,3:312\n*S KotlinDebug\n*F\n+ 1 FTSProvider.kt\ncom/onyx/android/sdk/replicator/fts/provider/FTSProvider\n*L\n40#1:206,2\n42#1:208\n42#1:209,2\n43#1:211,2\n65#1:240\n65#1:241,3\n70#1:244\n70#1:245,3\n101#1:254\n101#1:255,3\n108#1:258\n108#1:259,3\n115#1:262\n115#1:263,3\n136#1:290\n136#1:291,3\n136#1:301,3\n146#1:315\n146#1:316,3\n152#1:324,2\n161#1:326,2\n182#1:328\n182#1:329,3\n48#1:213,8\n48#1:221,5\n48#1:226,4\n57#1:230,5\n65#1:235,5\n88#1:248\n88#1:249,5\n121#1:266,8\n121#1:274,5\n121#1:279,4\n121#1:283\n125#1:284\n125#1:285,5\n148#1:319,5\n200#1:332\n200#1:333,5\n201#1:338\n201#1:339,5\n136#1:294,7\n137#1:304\n137#1:305,6\n138#1:311\n138#1:312,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u00107\u001a\u000206\u00a2\u0006\u0004\u00088\u00109J\u0014\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t2\u0006\u0010\u0008\u001a\u00020\u0007J\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u000bJ\"\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\t2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\t2\u0006\u0010\u000f\u001a\u00020\u000bJ\u001c\u0010\u0014\u001a\u00020\u00072\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\t2\u0006\u0010\u000f\u001a\u00020\u000bJ\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t2\u0006\u0010\u0015\u001a\u00020\u0003J\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00030\tJ\u001c\u0010\u0019\u001a\u00020\u00052\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00022\u0006\u0010\u000e\u001a\u00020\rJ\"\u0010\u0019\u001a\u00020\u00052\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00022\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\tJ\u001c\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\tJ\u001c\u0010\u001d\u001a\u00020\u00102\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\t2\u0006\u0010\u001c\u001a\u00020\u001bJ\u0014\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\t2\u0006\u0010\u0008\u001a\u00020\u0007J\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001e0\tJ\u001a\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\t2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\tJ0\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\t2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\t2\u0014\u0008\u0002\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\"J\u0014\u0010&\u001a\u00020\u00052\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\tJ\u001c\u0010&\u001a\u00020\u00052\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00022\u0006\u0010\u000e\u001a\u00020\rJ\u001c\u0010\'\u001a\u00020\u00052\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00022\u0006\u0010\u000e\u001a\u00020\rJ\"\u0010\'\u001a\u00020\u00052\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\t2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\tJ\"\u0010)\u001a\u00020\u00052\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\t2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\r0\tJ\u0006\u0010*\u001a\u00020\u0005J\u001e\u0010,\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\t0+R\u001b\u00102\u001a\u00020-8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101R\u001b\u00105\u001a\u00020-8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u0010/\u001a\u0004\u00084\u00101\u00a8\u0006:"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;",
        "",
        "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
        "contentList",
        "",
        "saveFtsContent",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "args",
        "",
        "queryFtsContentByArgs",
        "",
        "pageId",
        "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
        "type",
        "keyword",
        "",
        "isPageContainsKeyword",
        "types",
        "queryMatchedPageIds",
        "createTypesWithKeywordQueryArgs",
        "condition",
        "queryFtsContentByCondition",
        "queryAllFtsContent",
        "pageIds",
        "deleteFtsContent",
        "isPageIndexed",
        "",
        "pageCount",
        "isAllPageIndexed",
        "Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;",
        "queryPageStateByArgs",
        "queryAllPageState",
        "queryIndexedPageIds",
        "Lkotlin/Function1;",
        "block",
        "queryIndexedPageStateModels",
        "models",
        "savePageStates",
        "deletePageState",
        "contentTypes",
        "removeAllPageData",
        "truncateAll",
        "Lkotlin/Pair;",
        "queryAll",
        "Lcom/couchbase/lite/Collection;",
        "a",
        "Lkotlin/Lazy;",
        "getContentCollection",
        "()Lcom/couchbase/lite/Collection;",
        "contentCollection",
        "b",
        "getPageStateCollection",
        "pageStateCollection",
        "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
        "couchHolder",
        "<init>",
        "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V",
        "sdk-replicator_overseasRelease"
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
        "SMAP\nFTSProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FTSProvider.kt\ncom/onyx/android/sdk/replicator/fts/provider/FTSProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,205:1\n1855#2,2:206\n766#2:208\n857#2,2:209\n1855#2,2:211\n1549#2:240\n1620#2,3:241\n1549#2:244\n1620#2,3:245\n1549#2:254\n1620#2,3:255\n1549#2:258\n1620#2,3:259\n1549#2:262\n1620#2,3:263\n1477#2:290\n1502#2,3:291\n1505#2,3:301\n1549#2:315\n1620#2,3:316\n1855#2,2:324\n1855#2,2:326\n1549#2:328\n1620#2,3:329\n56#3,8:213\n48#3,5:221\n64#3,4:226\n48#3,5:230\n48#3,5:235\n29#3:248\n48#3,5:249\n56#3,8:266\n48#3,5:274\n64#3,4:279\n58#3:283\n29#3:284\n48#3,5:285\n48#3,5:319\n29#3:332\n48#3,5:333\n29#3:338\n48#3,5:339\n372#4,7:294\n526#4:304\n511#4,6:305\n125#5:311\n152#5,3:312\n*S KotlinDebug\n*F\n+ 1 FTSProvider.kt\ncom/onyx/android/sdk/replicator/fts/provider/FTSProvider\n*L\n40#1:206,2\n42#1:208\n42#1:209,2\n43#1:211,2\n65#1:240\n65#1:241,3\n70#1:244\n70#1:245,3\n101#1:254\n101#1:255,3\n108#1:258\n108#1:259,3\n115#1:262\n115#1:263,3\n136#1:290\n136#1:291,3\n136#1:301,3\n146#1:315\n146#1:316,3\n152#1:324,2\n161#1:326,2\n182#1:328\n182#1:329,3\n48#1:213,8\n48#1:221,5\n48#1:226,4\n57#1:230,5\n65#1:235,5\n88#1:248\n88#1:249,5\n121#1:266,8\n121#1:274,5\n121#1:279,4\n121#1:283\n125#1:284\n125#1:285,5\n148#1:319,5\n200#1:332\n200#1:333,5\n201#1:338\n201#1:339,5\n136#1:294,7\n137#1:304\n137#1:305,6\n138#1:311\n138#1:312,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "couchHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;-><init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V

    new-instance p1, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider$contentCollection$2;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider$contentCollection$2;-><init>(Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->a:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider$pageStateCollection$2;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider$pageStateCollection$2;-><init>(Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic queryIndexedPageStateModels$default(Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider$queryIndexedPageStateModels$1;->INSTANCE:Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider$queryIndexedPageStateModels$1;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->queryIndexedPageStateModels(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createTypesWithKeywordQueryArgs(Ljava/util/List;Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "types"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "keyword"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/data/common/data/TextContentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "type"

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "content"

    invoke-virtual {p1, v1, p2, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->likeExpression(Ljava/lang/String;Ljava/lang/String;Z)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-object p0
.end method

.method public final deleteFtsContent(Ljava/util/Collection;Lcom/onyx/android/sdk/data/common/data/TextContentType;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/common/data/TextContentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ")V"
        }
    .end annotation

    const-string v0, "pageIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    .line 2
    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v0, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p2

    const-string v0, "pageUniqueId"

    .line 3
    invoke-virtual {v2, v0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getContentCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-virtual {p2, v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteByExpression(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    return-void
.end method

.method public final deleteFtsContent(Ljava/util/Collection;Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pageIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    .line 6
    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "pageUniqueId"

    invoke-virtual {v1, v2, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    .line 7
    check-cast p2, Ljava/lang/Iterable;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Lcom/onyx/android/sdk/data/common/data/TextContentType;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, "type"

    .line 13
    invoke-virtual {v1, p2, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    .line 14
    sget-object p2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getContentCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-virtual {p2, v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteByExpression(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    return-void
.end method

.method public final deletePageState(Ljava/util/Collection;Lcom/onyx/android/sdk/data/common/data/TextContentType;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/common/data/TextContentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ")V"
        }
    .end annotation

    const-string v0, "pageIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    .line 2
    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v0, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p2

    const-string v0, "pageId"

    .line 3
    invoke-virtual {v2, v0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getPageStateCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getPageStateCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    const-string v1, "getDatabase(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteByExpression(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    return-void
.end method

.method public final deletePageState(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pageIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    .line 6
    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "pageId"

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, v2, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    .line 7
    check-cast p2, Ljava/lang/Iterable;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Lcom/onyx/android/sdk/data/common/data/TextContentType;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, "type"

    .line 13
    invoke-virtual {v1, p2, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    .line 14
    sget-object p2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getPageStateCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getPageStateCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    const-string v1, "getDatabase(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteByExpression(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    return-void
.end method

.method public final getContentCollection()Lcom/couchbase/lite/Collection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Collection;

    return-object p0
.end method

.method public final getPageStateCollection()Lcom/couchbase/lite/Collection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->b:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Collection;

    return-object p0
.end method

.method public final isAllPageIndexed(Ljava/util/List;I)Z
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;I)Z"
        }
    .end annotation

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/data/common/data/TextContentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "type"

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "indexed"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getPageStateCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->count(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    mul-int/2addr p2, p0

    int-to-long p0, p2

    cmp-long p0, v0, p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isPageContainsKeyword(Ljava/lang/String;Lcom/onyx/android/sdk/data/common/data/TextContentType;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/common/data/TextContentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "keyword"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v0, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const-string p2, "pageUniqueId"

    invoke-virtual {v2, p2, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p2, 0x25

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "content"

    const/4 p3, 0x1

    invoke-virtual {v2, p2, p1, p3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->likeExpression(Ljava/lang/String;Ljava/lang/String;Z)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    new-array p1, p3, [Lcom/couchbase/lite/SelectResult;

    const-string p2, "uniqueId"

    invoke-static {p2}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object p2

    const-string v0, "property(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setVarargSelectResults([Lcom/couchbase/lite/SelectResult;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getContentCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    const-string p2, "_default"

    :cond_1
    invoke-virtual {p1, p0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    const-class p1, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;

    invoke-virtual {v2, p0, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    move p3, v0

    :goto_0
    return p3
.end method

.method public final isPageIndexed(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "types"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v2, v0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/data/common/data/TextContentType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "type"

    invoke-virtual {v2, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v1, "indexed"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getPageStateCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->count(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-long v0, p2

    cmp-long p0, p0, v0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final queryAll()Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getContentCollection()Lcom/couchbase/lite/Collection;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->selectAll()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v2

    const-string v3, "_default"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v3

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v5, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;

    invoke-virtual {v5, v1, v2, v4}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getPageStateCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    new-instance v2, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->selectAll()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v2

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v4

    :cond_3
    :goto_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;

    invoke-virtual {v5, p0, v0, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contents.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " states.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final queryAllFtsContent()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getContentCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->selectAll()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "_default"

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;

    invoke-virtual {v3, p0, v0, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryAllPageState()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getPageStateCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->selectAll()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "_default"

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;

    invoke-virtual {v3, p0, v0, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryFtsContentByArgs(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getContentCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "_default"

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v4

    const-class v5, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;

    invoke-virtual {v3, v4, v5, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getOffset()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setOffset(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getLimit()I

    move-result v3

    if-ge v2, v3, :cond_0

    return-object v1
.end method

.method public final queryFtsContentByCondition(Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;)Ljava/util/List;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "condition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v4, "type"

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "pageUniqueId"

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    :cond_3
    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x25

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "content"

    invoke-virtual {v1, v2, p1, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->likeExpression(Ljava/lang/String;Ljava/lang/String;Z)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->queryFtsContentByArgs(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryIndexedPageIds(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider$queryIndexedPageIds$models$1;->INSTANCE:Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider$queryIndexedPageIds$models$1;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->queryIndexedPageStateModels(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-object p1
.end method

.method public final queryIndexedPageStateModels(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/data/common/data/TextContentType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "type"

    invoke-virtual {v1, p1, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getPageStateCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "_default"

    :cond_2
    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {p2, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    const-class p1, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;

    invoke-virtual {v1, p0, p1, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryMatchedPageIds(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyword"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->createTypesWithKeywordQueryArgs(Ljava/util/List;Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    const/4 p2, 0x1

    new-array v0, p2, [Lcom/couchbase/lite/SelectResult;

    const-string v1, "pageUniqueId"

    invoke-static {v1}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v1

    const-string v2, "property(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setVarargSelectResults([Lcom/couchbase/lite/SelectResult;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setDistinct(Z)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    sget-object p2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getContentCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "_default"

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {p2, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    const-class p1, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;

    invoke-virtual {v1, p0, p1, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final queryPageStateByArgs(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getPageStateCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "_default"

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v4

    const-class v5, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;

    invoke-virtual {v3, v4, v5, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getOffset()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setOffset(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getLimit()I

    move-result v3

    if-ge v2, v3, :cond_0

    return-object v1
.end method

.method public final removeAllPageData(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pageIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->deleteFtsContent(Ljava/util/Collection;Ljava/util/List;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->deletePageState(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final saveFtsContent(Ljava/util/Collection;)V
    .locals 8
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contentList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;

    sget-object v4, Lcom/onyx/android/sdk/base/data/font/CJKCompat;->INSTANCE:Lcom/onyx/android/sdk/base/data/font/CJKCompat;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/data/font/CJKCompat;->CJKToStandard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5}, Lcom/onyx/android/sdk/base/extension/StringKt;->replaceBreakLine$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->beforeSave()V

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getContentCollection()Lcom/couchbase/lite/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveList(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Ljava/util/Collection;)J

    return-void
.end method

.method public final savePageStates(Ljava/util/Collection;Lcom/onyx/android/sdk/data/common/data/TextContentType;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/common/data/TextContentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ")V"
        }
    .end annotation

    const-string v0, "pageIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    check-cast p1, Ljava/lang/Iterable;

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    new-instance v2, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;-><init>()V

    .line 9
    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;->setPageId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;->setType(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;->setIndexed(Z)V

    .line 12
    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->forceUpdateTime()V

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->savePageStates(Ljava/util/List;)V

    return-void
.end method

.method public final savePageStates(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "models"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;

    .line 3
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->forceUpdateTime()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getPageStateCollection()Lcom/couchbase/lite/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, v1, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveList(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Ljava/util/Collection;)J

    return-void
.end method

.method public final truncateAll()V
    .locals 5

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->selectAll()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getContentCollection()Lcom/couchbase/lite/Collection;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getContentCollection()Lcom/couchbase/lite/Collection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/couchbase/lite/Collection;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v3

    const-string v4, "getDatabase(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteByExpression(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getPageStateCollection()Lcom/couchbase/lite/Collection;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->getPageStateCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p0, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteByExpression(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    return-void
.end method
