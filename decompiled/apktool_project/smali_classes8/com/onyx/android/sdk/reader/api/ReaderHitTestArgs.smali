.class public final Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001BA\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001a\u00a2\u0006\u0004\u0008 \u0010!R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0010\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0004\u001a\u0004\u0008\u000f\u0010\u0006R\u0017\u0010\u0016\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0019\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\n\u001a\u0004\u0008\u0018\u0010\u000cR\u0017\u0010\u001f\u001a\u00020\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;",
        "",
        "",
        "a",
        "I",
        "getPageIndex",
        "()I",
        "pageIndex",
        "",
        "b",
        "F",
        "getPageScale",
        "()F",
        "pageScale",
        "c",
        "getPageDisplayOrientation",
        "pageDisplayOrientation",
        "Landroid/graphics/PointF;",
        "d",
        "Landroid/graphics/PointF;",
        "getPointInDocument",
        "()Landroid/graphics/PointF;",
        "pointInDocument",
        "e",
        "getHitTestPadding",
        "hitTestPadding",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "f",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "getPosition",
        "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "position",
        "<init>",
        "(IFILandroid/graphics/PointF;FLcom/onyx/android/sdk/reader/api/ReaderPosition;)V",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:F

.field public final c:I

.field public final d:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:F

.field public final f:Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IFILandroid/graphics/PointF;FLcom/onyx/android/sdk/reader/api/ReaderPosition;)V
    .locals 1
    .param p4    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pointInDocument"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->a:I

    .line 3
    iput p2, p0, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->b:F

    .line 4
    iput p3, p0, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->c:I

    .line 5
    iput-object p4, p0, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->d:Landroid/graphics/PointF;

    .line 6
    iput p5, p0, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->e:F

    .line 7
    iput-object p6, p0, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->f:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-void
.end method

.method public synthetic constructor <init>(IFILandroid/graphics/PointF;FLcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    .line 8
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v2, "FLOAT_ONE"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, p3

    :goto_2
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v7, v0

    goto :goto_3

    :cond_3
    move v7, p5

    :goto_3
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_4

    .line 9
    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v0

    move-object v8, v0

    goto :goto_4

    :cond_4
    move-object v8, p6

    :goto_4
    move-object v2, p0

    move-object v6, p4

    .line 10
    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;-><init>(IFILandroid/graphics/PointF;FLcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    return-void
.end method


# virtual methods
.method public final getHitTestPadding()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->e:F

    return p0
.end method

.method public final getPageDisplayOrientation()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->c:I

    return p0
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->a:I

    return p0
.end method

.method public final getPageScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->b:F

    return p0
.end method

.method public final getPointInDocument()Landroid/graphics/PointF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->d:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;->f:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-object p0
.end method
