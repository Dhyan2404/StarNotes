.class public final Lcom/onyx/android/sdk/replicator/note/db/NotificationProvider;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NotificationProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,31:1\n48#2,5:32\n*S KotlinDebug\n*F\n+ 1 NotificationProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NotificationProvider\n*L\n24#1:32,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0014\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u0006\u0010\u0008\u001a\u00020\u0005R\u001b\u0010\r\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\n\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/NotificationProvider;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;",
        "",
        "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
        "notifications",
        "",
        "saveAll",
        "loadAll",
        "deleteAll",
        "Lcom/couchbase/lite/Collection;",
        "a",
        "Lkotlin/Lazy;",
        "()Lcom/couchbase/lite/Collection;",
        "notificationCollection",
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
        "SMAP\nNotificationProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NotificationProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,31:1\n48#2,5:32\n*S KotlinDebug\n*F\n+ 1 NotificationProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NotificationProvider\n*L\n24#1:32,5\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lkotlin/Lazy;
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

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;-><init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/NotificationProvider$notificationCollection$2;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/NotificationProvider$notificationCollection$2;-><init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/NotificationProvider;->a:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final a()Lcom/couchbase/lite/Collection;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/NotificationProvider;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Collection;

    return-object p0
.end method

.method public final deleteAll()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->selectAll()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/NotificationProvider;->a()Lcom/couchbase/lite/Collection;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteByExpression(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    return-void
.end method

.method public final loadAll()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->selectAll()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/NotificationProvider;->a()Lcom/couchbase/lite/Collection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "_default"

    :cond_1
    sget-object v3, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v1, p0, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    invoke-virtual {v3, p0, v0, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final saveAll(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notifications"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/NotificationProvider;->a()Lcom/couchbase/lite/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, v1, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveList(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Ljava/util/Collection;)J

    return-void
.end method
