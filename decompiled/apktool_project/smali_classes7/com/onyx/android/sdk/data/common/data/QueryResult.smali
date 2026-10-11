.class public final Lcom/onyx/android/sdk/data/common/data/QueryResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/common/data/QueryResult$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQueryResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryResult.kt\ncom/onyx/android/sdk/data/common/data/QueryResult\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 &*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001&B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\u001fJ\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010!\u001a\u00020\u0011J\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0017J\u0008\u0010#\u001a\u00020$H\u0007J\u0008\u0010%\u001a\u00020$H\u0007R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR \u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R&\u0010\u0016\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/data/QueryResult;",
        "T",
        "Ljava/io/Serializable;",
        "()V",
        "count",
        "",
        "getCount",
        "()J",
        "setCount",
        "(J)V",
        "exception",
        "Lcom/onyx/android/sdk/data/common/exception/ContentException;",
        "getException",
        "()Lcom/onyx/android/sdk/data/common/exception/ContentException;",
        "setException",
        "(Lcom/onyx/android/sdk/data/common/exception/ContentException;)V",
        "fetchSource",
        "",
        "getFetchSource",
        "()I",
        "setFetchSource",
        "(I)V",
        "list",
        "",
        "getList",
        "()Ljava/util/List;",
        "setList",
        "(Ljava/util/List;)V",
        "add",
        "",
        "t",
        "(Ljava/lang/Object;)V",
        "copy",
        "limit",
        "ensureList",
        "hasException",
        "",
        "isContentEmpty",
        "Companion",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nQueryResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryResult.kt\ncom/onyx/android/sdk/data/common/data/QueryResult\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/data/common/data/QueryResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private count:J

.field private exception:Lcom/onyx/android/sdk/data/common/exception/ContentException;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fetchSource:I

.field private list:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "results"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/QueryResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/data/QueryResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->Companion:Lcom/onyx/android/sdk/data/common/data/QueryResult$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/QueryResult;->ensureList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final copy(I)Lcom/onyx/android/sdk/data/common/data/QueryResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/onyx/android/sdk/data/common/data/QueryResult<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/QueryResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/data/QueryResult;-><init>()V

    iget-wide v1, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->count:J

    iput-wide v1, v0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->count:J

    iget v1, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->fetchSource:I

    iput v1, v0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->fetchSource:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->list:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->list:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v2

    if-ge v1, v2, :cond_0

    if-ge v1, p1, :cond_0

    iget-object v2, v0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->list:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    iget-object v3, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->list:Ljava/util/List;

    invoke-static {v3, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getElement(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final ensureList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->list:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->list:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->list:Ljava/util/List;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->count:J

    return-wide v0
.end method

.method public final getException()Lcom/onyx/android/sdk/data/common/exception/ContentException;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->exception:Lcom/onyx/android/sdk/data/common/exception/ContentException;

    return-object p0
.end method

.method public final getFetchSource()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->fetchSource:I

    return p0
.end method

.method public final getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->list:Ljava/util/List;

    return-object p0
.end method

.method public final hasException()Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->exception:Lcom/onyx/android/sdk/data/common/exception/ContentException;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isContentEmpty()Z
    .locals 4
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->list:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final setCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->count:J

    return-void
.end method

.method public final setException(Lcom/onyx/android/sdk/data/common/exception/ContentException;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/exception/ContentException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->exception:Lcom/onyx/android/sdk/data/common/exception/ContentException;

    return-void
.end method

.method public final setFetchSource(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->fetchSource:I

    return-void
.end method

.method public final setList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/QueryResult;->list:Ljava/util/List;

    return-void
.end method
