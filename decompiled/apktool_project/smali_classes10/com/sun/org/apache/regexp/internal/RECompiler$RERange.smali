.class Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/regexp/internal/RECompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RERange"
.end annotation


# instance fields
.field maxRange:[I

.field minRange:[I

.field num:I

.field size:I

.field final synthetic this$0:Lcom/sun/org/apache/regexp/internal/RECompiler;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/regexp/internal/RECompiler;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->this$0:Lcom/sun/org/apache/regexp/internal/RECompiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    iput p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->size:I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->minRange:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->maxRange:[I

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->num:I

    return-void
.end method


# virtual methods
.method public delete(I)V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->num:I

    if-eqz v0, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->num:I

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->minRange:[I

    aget v2, v1, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->maxRange:[I

    aget v2, v1, p1

    aput v2, v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->num:I

    :cond_2
    :goto_1
    return-void
.end method

.method public include(CZ)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p1, p2}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->include(IIZ)V

    return-void
.end method

.method public include(IIZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->merge(II)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->remove(II)V

    :goto_0
    return-void
.end method

.method public merge(II)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->num:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->minRange:[I

    aget v2, v2, v1

    if-lt p1, v2, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->maxRange:[I

    aget v3, v3, v1

    if-gt p2, v3, :cond_0

    return-void

    :cond_0
    if-gt p1, v2, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->maxRange:[I

    aget v3, v3, v1

    if-lt p2, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->delete(I)V

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->merge(II)V

    return-void

    :cond_1
    if-lt p1, v2, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->maxRange:[I

    aget v3, v3, v1

    if-gt p1, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->delete(I)V

    iget-object p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->minRange:[I

    aget p1, p1, v1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->merge(II)V

    return-void

    :cond_2
    if-lt p2, v2, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->maxRange:[I

    aget v2, v2, v1

    if-gt p2, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->delete(I)V

    iget-object p2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->maxRange:[I

    aget p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->merge(II)V

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->size:I

    if-lt v2, v1, :cond_5

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->size:I

    new-array v3, v1, [I

    new-array v1, v1, [I

    iget-object v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->minRange:[I

    invoke-static {v4, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->maxRange:[I

    iget v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->num:I

    invoke-static {v2, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->minRange:[I

    iput-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->maxRange:[I

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->minRange:[I

    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->num:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->maxRange:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->num:I

    return-void
.end method

.method public remove(II)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->num:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->minRange:[I

    aget v2, v1, v0

    if-lt v2, p1, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->maxRange:[I

    aget v3, v3, v0

    if-gt v3, p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->delete(I)V

    return-void

    :cond_0
    if-lt p1, v2, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->maxRange:[I

    aget v3, v3, v0

    if-gt p2, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->delete(I)V

    if-ge v2, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->merge(II)V

    :cond_1
    if-ge p2, v3, :cond_2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2, v3}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->merge(II)V

    :cond_2
    return-void

    :cond_3
    if-lt v2, p1, :cond_4

    if-gt v2, p2, :cond_4

    add-int/lit8 p2, p2, 0x1

    aput p2, v1, v0

    return-void

    :cond_4
    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->maxRange:[I

    aget v2, v1, v0

    if-lt v2, p1, :cond_5

    if-gt v2, p2, :cond_5

    add-int/lit8 p1, p1, -0x1

    aput p1, v1, v0

    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
