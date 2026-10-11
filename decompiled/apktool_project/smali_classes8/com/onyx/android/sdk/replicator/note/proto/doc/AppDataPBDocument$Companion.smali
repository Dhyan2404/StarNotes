.class public final Lcom/onyx/android/sdk/replicator/note/proto/doc/AppDataPBDocument$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/doc/AppDataPBDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u0005\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u0010\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002*\u00020\u0004J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0003H\u0002J\u000c\u0010\n\u001a\u00020\u0003*\u00020\u0008H\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/AppDataPBDocument$Companion;",
        "",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        "Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;",
        "toFontProtoList",
        "fromFontProtoList",
        "model",
        "Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font;",
        "b",
        "a",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/AppDataPBDocument$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font;)Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUniqueId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font;->getCreatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font;->getUpdatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFormat(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->setFormat(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUrl(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font;->getMd5()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getMd5(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->setMd5(Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font;
    .locals 2

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font$Builder;->setUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font$Builder;->setCreatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font$Builder;->setUpdatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font$Builder;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/common/db/BaseModel;->Companion:Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font$Builder;->setName(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font$Builder;->setFormat(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font$Builder;->setUrl(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getMd5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font$Builder;->setMd5(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final fromFontProtoList(Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;->getProtoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/AppDataPBDocument$Companion;->a(Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font;)Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final toFontProtoList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/AppDataPBDocument$Companion;->b(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList$Builder;->addAllProto(Ljava/lang/Iterable;)Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
