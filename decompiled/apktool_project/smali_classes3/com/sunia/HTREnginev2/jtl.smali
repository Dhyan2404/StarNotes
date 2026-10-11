.class public Lcom/sunia/HTREnginev2/jtl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:I = -0x80000000


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/jtl;->a:I

    iput v0, p0, Lcom/sunia/HTREnginev2/jtl;->b:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/sunia/HTREnginev2/jtl;->c:I

    iput v1, p0, Lcom/sunia/HTREnginev2/jtl;->d:I

    iput v0, p0, Lcom/sunia/HTREnginev2/jtl;->e:I

    iput v0, p0, Lcom/sunia/HTREnginev2/jtl;->f:I

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/jtl;->g:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/jtl;->h:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/jtl;->g:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sunia/HTREnginev2/jtl;->a:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sunia/HTREnginev2/jtl;->b:I

    :goto_0
    return p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/jtl;->a:I

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/jtl;->b:I

    return p0
.end method

.method public d()I
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/jtl;->g:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sunia/HTREnginev2/jtl;->b:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sunia/HTREnginev2/jtl;->a:I

    :goto_0
    return p0
.end method

.method public e(II)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/jtl;->h:Z

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/sunia/HTREnginev2/jtl;->e:I

    iput p1, p0, Lcom/sunia/HTREnginev2/jtl;->a:I

    :cond_0
    if-eq p2, v0, :cond_1

    iput p2, p0, Lcom/sunia/HTREnginev2/jtl;->f:I

    iput p2, p0, Lcom/sunia/HTREnginev2/jtl;->b:I

    :cond_1
    return-void
.end method

.method public f(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/jtl;->g:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/jtl;->g:Z

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/jtl;->h:Z

    if-eqz v0, :cond_6

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/sunia/HTREnginev2/jtl;->d:I

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/sunia/HTREnginev2/jtl;->e:I

    :goto_0
    iput p1, p0, Lcom/sunia/HTREnginev2/jtl;->a:I

    iget p1, p0, Lcom/sunia/HTREnginev2/jtl;->c:I

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/sunia/HTREnginev2/jtl;->f:I

    :goto_1
    iput p1, p0, Lcom/sunia/HTREnginev2/jtl;->b:I

    goto :goto_4

    :cond_3
    iget p1, p0, Lcom/sunia/HTREnginev2/jtl;->c:I

    if-eq p1, v0, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/sunia/HTREnginev2/jtl;->e:I

    :goto_2
    iput p1, p0, Lcom/sunia/HTREnginev2/jtl;->a:I

    iget p1, p0, Lcom/sunia/HTREnginev2/jtl;->d:I

    if-eq p1, v0, :cond_5

    goto :goto_3

    :cond_5
    iget p1, p0, Lcom/sunia/HTREnginev2/jtl;->f:I

    :goto_3
    iput p1, p0, Lcom/sunia/HTREnginev2/jtl;->b:I

    goto :goto_4

    :cond_6
    iget p1, p0, Lcom/sunia/HTREnginev2/jtl;->e:I

    iput p1, p0, Lcom/sunia/HTREnginev2/jtl;->a:I

    iget p1, p0, Lcom/sunia/HTREnginev2/jtl;->f:I

    iput p1, p0, Lcom/sunia/HTREnginev2/jtl;->b:I

    :goto_4
    return-void
.end method

.method public g(II)V
    .locals 2

    iput p1, p0, Lcom/sunia/HTREnginev2/jtl;->c:I

    iput p2, p0, Lcom/sunia/HTREnginev2/jtl;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/jtl;->h:Z

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/jtl;->g:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_0

    iput p2, p0, Lcom/sunia/HTREnginev2/jtl;->a:I

    :cond_0
    if-eq p1, v1, :cond_3

    iput p1, p0, Lcom/sunia/HTREnginev2/jtl;->b:I

    goto :goto_0

    :cond_1
    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/sunia/HTREnginev2/jtl;->a:I

    :cond_2
    if-eq p2, v1, :cond_3

    iput p2, p0, Lcom/sunia/HTREnginev2/jtl;->b:I

    :cond_3
    :goto_0
    return-void
.end method
