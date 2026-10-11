.class public final Lcom/onyx/galaxy/note/category/data/QuotaEnableOrDeletedDocFilter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/data/QuotaEnableOrDeletedDocFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/data/QuotaEnableOrDeletedDocFilter$Companion;",
        "",
        "()V",
        "QUOTA_ENABLE_OR_DELETED_DOC_UNIQUE_ID",
        "",
        "enableOrDeleteDocArgs",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "getEnableOrDeleteDocArgs",
        "()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "enableOrDeleteDocArgs$delegate",
        "Lkotlin/Lazy;",
        "info",
        "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        "getInfo",
        "()Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        "generateEnableOrDeleteDocCBArgs",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/data/QuotaEnableOrDeletedDocFilter$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$generateEnableOrDeleteDocCBArgs(Lcom/onyx/galaxy/note/category/data/QuotaEnableOrDeletedDocFilter$Companion;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/data/QuotaEnableOrDeletedDocFilter$Companion;->generateEnableOrDeleteDocCBArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEnableOrDeleteDocArgs(Lcom/onyx/galaxy/note/category/data/QuotaEnableOrDeletedDocFilter$Companion;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/data/QuotaEnableOrDeletedDocFilter$Companion;->getEnableOrDeleteDocArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method

.method private final generateEnableOrDeleteDocCBArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 7

    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {p0, v2, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    new-instance v6, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v6}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    invoke-virtual {v3, v2}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const-string v2, "type"

    invoke-virtual {p0, v2, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    aput-object v5, v1, v4

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "association"

    const-string v2, "associationType"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->nestedInExpression(Ljava/util/List;[Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-object v6
.end method

.method private final getEnableOrDeleteDocArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 0

    invoke-static {}, Lcom/onyx/galaxy/note/category/data/QuotaEnableOrDeletedDocFilter;->access$getEnableOrDeleteDocArgs$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-object p0
.end method


# virtual methods
.method public final getInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/category/data/QuotaEnableOrDeletedDocFilter;->access$getInfo$cp()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object p0

    return-object p0
.end method
