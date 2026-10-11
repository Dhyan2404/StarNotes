.class public final Lcom/sunia/HTREnginev2/cym;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/sunia/HTREnginev2/cym;


# instance fields
.field public final a:I

.field public final b:Lcom/sunia/HTREnginev2/win;

.field public final c:I

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/HTREnginev2/cym;

    sget-object v1, Lcom/sunia/HTREnginev2/win;->b:Lcom/sunia/HTREnginev2/win;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/sunia/HTREnginev2/cym;-><init>(Lcom/sunia/HTREnginev2/win;III)V

    sput-object v0, Lcom/sunia/HTREnginev2/cym;->e:Lcom/sunia/HTREnginev2/cym;

    return-void
.end method

.method public constructor <init>(Lcom/sunia/HTREnginev2/win;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cym;->b:Lcom/sunia/HTREnginev2/win;

    iput p2, p0, Lcom/sunia/HTREnginev2/cym;->a:I

    iput p3, p0, Lcom/sunia/HTREnginev2/cym;->c:I

    iput p4, p0, Lcom/sunia/HTREnginev2/cym;->d:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/sunia/HTREnginev2/cym;
    .locals 5

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cym;->b:Lcom/sunia/HTREnginev2/win;

    iget v1, p0, Lcom/sunia/HTREnginev2/cym;->a:I

    iget v2, p0, Lcom/sunia/HTREnginev2/cym;->d:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    :cond_0
    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->h:[[I

    aget-object v1, v3, v1

    const/4 v3, 0x0

    aget v1, v1, v3

    const v4, 0xffff

    and-int/2addr v4, v1

    shr-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v4, v1}, Lcom/sunia/HTREnginev2/win;->a(II)Lcom/sunia/HTREnginev2/win;

    move-result-object v0

    add-int/2addr v2, v1

    move v1, v3

    :cond_1
    iget p0, p0, Lcom/sunia/HTREnginev2/cym;->c:I

    if-eqz p0, :cond_4

    const/16 v3, 0x1f

    if-ne p0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x3e

    if-ne p0, v3, :cond_3

    const/16 v3, 0x9

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v3, 0x12

    :goto_1
    new-instance v4, Lcom/sunia/HTREnginev2/cym;

    add-int/lit8 p0, p0, 0x1

    add-int/2addr v2, v3

    invoke-direct {v4, v0, v1, p0, v2}, Lcom/sunia/HTREnginev2/cym;-><init>(Lcom/sunia/HTREnginev2/win;III)V

    iget p0, v4, Lcom/sunia/HTREnginev2/cym;->c:I

    const/16 v0, 0x81e

    if-ne p0, v0, :cond_5

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v4, p1}, Lcom/sunia/HTREnginev2/cym;->b(I)Lcom/sunia/HTREnginev2/cym;

    move-result-object v4

    :cond_5
    return-object v4
.end method

.method public b(I)Lcom/sunia/HTREnginev2/cym;
    .locals 3

    iget v0, p0, Lcom/sunia/HTREnginev2/cym;->c:I

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/cym;->b:Lcom/sunia/HTREnginev2/win;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, v0}, Lcom/sunia/HTREnginev2/win;->b(II)Lcom/sunia/HTREnginev2/win;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/cym;

    iget v1, p0, Lcom/sunia/HTREnginev2/cym;->a:I

    const/4 v2, 0x0

    iget p0, p0, Lcom/sunia/HTREnginev2/cym;->d:I

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/sunia/HTREnginev2/cym;-><init>(Lcom/sunia/HTREnginev2/win;III)V

    return-object v0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/cym;->c:I

    return p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/cym;->d:I

    return p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/cym;->a:I

    return p0
.end method

.method public f()Lcom/sunia/HTREnginev2/win;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cym;->b:Lcom/sunia/HTREnginev2/win;

    return-object p0
.end method

