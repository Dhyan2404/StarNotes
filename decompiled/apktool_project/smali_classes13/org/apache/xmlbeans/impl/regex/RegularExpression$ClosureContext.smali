.class final Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClosureContext"
.end annotation


# instance fields
.field currentIndex:I

.field offsets:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;->offsets:[I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;->currentIndex:I

    return-void
.end method

.method private expandOffsets()[I
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;->offsets:[I

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget p0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;->currentIndex:I

    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public addOffset(I)V
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;->currentIndex:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;->offsets:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;->expandOffsets()[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;->offsets:[I

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;->offsets:[I

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;->currentIndex:I

    aput p1, v0, v1

    return-void
.end method

.method public contains(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;->currentIndex:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;->offsets:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;->currentIndex:I

    return-void
.end method
