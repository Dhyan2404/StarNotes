.class public Lcom/onyx/harfbuzz/sfnt/ShapingResult$a;
.super Lcom/onyx/harfbuzz/collections/IntList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/sfnt/ShapingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


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

    iput-object p1, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$a;->a:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$a;->b:J

    iput p4, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$a;->c:I

    return-void
.end method


# virtual methods
.method public copyTo([II)V
    .locals 6
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$a;->c:I

    if-ge v0, v1, :cond_0

    add-int v1, v0, p2

    iget-wide v2, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$a;->b:J

    mul-int/lit8 v4, v0, 0x4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/onyx/harfbuzz/internal/Raw;->getInt32Value(J)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)I
    .locals 2

    iget v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$a;->c:I

    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkElementIndex(II)V

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$a;->b:J

    mul-int/lit8 p1, p1, 0x4

    int-to-long p0, p1

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/internal/Raw;->getInt32Value(J)I

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$a;->c:I

    return p0
.end method

.method public subList(II)Lcom/onyx/harfbuzz/collections/IntList;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$a;->c:I

    invoke-static {p1, p2, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkIndexRange(III)V

    new-instance v0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$a;

    iget-object v1, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$a;->a:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$a;->b:J

    mul-int/lit8 p0, p1, 0x4

    int-to-long v4, p0

    add-long/2addr v2, v4

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/onyx/harfbuzz/sfnt/ShapingResult$a;-><init>(Ljava/lang/Object;JI)V

    return-object v0
.end method
