.class public final Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeConnectionBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeConnectionBean.kt\ncom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,29:1\n1549#2:30\n1620#2,3:31\n*S KotlinDebug\n*F\n+ 1 ShapeConnectionBean.kt\ncom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean\n*L\n25#1:30\n25#1:31,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0000H\u0016J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0007R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;",
        "",
        "()V",
        "shapeReferenceBean",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;",
        "getShapeReferenceBean",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;",
        "setShapeReferenceBean",
        "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;)V",
        "shapeSrcBean",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;",
        "getShapeSrcBean",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;",
        "setShapeSrcBean",
        "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;)V",
        "clone",
        "getConnectionShapeIds",
        "",
        "",
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
        "SMAP\nShapeConnectionBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeConnectionBean.kt\ncom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,29:1\n1549#2:30\n1620#2,3:31\n*S KotlinDebug\n*F\n+ 1 ShapeConnectionBean.kt\ncom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean\n*L\n25#1:30\n25#1:31,3\n*E\n"
    }
.end annotation


# instance fields
.field private shapeReferenceBean:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shapeSrcBean:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.shape.ShapeConnectionBean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;

    move-result-object p0

    return-object p0
.end method

.method public final getConnectionShapeIds()Ljava/util/List;
    .locals 5
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;->shapeSrcBean:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;->getReferenceShapeBeanList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->getShapeId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v3, v2

    :cond_1
    check-cast v3, Ljava/util/Collection;

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;->shapeReferenceBean:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->getShapeId()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getShapeReferenceBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;->shapeReferenceBean:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    return-object p0
.end method

.method public final getShapeSrcBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;->shapeSrcBean:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;

    return-object p0
.end method

.method public final setShapeReferenceBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;->shapeReferenceBean:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    return-void
.end method

.method public final setShapeSrcBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;->shapeSrcBean:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;

    return-void
.end method
