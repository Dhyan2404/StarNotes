.class public final Lcom/onyx/android/sdk/note/common/shape/ShapeConnection$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static ensureShapeSourceBean(Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;->getShapeSrcBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;-><init>()V

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;->setShapeSrcBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;)V

    :cond_0
    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;->getShapeSrcBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static hasReferenceShapeBeanList(Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;->getShapeSrcBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;->getReferenceShapeBeanList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static resetConnection(Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;->setShapeReferenceBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;)V

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;->setShapeSrcBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;)V

    return-void
.end method
