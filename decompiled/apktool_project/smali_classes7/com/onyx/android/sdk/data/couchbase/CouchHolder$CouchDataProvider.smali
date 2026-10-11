.class public final Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CouchDataProvider"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005J\n\u0010\u0006\u001a\u00020\u0007*\u00020\u0005J\u0012\u0010\u0006\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tJ\u0018\u0010\n\u001a\u00020\u0005*\u00020\u00052\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000cJ\u0018\u0010\r\u001a\u00020\u0005*\u00020\u00052\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000cJ\u0014\u0010\u0010\u001a\u0004\u0018\u00010\t*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000fJ\u0014\u0010\u0012\u001a\u00020\u0005*\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0013J\u0018\u0010\u0014\u001a\u00020\u0005*\u00020\u00052\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000c\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;",
        "",
        "()V",
        "clear",
        "",
        "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
        "delete",
        "",
        "document",
        "Lcom/couchbase/lite/Document;",
        "deleteList",
        "documentList",
        "",
        "deleteListById",
        "idList",
        "",
        "getDocument",
        "id",
        "save",
        "Lcom/couchbase/lite/MutableDocument;",
        "saveList",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->deleteList$lambda$1(Ljava/util/List;Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->saveList$lambda$0(Ljava/util/List;Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V

    return-void
.end method

.method private static final deleteList$lambda$1(Ljava/util/List;Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V
    .locals 2

    const-string v0, "$documentList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_deleteList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/Document;

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->delete(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Lcom/couchbase/lite/Document;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final saveList$lambda$0(Ljava/util/List;Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V
    .locals 2

    const-string v0, "$documentList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_saveList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/MutableDocument;

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->save(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Lcom/couchbase/lite/MutableDocument;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final clear(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)Z
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/couchbase/lite/SelectResult;

    sget-object v2, Lcom/couchbase/lite/Meta;->id:Lcom/couchbase/lite/MetaExpression;

    invoke-static {v2}, Lcom/couchbase/lite/SelectResult;->expression(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/couchbase/lite/QueryBuilder;->select([Lcom/couchbase/lite/SelectResult;)Lcom/couchbase/lite/Select;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollectionRequireNonNull()Lcom/couchbase/lite/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object v1

    const-string v2, "from(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v1}, Lcom/couchbase/lite/Query;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/couchbase/lite/ResultSet;->allResults()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_2

    :cond_1
    :goto_1
    move v2, v0

    :goto_2
    if-eqz v2, :cond_2

    return v3

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/couchbase/lite/Result;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lcom/couchbase/lite/Result;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->getDocument(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/lang/String;)Lcom/couchbase/lite/Document;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->deleteList(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    return v0
.end method

.method public final delete(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Lcom/couchbase/lite/Document;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Document;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "document"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, p0, v0, p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollection$default(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/lang/String;ILjava/lang/Object;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p2}, Lcom/couchbase/lite/Collection;->delete(Lcom/couchbase/lite/Document;)V

    return-object p1
.end method

.method public final delete(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureDB()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Database;->delete()V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->close()V

    return-void
.end method

.method public final deleteList(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
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
            "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
            "Ljava/util/List<",
            "+",
            "Lcom/couchbase/lite/Document;",
            ">;)",
            "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "documentList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureDB()Lcom/couchbase/lite/Database;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/bde;

    invoke-direct {v0, p2, p1}, Lcom/sunia/HTREnginev2/bde;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/Database;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V

    return-object p1
.end method

.method public final deleteListById(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
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
            "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->getDocument(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/lang/String;)Lcom/couchbase/lite/Document;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->deleteList(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    return-object p1
.end method

.method public final getDocument(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/lang/String;)Lcom/couchbase/lite/Document;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "id"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollection$default(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/lang/String;ILjava/lang/Object;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/couchbase/lite/Collection;->getDocument(Ljava/lang/String;)Lcom/couchbase/lite/Document;

    move-result-object p0
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public final save(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Lcom/couchbase/lite/MutableDocument;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/MutableDocument;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollection$default(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/lang/String;ILjava/lang/Object;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/couchbase/lite/Collection;->save(Lcom/couchbase/lite/MutableDocument;)V

    return-object p1
.end method

.method public final saveList(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
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
            "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/MutableDocument;",
            ">;)",
            "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "documentList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureDB()Lcom/couchbase/lite/Database;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/ade;

    invoke-direct {v0, p2, p1}, Lcom/sunia/HTREnginev2/ade;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/Database;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V

    return-object p1
.end method
