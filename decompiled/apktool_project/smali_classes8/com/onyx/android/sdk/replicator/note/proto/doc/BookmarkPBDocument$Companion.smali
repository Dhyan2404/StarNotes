.class public final Lcom/onyx/android/sdk/replicator/note/proto/doc/BookmarkPBDocument$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/doc/BookmarkPBDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBookmarkPBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BookmarkPBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/BookmarkPBDocument$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n1855#2,2:77\n1549#2:79\n1620#2,3:80\n*S KotlinDebug\n*F\n+ 1 BookmarkPBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/BookmarkPBDocument$Companion\n*L\n43#1:77,2\n61#1:79\n61#1:80,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004*\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0010\u0010\t\u001a\u00020\u0006*\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/BookmarkPBDocument$Companion;",
        "",
        "()V",
        "fromProtoList",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
        "Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$BookmarkList;",
        "revisionId",
        "",
        "toProtoList",
        "sdk-replicator_overseasRelease"
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
        "SMAP\nBookmarkPBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BookmarkPBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/BookmarkPBDocument$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n1855#2,2:77\n1549#2:79\n1620#2,3:80\n*S KotlinDebug\n*F\n+ 1 BookmarkPBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/BookmarkPBDocument$Companion\n*L\n43#1:77,2\n61#1:79\n61#1:80,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BookmarkPBDocument$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromProtoList(Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$BookmarkList;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$BookmarkList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$BookmarkList;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "revisionId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$BookmarkList;->getProtoList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark;

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->setStatus(I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getTitle(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark;->getQuote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->setQuote(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark;->getPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->setPageIndex(I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark;->getPageUniqueId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getPageUniqueId(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->setPageUniqueId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark;->getUuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getUuid(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark;->getCreatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark;->getUpdatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->setRevisionId(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object p1
.end method

.method public final toProtoList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$BookmarkList;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$BookmarkList;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$BookmarkList;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$BookmarkList$Builder;

    move-result-object p0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;->setUuid(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;->setCreatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;->setUpdatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->getPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;->setPageIndex(I)Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;->setPageUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;->setTitle(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->getQuote()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;->setQuote(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->getStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;->setStatus(I)Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$BookmarkList$Builder;->addProto(Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$Bookmark;)Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$BookmarkList$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$BookmarkList$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/BookmarkProto$BookmarkList;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
