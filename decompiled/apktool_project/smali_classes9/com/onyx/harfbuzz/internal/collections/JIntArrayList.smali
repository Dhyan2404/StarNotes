.class public Lcom/onyx/harfbuzz/internal/collections/JIntArrayList;
.super Lcom/onyx/harfbuzz/collections/IntList;
.source "SourceFile"


# instance fields
.field public final a:[I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>([III)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/onyx/harfbuzz/collections/IntList;-><init>()V

    iput-object p1, p0, Lcom/onyx/harfbuzz/internal/collections/JIntArrayList;->a:[I

    iput p2, p0, Lcom/onyx/harfbuzz/internal/collections/JIntArrayList;->b:I

    iput p3, p0, Lcom/onyx/harfbuzz/internal/collections/JIntArrayList;->c:I

    return-void
.end method


# virtual methods
.method public copyTo([II)V
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/collections/JIntArrayList;->a:[I

    iget v1, p0, Lcom/onyx/harfbuzz/internal/collections/JIntArrayList;->b:I

    iget p0, p0, Lcom/onyx/harfbuzz/internal/collections/JIntArrayList;->c:I

    invoke-static {v0, v1, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public get(I)I
    .locals 1

    iget v0, p0, Lcom/onyx/harfbuzz/internal/collections/JIntArrayList;->c:I

    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkElementIndex(II)V

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/collections/JIntArrayList;->a:[I

    iget p0, p0, Lcom/onyx/harfbuzz/internal/collections/JIntArrayList;->b:I

    add-int/2addr p1, p0

    aget p0, v0, p1

    return p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/internal/collections/JIntArrayList;->c:I

    return p0
.end method

.method public subList(II)Lcom/onyx/harfbuzz/collections/IntList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/onyx/harfbuzz/internal/collections/JIntArrayList;->c:I

    invoke-static {p1, p2, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkIndexRange(III)V

    new-instance v0, Lcom/onyx/harfbuzz/internal/collections/JIntArrayList;

    iget-object v1, p0, Lcom/onyx/harfbuzz/internal/collections/JIntArrayList;->a:[I

    iget p0, p0, Lcom/onyx/harfbuzz/internal/collections/JIntArrayList;->b:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p0, p2}, Lcom/onyx/harfbuzz/internal/collections/JIntArrayList;-><init>([III)V

    return-object v0
.end method
