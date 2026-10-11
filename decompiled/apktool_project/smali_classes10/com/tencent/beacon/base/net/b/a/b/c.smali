.class public Lcom/tencent/beacon/base/net/b/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/beacon/base/net/b/a/b/c$d;,
        Lcom/tencent/beacon/base/net/b/a/b/c$b;,
        Lcom/tencent/beacon/base/net/b/a/b/c$a;,
        Lcom/tencent/beacon/base/net/b/a/b/c$c;
    }
.end annotation


# static fields
.field static a:[B


# instance fields
.field A:Z

.field B:[I

.field C:[I

.field D:[I

.field E:I

.field F:I

.field G:I

.field H:I

.field I:I

.field J:I

.field K:I

.field L:I

.field M:I

.field N:J

.field O:Z

.field P:Ljava/io/InputStream;

.field Q:I

.field R:Z

.field S:Z

.field T:[I

.field U:[I

.field V:I

.field W:[J

.field X:[J

.field Y:[Z

.field Z:[B

.field aa:[I

.field b:I

.field ba:I

.field c:B

.field d:[I

.field e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

.field f:Lcom/tencent/beacon/base/net/b/a/a/a;

.field g:Lcom/tencent/beacon/base/net/b/a/c/d;

.field h:[S

.field i:[S

.field j:[S

.field k:[S

.field l:[S

.field m:[S

.field n:[Lcom/tencent/beacon/base/net/b/a/c/b;

.field o:[S

.field p:Lcom/tencent/beacon/base/net/b/a/c/b;

.field q:Lcom/tencent/beacon/base/net/b/a/b/c$b;

.field r:Lcom/tencent/beacon/base/net/b/a/b/c$b;

.field s:Lcom/tencent/beacon/base/net/b/a/b/c$c;

.field t:[I

.field u:I

.field v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x800

    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/beacon/base/net/b/a/b/c;->a:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const/4 v2, 0x1

    aput-byte v2, v0, v2

    const/4 v0, 0x2

    move v3, v0

    :goto_0
    const/16 v4, 0x16

    if-ge v0, v4, :cond_1

    shr-int/lit8 v4, v0, 0x1

    sub-int/2addr v4, v2

    shl-int v4, v2, v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    sget-object v6, Lcom/tencent/beacon/base/net/b/a/b/c;->a:[B

    int-to-byte v7, v0

    aput-byte v7, v6, v3

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/beacon/base/net/b/a/b/a;->a()I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->d:[I

    const/16 v1, 0x1000

    new-array v2, v1, [Lcom/tencent/beacon/base/net/b/a/b/c$d;

    iput-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    new-instance v2, Lcom/tencent/beacon/base/net/b/a/c/d;

    invoke-direct {v2}, Lcom/tencent/beacon/base/net/b/a/c/d;-><init>()V

    iput-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    const/16 v2, 0xc0

    new-array v3, v2, [S

    iput-object v3, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->h:[S

    const/16 v3, 0xc

    new-array v4, v3, [S

    iput-object v4, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->i:[S

    new-array v4, v3, [S

    iput-object v4, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->j:[S

    new-array v4, v3, [S

    iput-object v4, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->k:[S

    new-array v3, v3, [S

    iput-object v3, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->l:[S

    new-array v2, v2, [S

    iput-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->m:[S

    new-array v2, v0, [Lcom/tencent/beacon/base/net/b/a/c/b;

    iput-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->n:[Lcom/tencent/beacon/base/net/b/a/c/b;

    const/16 v2, 0x72

    new-array v2, v2, [S

    iput-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->o:[S

    new-instance v2, Lcom/tencent/beacon/base/net/b/a/c/b;

    invoke-direct {v2, v0}, Lcom/tencent/beacon/base/net/b/a/c/b;-><init>(I)V

    iput-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->p:Lcom/tencent/beacon/base/net/b/a/c/b;

    new-instance v2, Lcom/tencent/beacon/base/net/b/a/b/c$b;

    invoke-direct {v2, p0}, Lcom/tencent/beacon/base/net/b/a/b/c$b;-><init>(Lcom/tencent/beacon/base/net/b/a/b/c;)V

    iput-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->q:Lcom/tencent/beacon/base/net/b/a/b/c$b;

    new-instance v2, Lcom/tencent/beacon/base/net/b/a/b/c$b;

    invoke-direct {v2, p0}, Lcom/tencent/beacon/base/net/b/a/b/c$b;-><init>(Lcom/tencent/beacon/base/net/b/a/b/c;)V

    iput-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->r:Lcom/tencent/beacon/base/net/b/a/b/c$b;

    new-instance v2, Lcom/tencent/beacon/base/net/b/a/b/c$c;

    invoke-direct {v2, p0}, Lcom/tencent/beacon/base/net/b/a/b/c$c;-><init>(Lcom/tencent/beacon/base/net/b/a/b/c;)V

    iput-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->s:Lcom/tencent/beacon/base/net/b/a/b/c$c;

    const/16 v2, 0x224

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->t:[I

    const/16 v2, 0x20

    iput v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->u:I

    const/16 v2, 0x100

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->B:[I

    const/16 v2, 0x200

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->C:[I

    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->D:[I

    const/16 v2, 0x2c

    iput v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->F:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->G:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->H:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->I:I

    iput v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->J:I

    const/high16 v2, 0x400000

    iput v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->K:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->L:I

    iput v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->M:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->Q:I

    iput-boolean v3, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->R:Z

    iput-boolean v3, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->S:Z

    new-array v4, v0, [I

    iput-object v4, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->T:[I

    new-array v4, v0, [I

    iput-object v4, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->U:[I

    new-array v4, v2, [J

    iput-object v4, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->W:[J

    new-array v4, v2, [J

    iput-object v4, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->X:[J

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->Y:[Z

    const/4 v2, 0x5

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->Z:[B

    const/16 v2, 0x80

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->aa:[I

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v4, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    new-instance v5, Lcom/tencent/beacon/base/net/b/a/b/c$d;

    invoke-direct {v5, p0}, Lcom/tencent/beacon/base/net/b/a/b/c$d;-><init>(Lcom/tencent/beacon/base/net/b/a/b/c;)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v0, :cond_1

    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->n:[Lcom/tencent/beacon/base/net/b/a/c/b;

    new-instance v2, Lcom/tencent/beacon/base/net/b/a/c/b;

    const/4 v4, 0x6

    invoke-direct {v2, v4}, Lcom/tencent/beacon/base/net/b/a/c/b;-><init>(I)V

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static d(I)I
    .locals 1

    const/16 v0, 0x800

    if-ge p0, v0, :cond_0

    .line 1
    sget-object v0, Lcom/tencent/beacon/base/net/b/a/b/c;->a:[B

    aget-byte p0, v0, p0

    return p0

    :cond_0
    const/high16 v0, 0x200000

    if-ge p0, v0, :cond_1

    .line 2
    sget-object v0, Lcom/tencent/beacon/base/net/b/a/b/c;->a:[B

    shr-int/lit8 p0, p0, 0xa

    aget-byte p0, v0, p0

    add-int/lit8 p0, p0, 0x14

    return p0

    .line 3
    :cond_1
    sget-object v0, Lcom/tencent/beacon/base/net/b/a/b/c;->a:[B

    shr-int/lit8 p0, p0, 0x14

    aget-byte p0, v0, p0

    add-int/lit8 p0, p0, 0x28

    return p0
.end method

.method public static e(I)I
    .locals 1

    const/high16 v0, 0x20000

    if-ge p0, v0, :cond_0

    .line 1
    sget-object v0, Lcom/tencent/beacon/base/net/b/a/b/c;->a:[B

    shr-int/lit8 p0, p0, 0x6

    aget-byte p0, v0, p0

    add-int/lit8 p0, p0, 0xc

    return p0

    :cond_0
    const/high16 v0, 0x8000000

    if-ge p0, v0, :cond_1

    .line 2
    sget-object v0, Lcom/tencent/beacon/base/net/b/a/b/c;->a:[B

    shr-int/lit8 p0, p0, 0x10

    aget-byte p0, v0, p0

    add-int/lit8 p0, p0, 0x20

    return p0

    .line 3
    :cond_1
    sget-object v0, Lcom/tencent/beacon/base/net/b/a/b/c;->a:[B

    shr-int/lit8 p0, p0, 0x1a

    aget-byte p0, v0, p0

    add-int/lit8 p0, p0, 0x34

    return p0
.end method


# virtual methods
.method public a(I)I
    .locals 7

    .line 12
    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->y:I

    .line 13
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v0, v0, p1

    iget v1, v0, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    .line 14
    iget v0, v0, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v3, v2, p1

    iget-boolean v3, v3, Lcom/tencent/beacon/base/net/b/a/b/c$d;->b:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 16
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/tencent/beacon/base/net/b/a/b/c$d;->b()V

    .line 17
    iget-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v3, v2, v1

    add-int/lit8 v5, v1, -0x1

    iput v5, v3, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    .line 18
    aget-object v3, v2, p1

    iget-boolean v6, v3, Lcom/tencent/beacon/base/net/b/a/b/c$d;->c:Z

    if-eqz v6, :cond_0

    .line 19
    aget-object v2, v2, v5

    iput-boolean v4, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->b:Z

    .line 20
    iget v5, v3, Lcom/tencent/beacon/base/net/b/a/b/c$d;->d:I

    iput v5, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    .line 21
    iget v3, v3, Lcom/tencent/beacon/base/net/b/a/b/c$d;->e:I

    iput v3, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v3, v2, v1

    iget v5, v3, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    .line 23
    iget v6, v3, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    .line 24
    iput v0, v3, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    .line 25
    iput p1, v3, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    if-gtz v1, :cond_1

    .line 26
    aget-object p1, v2, v4

    iget v0, p1, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->V:I

    .line 27
    iget p1, p1, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->z:I

    return p1

    :cond_1
    move p1, v1

    move v0, v5

    move v1, v6

    goto :goto_0
.end method

.method public a(II)I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->j:[S

    aget-short v0, v0, p1

    invoke-static {v0}, Lcom/tencent/beacon/base/net/b/a/c/d;->a(I)I

    move-result v0

    iget-object p0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->m:[S

    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    aget-short p0, p0, p1

    .line 5
    invoke-static {p0}, Lcom/tencent/beacon/base/net/b/a/c/d;->a(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public a(III)I
    .locals 3

    .line 8
    invoke-static {p2}, Lcom/tencent/beacon/base/net/b/a/b/a;->a(I)I

    move-result v0

    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    .line 9
    iget-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->C:[I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    aget p1, v2, v0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->B:[I

    shl-int/lit8 v0, v0, 0x6

    invoke-static {p1}, Lcom/tencent/beacon/base/net/b/a/b/c;->e(I)I

    move-result v2

    add-int/2addr v0, v2

    aget v0, v1, v0

    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->D:[I

    and-int/lit8 p1, p1, 0xf

    aget p1, v1, p1

    add-int/2addr p1, v0

    .line 11
    :goto_0
    iget-object p0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->q:Lcom/tencent/beacon/base/net/b/a/b/c$b;

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p0, p2, p3}, Lcom/tencent/beacon/base/net/b/a/b/c$b;->a(II)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public a(IIII)I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->r:Lcom/tencent/beacon/base/net/b/a/b/c$b;

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {v0, p2, p4}, Lcom/tencent/beacon/base/net/b/a/b/c$b;->a(II)I

    move-result p2

    .line 7
    invoke-virtual {p0, p1, p3, p4}, Lcom/tencent/beacon/base/net/b/a/b/c;->b(III)I

    move-result p0

    add-int/2addr p2, p0

    return p2
.end method

.method public a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/beacon/base/net/b/a/b/a;->a()I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->c:B

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->d:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->P:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 109
    iput-boolean p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->O:Z

    .line 110
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/b/c;->b()V

    .line 111
    invoke-virtual {p0, p2}, Lcom/tencent/beacon/base/net/b/a/b/c;->a(Ljava/io/OutputStream;)V

    .line 112
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/b/c;->e()V

    .line 113
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/b/c;->d()V

    .line 114
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/b/c;->c()V

    .line 115
    iget-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->q:Lcom/tencent/beacon/base/net/b/a/b/c$b;

    iget p2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->u:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p1, p2}, Lcom/tencent/beacon/base/net/b/a/b/c$b;->b(I)V

    .line 116
    iget-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->q:Lcom/tencent/beacon/base/net/b/a/b/c$b;

    iget p2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->G:I

    shl-int p2, p3, p2

    invoke-virtual {p1, p2}, Lcom/tencent/beacon/base/net/b/a/b/c$b;->d(I)V

    .line 117
    iget-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->r:Lcom/tencent/beacon/base/net/b/a/b/c$b;

    iget p2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->u:I

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p1, p2}, Lcom/tencent/beacon/base/net/b/a/b/c$b;->b(I)V

    .line 118
    iget-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->r:Lcom/tencent/beacon/base/net/b/a/b/c$b;

    iget p2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->G:I

    shl-int p2, p3, p2

    invoke-virtual {p1, p2}, Lcom/tencent/beacon/base/net/b/a/b/c$b;->d(I)V

    const-wide/16 p1, 0x0

    .line 119
    iput-wide p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->N:J

    return-void
.end method

.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;JJLcom/tencent/beacon/base/net/b/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->S:Z

    .line 121
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lcom/tencent/beacon/base/net/b/a/b/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V

    .line 122
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->W:[J

    iget-object p2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->X:[J

    iget-object p3, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->Y:[Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/beacon/base/net/b/a/b/c;->a([J[J[Z)V

    .line 123
    iget-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->Y:[Z

    aget-boolean p1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/b/c;->i()V

    return-void

    :cond_1
    if-eqz p7, :cond_0

    .line 125
    :try_start_1
    iget-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->W:[J

    aget-wide p1, p1, v0

    iget-object p3, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->X:[J

    aget-wide p3, p3, v0

    invoke-interface {p7, p1, p2, p3, p4}, Lcom/tencent/beacon/base/net/b/a/a;->a(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 126
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/b/c;->i()V

    .line 127
    throw p1
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/b/a/c/d;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->R:Z

    return-void
.end method

.method public a([J[J[Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 28
    aput-wide v1, p1, v0

    .line 29
    aput-wide v1, p2, v0

    const/4 v3, 0x1

    .line 30
    aput-boolean v3, p3, v0

    .line 31
    iget-object v4, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->P:Ljava/io/InputStream;

    if-eqz v4, :cond_0

    .line 32
    iget-object v5, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    invoke-virtual {v5, v4}, Lcom/tencent/beacon/base/net/b/a/a/b;->a(Ljava/io/InputStream;)V

    .line 33
    iget-object v4, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    invoke-virtual {v4}, Lcom/tencent/beacon/base/net/b/a/a/a;->c()V

    .line 34
    iput-boolean v3, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->S:Z

    const/4 v4, 0x0

    .line 35
    iput-object v4, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->P:Ljava/io/InputStream;

    .line 36
    :cond_0
    iget-boolean v4, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->O:Z

    if-eqz v4, :cond_1

    return-void

    .line 37
    :cond_1
    iput-boolean v3, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->O:Z

    .line 38
    iget-wide v4, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->N:J

    cmp-long v1, v4, v1

    const/4 v2, 0x4

    if-nez v1, :cond_3

    .line 39
    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    invoke-virtual {v1}, Lcom/tencent/beacon/base/net/b/a/a/b;->b()I

    move-result v1

    if-nez v1, :cond_2

    .line 40
    iget-wide p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->N:J

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/b/a/b/c;->b(I)V

    return-void

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/b/c;->f()I

    .line 42
    iget-wide v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->N:J

    long-to-int v1, v6

    iget v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->H:I

    and-int/2addr v1, v6

    .line 43
    iget-object v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    iget-object v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->h:[S

    iget v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    shl-int/2addr v8, v2

    add-int/2addr v8, v1

    invoke-virtual {v6, v7, v8, v0}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    .line 44
    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    invoke-static {v1}, Lcom/tencent/beacon/base/net/b/a/b/a;->c(I)I

    move-result v1

    iput v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    .line 45
    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    iget v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->x:I

    rsub-int/lit8 v6, v6, 0x0

    invoke-virtual {v1, v6}, Lcom/tencent/beacon/base/net/b/a/a/b;->a(I)B

    move-result v1

    .line 46
    iget-object v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->s:Lcom/tencent/beacon/base/net/b/a/b/c$c;

    iget-wide v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->N:J

    long-to-int v7, v7

    iget-byte v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->c:B

    invoke-virtual {v6, v7, v8}, Lcom/tencent/beacon/base/net/b/a/b/c$c;->a(IB)Lcom/tencent/beacon/base/net/b/a/b/c$c$a;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    invoke-virtual {v6, v7, v1}, Lcom/tencent/beacon/base/net/b/a/b/c$c$a;->a(Lcom/tencent/beacon/base/net/b/a/c/d;B)V

    .line 47
    iput-byte v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->c:B

    .line 48
    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->x:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->x:I

    .line 49
    iget-wide v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->N:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->N:J

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    invoke-virtual {v1}, Lcom/tencent/beacon/base/net/b/a/a/b;->b()I

    move-result v1

    if-nez v1, :cond_4

    .line 51
    iget-wide p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->N:J

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/b/a/b/c;->b(I)V

    return-void

    .line 52
    :cond_4
    iget-wide v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->N:J

    long-to-int v1, v6

    invoke-virtual {p0, v1}, Lcom/tencent/beacon/base/net/b/a/b/c;->c(I)I

    move-result v1

    .line 53
    iget v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->V:I

    .line 54
    iget-wide v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->N:J

    long-to-int v7, v7

    iget v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->H:I

    and-int/2addr v7, v8

    .line 55
    iget v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    shl-int/2addr v8, v2

    add-int/2addr v8, v7

    if-ne v1, v3, :cond_6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_6

    .line 56
    iget-object v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    iget-object v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->h:[S

    invoke-virtual {v6, v7, v8, v0}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    .line 57
    iget-object v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    iget v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->x:I

    rsub-int/lit8 v7, v7, 0x0

    invoke-virtual {v6, v7}, Lcom/tencent/beacon/base/net/b/a/a/b;->a(I)B

    move-result v6

    .line 58
    iget-object v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->s:Lcom/tencent/beacon/base/net/b/a/b/c$c;

    iget-wide v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->N:J

    long-to-int v8, v8

    iget-byte v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->c:B

    invoke-virtual {v7, v8, v9}, Lcom/tencent/beacon/base/net/b/a/b/c$c;->a(IB)Lcom/tencent/beacon/base/net/b/a/b/c$c$a;

    move-result-object v7

    .line 59
    iget v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    invoke-static {v8}, Lcom/tencent/beacon/base/net/b/a/b/a;->b(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 60
    iget-object v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->d:[I

    aget v9, v9, v0

    rsub-int/lit8 v9, v9, 0x0

    sub-int/2addr v9, v3

    iget v10, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->x:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/tencent/beacon/base/net/b/a/a/b;->a(I)B

    move-result v8

    .line 61
    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    invoke-virtual {v7, v9, v8, v6}, Lcom/tencent/beacon/base/net/b/a/b/c$c$a;->a(Lcom/tencent/beacon/base/net/b/a/c/d;BB)V

    goto :goto_0

    .line 62
    :cond_5
    iget-object v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    invoke-virtual {v7, v8, v6}, Lcom/tencent/beacon/base/net/b/a/b/c$c$a;->a(Lcom/tencent/beacon/base/net/b/a/c/d;B)V

    .line 63
    :goto_0
    iput-byte v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->c:B

    .line 64
    iget v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    invoke-static {v6}, Lcom/tencent/beacon/base/net/b/a/b/a;->c(I)I

    move-result v6

    iput v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    goto/16 :goto_7

    .line 65
    :cond_6
    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    iget-object v10, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->h:[S

    invoke-virtual {v9, v10, v8, v3}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    if-ge v6, v2, :cond_c

    .line 66
    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    iget-object v10, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->i:[S

    iget v11, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    invoke-virtual {v9, v10, v11, v3}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    if-nez v6, :cond_8

    .line 67
    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    iget-object v10, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->j:[S

    iget v11, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    invoke-virtual {v9, v10, v11, v0}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    if-ne v1, v3, :cond_7

    .line 68
    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    iget-object v10, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->m:[S

    invoke-virtual {v9, v10, v8, v0}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    goto :goto_1

    .line 69
    :cond_7
    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    iget-object v10, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->m:[S

    invoke-virtual {v9, v10, v8, v3}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    goto :goto_1

    .line 70
    :cond_8
    iget-object v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->j:[S

    iget v10, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    invoke-virtual {v8, v9, v10, v3}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    if-ne v6, v3, :cond_9

    .line 71
    iget-object v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->k:[S

    iget v10, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    invoke-virtual {v8, v9, v10, v0}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    goto :goto_1

    .line 72
    :cond_9
    iget-object v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->k:[S

    iget v10, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    invoke-virtual {v8, v9, v10, v3}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    .line 73
    iget-object v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->l:[S

    iget v10, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    add-int/lit8 v11, v6, -0x2

    invoke-virtual {v8, v9, v10, v11}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    :goto_1
    if-ne v1, v3, :cond_a

    .line 74
    iget v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    invoke-static {v7}, Lcom/tencent/beacon/base/net/b/a/b/a;->f(I)I

    move-result v7

    iput v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    goto :goto_2

    .line 75
    :cond_a
    iget-object v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->r:Lcom/tencent/beacon/base/net/b/a/b/c$b;

    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    add-int/lit8 v10, v1, -0x2

    invoke-virtual {v8, v9, v10, v7}, Lcom/tencent/beacon/base/net/b/a/b/c$b;->a(Lcom/tencent/beacon/base/net/b/a/c/d;II)V

    .line 76
    iget v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    invoke-static {v7}, Lcom/tencent/beacon/base/net/b/a/b/a;->e(I)I

    move-result v7

    iput v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    .line 77
    :goto_2
    iget-object v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->d:[I

    aget v7, v7, v6

    if-eqz v6, :cond_10

    :goto_3
    if-lt v6, v3, :cond_b

    .line 78
    iget-object v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->d:[I

    add-int/lit8 v9, v6, -0x1

    aget v9, v8, v9

    aput v9, v8, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 79
    :cond_b
    iget-object v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->d:[I

    aput v7, v6, v0

    goto :goto_6

    .line 80
    :cond_c
    iget-object v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->i:[S

    iget v10, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    invoke-virtual {v8, v9, v10, v0}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    .line 81
    iget v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    invoke-static {v8}, Lcom/tencent/beacon/base/net/b/a/b/a;->d(I)I

    move-result v8

    iput v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    .line 82
    iget-object v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->q:Lcom/tencent/beacon/base/net/b/a/b/c$b;

    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    add-int/lit8 v10, v1, -0x2

    invoke-virtual {v8, v9, v10, v7}, Lcom/tencent/beacon/base/net/b/a/b/c$b;->a(Lcom/tencent/beacon/base/net/b/a/c/d;II)V

    add-int/lit8 v6, v6, -0x4

    .line 83
    invoke-static {v6}, Lcom/tencent/beacon/base/net/b/a/b/c;->d(I)I

    move-result v7

    .line 84
    invoke-static {v1}, Lcom/tencent/beacon/base/net/b/a/b/a;->a(I)I

    move-result v8

    .line 85
    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->n:[Lcom/tencent/beacon/base/net/b/a/c/b;

    aget-object v8, v9, v8

    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    invoke-virtual {v8, v9, v7}, Lcom/tencent/beacon/base/net/b/a/c/b;->a(Lcom/tencent/beacon/base/net/b/a/c/d;I)V

    if-lt v7, v2, :cond_e

    shr-int/lit8 v8, v7, 0x1

    sub-int/2addr v8, v3

    and-int/lit8 v9, v7, 0x1

    or-int/lit8 v9, v9, 0x2

    shl-int/2addr v9, v8

    sub-int v10, v6, v9

    const/16 v11, 0xe

    if-ge v7, v11, :cond_d

    .line 86
    iget-object v11, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->o:[S

    sub-int/2addr v9, v7

    sub-int/2addr v9, v3

    iget-object v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    invoke-static {v11, v9, v7, v8, v10}, Lcom/tencent/beacon/base/net/b/a/c/b;->a([SILcom/tencent/beacon/base/net/b/a/c/d;II)V

    goto :goto_4

    .line 87
    :cond_d
    iget-object v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    shr-int/lit8 v9, v10, 0x4

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v7, v9, v8}, Lcom/tencent/beacon/base/net/b/a/c/d;->a(II)V

    .line 88
    iget-object v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->p:Lcom/tencent/beacon/base/net/b/a/c/b;

    iget-object v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    and-int/lit8 v9, v10, 0xf

    invoke-virtual {v7, v8, v9}, Lcom/tencent/beacon/base/net/b/a/c/b;->b(Lcom/tencent/beacon/base/net/b/a/c/d;I)V

    .line 89
    iget v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->E:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->E:I

    :cond_e
    :goto_4
    const/4 v7, 0x3

    :goto_5
    if-lt v7, v3, :cond_f

    .line 90
    iget-object v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->d:[I

    add-int/lit8 v9, v7, -0x1

    aget v9, v8, v9

    aput v9, v8, v7

    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 91
    :cond_f
    iget-object v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->d:[I

    aput v6, v7, v0

    .line 92
    iget v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->ba:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->ba:I

    .line 93
    :cond_10
    :goto_6
    iget-object v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    add-int/lit8 v7, v1, -0x1

    iget v8, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->x:I

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/tencent/beacon/base/net/b/a/a/b;->a(I)B

    move-result v6

    iput-byte v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->c:B

    .line 94
    :goto_7
    iget v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->x:I

    sub-int/2addr v6, v1

    iput v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->x:I

    .line 95
    iget-wide v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->N:J

    int-to-long v9, v1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->N:J

    if-nez v6, :cond_4

    .line 96
    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->ba:I

    const/16 v6, 0x80

    if-lt v1, v6, :cond_11

    .line 97
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/b/c;->d()V

    .line 98
    :cond_11
    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->E:I

    const/16 v6, 0x10

    if-lt v1, v6, :cond_12

    .line 99
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/b/c;->c()V

    .line 100
    :cond_12
    iget-wide v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->N:J

    aput-wide v6, p1, v0

    .line 101
    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    invoke-virtual {v1}, Lcom/tencent/beacon/base/net/b/a/c/d;->c()J

    move-result-wide v6

    aput-wide v6, p2, v0

    .line 102
    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    invoke-virtual {v1}, Lcom/tencent/beacon/base/net/b/a/a/b;->b()I

    move-result v1

    if-nez v1, :cond_13

    .line 103
    iget-wide p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->N:J

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/b/a/b/c;->b(I)V

    return-void

    .line 104
    :cond_13
    iget-wide v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->N:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x1000

    cmp-long v1, v6, v8

    if-ltz v1, :cond_4

    .line 105
    iput-boolean v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->O:Z

    .line 106
    aput-boolean v0, p3, v0

    return-void
.end method

.method public b(III)I
    .locals 1

    if-nez p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->j:[S

    aget-short p1, p1, p2

    invoke-static {p1}, Lcom/tencent/beacon/base/net/b/a/c/d;->a(I)I

    move-result p1

    .line 12
    iget-object p0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->m:[S

    shl-int/lit8 p2, p2, 0x4

    add-int/2addr p2, p3

    aget-short p0, p0, p2

    invoke-static {p0}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(I)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_1

    .line 13
    :cond_0
    iget-object p3, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->j:[S

    aget-short p3, p3, p2

    invoke-static {p3}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(I)I

    move-result p3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 14
    iget-object p0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->k:[S

    aget-short p0, p0, p2

    invoke-static {p0}, Lcom/tencent/beacon/base/net/b/a/c/d;->a(I)I

    move-result p0

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->k:[S

    aget-short v0, v0, p2

    invoke-static {v0}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(I)I

    move-result v0

    add-int/2addr p3, v0

    .line 16
    iget-object p0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->l:[S

    aget-short p0, p0, p2

    add-int/lit8 p1, p1, -0x2

    invoke-static {p0, p1}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(II)I

    move-result p0

    :goto_0
    add-int p1, p3, p0

    :goto_1
    return p1
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/tencent/beacon/base/net/b/a/a/a;

    invoke-direct {v0}, Lcom/tencent/beacon/base/net/b/a/a/a;-><init>()V

    .line 3
    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->Q:I

    if-nez v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/beacon/base/net/b/a/a/a;->c(I)V

    .line 5
    iput-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->s:Lcom/tencent/beacon/base/net/b/a/b/c$c;

    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->I:I

    iget v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->J:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/beacon/base/net/b/a/b/c$c;->a(II)V

    .line 7
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->K:I

    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->L:I

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->M:I

    iget v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->u:I

    if-ne v1, v2, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    iget v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->u:I

    const/16 v3, 0x1000

    const/16 v4, 0x112

    invoke-virtual {v1, v0, v3, v2, v4}, Lcom/tencent/beacon/base/net/b/a/a/a;->a(IIII)Z

    .line 9
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->K:I

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->L:I

    .line 10
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->u:I

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->M:I

    return-void
.end method

.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/b/c;->g()V

    .line 18
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->H:I

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/b/a/b/c;->k(I)V

    .line 19
    iget-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/b/a/c/d;->a()V

    .line 20
    iget-object p0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/c/d;->b()V

    return-void
.end method

.method public b(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->Z:[B

    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->G:I

    const/4 v2, 0x5

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->I:I

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x9

    iget v3, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->J:I

    add-int/2addr v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x0

    aput-byte v1, v0, v3

    move v0, v3

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->Z:[B

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->K:I

    mul-int/lit8 v0, v0, 0x8

    shr-int v0, v5, v0

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    move v0, v4

    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->Z:[B

    invoke-virtual {p1, p0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public c(I)I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->y:I

    iget v3, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->z:I

    if-eq v2, v3, :cond_0

    .line 2
    iget-object v1, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v1, v1, v3

    iget v2, v1, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    sub-int v3, v2, v3

    .line 3
    iget v1, v1, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    iput v1, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->V:I

    .line 4
    iput v2, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->z:I

    return v3

    :cond_0
    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->y:I

    iput v2, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->z:I

    .line 6
    iget-boolean v3, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->A:Z

    if-nez v3, :cond_1

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/beacon/base/net/b/a/b/c;->f()I

    move-result v3

    goto :goto_0

    .line 8
    :cond_1
    iget v3, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->v:I

    .line 9
    iput-boolean v2, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->A:Z

    .line 10
    :goto_0
    iget v4, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->w:I

    .line 11
    iget-object v5, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    invoke-virtual {v5}, Lcom/tencent/beacon/base/net/b/a/a/b;->b()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    const/4 v7, -0x1

    const/4 v8, 0x2

    if-ge v5, v8, :cond_2

    .line 12
    iput v7, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->V:I

    return v6

    :cond_2
    move v5, v2

    move v9, v5

    :goto_1
    const/4 v10, 0x4

    if-ge v5, v10, :cond_4

    .line 13
    iget-object v10, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->T:[I

    iget-object v11, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->d:[I

    aget v11, v11, v5

    aput v11, v10, v5

    .line 14
    iget-object v10, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->U:[I

    iget-object v12, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    const/16 v13, 0x111

    invoke-virtual {v12, v7, v11, v13}, Lcom/tencent/beacon/base/net/b/a/a/b;->b(III)I

    move-result v11

    aput v11, v10, v5

    .line 15
    iget-object v10, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->U:[I

    aget v11, v10, v5

    aget v10, v10, v9

    if-le v11, v10, :cond_3

    move v9, v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 16
    :cond_4
    iget-object v5, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->U:[I

    aget v5, v5, v9

    iget v11, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->u:I

    if-lt v5, v11, :cond_5

    .line 17
    iput v9, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->V:I

    add-int/lit8 v1, v5, -0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/tencent/beacon/base/net/b/a/b/c;->f(I)V

    return v5

    :cond_5
    if-lt v3, v11, :cond_6

    .line 19
    iget-object v1, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->t:[I

    sub-int/2addr v4, v6

    aget v1, v1, v4

    add-int/2addr v1, v10

    iput v1, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->V:I

    add-int/lit8 v1, v3, -0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/tencent/beacon/base/net/b/a/b/c;->f(I)V

    return v3

    .line 21
    :cond_6
    iget-object v5, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    invoke-virtual {v5, v7}, Lcom/tencent/beacon/base/net/b/a/a/b;->a(I)B

    move-result v5

    .line 22
    iget-object v11, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    iget-object v12, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->d:[I

    aget v12, v12, v2

    rsub-int/lit8 v12, v12, 0x0

    sub-int/2addr v12, v6

    sub-int/2addr v12, v6

    invoke-virtual {v11, v12}, Lcom/tencent/beacon/base/net/b/a/a/b;->a(I)B

    move-result v11

    if-ge v3, v8, :cond_7

    if-eq v5, v11, :cond_7

    .line 23
    iget-object v12, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->U:[I

    aget v12, v12, v9

    if-ge v12, v8, :cond_7

    .line 24
    iput v7, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->V:I

    return v6

    .line 25
    :cond_7
    iget-object v12, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v13, v12, v2

    iget v14, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    iput v14, v13, Lcom/tencent/beacon/base/net/b/a/b/c$d;->a:I

    .line 26
    iget v13, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->H:I

    and-int/2addr v13, v1

    .line 27
    aget-object v12, v12, v6

    iget-object v15, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->h:[S

    shl-int/2addr v14, v10

    add-int/2addr v14, v13

    aget-short v14, v15, v14

    invoke-static {v14}, Lcom/tencent/beacon/base/net/b/a/c/d;->a(I)I

    move-result v14

    iget-object v15, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->s:Lcom/tencent/beacon/base/net/b/a/b/c$c;

    iget-byte v7, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->c:B

    .line 28
    invoke-virtual {v15, v1, v7}, Lcom/tencent/beacon/base/net/b/a/b/c$c;->a(IB)Lcom/tencent/beacon/base/net/b/a/b/c$c$a;

    move-result-object v7

    iget v15, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    invoke-static {v15}, Lcom/tencent/beacon/base/net/b/a/b/a;->b(I)Z

    move-result v15

    xor-int/2addr v15, v6

    invoke-virtual {v7, v15, v11, v5}, Lcom/tencent/beacon/base/net/b/a/b/c$c$a;->a(ZBB)I

    move-result v7

    add-int/2addr v14, v7

    iput v14, v12, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    .line 29
    iget-object v7, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/tencent/beacon/base/net/b/a/b/c$d;->b()V

    .line 30
    iget-object v7, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->h:[S

    iget v12, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    shl-int/2addr v12, v10

    add-int/2addr v12, v13

    aget-short v7, v7, v12

    invoke-static {v7}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(I)I

    move-result v7

    .line 31
    iget-object v12, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->i:[S

    iget v14, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    aget-short v12, v12, v14

    invoke-static {v12}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(I)I

    move-result v12

    add-int/2addr v12, v7

    if-ne v11, v5, :cond_8

    .line 32
    iget v5, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    invoke-virtual {v0, v5, v13}, Lcom/tencent/beacon/base/net/b/a/b/c;->a(II)I

    move-result v5

    add-int/2addr v5, v12

    .line 33
    iget-object v11, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v11, v11, v6

    iget v14, v11, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    if-ge v5, v14, :cond_8

    .line 34
    iput v5, v11, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    .line 35
    invoke-virtual {v11}, Lcom/tencent/beacon/base/net/b/a/b/c$d;->c()V

    .line 36
    :cond_8
    iget-object v5, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->U:[I

    aget v5, v5, v9

    if-lt v3, v5, :cond_9

    move v5, v3

    :cond_9
    if-ge v5, v8, :cond_a

    .line 37
    iget-object v1, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    iput v1, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->V:I

    return v6

    .line 38
    :cond_a
    iget-object v9, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v11, v9, v6

    iput v2, v11, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    .line 39
    aget-object v9, v9, v2

    iget-object v11, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->T:[I

    aget v14, v11, v2

    iput v14, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->i:I

    .line 40
    aget v14, v11, v6

    iput v14, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->j:I

    .line 41
    aget v14, v11, v8

    iput v14, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->k:I

    const/4 v14, 0x3

    .line 42
    aget v11, v11, v14

    iput v11, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->l:I

    move v9, v5

    .line 43
    :goto_2
    iget-object v11, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    add-int/lit8 v15, v9, -0x1

    aget-object v9, v11, v9

    const v11, 0xfffffff

    iput v11, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    if-ge v15, v8, :cond_3e

    move v9, v2

    :goto_3
    if-ge v9, v10, :cond_e

    .line 44
    iget-object v15, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->U:[I

    aget v15, v15, v9

    if-ge v15, v8, :cond_b

    goto :goto_5

    .line 45
    :cond_b
    iget v11, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    invoke-virtual {v0, v9, v11, v13}, Lcom/tencent/beacon/base/net/b/a/b/c;->b(III)I

    move-result v11

    add-int/2addr v11, v12

    .line 46
    :goto_4
    iget-object v14, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->r:Lcom/tencent/beacon/base/net/b/a/b/c$b;

    add-int/lit8 v10, v15, -0x2

    invoke-virtual {v14, v10, v13}, Lcom/tencent/beacon/base/net/b/a/b/c$b;->a(II)I

    move-result v10

    add-int/2addr v10, v11

    .line 47
    iget-object v14, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v14, v14, v15

    .line 48
    iget v6, v14, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    if-ge v10, v6, :cond_c

    .line 49
    iput v10, v14, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    .line 50
    iput v2, v14, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    .line 51
    iput v9, v14, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    .line 52
    iput-boolean v2, v14, Lcom/tencent/beacon/base/net/b/a/b/c$d;->b:Z

    :cond_c
    add-int/lit8 v15, v15, -0x1

    if-ge v15, v8, :cond_d

    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x1

    const/4 v10, 0x4

    const v11, 0xfffffff

    const/4 v14, 0x3

    goto :goto_3

    :cond_d
    const/4 v6, 0x1

    const/4 v10, 0x4

    goto :goto_4

    .line 53
    :cond_e
    iget-object v6, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->i:[S

    iget v9, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    aget-short v6, v6, v9

    invoke-static {v6}, Lcom/tencent/beacon/base/net/b/a/c/d;->a(I)I

    move-result v6

    add-int/2addr v7, v6

    .line 54
    iget-object v6, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->U:[I

    aget v6, v6, v2

    if-lt v6, v8, :cond_f

    const/4 v9, 0x1

    add-int/2addr v6, v9

    goto :goto_6

    :cond_f
    move v6, v8

    :goto_6
    if-gt v6, v3, :cond_13

    move v3, v2

    .line 55
    :goto_7
    iget-object v9, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->t:[I

    aget v9, v9, v3

    if-le v6, v9, :cond_10

    add-int/lit8 v3, v3, 0x2

    goto :goto_7

    .line 56
    :cond_10
    :goto_8
    iget-object v9, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->t:[I

    add-int/lit8 v10, v3, 0x1

    aget v9, v9, v10

    .line 57
    invoke-virtual {v0, v9, v6, v13}, Lcom/tencent/beacon/base/net/b/a/b/c;->a(III)I

    move-result v10

    add-int/2addr v10, v7

    .line 58
    iget-object v11, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v11, v11, v6

    .line 59
    iget v12, v11, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    if-ge v10, v12, :cond_11

    .line 60
    iput v10, v11, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    .line 61
    iput v2, v11, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    add-int/lit8 v9, v9, 0x4

    .line 62
    iput v9, v11, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    .line 63
    iput-boolean v2, v11, Lcom/tencent/beacon/base/net/b/a/b/c$d;->b:Z

    .line 64
    :cond_11
    iget-object v9, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->t:[I

    aget v9, v9, v3

    if-ne v6, v9, :cond_12

    add-int/lit8 v3, v3, 0x2

    if-ne v3, v4, :cond_12

    goto :goto_9

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_13
    :goto_9
    move v3, v2

    :goto_a
    const/4 v4, 0x1

    :goto_b
    add-int/2addr v3, v4

    if-ne v3, v5, :cond_14

    .line 65
    invoke-virtual {v0, v3}, Lcom/tencent/beacon/base/net/b/a/b/c;->a(I)I

    move-result v0

    return v0

    .line 66
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/beacon/base/net/b/a/b/c;->f()I

    move-result v6

    .line 67
    iget v7, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->w:I

    .line 68
    iget v9, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->u:I

    if-lt v6, v9, :cond_15

    .line 69
    iput v6, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->v:I

    .line 70
    iput-boolean v4, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->A:Z

    .line 71
    invoke-virtual {v0, v3}, Lcom/tencent/beacon/base/net/b/a/b/c;->a(I)I

    move-result v0

    return v0

    :cond_15
    add-int/2addr v1, v4

    .line 72
    iget-object v4, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v9, v4, v3

    iget v10, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    .line 73
    iget-boolean v11, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->b:Z

    if-eqz v11, :cond_18

    add-int/lit8 v10, v10, -0x1

    .line 74
    iget-boolean v11, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->c:Z

    if-eqz v11, :cond_17

    .line 75
    iget v11, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->d:I

    aget-object v4, v4, v11

    iget v4, v4, Lcom/tencent/beacon/base/net/b/a/b/c$d;->a:I

    .line 76
    iget v9, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->e:I

    const/4 v11, 0x4

    if-ge v9, v11, :cond_16

    .line 77
    invoke-static {v4}, Lcom/tencent/beacon/base/net/b/a/b/a;->e(I)I

    move-result v4

    goto :goto_c

    .line 78
    :cond_16
    invoke-static {v4}, Lcom/tencent/beacon/base/net/b/a/b/a;->d(I)I

    move-result v4

    goto :goto_c

    .line 79
    :cond_17
    aget-object v4, v4, v10

    iget v4, v4, Lcom/tencent/beacon/base/net/b/a/b/c$d;->a:I

    .line 80
    :goto_c
    invoke-static {v4}, Lcom/tencent/beacon/base/net/b/a/b/a;->c(I)I

    move-result v4

    goto :goto_d

    .line 81
    :cond_18
    aget-object v4, v4, v10

    iget v4, v4, Lcom/tencent/beacon/base/net/b/a/b/c$d;->a:I

    :goto_d
    add-int/lit8 v9, v3, -0x1

    if-ne v10, v9, :cond_1a

    .line 82
    iget-object v9, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/tencent/beacon/base/net/b/a/b/c$d;->a()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 83
    invoke-static {v4}, Lcom/tencent/beacon/base/net/b/a/b/a;->f(I)I

    move-result v4

    goto/16 :goto_f

    .line 84
    :cond_19
    invoke-static {v4}, Lcom/tencent/beacon/base/net/b/a/b/a;->c(I)I

    move-result v4

    goto/16 :goto_f

    .line 85
    :cond_1a
    iget-object v9, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v9, v9, v3

    iget-boolean v11, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->b:Z

    if-eqz v11, :cond_1b

    iget-boolean v11, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->c:Z

    if-eqz v11, :cond_1b

    .line 86
    iget v10, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->d:I

    .line 87
    iget v9, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->e:I

    .line 88
    invoke-static {v4}, Lcom/tencent/beacon/base/net/b/a/b/a;->e(I)I

    move-result v4

    const/4 v11, 0x4

    goto :goto_e

    .line 89
    :cond_1b
    iget v9, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    const/4 v11, 0x4

    if-ge v9, v11, :cond_1c

    .line 90
    invoke-static {v4}, Lcom/tencent/beacon/base/net/b/a/b/a;->e(I)I

    move-result v4

    goto :goto_e

    .line 91
    :cond_1c
    invoke-static {v4}, Lcom/tencent/beacon/base/net/b/a/b/a;->d(I)I

    move-result v4

    .line 92
    :goto_e
    iget-object v12, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v10, v12, v10

    if-ge v9, v11, :cond_20

    if-nez v9, :cond_1d

    .line 93
    iget-object v9, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->T:[I

    iget v11, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->i:I

    aput v11, v9, v2

    .line 94
    iget v11, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->j:I

    const/4 v12, 0x1

    aput v11, v9, v12

    .line 95
    iget v11, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->k:I

    aput v11, v9, v8

    .line 96
    iget v10, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->l:I

    const/4 v11, 0x3

    aput v10, v9, v11

    goto :goto_f

    :cond_1d
    const/4 v11, 0x3

    const/4 v12, 0x1

    if-ne v9, v12, :cond_1e

    .line 97
    iget-object v9, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->T:[I

    iget v13, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->j:I

    aput v13, v9, v2

    .line 98
    iget v13, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->i:I

    aput v13, v9, v12

    .line 99
    iget v13, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->k:I

    aput v13, v9, v8

    .line 100
    iget v10, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->l:I

    aput v10, v9, v11

    goto :goto_f

    :cond_1e
    if-ne v9, v8, :cond_1f

    .line 101
    iget-object v9, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->T:[I

    iget v13, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->k:I

    aput v13, v9, v2

    .line 102
    iget v13, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->i:I

    aput v13, v9, v12

    .line 103
    iget v13, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->j:I

    aput v13, v9, v8

    .line 104
    iget v10, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->l:I

    aput v10, v9, v11

    goto :goto_f

    .line 105
    :cond_1f
    iget-object v9, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->T:[I

    iget v13, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->l:I

    aput v13, v9, v2

    .line 106
    iget v13, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->i:I

    aput v13, v9, v12

    .line 107
    iget v13, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->j:I

    aput v13, v9, v8

    .line 108
    iget v10, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->k:I

    aput v10, v9, v11

    goto :goto_f

    :cond_20
    const/4 v11, 0x3

    const/4 v12, 0x1

    .line 109
    iget-object v13, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->T:[I

    add-int/lit8 v9, v9, -0x4

    aput v9, v13, v2

    .line 110
    iget v9, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->i:I

    aput v9, v13, v12

    .line 111
    iget v9, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->j:I

    aput v9, v13, v8

    .line 112
    iget v9, v10, Lcom/tencent/beacon/base/net/b/a/b/c$d;->k:I

    aput v9, v13, v11

    .line 113
    :goto_f
    iget-object v9, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v9, v9, v3

    iput v4, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->a:I

    .line 114
    iget-object v10, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->T:[I

    aget v11, v10, v2

    iput v11, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->i:I

    const/4 v11, 0x1

    .line 115
    aget v12, v10, v11

    iput v12, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->j:I

    .line 116
    aget v11, v10, v8

    iput v11, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->k:I

    const/4 v11, 0x3

    .line 117
    aget v10, v10, v11

    iput v10, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->l:I

    .line 118
    iget v9, v9, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    .line 119
    iget-object v10, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    const/4 v12, -0x1

    invoke-virtual {v10, v12}, Lcom/tencent/beacon/base/net/b/a/a/b;->a(I)B

    move-result v10

    .line 120
    iget-object v12, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    iget-object v13, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->T:[I

    aget v13, v13, v2

    rsub-int/lit8 v13, v13, 0x0

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Lcom/tencent/beacon/base/net/b/a/a/b;->a(I)B

    move-result v12

    .line 121
    iget v13, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->H:I

    and-int/2addr v13, v1

    .line 122
    iget-object v14, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->h:[S

    shl-int/lit8 v15, v4, 0x4

    add-int/2addr v15, v13

    aget-short v14, v14, v15

    .line 123
    invoke-static {v14}, Lcom/tencent/beacon/base/net/b/a/c/d;->a(I)I

    move-result v14

    add-int/2addr v14, v9

    iget-object v11, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->s:Lcom/tencent/beacon/base/net/b/a/b/c$c;

    iget-object v2, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    const/4 v8, -0x2

    .line 124
    invoke-virtual {v2, v8}, Lcom/tencent/beacon/base/net/b/a/a/b;->a(I)B

    move-result v2

    invoke-virtual {v11, v1, v2}, Lcom/tencent/beacon/base/net/b/a/b/c$c;->a(IB)Lcom/tencent/beacon/base/net/b/a/b/c$c$a;

    move-result-object v2

    .line 125
    invoke-static {v4}, Lcom/tencent/beacon/base/net/b/a/b/a;->b(I)Z

    move-result v8

    const/4 v11, 0x1

    xor-int/2addr v8, v11

    invoke-virtual {v2, v8, v12, v10}, Lcom/tencent/beacon/base/net/b/a/b/c$c$a;->a(ZBB)I

    move-result v2

    add-int/2addr v14, v2

    .line 126
    iget-object v2, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    add-int/lit8 v8, v3, 0x1

    aget-object v2, v2, v8

    .line 127
    iget v11, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    if-ge v14, v11, :cond_21

    .line 128
    iput v14, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    .line 129
    iput v3, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    .line 130
    invoke-virtual {v2}, Lcom/tencent/beacon/base/net/b/a/b/c$d;->b()V

    move/from16 p1, v5

    const/4 v11, 0x1

    goto :goto_10

    :cond_21
    move/from16 p1, v5

    const/4 v11, 0x0

    .line 131
    :goto_10
    iget-object v5, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->h:[S

    aget-short v5, v5, v15

    invoke-static {v5}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(I)I

    move-result v5

    add-int/2addr v9, v5

    .line 132
    iget-object v5, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->i:[S

    aget-short v5, v5, v4

    invoke-static {v5}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(I)I

    move-result v5

    add-int/2addr v5, v9

    if-ne v12, v10, :cond_23

    .line 133
    iget v15, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    if-ge v15, v3, :cond_22

    iget v15, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    if-eqz v15, :cond_23

    .line 134
    :cond_22
    invoke-virtual {v0, v4, v13}, Lcom/tencent/beacon/base/net/b/a/b/c;->a(II)I

    move-result v15

    add-int/2addr v15, v5

    move/from16 v16, v7

    .line 135
    iget v7, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    if-gt v15, v7, :cond_24

    .line 136
    iput v15, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    .line 137
    iput v3, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    .line 138
    invoke-virtual {v2}, Lcom/tencent/beacon/base/net/b/a/b/c$d;->c()V

    const/4 v11, 0x1

    goto :goto_11

    :cond_23
    move/from16 v16, v7

    .line 139
    :cond_24
    :goto_11
    iget-object v2, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    invoke-virtual {v2}, Lcom/tencent/beacon/base/net/b/a/a/b;->b()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    rsub-int v7, v3, 0xfff

    .line 140
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v7, 0x2

    if-ge v2, v7, :cond_25

    move/from16 v5, p1

    move v8, v7

    const/4 v2, 0x0

    goto/16 :goto_a

    .line 141
    :cond_25
    iget v7, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->u:I

    if-le v2, v7, :cond_26

    move v15, v7

    goto :goto_12

    :cond_26
    move v15, v2

    :goto_12
    if-nez v11, :cond_28

    if-eq v12, v10, :cond_28

    add-int/lit8 v10, v2, -0x1

    .line 142
    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 143
    iget-object v10, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    iget-object v11, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->T:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v12, v11, v7}, Lcom/tencent/beacon/base/net/b/a/a/b;->b(III)I

    move-result v7

    const/4 v10, 0x2

    if-lt v7, v10, :cond_28

    .line 144
    invoke-static {v4}, Lcom/tencent/beacon/base/net/b/a/b/a;->c(I)I

    move-result v10

    add-int/lit8 v11, v1, 0x1

    .line 145
    iget v12, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->H:I

    and-int/2addr v11, v12

    .line 146
    iget-object v12, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->h:[S

    shl-int/lit8 v17, v10, 0x4

    add-int v17, v17, v11

    aget-short v12, v12, v17

    .line 147
    invoke-static {v12}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(I)I

    move-result v12

    add-int/2addr v14, v12

    iget-object v12, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->i:[S

    aget-short v12, v12, v10

    .line 148
    invoke-static {v12}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(I)I

    move-result v12

    add-int/2addr v14, v12

    add-int v12, v8, v7

    move/from16 v17, v9

    move/from16 v9, p1

    :goto_13
    if-ge v9, v12, :cond_27

    move/from16 v18, v6

    .line 149
    iget-object v6, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    add-int/lit8 v9, v9, 0x1

    aget-object v6, v6, v9

    move/from16 p1, v9

    const v9, 0xfffffff

    iput v9, v6, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    move/from16 v9, p1

    move/from16 v6, v18

    goto :goto_13

    :cond_27
    move/from16 v18, v6

    const/4 v6, 0x0

    .line 150
    invoke-virtual {v0, v6, v7, v10, v11}, Lcom/tencent/beacon/base/net/b/a/b/c;->a(IIII)I

    move-result v7

    add-int/2addr v14, v7

    .line 151
    iget-object v7, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v7, v7, v12

    .line 152
    iget v10, v7, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    if-ge v14, v10, :cond_29

    .line 153
    iput v14, v7, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    .line 154
    iput v8, v7, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    .line 155
    iput v6, v7, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    const/4 v8, 0x1

    .line 156
    iput-boolean v8, v7, Lcom/tencent/beacon/base/net/b/a/b/c$d;->b:Z

    .line 157
    iput-boolean v6, v7, Lcom/tencent/beacon/base/net/b/a/b/c$d;->c:Z

    goto :goto_14

    :cond_28
    move/from16 v18, v6

    move/from16 v17, v9

    move/from16 v9, p1

    :cond_29
    :goto_14
    const/4 v6, 0x0

    const/4 v7, 0x2

    :goto_15
    const/4 v8, 0x4

    if-ge v6, v8, :cond_32

    .line 158
    iget-object v10, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    iget-object v11, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->T:[I

    aget v11, v11, v6

    const/4 v14, -0x1

    invoke-virtual {v10, v14, v11, v15}, Lcom/tencent/beacon/base/net/b/a/a/b;->b(III)I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_2a

    move/from16 v22, v1

    move/from16 p1, v5

    goto/16 :goto_18

    :cond_2a
    move v11, v10

    :goto_16
    add-int v12, v3, v11

    if-ge v9, v12, :cond_2b

    .line 159
    iget-object v12, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    add-int/lit8 v9, v9, 0x1

    aget-object v12, v12, v9

    const v8, 0xfffffff

    iput v8, v12, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    const/4 v8, 0x4

    goto :goto_16

    .line 160
    :cond_2b
    invoke-virtual {v0, v6, v11, v4, v13}, Lcom/tencent/beacon/base/net/b/a/b/c;->a(IIII)I

    move-result v8

    add-int/2addr v8, v5

    .line 161
    iget-object v14, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v12, v14, v12

    .line 162
    iget v14, v12, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    if-ge v8, v14, :cond_2c

    .line 163
    iput v8, v12, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    .line 164
    iput v3, v12, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    .line 165
    iput v6, v12, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    const/4 v8, 0x0

    .line 166
    iput-boolean v8, v12, Lcom/tencent/beacon/base/net/b/a/b/c$d;->b:Z

    :cond_2c
    add-int/lit8 v11, v11, -0x1

    const/4 v8, 0x2

    if-ge v11, v8, :cond_31

    if-nez v6, :cond_2d

    add-int/lit8 v7, v10, 0x1

    :cond_2d
    if-ge v10, v2, :cond_30

    add-int/lit8 v8, v2, -0x1

    sub-int/2addr v8, v10

    .line 167
    iget v11, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->u:I

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 168
    iget-object v11, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    iget-object v12, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->T:[I

    aget v12, v12, v6

    invoke-virtual {v11, v10, v12, v8}, Lcom/tencent/beacon/base/net/b/a/a/b;->b(III)I

    move-result v8

    const/4 v11, 0x2

    if-lt v8, v11, :cond_30

    .line 169
    invoke-static {v4}, Lcom/tencent/beacon/base/net/b/a/b/a;->e(I)I

    move-result v11

    add-int v12, v1, v10

    .line 170
    iget v14, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->H:I

    and-int/2addr v14, v12

    .line 171
    invoke-virtual {v0, v6, v10, v4, v13}, Lcom/tencent/beacon/base/net/b/a/b/c;->a(IIII)I

    move-result v19

    add-int v19, v5, v19

    move/from16 p1, v5

    iget-object v5, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->h:[S

    shl-int/lit8 v20, v11, 0x4

    add-int v20, v20, v14

    aget-short v5, v5, v20

    .line 172
    invoke-static {v5}, Lcom/tencent/beacon/base/net/b/a/c/d;->a(I)I

    move-result v5

    add-int v19, v19, v5

    iget-object v5, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->s:Lcom/tencent/beacon/base/net/b/a/b/c$c;

    iget-object v14, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    move/from16 v20, v7

    add-int/lit8 v7, v10, -0x1

    move/from16 v21, v9

    add-int/lit8 v9, v7, -0x1

    .line 173
    invoke-virtual {v14, v9}, Lcom/tencent/beacon/base/net/b/a/a/b;->a(I)B

    move-result v9

    .line 174
    invoke-virtual {v5, v12, v9}, Lcom/tencent/beacon/base/net/b/a/b/c$c;->a(IB)Lcom/tencent/beacon/base/net/b/a/b/c$c$a;

    move-result-object v5

    iget-object v9, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    iget-object v14, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->T:[I

    aget v14, v14, v6

    move/from16 v22, v1

    const/4 v1, 0x1

    add-int/2addr v14, v1

    sub-int v14, v7, v14

    .line 175
    invoke-virtual {v9, v14}, Lcom/tencent/beacon/base/net/b/a/a/b;->a(I)B

    move-result v9

    iget-object v14, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    .line 176
    invoke-virtual {v14, v7}, Lcom/tencent/beacon/base/net/b/a/a/b;->a(I)B

    move-result v7

    .line 177
    invoke-virtual {v5, v1, v9, v7}, Lcom/tencent/beacon/base/net/b/a/b/c$c$a;->a(ZBB)I

    move-result v5

    add-int v19, v19, v5

    .line 178
    invoke-static {v11}, Lcom/tencent/beacon/base/net/b/a/b/a;->c(I)I

    move-result v5

    add-int/2addr v12, v1

    .line 179
    iget v1, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->H:I

    and-int/2addr v1, v12

    .line 180
    iget-object v7, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->h:[S

    shl-int/lit8 v9, v5, 0x4

    add-int/2addr v9, v1

    aget-short v7, v7, v9

    invoke-static {v7}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(I)I

    move-result v7

    add-int v19, v19, v7

    .line 181
    iget-object v7, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->i:[S

    aget-short v7, v7, v5

    invoke-static {v7}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(I)I

    move-result v7

    add-int v19, v19, v7

    add-int/lit8 v7, v10, 0x1

    add-int/2addr v7, v8

    move/from16 v9, v21

    :goto_17
    add-int v11, v3, v7

    if-ge v9, v11, :cond_2e

    .line 182
    iget-object v11, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    add-int/lit8 v9, v9, 0x1

    aget-object v11, v11, v9

    const v12, 0xfffffff

    iput v12, v11, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    goto :goto_17

    :cond_2e
    const/4 v12, 0x0

    .line 183
    invoke-virtual {v0, v12, v8, v5, v1}, Lcom/tencent/beacon/base/net/b/a/b/c;->a(IIII)I

    move-result v1

    add-int v1, v19, v1

    .line 184
    iget-object v5, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v5, v5, v11

    .line 185
    iget v7, v5, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    if-ge v1, v7, :cond_2f

    .line 186
    iput v1, v5, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    add-int/2addr v10, v3

    const/4 v1, 0x1

    add-int/2addr v10, v1

    .line 187
    iput v10, v5, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    .line 188
    iput v12, v5, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    .line 189
    iput-boolean v1, v5, Lcom/tencent/beacon/base/net/b/a/b/c$d;->b:Z

    .line 190
    iput-boolean v1, v5, Lcom/tencent/beacon/base/net/b/a/b/c$d;->c:Z

    .line 191
    iput v3, v5, Lcom/tencent/beacon/base/net/b/a/b/c$d;->d:I

    .line 192
    iput v6, v5, Lcom/tencent/beacon/base/net/b/a/b/c$d;->e:I

    :cond_2f
    move/from16 v7, v20

    goto :goto_18

    :cond_30
    move/from16 v22, v1

    move/from16 p1, v5

    move/from16 v20, v7

    move/from16 v21, v9

    move/from16 v7, v20

    move/from16 v9, v21

    :goto_18
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, p1

    move/from16 v1, v22

    goto/16 :goto_15

    :cond_31
    move/from16 v21, v9

    const/4 v8, 0x4

    const/4 v14, -0x1

    goto/16 :goto_16

    :cond_32
    move/from16 v22, v1

    move/from16 v1, v18

    if-le v1, v15, :cond_34

    const/4 v1, 0x0

    .line 193
    :goto_19
    iget-object v5, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->t:[I

    aget v6, v5, v1

    if-le v15, v6, :cond_33

    add-int/lit8 v1, v1, 0x2

    goto :goto_19

    .line 194
    :cond_33
    aput v15, v5, v1

    add-int/lit8 v1, v1, 0x2

    move v6, v15

    goto :goto_1a

    :cond_34
    move v6, v1

    move/from16 v1, v16

    :goto_1a
    if-lt v6, v7, :cond_3d

    .line 195
    iget-object v5, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->i:[S

    aget-short v5, v5, v4

    invoke-static {v5}, Lcom/tencent/beacon/base/net/b/a/c/d;->a(I)I

    move-result v5

    add-int v5, v17, v5

    :goto_1b
    add-int v8, v3, v6

    if-ge v9, v8, :cond_35

    .line 196
    iget-object v8, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    const v10, 0xfffffff

    iput v10, v8, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    goto :goto_1b

    :cond_35
    const/4 v6, 0x0

    .line 197
    :goto_1c
    iget-object v8, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->t:[I

    aget v8, v8, v6

    if-le v7, v8, :cond_36

    add-int/lit8 v6, v6, 0x2

    goto :goto_1c

    .line 198
    :cond_36
    :goto_1d
    iget-object v8, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->t:[I

    add-int/lit8 v10, v6, 0x1

    aget v8, v8, v10

    .line 199
    invoke-virtual {v0, v8, v7, v13}, Lcom/tencent/beacon/base/net/b/a/b/c;->a(III)I

    move-result v10

    add-int/2addr v10, v5

    .line 200
    iget-object v11, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    add-int v12, v3, v7

    aget-object v11, v11, v12

    .line 201
    iget v14, v11, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    if-ge v10, v14, :cond_37

    .line 202
    iput v10, v11, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    .line 203
    iput v3, v11, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    add-int/lit8 v14, v8, 0x4

    .line 204
    iput v14, v11, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    const/4 v14, 0x0

    .line 205
    iput-boolean v14, v11, Lcom/tencent/beacon/base/net/b/a/b/c$d;->b:Z

    .line 206
    :cond_37
    iget-object v11, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->t:[I

    aget v11, v11, v6

    if-ne v7, v11, :cond_3c

    if-ge v7, v2, :cond_3a

    add-int/lit8 v11, v2, -0x1

    sub-int/2addr v11, v7

    .line 207
    iget v14, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->u:I

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 208
    iget-object v14, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    invoke-virtual {v14, v7, v8, v11}, Lcom/tencent/beacon/base/net/b/a/a/b;->b(III)I

    move-result v11

    const/4 v14, 0x2

    if-lt v11, v14, :cond_3a

    .line 209
    invoke-static {v4}, Lcom/tencent/beacon/base/net/b/a/b/a;->d(I)I

    move-result v15

    add-int v14, v22, v7

    move/from16 p1, v2

    .line 210
    iget v2, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->H:I

    and-int/2addr v2, v14

    move/from16 v16, v4

    .line 211
    iget-object v4, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->h:[S

    shl-int/lit8 v17, v15, 0x4

    add-int v17, v17, v2

    aget-short v2, v4, v17

    .line 212
    invoke-static {v2}, Lcom/tencent/beacon/base/net/b/a/c/d;->a(I)I

    move-result v2

    add-int/2addr v10, v2

    iget-object v2, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->s:Lcom/tencent/beacon/base/net/b/a/b/c$c;

    iget-object v4, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    move/from16 v17, v5

    add-int/lit8 v5, v7, -0x1

    move/from16 v18, v9

    add-int/lit8 v9, v5, -0x1

    .line 213
    invoke-virtual {v4, v9}, Lcom/tencent/beacon/base/net/b/a/a/b;->a(I)B

    move-result v4

    .line 214
    invoke-virtual {v2, v14, v4}, Lcom/tencent/beacon/base/net/b/a/b/c$c;->a(IB)Lcom/tencent/beacon/base/net/b/a/b/c$c$a;

    move-result-object v2

    iget-object v4, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    add-int/lit8 v9, v8, 0x1

    sub-int v9, v7, v9

    move/from16 v19, v13

    const/4 v13, 0x1

    sub-int/2addr v9, v13

    .line 215
    invoke-virtual {v4, v9}, Lcom/tencent/beacon/base/net/b/a/a/b;->a(I)B

    move-result v4

    iget-object v9, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    .line 216
    invoke-virtual {v9, v5}, Lcom/tencent/beacon/base/net/b/a/a/b;->a(I)B

    move-result v5

    .line 217
    invoke-virtual {v2, v13, v4, v5}, Lcom/tencent/beacon/base/net/b/a/b/c$c$a;->a(ZBB)I

    move-result v2

    add-int/2addr v10, v2

    .line 218
    invoke-static {v15}, Lcom/tencent/beacon/base/net/b/a/b/a;->c(I)I

    move-result v2

    add-int/2addr v14, v13

    .line 219
    iget v4, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->H:I

    and-int/2addr v4, v14

    .line 220
    iget-object v5, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->h:[S

    shl-int/lit8 v9, v2, 0x4

    add-int/2addr v9, v4

    aget-short v5, v5, v9

    invoke-static {v5}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(I)I

    move-result v5

    add-int/2addr v10, v5

    .line 221
    iget-object v5, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->i:[S

    aget-short v5, v5, v2

    invoke-static {v5}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(I)I

    move-result v5

    add-int/2addr v10, v5

    add-int/lit8 v5, v7, 0x1

    add-int/2addr v5, v11

    move/from16 v9, v18

    :goto_1e
    add-int v13, v3, v5

    if-ge v9, v13, :cond_38

    .line 222
    iget-object v13, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    add-int/lit8 v9, v9, 0x1

    aget-object v13, v13, v9

    const v14, 0xfffffff

    iput v14, v13, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    goto :goto_1e

    :cond_38
    const v14, 0xfffffff

    const/4 v15, 0x0

    .line 223
    invoke-virtual {v0, v15, v11, v2, v4}, Lcom/tencent/beacon/base/net/b/a/b/c;->a(IIII)I

    move-result v2

    add-int/2addr v10, v2

    .line 224
    iget-object v2, v0, Lcom/tencent/beacon/base/net/b/a/b/c;->e:[Lcom/tencent/beacon/base/net/b/a/b/c$d;

    aget-object v2, v2, v13

    .line 225
    iget v4, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    if-ge v10, v4, :cond_39

    .line 226
    iput v10, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->f:I

    add-int/lit8 v12, v12, 0x1

    .line 227
    iput v12, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->g:I

    .line 228
    iput v15, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    const/4 v10, 0x1

    .line 229
    iput-boolean v10, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->b:Z

    .line 230
    iput-boolean v10, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->c:Z

    .line 231
    iput v3, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->d:I

    add-int/lit8 v8, v8, 0x4

    .line 232
    iput v8, v2, Lcom/tencent/beacon/base/net/b/a/b/c$d;->e:I

    goto :goto_1f

    :cond_39
    const/4 v10, 0x1

    :goto_1f
    move v5, v9

    goto :goto_20

    :cond_3a
    move/from16 p1, v2

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v9

    move/from16 v19, v13

    const/4 v10, 0x1

    const v14, 0xfffffff

    const/4 v15, 0x0

    move/from16 v5, v18

    :goto_20
    add-int/lit8 v6, v6, 0x2

    if-ne v6, v1, :cond_3b

    move v4, v10

    move v2, v15

    move/from16 v1, v22

    goto :goto_22

    :cond_3b
    move v9, v5

    goto :goto_21

    :cond_3c
    move/from16 p1, v2

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v9

    move/from16 v19, v13

    const/4 v10, 0x1

    const v14, 0xfffffff

    const/4 v15, 0x0

    :goto_21
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, p1

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v13, v19

    goto/16 :goto_1d

    :cond_3d
    move v5, v9

    move/from16 v1, v22

    const/4 v2, 0x0

    const/4 v4, 0x1

    :goto_22
    const/4 v8, 0x2

    goto/16 :goto_b

    :cond_3e
    move v9, v15

    goto/16 :goto_2
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->D:[I

    iget-object v3, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->p:Lcom/tencent/beacon/base/net/b/a/c/b;

    invoke-virtual {v3, v1}, Lcom/tencent/beacon/base/net/b/a/c/b;->b(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_0
    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->E:I

    return-void
.end method

.method public c(III)Z
    .locals 2

    if-ltz p2, :cond_1

    const/4 v0, 0x4

    if-gt p2, v0, :cond_1

    if-ltz p1, :cond_1

    const/16 v1, 0x8

    if-gt p1, v1, :cond_1

    if-ltz p3, :cond_1

    if-le p3, v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iput p2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->I:I

    .line 236
    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->J:I

    .line 237
    iput p3, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->G:I

    const/4 p1, 0x1

    shl-int p2, p1, p3

    sub-int/2addr p2, p1

    .line 238
    iput p2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->H:I

    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()V
    .locals 11

    const/4 v0, 0x4

    move v1, v0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    .line 4
    invoke-static {v1}, Lcom/tencent/beacon/base/net/b/a/b/c;->d(I)I

    move-result v2

    shr-int/lit8 v3, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 v4, v2, 0x1

    or-int/lit8 v4, v4, 0x2

    shl-int/2addr v4, v3

    .line 5
    iget-object v5, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->aa:[I

    iget-object v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->o:[S

    sub-int v2, v4, v2

    add-int/lit8 v2, v2, -0x1

    sub-int v4, v1, v4

    invoke-static {v6, v2, v3, v4}, Lcom/tencent/beacon/base/net/b/a/c/b;->a([SIII)I

    move-result v2

    aput v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_5

    .line 6
    iget-object v4, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->n:[Lcom/tencent/beacon/base/net/b/a/c/b;

    aget-object v4, v4, v3

    shl-int/lit8 v5, v3, 0x6

    move v6, v1

    .line 7
    :goto_2
    iget v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->F:I

    if-ge v6, v7, :cond_1

    .line 8
    iget-object v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->B:[I

    add-int v8, v5, v6

    invoke-virtual {v4, v6}, Lcom/tencent/beacon/base/net/b/a/c/b;->a(I)I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    const/16 v4, 0xe

    .line 9
    :goto_3
    iget v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->F:I

    if-ge v4, v6, :cond_2

    .line 10
    iget-object v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->B:[I

    add-int v7, v5, v4

    aget v8, v6, v7

    shr-int/lit8 v9, v4, 0x1

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v0

    shl-int/lit8 v9, v9, 0x6

    add-int/2addr v8, v9

    aput v8, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    mul-int/lit16 v4, v3, 0x80

    move v6, v1

    :goto_4
    if-ge v6, v0, :cond_3

    .line 11
    iget-object v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->C:[I

    add-int v8, v4, v6

    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->B:[I

    add-int v10, v5, v6

    aget v9, v9, v10

    aput v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    :goto_5
    if-ge v6, v2, :cond_4

    .line 12
    iget-object v7, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->C:[I

    add-int v8, v4, v6

    iget-object v9, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->B:[I

    invoke-static {v6}, Lcom/tencent/beacon/base/net/b/a/b/c;->d(I)I

    move-result v10

    add-int/2addr v10, v5

    aget v9, v9, v10

    iget-object v10, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->aa:[I

    aget v10, v10, v6

    add-int/2addr v9, v10

    aput v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_5
    iput v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->ba:I

    return-void
.end method

.method public e()V
    .locals 4

    .line 4
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/b/c;->a()V

    .line 5
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/b/a/c/d;->d()V

    .line 6
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->h:[S

    invoke-static {v0}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([S)V

    .line 7
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->m:[S

    invoke-static {v0}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([S)V

    .line 8
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->i:[S

    invoke-static {v0}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([S)V

    .line 9
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->j:[S

    invoke-static {v0}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([S)V

    .line 10
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->k:[S

    invoke-static {v0}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([S)V

    .line 11
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->l:[S

    invoke-static {v0}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([S)V

    .line 12
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->o:[S

    invoke-static {v0}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([S)V

    .line 13
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->s:Lcom/tencent/beacon/base/net/b/a/b/c$c;

    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/b/a/b/c$c;->a()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 14
    iget-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->n:[Lcom/tencent/beacon/base/net/b/a/c/b;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/tencent/beacon/base/net/b/a/c/b;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->q:Lcom/tencent/beacon/base/net/b/a/b/c$b;

    iget v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->G:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/base/net/b/a/b/c$a;->a(I)V

    .line 16
    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->r:Lcom/tencent/beacon/base/net/b/a/b/c$b;

    iget v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->G:I

    shl-int v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/base/net/b/a/b/c$a;->a(I)V

    .line 17
    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->p:Lcom/tencent/beacon/base/net/b/a/c/b;

    invoke-virtual {v1}, Lcom/tencent/beacon/base/net/b/a/c/b;->a()V

    .line 18
    iput-boolean v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->A:Z

    .line 19
    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->y:I

    .line 20
    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->z:I

    .line 21
    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->x:I

    return-void
.end method

.method public f()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->t:[I

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/base/net/b/a/a/a;->a([I)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->w:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->t:[I

    add-int/lit8 v2, v0, -0x2

    aget v2, v1, v2

    .line 3
    iget v3, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->u:I

    if-ne v2, v3, :cond_1

    .line 4
    iget-object v3, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    rsub-int v1, v2, 0x111

    invoke-virtual {v3, v4, v0, v1}, Lcom/tencent/beacon/base/net/b/a/a/b;->b(III)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->x:I

    return v2
.end method

.method public f(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    invoke-virtual {v0, p1}, Lcom/tencent/beacon/base/net/b/a/a/a;->d(I)V

    .line 7
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->x:I

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->S:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/b/a/a/b;->g()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->S:Z

    :cond_0
    return-void
.end method

.method public g(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public h()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/c/d;->e()V

    return-void
.end method

.method public h(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_2

    const/high16 v2, 0x20000000

    if-le p1, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->K:I

    :goto_0
    shl-int v2, v1, v0

    if-le p1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    .line 3
    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->F:I

    return v1

    :cond_2
    :goto_1
    return v0
.end method

.method public i()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/b/c;->g()V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/b/c;->h()V

    return-void
.end method

.method public i(I)Z
    .locals 2

    if-ltz p1, :cond_2

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->Q:I

    .line 4
    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->Q:I

    .line 5
    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    if-eqz v1, :cond_1

    if-eq v0, p1, :cond_1

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->L:I

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->f:Lcom/tencent/beacon/base/net/b/a/a/a;

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public j(I)Z
    .locals 1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    const/16 v0, 0x111

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->u:I

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public k(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->R:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->h:[S

    iget v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->i:[S

    iget v2, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    invoke-static {v0}, Lcom/tencent/beacon/base/net/b/a/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->b:I

    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->q:Lcom/tencent/beacon/base/net/b/a/b/c$b;

    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    invoke-virtual {v0, v1, v3, p1}, Lcom/tencent/beacon/base/net/b/a/b/c$b;->a(Lcom/tencent/beacon/base/net/b/a/c/d;II)V

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/tencent/beacon/base/net/b/a/b/a;->a(I)I

    move-result p1

    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->n:[Lcom/tencent/beacon/base/net/b/a/c/b;

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    const/16 v1, 0x3f

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/base/net/b/a/c/b;->a(Lcom/tencent/beacon/base/net/b/a/c/d;I)V

    iget-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    const v0, 0x3ffffff

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/base/net/b/a/c/d;->a(II)V

    iget-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->p:Lcom/tencent/beacon/base/net/b/a/c/b;

    iget-object p0, p0, Lcom/tencent/beacon/base/net/b/a/b/c;->g:Lcom/tencent/beacon/base/net/b/a/c/d;

    const/16 v0, 0xf

    invoke-virtual {p1, p0, v0}, Lcom/tencent/beacon/base/net/b/a/c/b;->b(Lcom/tencent/beacon/base/net/b/a/c/d;I)V

    return-void
.end method
