.class public Lcom/sun/org/apache/regexp/internal/REProgram;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final OPT_HASBACKREFS:I = 0x1


# instance fields
.field flags:I

.field instruction:[C

.field lenInstruction:I

.field maxParens:I

.field prefix:[C


# direct methods
.method public constructor <init>(I[C)V
    .locals 1

    .line 2
    array-length v0, p2

    invoke-direct {p0, p2, v0}, Lcom/sun/org/apache/regexp/internal/REProgram;-><init>([CI)V

    .line 3
    iput p1, p0, Lcom/sun/org/apache/regexp/internal/REProgram;->maxParens:I

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1

    .line 1
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/regexp/internal/REProgram;-><init>([CI)V

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/sun/org/apache/regexp/internal/REProgram;->maxParens:I

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/regexp/internal/REProgram;->setInstructions([CI)V

    return-void
.end method


# virtual methods
.method public getInstructions()[C
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/REProgram;->lenInstruction:I

    if-eqz v0, :cond_0

    new-array v1, v0, [C

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/REProgram;->instruction:[C

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setInstructions([CI)V
    .locals 7

    iput-object p1, p0, Lcom/sun/org/apache/regexp/internal/REProgram;->instruction:[C

    iput p2, p0, Lcom/sun/org/apache/regexp/internal/REProgram;->lenInstruction:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/REProgram;->flags:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/org/apache/regexp/internal/REProgram;->prefix:[C

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    const/16 v1, 0x41

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-lt p2, v3, :cond_0

    aget-char v4, p1, v0

    const/16 v5, 0x7c

    if-ne v4, v5, :cond_0

    aget-char v4, p1, v2

    add-int/2addr v4, v0

    aget-char v4, p1, v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_0

    const/4 v4, 0x6

    if-lt p2, v4, :cond_0

    aget-char v5, p1, v3

    if-ne v5, v1, :cond_0

    const/4 v5, 0x4

    aget-char v5, p1, v5

    new-array v6, v5, [C

    iput-object v6, p0, Lcom/sun/org/apache/regexp/internal/REProgram;->prefix:[C

    invoke-static {p1, v4, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    :goto_0
    if-ge v0, p2, :cond_4

    add-int/lit8 v4, v0, 0x0

    aget-char v4, p1, v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_3

    if-eq v4, v1, :cond_2

    const/16 v5, 0x5b

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v0, 0x1

    aget-char v4, p1, v4

    mul-int/2addr v4, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v0, 0x1

    aget-char v4, p1, v4

    :goto_1
    add-int/2addr v0, v4

    :goto_2
    add-int/2addr v0, v3

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/sun/org/apache/regexp/internal/REProgram;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/regexp/internal/REProgram;->flags:I

    :cond_4
    return-void
.end method
