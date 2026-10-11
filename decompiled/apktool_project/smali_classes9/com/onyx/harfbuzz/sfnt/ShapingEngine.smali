.class public Lcom/onyx/harfbuzz/sfnt/ShapingEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/harfbuzz/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;,
        Lcom/onyx/harfbuzz/sfnt/ShapingEngine$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;

.field public b:J


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
    new-instance v0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;-><init>(Lcom/onyx/harfbuzz/sfnt/ShapingEngine$a;)V

    iput-object v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->a:Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;

    .line 3
    invoke-static {}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/onyx/harfbuzz/sfnt/ShapingEngine;)V
    .locals 2
    .param p1    # Lcom/onyx/harfbuzz/sfnt/ShapingEngine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object v0, p1, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->a:Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;

    iput-object v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->a:Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;

    .line 6
    iget-wide v0, p1, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    iput-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    return-void
.end method

.method public static finalizable(Lcom/onyx/harfbuzz/sfnt/ShapingEngine;)Lcom/onyx/harfbuzz/sfnt/ShapingEngine;
    .locals 2
    .param p0    # Lcom/onyx/harfbuzz/sfnt/ShapingEngine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine$c;

    invoke-direct {v0, p0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine$c;-><init>(Lcom/onyx/harfbuzz/sfnt/ShapingEngine;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/onyx/harfbuzz/sfnt/ShapingEngine$c;

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The object of a subclass is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getScriptDirection(I)Lcom/onyx/harfbuzz/sfnt/WritingDirection;
    .locals 0

    invoke-static {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nGetScriptDefaultDirection(I)I

    move-result p0

    invoke-static {p0}, Lcom/onyx/harfbuzz/sfnt/WritingDirection;->valueOf(I)Lcom/onyx/harfbuzz/sfnt/WritingDirection;

    move-result-object p0

    return-object p0
.end method

.method public static isFinalizable(Lcom/onyx/harfbuzz/sfnt/ShapingEngine;)Z
    .locals 1
    .param p0    # Lcom/onyx/harfbuzz/sfnt/ShapingEngine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine$c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static native nCreate()J
.end method

.method private static native nDispose(J)V
.end method

.method private static native nGetExAscent(J)F
.end method

.method private static native nGetExDescent(J)F
.end method

.method private static native nGetExLeading(J)F
.end method

.method private static native nGetLanguageTag(J)I
.end method

.method private static native nGetScriptDefaultDirection(I)I
.end method

.method private static native nGetScriptTag(J)I
.end method

.method private static native nGetShapingOrder(J)I
.end method

.method private static native nGetTypeSize(J)F
.end method

.method private static native nGetWritingDirection(J)I
.end method

.method private static native nSetLanguageTag(JI)V
.end method

.method private static native nSetOpenTypeFeatures(J[I[S)V
.end method

.method private static native nSetScriptTag(JI)V
.end method

.method private static native nSetShapingOrder(JI)V
.end method

.method private static native nSetTypeSize(JF)V
.end method

.method private static native nSetTypeface(JLcom/onyx/harfbuzz/graphics/HBTypeface;)V
.end method

.method private static native nSetWritingDirection(JI)V
.end method

.method private static native nShapeText(JJLjava/lang/String;II)V
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nDispose(J)V

    return-void
.end method

.method public getExAscent()F
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nGetExAscent(J)F

    move-result p0

    return p0
.end method

.method public getExDescent()F
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nGetExDescent(J)F

    move-result p0

    return p0
.end method

.method public getExLeading()F
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nGetExLeading(J)F

    move-result p0

    return p0
.end method

.method public getLanguageTag()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nGetLanguageTag(J)I

    move-result p0

    return p0
.end method

.method public getOpenTypeFeatures()Ljava/util/Set;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->a:Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;

    iget-object p0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;->b:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getScriptTag()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nGetScriptTag(J)I

    move-result p0

    return p0
.end method

.method public getShapingOrder()Lcom/onyx/harfbuzz/sfnt/ShapingOrder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nGetShapingOrder(J)I

    move-result p0

    invoke-static {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingOrder;->valueOf(I)Lcom/onyx/harfbuzz/sfnt/ShapingOrder;

    move-result-object p0

    return-object p0
.end method

.method public getTypeSize()F
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nGetTypeSize(J)F

    move-result p0

    return p0
.end method

.method public getTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->a:Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;

    iget-object p0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;->a:Lcom/onyx/harfbuzz/graphics/HBTypeface;

    return-object p0
.end method

.method public getWritingDirection()Lcom/onyx/harfbuzz/sfnt/WritingDirection;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nGetWritingDirection(J)I

    move-result p0

    invoke-static {p0}, Lcom/onyx/harfbuzz/sfnt/WritingDirection;->valueOf(I)Lcom/onyx/harfbuzz/sfnt/WritingDirection;

    move-result-object p0

    return-object p0
.end method

.method public setLanguageTag(I)V
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    invoke-static {v0, v1, p1}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nSetLanguageTag(JI)V

    return-void
.end method

.method public setOpenTypeFeatures(Ljava/util/Set;)V
    .locals 5
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->a:Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [I

    new-array v0, v0, [S

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;

    invoke-virtual {v3}, Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;->tag()I

    move-result v4

    aput v4, v1, v2

    invoke-virtual {v3}, Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;->value()I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    invoke-static {p0, p1, v1, v0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nSetOpenTypeFeatures(J[I[S)V

    return-void
.end method

.method public setScriptTag(I)V
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    invoke-static {v0, v1, p1}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nSetScriptTag(JI)V

    return-void
.end method

.method public setShapingOrder(Lcom/onyx/harfbuzz/sfnt/ShapingOrder;)V
    .locals 2
    .param p1    # Lcom/onyx/harfbuzz/sfnt/ShapingOrder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    iget p0, p1, Lcom/onyx/harfbuzz/sfnt/ShapingOrder;->value:I

    invoke-static {v0, v1, p0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nSetShapingOrder(JI)V

    return-void
.end method

.method public setTypeSize(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The value of font size is negative"

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    invoke-static {v0, v1, p1}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nSetTypeSize(JF)V

    return-void
.end method

.method public setTypeface(Lcom/onyx/harfbuzz/graphics/HBTypeface;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->a:Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;

    iput-object p1, v0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;->a:Lcom/onyx/harfbuzz/graphics/HBTypeface;

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    invoke-static {v0, v1, p1}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nSetTypeface(JLcom/onyx/harfbuzz/graphics/HBTypeface;)V

    return-void
.end method

.method public setWritingDirection(Lcom/onyx/harfbuzz/sfnt/WritingDirection;)V
    .locals 2
    .param p1    # Lcom/onyx/harfbuzz/sfnt/WritingDirection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    iget p0, p1, Lcom/onyx/harfbuzz/sfnt/WritingDirection;->value:I

    invoke-static {v0, v1, p0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nSetWritingDirection(JI)V

    return-void
.end method

.method public shapeText(Ljava/lang/String;II)Lcom/onyx/harfbuzz/sfnt/ShapingResult;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->a:Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;

    iget-object v0, v0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;->a:Lcom/onyx/harfbuzz/graphics/HBTypeface;

    if-eqz v0, :cond_3

    const-string v0, "text"

    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "To Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Text Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    if-lt p3, p2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Range: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    new-instance v0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;-><init>()V

    iget-wide v1, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->b:J

    iget-wide v3, v0, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->a:J

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->nShapeText(JJLjava/lang/String;II)V

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Typeface has not been set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapingEngine{typeface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->getTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", typeSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->getTypeSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scriptTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->getScriptTag()I

    move-result v1

    invoke-static {v1}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTag;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", languageTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->getLanguageTag()I

    move-result v1

    invoke-static {v1}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTag;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", openTypeFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->getOpenTypeFeatures()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", writingDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->getWritingDirection()Lcom/onyx/harfbuzz/sfnt/WritingDirection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shapingOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->getShapingOrder()Lcom/onyx/harfbuzz/sfnt/ShapingOrder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
