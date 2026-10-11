.class public final Lcom/google/zxing/pdf417/encoder/Dimensions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->a:I

    iput p2, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->b:I

    iput p3, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->c:I

    iput p4, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->d:I

    return-void
.end method


# virtual methods
.method public getMaxCols()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->b:I

    return p0
.end method

.method public getMaxRows()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->d:I

    return p0
.end method

.method public getMinCols()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->a:I

    return p0
.end method

.method public getMinRows()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->c:I

    return p0
.end method
