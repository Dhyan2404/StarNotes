.class public Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;
.super Lcom/onyx/harfbuzz/collections/FloatList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/sfnt/ShapingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:Lcom/onyx/harfbuzz/sfnt/ShapingResult;


# direct methods
.method public constructor <init>(Lcom/onyx/harfbuzz/sfnt/ShapingResult;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;->c:Lcom/onyx/harfbuzz/sfnt/ShapingResult;

    invoke-direct {p0}, Lcom/onyx/harfbuzz/collections/FloatList;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;->a:I

    .line 3
    invoke-virtual {p1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->getGlyphCount()I

    move-result p1

    iput p1, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/onyx/harfbuzz/sfnt/ShapingResult;II)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;->c:Lcom/onyx/harfbuzz/sfnt/ShapingResult;

    invoke-direct {p0}, Lcom/onyx/harfbuzz/collections/FloatList;-><init>()V

    .line 5
    iput p2, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;->a:I

    .line 6
    iput p3, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;->b:I

    return-void
.end method


# virtual methods
.method public copyTo([FI)V
    .locals 2
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;->b:I

    invoke-static {p1, p2, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArrayBounds([FII)V

    iget-object v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;->c:Lcom/onyx/harfbuzz/sfnt/ShapingResult;

    iget v1, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;->a:I

    iget p0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;->b:I

    invoke-static {v0, v1, p0, p1, p2}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->g(Lcom/onyx/harfbuzz/sfnt/ShapingResult;II[FI)V

    return-void
.end method

.method public get(I)F
    .locals 1

    iget v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;->b:I

    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkElementIndex(II)V

    iget-object v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;->c:Lcom/onyx/harfbuzz/sfnt/ShapingResult;

    iget p0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;->a:I

    add-int/2addr p1, p0

    invoke-static {v0, p1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->f(Lcom/onyx/harfbuzz/sfnt/ShapingResult;I)F

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;->b:I

    return p0
.end method

.method public subList(II)Lcom/onyx/harfbuzz/collections/FloatList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;->b:I

    invoke-static {p1, p2, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkIndexRange(III)V

    new-instance v0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;

    iget-object v1, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;->c:Lcom/onyx/harfbuzz/sfnt/ShapingResult;

    iget p0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;->a:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p0, p2}, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;-><init>(Lcom/onyx/harfbuzz/sfnt/ShapingResult;II)V

    return-object v0
.end method
