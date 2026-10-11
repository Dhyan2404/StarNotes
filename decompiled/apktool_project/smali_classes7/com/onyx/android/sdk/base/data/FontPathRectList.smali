.class public final Lcom/onyx/android/sdk/base/data/FontPathRectList;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/onyx/android/sdk/base/data/FontPathRect;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontPathRect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontPathRect.kt\ncom/onyx/android/sdk/base/data/FontPathRectList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n1549#2:38\n1620#2,3:39\n1549#2:42\n1620#2,3:43\n*S KotlinDebug\n*F\n+ 1 FontPathRect.kt\ncom/onyx/android/sdk/base/data/FontPathRectList\n*L\n31#1:38\n31#1:39,3\n35#1:42\n35#1:43,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/FontPathRectList;",
        "Ljava/util/ArrayList;",
        "Lcom/onyx/android/sdk/base/data/FontPathRect;",
        "Lkotlin/collections/ArrayList;",
        "()V",
        "getUnionFontRect",
        "Landroid/graphics/RectF;",
        "getUnionPathRect",
        "sdk-base_release"
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
        "SMAP\nFontPathRect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontPathRect.kt\ncom/onyx/android/sdk/base/data/FontPathRectList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n1549#2:38\n1620#2,3:39\n1549#2:42\n1620#2,3:43\n*S KotlinDebug\n*F\n+ 1 FontPathRect.kt\ncom/onyx/android/sdk/base/data/FontPathRectList\n*L\n31#1:38\n31#1:39,3\n35#1:42\n35#1:43,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge contains(Lcom/onyx/android/sdk/base/data/FontPathRect;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/onyx/android/sdk/base/data/FontPathRect;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/base/data/FontPathRect;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/FontPathRectList;->contains(Lcom/onyx/android/sdk/base/data/FontPathRect;)Z

    move-result p0

    return p0
.end method

.method public bridge getSize()I
    .locals 0

    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getUnionFontRect()Landroid/graphics/RectF;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/FontPathRect;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/FontPathRect;->getFontRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RectUtils;->union(Ljava/util/Collection;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final getUnionPathRect()Landroid/graphics/RectF;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/FontPathRect;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/FontPathRect;->getPathRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RectUtils;->union(Ljava/util/Collection;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public bridge indexOf(Lcom/onyx/android/sdk/base/data/FontPathRect;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/onyx/android/sdk/base/data/FontPathRect;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/base/data/FontPathRect;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/FontPathRectList;->indexOf(Lcom/onyx/android/sdk/base/data/FontPathRect;)I

    move-result p0

    return p0
.end method

.method public bridge lastIndexOf(Lcom/onyx/android/sdk/base/data/FontPathRect;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/onyx/android/sdk/base/data/FontPathRect;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/base/data/FontPathRect;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/FontPathRectList;->lastIndexOf(Lcom/onyx/android/sdk/base/data/FontPathRect;)I

    move-result p0

    return p0
.end method

.method public final bridge remove(I)Lcom/onyx/android/sdk/base/data/FontPathRect;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/FontPathRectList;->removeAt(I)Lcom/onyx/android/sdk/base/data/FontPathRect;

    move-result-object p0

    return-object p0
.end method

.method public bridge remove(Lcom/onyx/android/sdk/base/data/FontPathRect;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/onyx/android/sdk/base/data/FontPathRect;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/base/data/FontPathRect;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/FontPathRectList;->remove(Lcom/onyx/android/sdk/base/data/FontPathRect;)Z

    move-result p0

    return p0
.end method

.method public bridge removeAt(I)Lcom/onyx/android/sdk/base/data/FontPathRect;
    .locals 0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/FontPathRect;

    return-object p0
.end method

.method public final bridge size()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/FontPathRectList;->getSize()I

    move-result p0

    return p0
.end method
