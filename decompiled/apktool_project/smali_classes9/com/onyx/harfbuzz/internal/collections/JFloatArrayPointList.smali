.class public Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;
.super Lcom/onyx/harfbuzz/collections/PointList;
.source "SourceFile"


# static fields
.field public static final d:I = 0x2

.field public static final e:I = 0x0

.field public static final f:I = 0x1


# instance fields
.field public final a:[F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>([FII)V
    .locals 0
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/onyx/harfbuzz/collections/PointList;-><init>()V

    iput-object p1, p0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;->a:[F

    iput p2, p0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;->b:I

    iput p3, p0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;->c:I

    return-void
.end method


# virtual methods
.method public copyTo([FI)V
    .locals 2
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;->a:[F

    iget v1, p0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;->b:I

    iget p0, p0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;->c:I

    mul-int/lit8 p0, p0, 0x2

    invoke-static {v0, v1, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getX(I)F
    .locals 1

    iget v0, p0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;->c:I

    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkElementIndex(II)V

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;->a:[F

    iget p0, p0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;->b:I

    add-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x0

    aget p0, v0, p1

    return p0
.end method

.method public getY(I)F
    .locals 1

    iget v0, p0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;->c:I

    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkElementIndex(II)V

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;->a:[F

    iget p0, p0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;->b:I

    add-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget p0, v0, p1

    return p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;->c:I

    return p0
.end method

.method public subList(II)Lcom/onyx/harfbuzz/collections/PointList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;->c:I

    invoke-static {p1, p2, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkIndexRange(III)V

    new-instance v0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;

    iget-object v1, p0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;->a:[F

    iget p0, p0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;->b:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p0, p2}, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayPointList;-><init>([FII)V

    return-object v0
.end method
