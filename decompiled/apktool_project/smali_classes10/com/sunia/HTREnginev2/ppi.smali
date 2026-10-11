.class public Lcom/sunia/HTREnginev2/ppi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:I = 0x5

.field public static final h:I = 0x3

.field public static final i:I = 0x1f

.field public static final j:I = 0x3e0

.field public static final k:I = 0x7c00

.field public static final l:I = 0x20


# instance fields
.field public a:[B

.field public b:[I

.field public c:I

.field public d:I

.field public e:[B

.field public f:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/sunia/HTREnginev2/ppi;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/sunia/HTREnginev2/ppi;->f:I

    .line 5
    iput-object p1, p0, Lcom/sunia/HTREnginev2/ppi;->a:[B

    .line 6
    array-length p1, p1

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/sunia/HTREnginev2/ppi;->c:I

    .line 7
    iput p2, p0, Lcom/sunia/HTREnginev2/ppi;->f:I

    const p1, 0x8000

    new-array p2, p1, [B

    .line 8
    iput-object p2, p0, Lcom/sunia/HTREnginev2/ppi;->e:[B

    new-array p1, p1, [I

    .line 9
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ppi;->c([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/sunia/HTREnginev2/ppi;-><init>([II)V

    return-void
.end method

.method public constructor <init>([II)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/sunia/HTREnginev2/ppi;->f:I

    .line 12
    iput-object p1, p0, Lcom/sunia/HTREnginev2/ppi;->b:[I

    .line 13
    array-length p1, p1

    iput p1, p0, Lcom/sunia/HTREnginev2/ppi;->c:I

    .line 14
    iput p2, p0, Lcom/sunia/HTREnginev2/ppi;->f:I

    const p1, 0x8000

    new-array p2, p1, [B

    .line 15
    iput-object p2, p0, Lcom/sunia/HTREnginev2/ppi;->e:[B

    new-array p1, p1, [I

    .line 16
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ppi;->c([I)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ppi;->e:[B

    shr-int/lit8 v0, p1, 0x9

    and-int/lit16 v0, v0, 0x7c00

    shr-int/lit8 v1, p1, 0x6

    and-int/lit16 v1, v1, 0x3e0

    add-int/2addr v0, v1

    shr-int/lit8 p1, p1, 0x3

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr v0, p1

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final b(III)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ppi;->e:[B

    shl-int/lit8 p1, p1, 0x7

    and-int/lit16 p1, p1, 0x7c00

    shl-int/lit8 p2, p2, 0x2

    and-int/lit16 p2, p2, 0x3e0

    add-int/2addr p1, p2

    shr-int/lit8 p2, p3, 0x3

    and-int/lit8 p2, p2, 0x1f

    add-int/2addr p1, p2

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public c([I)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/sunia/HTREnginev2/ppi;->c:I

    if-ge v2, v3, :cond_8

    iget v3, v0, Lcom/sunia/HTREnginev2/ppi;->f:I

    if-ne v2, v3, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v3, v0, Lcom/sunia/HTREnginev2/ppi;->a:[B

    if-eqz v3, :cond_1

    mul-int/lit8 v4, v2, 0x4

    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    :goto_1
    and-int/lit16 v3, v3, 0xff

    goto :goto_2

    :cond_1
    iget-object v3, v0, Lcom/sunia/HTREnginev2/ppi;->b:[I

    if-eqz v3, :cond_7

    aget v3, v3, v2

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v5, v4, 0xff

    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v6, v4, 0xff

    goto :goto_1

    :goto_2
    add-int/lit8 v4, v5, -0x4

    add-int/lit8 v7, v6, -0x4

    add-int/lit8 v8, v3, -0x4

    mul-int/2addr v4, v4

    mul-int/2addr v7, v7

    add-int/2addr v4, v7

    mul-int/2addr v8, v8

    add-int/2addr v4, v8

    shl-int/lit8 v5, v5, 0x3

    rsub-int/lit8 v5, v5, 0x40

    mul-int/lit8 v5, v5, 0x2

    shl-int/lit8 v6, v6, 0x3

    rsub-int/lit8 v6, v6, 0x40

    mul-int/lit8 v6, v6, 0x2

    shl-int/lit8 v3, v3, 0x3

    rsub-int/lit8 v3, v3, 0x40

    mul-int/lit8 v3, v3, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    const/16 v9, 0x20

    if-ge v7, v9, :cond_6

    move v11, v4

    move v12, v6

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_5

    move v15, v3

    move v14, v11

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v9, :cond_4

    if-eqz v2, :cond_2

    aget v1, p1, v8

    if-le v1, v14, :cond_3

    :cond_2
    aput v14, p1, v8

    iget-object v1, v0, Lcom/sunia/HTREnginev2/ppi;->e:[B

    int-to-byte v9, v2

    aput-byte v9, v1, v8

    :cond_3
    add-int/2addr v14, v15

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/lit16 v15, v15, 0x80

    const/16 v9, 0x20

    goto :goto_5

    :cond_4
    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    add-int/lit16 v12, v12, 0x80

    const/16 v9, 0x20

    goto :goto_4

    :cond_5
    add-int/2addr v4, v5

    add-int/lit8 v7, v7, 0x1

    add-int/lit16 v5, v5, 0x80

    goto :goto_3

    :cond_6
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "colormap == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method
