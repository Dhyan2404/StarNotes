.class public final Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xpath/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:[I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;->a:[I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;->b:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;->a:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;->c()[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;->a:[I

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;->a:[I

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;->b:I

    aput p1, v0, v1

    return-void
.end method

.method public b(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;->b:I

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;->a:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final c()[I
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;->a:[I

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget p0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;->b:I

    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;->b:I

    return-void
.end method
