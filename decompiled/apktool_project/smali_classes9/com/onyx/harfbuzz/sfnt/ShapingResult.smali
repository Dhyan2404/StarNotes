.class public Lcom/onyx/harfbuzz/sfnt/ShapingResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/harfbuzz/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/sfnt/ShapingResult$a;,
        Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;,
        Lcom/onyx/harfbuzz/sfnt/ShapingResult$e;,
        Lcom/onyx/harfbuzz/sfnt/ShapingResult$d;,
        Lcom/onyx/harfbuzz/sfnt/ShapingResult$b;
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/onyx/harfbuzz/internal/JniBridge;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->nCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/onyx/harfbuzz/sfnt/ShapingResult;)V
    .locals 2
    .param p1    # Lcom/onyx/harfbuzz/sfnt/ShapingResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-wide v0, p1, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    iput-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    return-void
.end method

.method public static synthetic a(Lcom/onyx/harfbuzz/sfnt/ShapingResult;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->m(I)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/onyx/harfbuzz/sfnt/ShapingResult;II[II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->i(II[II)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/harfbuzz/sfnt/ShapingResult;I)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->n(I)F

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/onyx/harfbuzz/sfnt/ShapingResult;I)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->o(I)F

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/onyx/harfbuzz/sfnt/ShapingResult;II[FI)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->j(II[FI)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/harfbuzz/sfnt/ShapingResult;I)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->l(I)F

    move-result p0

    return p0
.end method

.method public static finalizable(Lcom/onyx/harfbuzz/sfnt/ShapingResult;)Lcom/onyx/harfbuzz/sfnt/ShapingResult;
    .locals 2
    .param p0    # Lcom/onyx/harfbuzz/sfnt/ShapingResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/onyx/harfbuzz/sfnt/ShapingResult;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$b;

    invoke-direct {v0, p0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult$b;-><init>(Lcom/onyx/harfbuzz/sfnt/ShapingResult;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/onyx/harfbuzz/sfnt/ShapingResult$b;

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The object of a subclass is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic g(Lcom/onyx/harfbuzz/sfnt/ShapingResult;II[FI)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->h(II[FI)V

    return-void
.end method

.method public static isFinalizable(Lcom/onyx/harfbuzz/sfnt/ShapingResult;)Z
    .locals 1
    .param p0    # Lcom/onyx/harfbuzz/sfnt/ShapingResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$b;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static native nCopyGlyphAdvances(JII[FI)V
    .param p4    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nCopyGlyphIds(JII[II)V
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nCopyGlyphOffsets(JII[FI)V
    .param p4    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nCreate()J
.end method

.method private static native nDispose(J)V
.end method

.method private static native nGetCharCount(J)I
.end method

.method private static native nGetCharEnd(J)I
.end method

.method private static native nGetCharStart(J)I
.end method

.method private static native nGetClusterMapPtr(J)J
.end method

.method private static native nGetGlyphAdvance(JI)F
.end method

.method private static native nGetGlyphCount(J)I
.end method

.method private static native nGetGlyphId(JI)I
.end method

.method private static native nGetGlyphXOffset(JI)F
.end method

.method private static native nGetGlyphYOffset(JI)F
.end method

.method private static native nGetSizeByEm(J)F
.end method

.method private static native nIsBackward(J)Z
.end method

.method private static native nIsRTL(J)Z
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->nDispose(J)V

    return-void
.end method

.method public getCaretEdges()Lcom/onyx/harfbuzz/collections/FloatList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->getCaretEdges([Z)Lcom/onyx/harfbuzz/collections/FloatList;

    move-result-object p0

    return-object p0
.end method

.method public getCaretEdges([Z)Lcom/onyx/harfbuzz/collections/FloatList;
    .locals 2
    .param p1    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->k()I

    move-result v0

    if-eqz p1, :cond_1

    .line 3
    array-length v1, p1

    if-lt v1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The length of caret stops array must be at least the represented character count"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->isBackward()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->setBackward(Z)Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->setRTL(Z)Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->getGlyphAdvances()Lcom/onyx/harfbuzz/collections/FloatList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->setGlyphAdvances(Lcom/onyx/harfbuzz/collections/FloatList;)Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->getClusterMap()Lcom/onyx/harfbuzz/collections/IntList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->setClusterMap(Lcom/onyx/harfbuzz/collections/IntList;)Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;

    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->setCaretStops([Z)Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->build()Lcom/onyx/harfbuzz/collections/FloatList;

    move-result-object p0

    return-object p0
.end method

.method public getCharEnd()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->nGetCharEnd(J)I

    move-result p0

    return p0
.end method

.method public getCharStart()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->nGetCharStart(J)I

    move-result p0

    return p0
.end method

.method public getClusterMap()Lcom/onyx/harfbuzz/collections/IntList;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->nGetClusterMapPtr(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    invoke-static {v2, v3}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->nGetCharCount(J)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Lcom/onyx/harfbuzz/sfnt/ShapingResult$a;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/onyx/harfbuzz/sfnt/ShapingResult$a;-><init>(Ljava/lang/Object;JI)V

    return-object v3
.end method

.method public getGlyphAdvances()Lcom/onyx/harfbuzz/collections/FloatList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;

    invoke-direct {v0, p0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult$c;-><init>(Lcom/onyx/harfbuzz/sfnt/ShapingResult;)V

    return-object v0
.end method

.method public getGlyphCount()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->nGetGlyphCount(J)I

    move-result p0

    return p0
.end method

.method public getGlyphIds()Lcom/onyx/harfbuzz/collections/IntList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$d;

    invoke-direct {v0, p0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult$d;-><init>(Lcom/onyx/harfbuzz/sfnt/ShapingResult;)V

    return-object v0
.end method

.method public getGlyphOffsets()Lcom/onyx/harfbuzz/collections/PointList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/harfbuzz/sfnt/ShapingResult$e;

    invoke-direct {v0, p0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult$e;-><init>(Lcom/onyx/harfbuzz/sfnt/ShapingResult;)V

    return-object v0
.end method

.method public final h(II[FI)V
    .locals 6
    .param p3    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->nCopyGlyphAdvances(JII[FI)V

    return-void
.end method

.method public final i(II[II)V
    .locals 6
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->nCopyGlyphIds(JII[II)V

    return-void
.end method

.method public isBackward()Z
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->nIsBackward(J)Z

    move-result p0

    return p0
.end method

.method public final j(II[FI)V
    .locals 6
    .param p3    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->nCopyGlyphOffsets(JII[FI)V

    return-void
.end method

.method public final k()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->nGetCharCount(J)I

    move-result p0

    return p0
.end method

.method public final l(I)F
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    invoke-static {v0, v1, p1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->nGetGlyphAdvance(JI)F

    move-result p0

    return p0
.end method

.method public final m(I)I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    invoke-static {v0, v1, p1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->nGetGlyphId(JI)I

    move-result p0

    return p0
.end method

.method public final n(I)F
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    invoke-static {v0, v1, p1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->nGetGlyphXOffset(JI)F

    move-result p0

    return p0
.end method

.method public final o(I)F
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    invoke-static {v0, v1, p1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->nGetGlyphYOffset(JI)F

    move-result p0

    return p0
.end method

.method public final p()Z
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->nIsRTL(J)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapingResult{isBackward="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->isBackward()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", charStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->getCharStart()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", charEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->getCharEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", glyphCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->getGlyphCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", glyphIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->getGlyphIds()Lcom/onyx/harfbuzz/collections/IntList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/harfbuzz/collections/IntList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", glyphOffsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->getGlyphOffsets()Lcom/onyx/harfbuzz/collections/PointList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/harfbuzz/collections/PointList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", glyphAdvances="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->getGlyphAdvances()Lcom/onyx/harfbuzz/collections/FloatList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/harfbuzz/collections/FloatList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clusterMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->getClusterMap()Lcom/onyx/harfbuzz/collections/IntList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/collections/IntList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
