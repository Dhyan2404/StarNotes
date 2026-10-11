.class public final Lcom/squareup/okhttp/internal/spdy/Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:I = 0x10000

.field public static final f:I = 0x1

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:I = 0x1

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x2

.field public static final m:I = 0x3

.field public static final n:I = 0x4

.field public static final o:I = 0x5

.field public static final p:I = 0x5

.field public static final q:I = 0x6

.field public static final r:I = 0x6

.field public static final s:I = 0x7

.field public static final t:I = 0x8

.field public static final u:I = 0xa

.field public static final v:I = 0xa

.field public static final w:I = 0x1


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->d:[I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->c:I

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->b:I

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->d:[I

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public b(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/Settings;->q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/Settings;->t(I)Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public c(I)I
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->d:[I

    aget p0, p0, p1

    return p0
.end method

.method public d(I)I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->d:[I

    const/16 p1, 0x8

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method public e(I)I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->d:[I

    const/4 p1, 0x5

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method public f(I)I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->d:[I

    const/4 p1, 0x2

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method public g(I)I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->d:[I

    const/4 p1, 0x6

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method public h(Z)Z
    .locals 3

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->d:[I

    const/4 p1, 0x2

    aget p0, p0, p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->d:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public j(I)I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->d:[I

    const/4 p1, 0x7

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method public k(I)I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->d:[I

    const/4 p1, 0x4

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method public l(I)I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->d:[I

    const/4 p1, 0x5

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method public m(I)I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->d:[I

    const/4 p1, 0x6

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method public n(I)I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->d:[I

    const/4 p1, 0x3

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method public o(I)I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->d:[I

    const/4 p1, 0x1

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method public p()Z
    .locals 2

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->d:[I

    const/16 v0, 0xa

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public q(I)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->c:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r(I)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s(Lcom/squareup/okhttp/internal/spdy/Settings;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/spdy/Settings;->r(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/spdy/Settings;->b(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/spdy/Settings;->c(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Settings;->u(III)Lcom/squareup/okhttp/internal/spdy/Settings;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public t(I)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->b:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u(III)Lcom/squareup/okhttp/internal/spdy/Settings;
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->d:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->b:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->b:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->b:I

    not-int v3, v1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->b:I

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->c:I

    or-int/2addr p2, v1

    iput p2, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->c:I

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->c:I

    not-int v1, v1

    and-int/2addr p2, v1

    iput p2, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->c:I

    :goto_1
    aput p3, v0, p1

    return-object p0
.end method

.method public v()I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/Settings;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method
