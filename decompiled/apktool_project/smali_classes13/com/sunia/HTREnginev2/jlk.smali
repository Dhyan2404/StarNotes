.class public final Lcom/sunia/HTREnginev2/jlk;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/StringList;


# instance fields
.field public final e:[Ljava/lang/String;

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jlk;->e:[Ljava/lang/String;

    array-length p1, p1

    shr-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sunia/HTREnginev2/jlk;->f:I

    xor-int/lit8 p1, p2, 0x1

    iput p1, p0, Lcom/sunia/HTREnginev2/jlk;->g:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    move p1, v0

    :goto_0
    iget v2, p0, Lcom/sunia/HTREnginev2/jlk;->f:I

    if-lt p1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/jlk;->e:[Ljava/lang/String;

    shl-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/sunia/HTREnginev2/jlk;->g:I

    add-int/2addr v3, v4

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_1
    iget v3, p0, Lcom/sunia/HTREnginev2/jlk;->f:I

    if-lt v2, v3, :cond_3

    :goto_2
    return v0

    :cond_3
    iget-object v3, p0, Lcom/sunia/HTREnginev2/jlk;->e:[Ljava/lang/String;

    shl-int/lit8 v4, v2, 0x1

    iget v5, p0, Lcom/sunia/HTREnginev2/jlk;->g:I

    add-int/2addr v4, v5

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sunia/HTREnginev2/jlk;->f:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jlk;->e:[Ljava/lang/String;

    shl-int/lit8 p1, p1, 0x1

    iget p0, p0, Lcom/sunia/HTREnginev2/jlk;->g:I

    add-int/2addr p1, p0

    aget-object p0, v0, p1

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/jlk;->f:I

    return p0
.end method

.method public item(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/sunia/HTREnginev2/jlk;->f:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/jlk;->e:[Ljava/lang/String;

    shl-int/lit8 p1, p1, 0x1

    iget p0, p0, Lcom/sunia/HTREnginev2/jlk;->g:I

    add-int/2addr p1, p0

    aget-object p0, v0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public size()I
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jlk;->getLength()I

    move-result p0

    return p0
.end method
