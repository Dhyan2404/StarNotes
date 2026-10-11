.class public final Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStickerProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerProvider.kt\ncom/onyx/android/sdk/replicator/sticker/db/StickerProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,269:1\n48#2,5:270\n38#2,15:275\n48#2,5:304\n48#2,5:311\n38#2,15:316\n48#2,5:331\n48#2,5:336\n48#2,5:341\n1855#3,2:290\n1002#3,2:292\n1549#3:294\n1620#3,3:295\n1855#3,2:298\n1002#3,2:300\n1855#3,2:302\n1855#3,2:309\n1549#3:346\n1620#3,3:347\n1855#3,2:350\n*S KotlinDebug\n*F\n+ 1 StickerProvider.kt\ncom/onyx/android/sdk/replicator/sticker/db/StickerProvider\n*L\n50#1:270,5\n93#1:275,15\n168#1:304,5\n179#1:311,5\n186#1:316,15\n200#1:331,5\n245#1:336,5\n258#1:341,5\n99#1:290,2\n103#1:292,2\n110#1:294\n110#1:295,3\n112#1:298,2\n115#1:300,2\n122#1:302,2\n169#1:309,2\n57#1:346\n57#1:347,3\n75#1:350,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010E\u001a\u00020D\u00a2\u0006\u0004\u0008F\u0010GJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\u000e\u001a\u00020\u00062\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000cJ\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0004J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000f\u001a\u00020\u0004J\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0004J\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0004J\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000cJ\u000e\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0004J\u000e\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001aJ\u000e\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001aJ\u0014\u0010\u001f\u001a\u00020\u00062\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u000cJ\u000e\u0010 \u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u000cJ\u0014\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u000c2\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010#\u001a\u00020\u001aJ\u0016\u0010%\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u0014\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020&0\u000c2\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010(\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010)\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0004J\u0016\u0010*\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004J\u000e\u0010+\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0004J\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020,0\u000cJ\u000e\u00100\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.J\u000e\u00101\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0004R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0014\u0010;\u001a\u0002068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u00108R\u0014\u0010=\u001a\u0002068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u00108R\u0014\u0010?\u001a\u0002068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u00108R\u0014\u0010C\u001a\u00020@8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008A\u0010B\u00a8\u0006H"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;",
        "",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
        "sticker",
        "",
        "categoryId",
        "",
        "addSticker",
        "Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;",
        "compose",
        "syncStickers",
        "deleteSticker",
        "",
        "stickers",
        "deleteStickers",
        "id",
        "",
        "isStickerExist",
        "loadStickerById",
        "loadStickerByCategory",
        "parentCategoryId",
        "loadStickerByParentCategory",
        "loadRecentStickers",
        "deleteStickerByCategory",
        "newCategoryId",
        "moveStickerCategory",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "category",
        "addCategory",
        "updateCategory",
        "categories",
        "syncCategories",
        "deleteCategory",
        "loadAllCategory",
        "loadSubCategories",
        "loadDefaultCategory",
        "stickerId",
        "addRelation",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerRelationModel;",
        "loadRelationByCategoryId",
        "deleteRelationByCategoryId",
        "deleteRelationByStickerId",
        "updateRelation",
        "saveRecentUsage",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerUsageModel;",
        "loadRecentUsage",
        "",
        "deleteSize",
        "deleteOldUsage",
        "deleteUsageByStickerId",
        "Lcom/couchbase/lite/Database;",
        "a",
        "Lcom/couchbase/lite/Database;",
        "database",
        "Lcom/couchbase/lite/Collection;",
        "b",
        "Lcom/couchbase/lite/Collection;",
        "stickerCollection",
        "c",
        "categoryCollection",
        "d",
        "relationCollection",
        "e",
        "usageCollection",
        "",
        "f",
        "I",
        "maxRecent",
        "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
        "holder",
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
        "SMAP\nStickerProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerProvider.kt\ncom/onyx/android/sdk/replicator/sticker/db/StickerProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,269:1\n48#2,5:270\n38#2,15:275\n48#2,5:304\n48#2,5:311\n38#2,15:316\n48#2,5:331\n48#2,5:336\n48#2,5:341\n1855#3,2:290\n1002#3,2:292\n1549#3:294\n1620#3,3:295\n1855#3,2:298\n1002#3,2:300\n1855#3,2:302\n1855#3,2:309\n1549#3:346\n1620#3,3:347\n1855#3,2:350\n*S KotlinDebug\n*F\n+ 1 StickerProvider.kt\ncom/onyx/android/sdk/replicator/sticker/db/StickerProvider\n*L\n50#1:270,5\n93#1:275,15\n168#1:304,5\n179#1:311,5\n186#1:316,15\n200#1:331,5\n245#1:336,5\n258#1:341,5\n99#1:290,2\n103#1:292,2\n110#1:294\n110#1:295,3\n112#1:298,2\n115#1:300,2\n122#1:302,2\n169#1:309,2\n57#1:346\n57#1:347,3\n75#1:350,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/couchbase/lite/Database;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/couchbase/lite/Collection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/couchbase/lite/Collection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/couchbase/lite/Collection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/couchbase/lite/Collection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureDB()Lcom/couchbase/lite/Database;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    const-class v0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->b:Lcom/couchbase/lite/Collection;

    const-class v0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->c:Lcom/couchbase/lite/Collection;

    const-class v0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerRelationModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->d:Lcom/couchbase/lite/Collection;

    const-class v0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerUsageModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->e:Lcom/couchbase/lite/Collection;

    const/16 p1, 0x32

    iput p1, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->f:I

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->i(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->k(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->l(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Ljava/util/List;Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->n(Ljava/util/List;Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->m(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->j(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V

    return-void
.end method

.method public static synthetic g(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->h(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;Ljava/lang/String;)V

    return-void
.end method

.method public static final h(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;Ljava/lang/String;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$categoryId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->b:Lcom/couchbase/lite/Collection;

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveDocument(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->addRelation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final i(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/lang/String;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$categoryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->c:Lcom/couchbase/lite/Collection;

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteById(Lcom/couchbase/lite/Collection;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->deleteStickerByCategory(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->deleteRelationByCategoryId(Ljava/lang/String;)V

    return-void
.end method

.method public static final j(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->b:Lcom/couchbase/lite/Collection;

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->delete(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->deleteRelationByStickerId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->deleteUsageByStickerId(Ljava/lang/String;)V

    return-void
.end method

.method public static final k(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/util/List;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$stickers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->b:Lcom/couchbase/lite/Collection;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    invoke-virtual {v0, v1, v2, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteInBatch(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Ljava/util/List;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->deleteRelationByStickerId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->deleteUsageByStickerId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final l(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/lang/String;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$stickerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "stickerId"

    invoke-virtual {v1, v2, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->e:Lcom/couchbase/lite/Collection;

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    invoke-virtual {v1, v2, v3, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteByExpression(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    new-instance v0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerUsageModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerUsageModel;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerUsageModel;->setStickerId(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->e:Lcom/couchbase/lite/Collection;

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveDocument(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->e:Lcom/couchbase/lite/Collection;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->countAll(Lcom/couchbase/lite/Collection;)J

    move-result-wide v0

    iget p1, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->f:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->deleteOldUsage(J)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/util/List;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$categories"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->notEqualExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->c:Lcom/couchbase/lite/Collection;

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    invoke-virtual {v1, v2, v3, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteByExpression(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->c:Lcom/couchbase/lite/Collection;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveList(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Ljava/util/Collection;)J

    return-void
.end method

.method public static final n(Ljava/util/List;Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;)V
    .locals 6

    const-string v0, "$stickerModelList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$compose"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object v2, p1, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->b:Lcom/couchbase/lite/Collection;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    invoke-virtual {v1, v2, v3, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteInBatch(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Ljava/util/List;)V

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object v2, p1, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->b:Lcom/couchbase/lite/Collection;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;->getStickers()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v1, v2, v3, v4}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveList(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Ljava/util/Collection;)J

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object v1, p1, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->d:Lcom/couchbase/lite/Collection;

    iget-object v2, p1, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    new-instance v3, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v3}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v4, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v5, "stickerId"

    invoke-virtual {v4, v5, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteByExpression(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->d:Lcom/couchbase/lite/Collection;

    iget-object p1, p1, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;->getStickerCategoryShips()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveList(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Ljava/util/Collection;)J

    return-void
.end method


# virtual methods
.method public final addCategory(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->c:Lcom/couchbase/lite/Collection;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveDocument(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)V

    return-void
.end method

.method public final addRelation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "stickerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerRelationModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerRelationModel;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerRelationModel;->setStickerId(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerRelationModel;->setCategoryId(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->d:Lcom/couchbase/lite/Collection;

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveDocument(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)V

    return-void
.end method

.method public final addSticker(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    new-instance v1, Lcom/sunia/HTREnginev2/qzm;

    invoke-direct {v1, p0, p1, p2}, Lcom/sunia/HTREnginev2/qzm;-><init>(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/Database;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V

    return-void
.end method

.method public final deleteCategory(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "categoryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    new-instance v1, Lcom/sunia/HTREnginev2/ozm;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/ozm;-><init>(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/Database;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V

    return-void
.end method

.method public final deleteOldUsage(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "updatedAt"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->getOrdering(Ljava/lang/String;Z)Lcom/couchbase/lite/Ordering;

    move-result-object v2

    new-array v4, v3, [Lcom/couchbase/lite/Ordering;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setOrdering([Lcom/couchbase/lite/Ordering;)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setDistinct(Z)V

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object p2, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->e:Lcom/couchbase/lite/Collection;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "_default"

    :cond_2
    invoke-virtual {p1, p2, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p2

    const-class v0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerUsageModel;

    invoke-virtual {v1, p2, v0, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->e:Lcom/couchbase/lite/Collection;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    invoke-virtual {p1, v0, p0, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteInBatch(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Ljava/util/List;)V

    return-void
.end method

.method public final deleteRelationByCategoryId(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "categoryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v2, v0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->d:Lcom/couchbase/lite/Collection;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    invoke-virtual {p1, v0, p0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteByExpression(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    return-void
.end method

.method public final deleteRelationByStickerId(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "stickerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v2, v0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->d:Lcom/couchbase/lite/Collection;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    invoke-virtual {p1, v0, p0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteByExpression(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    return-void
.end method

.method public final deleteSticker(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    new-instance v1, Lcom/sunia/HTREnginev2/tzm;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/tzm;-><init>(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/Database;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V

    return-void
.end method

.method public final deleteStickerByCategory(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "categoryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->loadStickerByCategory(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->deleteStickers(Ljava/util/List;)V

    return-void
.end method

.method public final deleteStickers(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "stickers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    new-instance v1, Lcom/sunia/HTREnginev2/pzm;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/pzm;-><init>(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/Database;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V

    return-void
.end method

.method public final deleteUsageByStickerId(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "stickerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v2, v0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->e:Lcom/couchbase/lite/Collection;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    invoke-virtual {p1, v0, p0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteByExpression(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    return-void
.end method

.method public final isStickerExist(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "uniqueId"

    invoke-virtual {v1, v2, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->b:Lcom/couchbase/lite/Collection;

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->count(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadAllCategory()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "parentUniqueId"

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->nullOrEmpty(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->c:Lcom/couchbase/lite/Collection;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "_default"

    :cond_1
    invoke-virtual {v2, v3, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    const-class v2, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {v1, v0, v2, v4}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->loadSubCategories(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setSubCategory(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final loadDefaultCategory()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->c:Lcom/couchbase/lite/Collection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setDistinct(Z)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "_default"

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {v1, p0, v0, v4}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_2

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    return-object p0
.end method

.method public final loadRecentStickers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->loadRecentUsage()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/sticker/model/StickerUsageModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerUsageModel;->getStickerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->loadStickerById(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/lite/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final loadRecentUsage()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerUsageModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "updatedAt"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->getOrdering(Ljava/lang/String;Z)Lcom/couchbase/lite/Ordering;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/couchbase/lite/Ordering;

    aput-object v2, v4, v3

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setOrdering([Lcom/couchbase/lite/Ordering;)V

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->e:Lcom/couchbase/lite/Collection;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "_default"

    :cond_1
    invoke-virtual {v2, p0, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerUsageModel;

    invoke-virtual {v1, p0, v0, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final loadRelationByCategoryId(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerRelationModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "categoryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v2, v0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->d:Lcom/couchbase/lite/Collection;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "_default"

    :cond_1
    invoke-virtual {p1, p0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    const-class p1, Lcom/onyx/android/sdk/replicator/sticker/model/StickerRelationModel;

    invoke-virtual {v2, p0, p1, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final loadStickerByCategory(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "categoryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->loadRelationByCategoryId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/sticker/model/StickerRelationModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerRelationModel;->getStickerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->loadStickerById(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/lite/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_1

    new-instance p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider$loadStickerByCategory$$inlined$sortBy$1;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider$loadStickerByCategory$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    return-object v0
.end method

.method public final loadStickerById(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "uniqueId"

    invoke-virtual {v1, v2, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->b:Lcom/couchbase/lite/Collection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setDistinct(Z)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "_default"

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    const-class p1, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    invoke-virtual {v1, p0, p1, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_2

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    return-object p0
.end method

.method public final loadStickerByParentCategory(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parentCategoryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->loadSubCategories(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->loadStickerByCategory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_2

    new-instance p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider$loadStickerByParentCategory$$inlined$sortBy$1;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider$loadStickerByParentCategory$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-object v0
.end method

.method public final loadSubCategories(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "categoryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "parentUniqueId"

    invoke-virtual {v1, v2, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->c:Lcom/couchbase/lite/Collection;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "_default"

    :cond_1
    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    const-class p1, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {v1, p0, p1, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final moveStickerCategory(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newCategoryId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->updateRelation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final saveRecentUsage(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "stickerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    new-instance v1, Lcom/sunia/HTREnginev2/uzm;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/uzm;-><init>(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/Database;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V

    return-void
.end method

.method public final syncCategories(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "categories"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    new-instance v1, Lcom/sunia/HTREnginev2/rzm;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/rzm;-><init>(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/Database;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V

    return-void
.end method

.method public final syncStickers(Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "compose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->notEqualExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/couchbase/lite/SelectResult;

    const-string v3, "uniqueId"

    invoke-static {v3}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v3

    const-string v4, "property(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setVarargSelectResults([Lcom/couchbase/lite/SelectResult;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->b:Lcom/couchbase/lite/Collection;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "_default"

    :cond_1
    invoke-virtual {v2, v3, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    const-class v2, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    invoke-virtual {v1, v0, v2, v4}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    new-instance v2, Lcom/sunia/HTREnginev2/szm;

    invoke-direct {v2, v0, p0, p1}, Lcom/sunia/HTREnginev2/szm;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;)V

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/Database;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V

    return-void
.end method

.method public final updateCategory(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->c:Lcom/couchbase/lite/Collection;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->update(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)V

    return-void
.end method

.method public final updateRelation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "stickerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newCategoryId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v2, v0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getUpdateValues()Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "categoryId"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    iget-object p2, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->d:Lcom/couchbase/lite/Collection;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->a:Lcom/couchbase/lite/Database;

    invoke-virtual {p1, p2, p0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->updateInBatch(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    return-void
.end method
