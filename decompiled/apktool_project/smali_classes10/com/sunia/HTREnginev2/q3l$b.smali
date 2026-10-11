.class public final Lcom/sunia/HTREnginev2/q3l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/q3l$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/q3l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sunia/HTREnginev2/q3l$d<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final d:I = 0x5

.field public static final e:I = 0x1f

.field public static final synthetic f:Z


# instance fields
.field public final a:I

.field public final b:[Lcom/sunia/HTREnginev2/q3l$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/sunia/HTREnginev2/q3l$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I[Lcom/sunia/HTREnginev2/q3l$d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/sunia/HTREnginev2/q3l$d<",
            "TK;TV;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/q3l$b;->a:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/q3l$b;->b:[Lcom/sunia/HTREnginev2/q3l$d;

    iput p3, p0, Lcom/sunia/HTREnginev2/q3l$b;->c:I

    return-void
.end method

.method public static c(Lcom/sunia/HTREnginev2/q3l$d;ILcom/sunia/HTREnginev2/q3l$d;II)Lcom/sunia/HTREnginev2/q3l$d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sunia/HTREnginev2/q3l$d<",
            "TK;TV;>;I",
            "Lcom/sunia/HTREnginev2/q3l$d<",
            "TK;TV;>;II)",
            "Lcom/sunia/HTREnginev2/q3l$d<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1, p4}, Lcom/sunia/HTREnginev2/q3l$b;->e(II)I

    move-result v0

    invoke-static {p3, p4}, Lcom/sunia/HTREnginev2/q3l$b;->e(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p4, p4, 0x5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sunia/HTREnginev2/q3l$b;->c(Lcom/sunia/HTREnginev2/q3l$d;ILcom/sunia/HTREnginev2/q3l$d;II)Lcom/sunia/HTREnginev2/q3l$d;

    move-result-object p0

    new-array p1, v3, [Lcom/sunia/HTREnginev2/q3l$d;

    aput-object p0, p1, v2

    new-instance p2, Lcom/sunia/HTREnginev2/q3l$b;

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/q3l$d;->size()I

    move-result p0

    invoke-direct {p2, v0, p1, p0}, Lcom/sunia/HTREnginev2/q3l$b;-><init>(I[Lcom/sunia/HTREnginev2/q3l$d;I)V

    return-object p2

    :cond_0
    invoke-static {p1, p4}, Lcom/sunia/HTREnginev2/q3l$b;->f(II)I

    move-result p1

    invoke-static {p3, p4}, Lcom/sunia/HTREnginev2/q3l$b;->f(II)I

    move-result p3

    if-le p1, p3, :cond_1

    move-object v4, p2

    move-object p2, p0

    move-object p0, v4

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Lcom/sunia/HTREnginev2/q3l$d;

    aput-object p0, p1, v2

    aput-object p2, p1, v3

    new-instance p3, Lcom/sunia/HTREnginev2/q3l$b;

    or-int p4, v0, v1

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/q3l$d;->size()I

    move-result p0

    invoke-interface {p2}, Lcom/sunia/HTREnginev2/q3l$d;->size()I

    move-result p2

    add-int/2addr p0, p2

    invoke-direct {p3, p4, p1, p0}, Lcom/sunia/HTREnginev2/q3l$b;-><init>(I[Lcom/sunia/HTREnginev2/q3l$d;I)V

    return-object p3
.end method

.method public static e(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/q3l$b;->f(II)I

    move-result p0

    const/4 p1, 0x1

    shl-int p0, p1, p0

    return p0
.end method

.method public static f(II)I
    .locals 0

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;II)Lcom/sunia/HTREnginev2/q3l$d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)",
            "Lcom/sunia/HTREnginev2/q3l$d<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p3, p4}, Lcom/sunia/HTREnginev2/q3l$b;->e(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/q3l$b;->d(I)I

    move-result v1

    iget v2, p0, Lcom/sunia/HTREnginev2/q3l$b;->a:I

    and-int v3, v2, v0

    if-nez v3, :cond_0

    or-int p3, v2, v0

    iget-object p4, p0, Lcom/sunia/HTREnginev2/q3l$b;->b:[Lcom/sunia/HTREnginev2/q3l$d;

    array-length v0, p4

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/sunia/HTREnginev2/q3l$d;

    const/4 v2, 0x0

    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p4, Lcom/sunia/HTREnginev2/q3l$c;

    invoke-direct {p4, p1, p2}, Lcom/sunia/HTREnginev2/q3l$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p4, v0, v1

    iget-object p1, p0, Lcom/sunia/HTREnginev2/q3l$b;->b:[Lcom/sunia/HTREnginev2/q3l$d;

    add-int/lit8 p2, v1, 0x1

    array-length p4, p1

    sub-int/2addr p4, v1

    invoke-static {p1, v1, v0, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lcom/sunia/HTREnginev2/q3l$b;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q3l$b;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-direct {p1, p3, v0, p0}, Lcom/sunia/HTREnginev2/q3l$b;-><init>(I[Lcom/sunia/HTREnginev2/q3l$d;I)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q3l$b;->b:[Lcom/sunia/HTREnginev2/q3l$d;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sunia/HTREnginev2/q3l$d;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/q3l$b;->b:[Lcom/sunia/HTREnginev2/q3l$d;

    aget-object v2, v2, v1

    add-int/lit8 p4, p4, 0x5

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sunia/HTREnginev2/q3l$d;->a(Ljava/lang/Object;Ljava/lang/Object;II)Lcom/sunia/HTREnginev2/q3l$d;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q3l$b;->size()I

    move-result p1

    aget-object p2, v0, v1

    invoke-interface {p2}, Lcom/sunia/HTREnginev2/q3l$d;->size()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/sunia/HTREnginev2/q3l$b;->b:[Lcom/sunia/HTREnginev2/q3l$d;

    aget-object p2, p2, v1

    invoke-interface {p2}, Lcom/sunia/HTREnginev2/q3l$d;->size()I

    move-result p2

    sub-int/2addr p1, p2

    new-instance p2, Lcom/sunia/HTREnginev2/q3l$b;

    iget p0, p0, Lcom/sunia/HTREnginev2/q3l$b;->a:I

    invoke-direct {p2, p0, v0, p1}, Lcom/sunia/HTREnginev2/q3l$b;-><init>(I[Lcom/sunia/HTREnginev2/q3l$d;I)V

    return-object p2
.end method

.method public b(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)TV;"
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/sunia/HTREnginev2/q3l$b;->e(II)I

    move-result v0

    iget v1, p0, Lcom/sunia/HTREnginev2/q3l$b;->a:I

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/q3l$b;->d(I)I

    move-result v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q3l$b;->b:[Lcom/sunia/HTREnginev2/q3l$d;

    aget-object p0, p0, v0

    add-int/lit8 p3, p3, 0x5

    invoke-interface {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/q3l$d;->b(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d(I)I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/q3l$b;->a:I

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/q3l$b;->c:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompressedIndex("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/HTREnginev2/q3l$b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "bitmap=%s "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q3l$b;->b:[Lcom/sunia/HTREnginev2/q3l$d;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
