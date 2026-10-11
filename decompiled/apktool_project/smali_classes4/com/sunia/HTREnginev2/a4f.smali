.class public Lcom/sunia/HTREnginev2/a4f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:I = 0x5


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/ru;

.field public final b:[Lcom/sunia/HTREnginev2/twd;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/ru;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sunia/HTREnginev2/ru;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/ru;-><init>(Lcom/sunia/HTREnginev2/ru;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/a4f;->a:Lcom/sunia/HTREnginev2/ru;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/ru;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/ru;->h()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array p1, v0, [Lcom/sunia/HTREnginev2/twd;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a4f;->b:[Lcom/sunia/HTREnginev2/twd;

    return-void
.end method


# virtual methods
.method public final a()Lcom/sunia/HTREnginev2/ru;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a4f;->a:Lcom/sunia/HTREnginev2/ru;

    return-object p0
.end method

.method public final b(I)Lcom/sunia/HTREnginev2/twd;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a4f;->b:[Lcom/sunia/HTREnginev2/twd;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/a4f;->e(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final c(I)Lcom/sunia/HTREnginev2/twd;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/a4f;->b(I)Lcom/sunia/HTREnginev2/twd;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/a4f;->e(I)I

    move-result v1

    sub-int/2addr v1, v0

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/a4f;->b:[Lcom/sunia/HTREnginev2/twd;

    aget-object v1, v2, v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/a4f;->e(I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/sunia/HTREnginev2/a4f;->b:[Lcom/sunia/HTREnginev2/twd;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v1, v2, v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()[Lcom/sunia/HTREnginev2/twd;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a4f;->b:[Lcom/sunia/HTREnginev2/twd;

    return-object p0
.end method

.method public final e(I)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a4f;->a:Lcom/sunia/HTREnginev2/ru;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/ru;->h()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public final f(ILcom/sunia/HTREnginev2/twd;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a4f;->b:[Lcom/sunia/HTREnginev2/twd;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/a4f;->e(I)I

    move-result p0

    aput-object p2, v0, p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a4f;->b:[Lcom/sunia/HTREnginev2/twd;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p0, v2

    if-nez v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%3d:    |   %n"

    invoke-virtual {v0, v5, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v3, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/twd;->c()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/twd;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v6, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%3d: %3d|%3d%n"

    invoke-virtual {v0, v4, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v3, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object p0
.end method