.method public g(Lcom/sunia/HTREnginev2/cym;)Z
    .locals 3

    iget v0, p0, Lcom/sunia/HTREnginev2/cym;->d:I

    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->h:[[I

    iget v2, p0, Lcom/sunia/HTREnginev2/cym;->a:I

    aget-object v1, v1, v2

    iget v2, p1, Lcom/sunia/HTREnginev2/cym;->a:I

    aget v1, v1, v2

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iget v1, p1, Lcom/sunia/HTREnginev2/cym;->c:I

    if-lez v1, :cond_1

    iget p0, p0, Lcom/sunia/HTREnginev2/cym;->c:I

    if-eqz p0, :cond_0

    if-le p0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0xa

    :cond_1
    iget p0, p1, Lcom/sunia/HTREnginev2/cym;->d:I

    if-gt v0, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public h(II)Lcom/sunia/HTREnginev2/cym;
    .locals 3

    iget v0, p0, Lcom/sunia/HTREnginev2/cym;->d:I

    iget-object v1, p0, Lcom/sunia/HTREnginev2/cym;->b:Lcom/sunia/HTREnginev2/win;

    iget p0, p0, Lcom/sunia/HTREnginev2/cym;->a:I

    if-eq p1, p0, :cond_0

    sget-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->h:[[I

    aget-object p0, v2, p0

    aget p0, p0, p1

    const v2, 0xffff

    and-int/2addr v2, p0

    shr-int/lit8 p0, p0, 0x10

    invoke-virtual {v1, v2, p0}, Lcom/sunia/HTREnginev2/win;->a(II)Lcom/sunia/HTREnginev2/win;

    move-result-object v1

    add-int/2addr v0, p0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    :goto_0
    invoke-virtual {v1, p2, p0}, Lcom/sunia/HTREnginev2/win;->a(II)Lcom/sunia/HTREnginev2/win;

    move-result-object p2

    new-instance v1, Lcom/sunia/HTREnginev2/cym;

    const/4 v2, 0x0

    add-int/2addr v0, p0

    invoke-direct {v1, p2, p1, v2, v0}, Lcom/sunia/HTREnginev2/cym;-><init>(Lcom/sunia/HTREnginev2/win;III)V

    return-object v1
.end method

.method public i(II)Lcom/sunia/HTREnginev2/cym;
    .locals 5

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cym;->b:Lcom/sunia/HTREnginev2/win;

    iget v1, p0, Lcom/sunia/HTREnginev2/cym;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-ne v1, v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->j:[[I

    aget-object v1, v4, v1

    aget p1, v1, p1

    invoke-virtual {v0, p1, v2}, Lcom/sunia/HTREnginev2/win;->a(II)Lcom/sunia/HTREnginev2/win;

    move-result-object p1

    invoke-virtual {p1, p2, v3}, Lcom/sunia/HTREnginev2/win;->a(II)Lcom/sunia/HTREnginev2/win;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/cym;

    iget v0, p0, Lcom/sunia/HTREnginev2/cym;->a:I

    iget p0, p0, Lcom/sunia/HTREnginev2/cym;->d:I

    add-int/2addr p0, v2

    add-int/2addr p0, v3

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/sunia/HTREnginev2/cym;-><init>(Lcom/sunia/HTREnginev2/win;III)V

    return-object p2
.end method

.method public j([B)Lcom/google/zxing/common/BitArray;
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    array-length v1, p1

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/cym;->b(I)Lcom/sunia/HTREnginev2/cym;

    move-result-object p0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cym;->b:Lcom/sunia/HTREnginev2/win;

    :goto_0
    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/win;->d()Lcom/sunia/HTREnginev2/win;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/zxing/common/BitArray;

    invoke-direct {p0}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/win;

    invoke-virtual {v1, p0, p1}, Lcom/sunia/HTREnginev2/win;->c(Lcom/google/zxing/common/BitArray;[B)V

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->b:[Ljava/lang/String;

    iget v1, p0, Lcom/sunia/HTREnginev2/cym;->a:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/sunia/HTREnginev2/cym;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/sunia/HTREnginev2/cym;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s bits=%d bytes=%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
