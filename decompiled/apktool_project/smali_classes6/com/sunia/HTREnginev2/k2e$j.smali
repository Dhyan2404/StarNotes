.class public Lcom/sunia/HTREnginev2/k2e$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/k2e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# static fields
.field public static final f:I = -0x1

.field public static final g:S = 0x54s

.field public static final h:B = 0x40t


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/k2e$e;

.field public final b:I

.field public final c:[B

.field public final d:[I

.field public final e:[Lcom/sunia/HTREnginev2/k2e$f;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Set;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/k2e$b;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Short;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/sunia/HTREnginev2/k2e$j;->c:[B

    iput p3, p0, Lcom/sunia/HTREnginev2/k2e$j;->b:I

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sunia/HTREnginev2/k2e$f;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/k2e$j;->e:[Lcom/sunia/HTREnginev2/k2e$f;

    move v0, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/k2e$b;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/k2e$j;->e:[Lcom/sunia/HTREnginev2/k2e$f;

    new-instance v4, Lcom/sunia/HTREnginev2/k2e$f;

    invoke-static {v1}, Lcom/sunia/HTREnginev2/k2e$b;->c(Lcom/sunia/HTREnginev2/k2e$b;)I

    move-result v1

    invoke-direct {v4, v0, v1}, Lcom/sunia/HTREnginev2/k2e$f;-><init>(II)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array p1, p3, [I

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k2e$j;->d:[I

    move p1, v2

    :goto_1
    if-ge v2, p3, :cond_2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k2e$j;->d:[I

    aput p1, v0, v2

    add-int/lit8 p1, p1, 0x10

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/k2e$j;->d:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/sunia/HTREnginev2/k2e$e;

    const/16 p2, 0x54

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k2e$j;->a()I

    move-result p3

    const/16 v0, 0x201

    invoke-direct {p1, v0, p2, p3}, Lcom/sunia/HTREnginev2/k2e$e;-><init>(SSI)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k2e$j;->a:Lcom/sunia/HTREnginev2/k2e$e;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k2e$j;->b()I

    move-result v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k2e$j;->e:[Lcom/sunia/HTREnginev2/k2e$f;

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x10

    add-int/2addr v0, p0

    return v0
.end method

.method public final b()I
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k2e$j;->c()I

    move-result p0

    add-int/lit8 p0, p0, 0x54

    return p0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k2e$j;->d:[I

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public d(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k2e$j;->a:Lcom/sunia/HTREnginev2/k2e$e;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/k2e$e;->a(Ljava/io/ByteArrayOutputStream;)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-static {}, Lcom/sunia/HTREnginev2/k2e;->b()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lcom/sunia/HTREnginev2/k2e$j;->b:I

    invoke-static {v0}, Lcom/sunia/HTREnginev2/k2e;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k2e$j;->b()I

    move-result v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/k2e;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k2e$j;->c:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k2e$j;->d:[I

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    invoke-static {v4}, Lcom/sunia/HTREnginev2/k2e;->d(I)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/k2e$j;->e:[Lcom/sunia/HTREnginev2/k2e$f;

    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p0, v2

    invoke-virtual {v1, p1}, Lcom/sunia/HTREnginev2/k2e$f;->a(Ljava/io/ByteArrayOutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
