.class public Lcom/onyx/harfbuzz/internal/collections/JByteArrayIntList;
.super Lcom/onyx/harfbuzz/collections/IntList;
.source "SourceFile"


# instance fields
.field public final a:[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/onyx/harfbuzz/collections/IntList;-><init>()V

    iput-object p1, p0, Lcom/onyx/harfbuzz/internal/collections/JByteArrayIntList;->a:[B

    iput p2, p0, Lcom/onyx/harfbuzz/internal/collections/JByteArrayIntList;->b:I

    iput p3, p0, Lcom/onyx/harfbuzz/internal/collections/JByteArrayIntList;->c:I

    return-void
.end method


# virtual methods
.method public copyTo([II)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/onyx/harfbuzz/internal/collections/JByteArrayIntList;->c:I

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    iget-object v2, p0, Lcom/onyx/harfbuzz/internal/collections/JByteArrayIntList;->a:[B

    iget v3, p0, Lcom/onyx/harfbuzz/internal/collections/JByteArrayIntList;->b:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)I
    .locals 1

    iget v0, p0, Lcom/onyx/harfbuzz/internal/collections/JByteArrayIntList;->c:I

    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkElementIndex(II)V

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/collections/JByteArrayIntList;->a:[B

    iget p0, p0, Lcom/onyx/harfbuzz/internal/collections/JByteArrayIntList;->b:I

    add-int/2addr p1, p0

    aget-byte p0, v0, p1

    return p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/internal/collections/JByteArrayIntList;->c:I

    return p0
.end method

.method public subList(II)Lcom/onyx/harfbuzz/collections/IntList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/onyx/harfbuzz/internal/collections/JByteArrayIntList;->c:I

    invoke-static {p1, p2, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkIndexRange(III)V

    new-instance v0, Lcom/onyx/harfbuzz/internal/collections/JByteArrayIntList;

    iget-object v1, p0, Lcom/onyx/harfbuzz/internal/collections/JByteArrayIntList;->a:[B

    iget p0, p0, Lcom/onyx/harfbuzz/internal/collections/JByteArrayIntList;->b:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p0, p2}, Lcom/onyx/harfbuzz/internal/collections/JByteArrayIntList;-><init>([BII)V

    return-object v0
.end method
