.class public final Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010 \n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 S2\u00020\u0001:\u0001SB\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020\nJ\u0006\u0010R\u001a\u00020\u0000R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R \u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R \u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0014\u0010\u0002\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0016\"\u0004\u0008!\u0010\u0018R\u001c\u0010\"\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0006\"\u0004\u0008$\u0010\u0008R\u001a\u0010%\u001a\u00020&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001c\u00101\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0006\"\u0004\u00083\u0010\u0008R\u001a\u00104\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u001c\"\u0004\u00086\u0010\u001eR\u001a\u00107\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u0006\"\u0004\u00089\u0010\u0008R\u001c\u0010:\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u0006\"\u0004\u0008<\u0010\u0008R\"\u0010=\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010>X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\u001a\u0010C\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010\u001c\"\u0004\u0008E\u0010\u001eR\u001a\u0010F\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010\u001c\"\u0004\u0008H\u0010\u001eR\u001a\u0010I\u001a\u00020JX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010N\u00a8\u0006T"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "Ljava/io/Serializable;",
        "()V",
        "accountId",
        "",
        "getAccountId",
        "()Ljava/lang/String;",
        "setAccountId",
        "(Ljava/lang/String;)V",
        "conditionGroup",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "getConditionGroup",
        "()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "setConditionGroup",
        "(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V",
        "cursor",
        "getCursor",
        "setCursor",
        "fetchPolicy",
        "",
        "getFetchPolicy$annotations",
        "getFetchPolicy",
        "()I",
        "setFetchPolicy",
        "(I)V",
        "filterParent",
        "",
        "getFilterParent",
        "()Z",
        "setFilterParent",
        "(Z)V",
        "limit",
        "getLimit",
        "setLimit",
        "mimeType",
        "getMimeType",
        "setMimeType",
        "offset",
        "",
        "getOffset",
        "()J",
        "setOffset",
        "(J)V",
        "order",
        "Lcom/onyx/android/sdk/base/data/SortOrder;",
        "getOrder",
        "()Lcom/onyx/android/sdk/base/data/SortOrder;",
        "setOrder",
        "(Lcom/onyx/android/sdk/base/data/SortOrder;)V",
        "parentId",
        "getParentId",
        "setParentId",
        "precisionSearch",
        "getPrecisionSearch",
        "setPrecisionSearch",
        "provider",
        "getProvider",
        "setProvider",
        "query",
        "getQuery",
        "setQuery",
        "queryIdList",
        "",
        "getQueryIdList",
        "()Ljava/util/List;",
        "setQueryIdList",
        "(Ljava/util/List;)V",
        "recursionSearch",
        "getRecursionSearch",
        "setRecursionSearch",
        "saveToLocal",
        "getSaveToLocal",
        "setSaveToLocal",
        "sortBy",
        "Lcom/onyx/android/sdk/base/data/SortBy;",
        "getSortBy",
        "()Lcom/onyx/android/sdk/base/data/SortBy;",
        "setSortBy",
        "(Lcom/onyx/android/sdk/base/data/SortBy;)V",
        "andWith",
        "",
        "newCondition",
        "copy",
        "Companion",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_LIMIT:I = 0x32


# instance fields
.field private accountId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private conditionGroup:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cursor:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fetchPolicy:I

.field private filterParent:Z

.field private limit:I

.field private mimeType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private offset:J

.field private order:Lcom/onyx/android/sdk/base/data/SortOrder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private precisionSearch:Z

.field private provider:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private query:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private queryIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recursionSearch:Z

.field private saveToLocal:Z

.field private sortBy:Lcom/onyx/android/sdk/base/data/SortBy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->limit:I

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->BAIDU_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->provider:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/base/data/SortBy;->Name:Lcom/onyx/android/sdk/base/data/SortBy;

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->sortBy:Lcom/onyx/android/sdk/base/data/SortBy;

    sget-object v0, Lcom/onyx/android/sdk/base/data/SortOrder;->Desc:Lcom/onyx/android/sdk/base/data/SortOrder;

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->order:Lcom/onyx/android/sdk/base/data/SortOrder;

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->fetchPolicy:I

    iput-boolean v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->saveToLocal:Z

    return-void
.end method

.method public static synthetic getFetchPolicy$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final andWith(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newCondition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->conditionGroup:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->conditionGroup:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getWhereEx()Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->conditionGroup:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    :goto_0
    return-void
.end method

.method public final copy()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    return-object p0
.end method

.method public final getAccountId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->accountId:Ljava/lang/String;

    return-object p0
.end method

.method public final getConditionGroup()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->conditionGroup:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-object p0
.end method

.method public final getCursor()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->cursor:Ljava/lang/String;

    return-object p0
.end method

.method public final getFetchPolicy()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->fetchPolicy:I

    return p0
.end method

.method public final getFilterParent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->filterParent:Z

    return p0
.end method

.method public final getLimit()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->limit:I

    return p0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public final getOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->offset:J

    return-wide v0
.end method

.method public final getOrder()Lcom/onyx/android/sdk/base/data/SortOrder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->order:Lcom/onyx/android/sdk/base/data/SortOrder;

    return-object p0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPrecisionSearch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->precisionSearch:Z

    return p0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->provider:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->query:Ljava/lang/String;

    return-object p0
.end method

.method public final getQueryIdList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->queryIdList:Ljava/util/List;

    return-object p0
.end method

.method public final getRecursionSearch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->recursionSearch:Z

    return p0
.end method

.method public final getSaveToLocal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->saveToLocal:Z

    return p0
.end method

.method public final getSortBy()Lcom/onyx/android/sdk/base/data/SortBy;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->sortBy:Lcom/onyx/android/sdk/base/data/SortBy;

    return-object p0
.end method

.method public final setAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->accountId:Ljava/lang/String;

    return-void
.end method

.method public final setConditionGroup(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->conditionGroup:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-void
.end method

.method public final setCursor(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->cursor:Ljava/lang/String;

    return-void
.end method

.method public final setFetchPolicy(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->fetchPolicy:I

    return-void
.end method

.method public final setFilterParent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->filterParent:Z

    return-void
.end method

.method public final setLimit(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->limit:I

    return-void
.end method

.method public final setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public final setOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->offset:J

    return-void
.end method

.method public final setOrder(Lcom/onyx/android/sdk/base/data/SortOrder;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/SortOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->order:Lcom/onyx/android/sdk/base/data/SortOrder;

    return-void
.end method

.method public final setParentId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->parentId:Ljava/lang/String;

    return-void
.end method

.method public final setPrecisionSearch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->precisionSearch:Z

    return-void
.end method

.method public final setProvider(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->provider:Ljava/lang/String;

    return-void
.end method

.method public final setQuery(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->query:Ljava/lang/String;

    return-void
.end method

.method public final setQueryIdList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->queryIdList:Ljava/util/List;

    return-void
.end method

.method public final setRecursionSearch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->recursionSearch:Z

    return-void
.end method

.method public final setSaveToLocal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->saveToLocal:Z

    return-void
.end method

.method public final setSortBy(Lcom/onyx/android/sdk/base/data/SortBy;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/SortBy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->sortBy:Lcom/onyx/android/sdk/base/data/SortBy;

    return-void
.end method
