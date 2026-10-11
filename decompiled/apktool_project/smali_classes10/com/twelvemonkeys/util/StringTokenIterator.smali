.class public Lcom/twelvemonkeys/util/StringTokenIterator;
.super Lcom/twelvemonkeys/util/AbstractTokenIterator;
.source "SourceFile"


# static fields
.field public static final FORWARD:I = 0x1

.field public static final REVERSE:I = -0x1


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:[C

.field public g:I

.field public final h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const-string v0, " \t\n\r\u000c"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/twelvemonkeys/util/StringTokenIterator;-><init>(Ljava/lang/String;[CIZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 2
    invoke-static {p2}, Lcom/twelvemonkeys/util/StringTokenIterator;->g(Ljava/lang/String;)[C

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/twelvemonkeys/util/StringTokenIterator;-><init>(Ljava/lang/String;[CIZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 3
    invoke-static {p2}, Lcom/twelvemonkeys/util/StringTokenIterator;->g(Ljava/lang/String;)[C

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/twelvemonkeys/util/StringTokenIterator;-><init>(Ljava/lang/String;[CIZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 6

    .line 5
    invoke-static {p2}, Lcom/twelvemonkeys/util/StringTokenIterator;->g(Ljava/lang/String;)[C

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/twelvemonkeys/util/StringTokenIterator;-><init>(Ljava/lang/String;[CIZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 4
    invoke-static {p2}, Lcom/twelvemonkeys/util/StringTokenIterator;->g(Ljava/lang/String;)[C

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/twelvemonkeys/util/StringTokenIterator;-><init>(Ljava/lang/String;[CIZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CIZZ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/twelvemonkeys/util/AbstractTokenIterator;-><init>()V

    if-eqz p1, :cond_1

    .line 7
    iput-object p1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->h:I

    .line 9
    iput-object p2, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->f:[C

    .line 10
    iput-boolean p4, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->k:Z

    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-boolean p1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->m:Z

    .line 12
    iput-boolean p5, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->l:Z

    .line 13
    invoke-static {p2}, Lcom/twelvemonkeys/util/StringTokenIterator;->d([C)C

    move-result p1

    iput-char p1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->n:C

    .line 14
    invoke-virtual {p0}, Lcom/twelvemonkeys/util/StringTokenIterator;->reset()V

    return-void

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "string == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d([C)C
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-char v3, p0, v0

    if-ge v2, v3, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static g(Ljava/lang/String;)[C
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "delimiters == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/StringTokenIterator;->e()I

    move-result v0

    iget-object v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->e:Ljava/lang/String;

    iget v2, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->g:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->i:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->k:Z

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->h:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->e:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->j:Ljava/lang/String;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->g:I

    iget-object v0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/StringTokenIterator;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->j:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->j:Ljava/lang/String;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->g:I

    iget v2, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->h:I

    if-lt v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-boolean v0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->m:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/StringTokenIterator;->c()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/twelvemonkeys/util/StringTokenIterator;->a()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/StringTokenIterator;->f()I

    move-result v0

    iget-object v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->e:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->h:I

    iget v4, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->g:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->i:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->k:Z

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->h:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->j:Ljava/lang/String;

    :cond_0
    iget v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->h:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->g:I

    iget-object v0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/StringTokenIterator;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final e()I
    .locals 6

    iget v0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->g:I

    :goto_0
    iget v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->h:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-char v2, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->n:C

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->f:[C

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-char v5, v2, v4

    if-ne v1, v5, :cond_0

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final f()I
    .locals 6

    iget v0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->h:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->g:I

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-char v2, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->n:C

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->f:[C

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-char v5, v2, v4

    if-ne v1, v5, :cond_0

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/StringTokenIterator;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/twelvemonkeys/util/StringTokenIterator;->next()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/twelvemonkeys/util/StringTokenIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->i:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/twelvemonkeys/util/StringTokenIterator;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->i:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/twelvemonkeys/util/StringTokenIterator;->j:Ljava/lang/String;

    return-void
.end method
