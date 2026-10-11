.class public Lcom/onyx/harfbuzz/internal/collections/UInt8BufferIntList;
.super Lcom/onyx/harfbuzz/collections/IntList;
.source "SourceFile"


# static fields
.field public static final d:I = 0xff


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

    invoke-direct {p0}, Lcom/onyx/harfbuzz/collections/IntList;-><init>()V

    iput-object p1, p0, Lcom/onyx/harfbuzz/internal/collections/UInt8BufferIntList;->a:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/onyx/harfbuzz/internal/collections/UInt8BufferIntList;->b:J

    iput p4, p0, Lcom/onyx/harfbuzz/internal/collections/UInt8BufferIntList;->c:I

    return-void
.end method


# virtual methods
.method public copyTo([II)V
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Lcom/onyx/harfbuzz/internal/collections/UInt8BufferIntList;->c:I

    invoke-static {p1, p2, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArrayBounds([III)V

    iget-wide v0, p0, Lcom/onyx/harfbuzz/internal/collections/UInt8BufferIntList;->b:J

    iget p0, p0, Lcom/onyx/harfbuzz/internal/collections/UInt8BufferIntList;->c:I

    invoke-static {v0, v1, p1, p2, p0}, Lcom/onyx/harfbuzz/internal/Raw;->copyUInt8Buffer(J[III)V

    return-void
.end method

.method public get(I)I
    .locals 2

    iget v0, p0, Lcom/onyx/harfbuzz/internal/collections/UInt8BufferIntList;->c:I

    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkElementIndex(II)V

    iget-wide v0, p0, Lcom/onyx/harfbuzz/internal/collections/UInt8BufferIntList;->b:J

    mul-int/lit8 p1, p1, 0x1

    int-to-long p0, p1

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/internal/Raw;->getInt8Value(J)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/internal/collections/UInt8BufferIntList;->c:I

    return p0
.end method

.method public subList(II)Lcom/onyx/harfbuzz/collections/IntList;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/onyx/harfbuzz/internal/collections/UInt8BufferIntList;->c:I

    invoke-static {p1, p2, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkIndexRange(III)V

    new-instance v0, Lcom/onyx/harfbuzz/internal/collections/UInt8BufferIntList;

    iget-object v1, p0, Lcom/onyx/harfbuzz/internal/collections/UInt8BufferIntList;->a:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/onyx/harfbuzz/internal/collections/UInt8BufferIntList;->b:J

    mul-int/lit8 p0, p1, 0x1

    int-to-long v4, p0

    add-long/2addr v2, v4

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/onyx/harfbuzz/internal/collections/UInt8BufferIntList;-><init>(Ljava/lang/Object;JI)V

    return-object v0
.end method
