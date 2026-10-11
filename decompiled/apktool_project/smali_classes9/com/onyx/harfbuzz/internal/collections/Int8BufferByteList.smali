.class public Lcom/onyx/harfbuzz/internal/collections/Int8BufferByteList;
.super Lcom/onyx/harfbuzz/collections/ByteList;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/onyx/harfbuzz/collections/ByteList;-><init>()V

    iput-object p1, p0, Lcom/onyx/harfbuzz/internal/collections/Int8BufferByteList;->a:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/onyx/harfbuzz/internal/collections/Int8BufferByteList;->b:J

    iput p4, p0, Lcom/onyx/harfbuzz/internal/collections/Int8BufferByteList;->c:I

    return-void
.end method


# virtual methods
.method public copyTo([BI)V
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Lcom/onyx/harfbuzz/internal/collections/Int8BufferByteList;->c:I

    invoke-static {p1, p2, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArrayBounds([BII)V

    iget-wide v0, p0, Lcom/onyx/harfbuzz/internal/collections/Int8BufferByteList;->b:J

    iget p0, p0, Lcom/onyx/harfbuzz/internal/collections/Int8BufferByteList;->c:I

    invoke-static {v0, v1, p1, p2, p0}, Lcom/onyx/harfbuzz/internal/Raw;->copyInt8Buffer(J[BII)V

    return-void
.end method

.method public get(I)B
    .locals 2

    iget v0, p0, Lcom/onyx/harfbuzz/internal/collections/Int8BufferByteList;->c:I

    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkElementIndex(II)V

    iget-wide v0, p0, Lcom/onyx/harfbuzz/internal/collections/Int8BufferByteList;->b:J

    mul-int/lit8 p1, p1, 0x1

    int-to-long p0, p1

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/internal/Raw;->getInt8Value(J)B

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/internal/collections/Int8BufferByteList;->c:I

    return p0
.end method

.method public subList(II)Lcom/onyx/harfbuzz/collections/ByteList;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/onyx/harfbuzz/internal/collections/Int8BufferByteList;->c:I

    invoke-static {p1, p2, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkIndexRange(III)V

    new-instance v0, Lcom/onyx/harfbuzz/internal/collections/Int8BufferByteList;

    iget-object v1, p0, Lcom/onyx/harfbuzz/internal/collections/Int8BufferByteList;->a:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/onyx/harfbuzz/internal/collections/Int8BufferByteList;->b:J

    mul-int/lit8 p0, p1, 0x1

    int-to-long v4, p0

    add-long/2addr v2, v4

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/onyx/harfbuzz/internal/collections/Int8BufferByteList;-><init>(Ljava/lang/Object;JI)V

    return-object v0
.end method
