.class public final Lcom/onyx/android/sdk/base/data/TouchPointList$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/base/data/TouchPointList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008J\u0010\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/TouchPointList$Companion;",
        "",
        "()V",
        "EMPTY",
        "Landroid/graphics/Matrix;",
        "getBoundingRect",
        "Landroid/graphics/RectF;",
        "list",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "isEmptyMatrix",
        "",
        "matrix",
        "pointsFromByteArray",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "blob",
        "",
        "pointsToByteArray",
        "touchPointList",
        "sdk-baselite_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBoundingRect(Ljava/util/List;)Landroid/graphics/RectF;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/graphics/RectF;->union(FF)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final isEmptyMatrix(Landroid/graphics/Matrix;)Z
    .locals 0
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/onyx/android/sdk/base/data/TouchPointList;->access$getEMPTY$cp()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public final pointsFromByteArray([B)Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 12
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPointList;

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>(I)V

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    array-length p1, p1

    div-int/lit8 p1, p1, 0x20

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v5

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    new-instance v11, Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-object v2, v11

    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFJ)V

    invoke-virtual {v11, v9}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setTiltX(I)V

    invoke-virtual {v11, v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setTiltY(I)V

    invoke-virtual {p0, v11}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final pointsToByteArray(Lcom/onyx/android/sdk/base/data/TouchPointList;)[B
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getPressure()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getSize()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTiltX()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTiltY()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method
