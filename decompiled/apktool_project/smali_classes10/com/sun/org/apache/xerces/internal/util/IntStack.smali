.class public final Lcom/sun/org/apache/xerces/internal/util/IntStack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fData:[I

.field private fDepth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fData:[I

    if-nez v0, :cond_0

    const/16 p1, 0x20

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fData:[I

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-gt v1, p1, :cond_1

    array-length p1, v0

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fData:[I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fDepth:I

    return-void
.end method

.method public elementAt(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fData:[I

    aget p0, p0, p1

    return p0
.end method

.method public peek()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fData:[I

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fDepth:I

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0

    return p0
.end method

.method public pop()I
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fData:[I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fDepth:I

    aget p0, v0, v1

    return p0
.end method

.method public print()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fDepth:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fDepth:I

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, " ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fData:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(I)V

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, " }"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public push(I)V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fData:[I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fDepth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fDepth:I

    aput p1, v0, v1

    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/util/IntStack;->fDepth:I

    return p0
.end method
