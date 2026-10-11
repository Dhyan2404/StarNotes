.class public final Lcom/onyx/android/sdk/replicator/note/db/model/extenstion/ShapeModelOptionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeModelOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeModelOptions.kt\ncom/onyx/android/sdk/replicator/note/db/model/extenstion/ShapeModelOptionsKt\n*L\n1#1,47:1\n18#1,6:48\n*S KotlinDebug\n*F\n+ 1 ShapeModelOptions.kt\ncom/onyx/android/sdk/replicator/note/db/model/extenstion/ShapeModelOptionsKt\n*L\n35#1:48,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a8\u0010\u0007\u001a\u0004\u0018\u00018\u0000\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0086\u0008\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001a+\u0010\u000b\u001a\u00020\n\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\t\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u001a\u000c\u0010\u000e\u001a\u0004\u0018\u00010\r*\u00020\u0002\u001a\u0012\u0010\u0010\u001a\u00020\n*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\r\"\u0014\u0010\u0013\u001a\u00020\u00038\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "",
        "T",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
        "",
        "key",
        "Ljava/lang/Class;",
        "cls",
        "getPersistObject",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;",
        "value",
        "",
        "putPersistObject",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Ljava/lang/String;Ljava/lang/Object;)V",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "getExcerptInfoBean",
        "info",
        "setExcerptInfoBean",
        "a",
        "Ljava/lang/String;",
        "KEY_EXCERPT_INFO",
        "sdk-replicator_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShapeModelOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeModelOptions.kt\ncom/onyx/android/sdk/replicator/note/db/model/extenstion/ShapeModelOptionsKt\n*L\n1#1,47:1\n18#1,6:48\n*S KotlinDebug\n*F\n+ 1 ShapeModelOptions.kt\ncom/onyx/android/sdk/replicator/note/db/model/extenstion/ShapeModelOptionsKt\n*L\n35#1:48,6\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "KEY_EXCERPT_INFO"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final getExcerptInfoBean(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
    .locals 10
    .param p0    # Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    if-nez v5, :cond_0

    :goto_0
    move-object v5, v7

    goto :goto_2

    :cond_0
    const-string v8, "KEY_EXCERPT_INFO"

    invoke-virtual {v5, v8, v6}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v9, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-virtual {v8, v5, v9}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    :goto_2
    check-cast v5, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    move-object v6, p0

    :goto_3
    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setPageUniqueId(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setCreatedAt(J)V

    invoke-virtual {v5, v3, v4}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setUpdatedAt(J)V

    move-object v7, v5

    :cond_4
    return-object v7
.end method

.method public static final synthetic getPersistObject(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1, p0, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final putPersistObject(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    :cond_1
    return-void
.end method

.method public static final setExcerptInfoBean(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setUniqueId(Ljava/lang/String;)V

    const-string v0, "KEY_EXCERPT_INFO"

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/extenstion/ShapeModelOptionsKt;->putPersistObject(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
