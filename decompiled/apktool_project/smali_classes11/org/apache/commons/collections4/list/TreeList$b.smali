.class public Lorg/apache/commons/collections4/list/TreeList$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/TreeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lorg/apache/commons/collections4/list/TreeList$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Lorg/apache/commons/collections4/list/TreeList$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:I

.field public f:I

.field public g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    .line 5
    iput-object p2, p0, Lorg/apache/commons/collections4/list/TreeList$b;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->d:Z

    .line 7
    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->b:Z

    .line 8
    iput-object p3, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    .line 9
    iput-object p4, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/list/TreeList$b;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 10
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/collections4/list/TreeList$b;-><init>(Ljava/util/Iterator;IIILorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Collection;Lorg/apache/commons/collections4/list/TreeList$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/TreeList$b;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;IIILorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;III",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;)V"
        }
    .end annotation

    move-object v7, p0

    move v2, p2

    move v8, p3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-int v0, v8, v2

    .line 12
    div-int/lit8 v0, v0, 0x2

    add-int v9, v2, v0

    const/4 v10, 0x1

    if-ge v2, v9, :cond_0

    .line 13
    new-instance v11, Lorg/apache/commons/collections4/list/TreeList$b;

    add-int/lit8 v3, v9, -0x1

    move-object v0, v11

    move-object v1, p1

    move v2, p2

    move v4, v9

    move-object/from16 v5, p5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/collections4/list/TreeList$b;-><init>(Ljava/util/Iterator;IIILorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    iput-object v11, v7, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    goto :goto_0

    .line 14
    :cond_0
    iput-boolean v10, v7, Lorg/apache/commons/collections4/list/TreeList$b;->b:Z

    move-object/from16 v0, p5

    .line 15
    iput-object v0, v7, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v7, Lorg/apache/commons/collections4/list/TreeList$b;->g:Ljava/lang/Object;

    sub-int v0, v9, p4

    .line 17
    iput v0, v7, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    if-ge v9, v8, :cond_1

    .line 18
    new-instance v10, Lorg/apache/commons/collections4/list/TreeList$b;

    add-int/lit8 v2, v9, 0x1

    move-object v0, v10

    move-object v1, p1

    move v3, p3

    move v4, v9

    move-object v5, p0

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/collections4/list/TreeList$b;-><init>(Ljava/util/Iterator;IIILorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    iput-object v10, v7, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    goto :goto_1

    .line 19
    :cond_1
    iput-boolean v10, v7, Lorg/apache/commons/collections4/list/TreeList$b;->d:Z

    move-object/from16 v0, p6

    .line 20
    iput-object v0, v7, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    .line 21
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->u()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/collections4/list/TreeList$b;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    return p0
.end method

.method public static synthetic b(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;I)Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$b;->d(Lorg/apache/commons/collections4/list/TreeList$b;I)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/commons/collections4/list/TreeList$b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->g:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final A()Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->h()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections4/list/TreeList$b;->j()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$b;->i(Lorg/apache/commons/collections4/list/TreeList$b;)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    neg-int v3, v3

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$b;->i(Lorg/apache/commons/collections4/list/TreeList$b;)I

    move-result v4

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/list/TreeList$b;->i(Lorg/apache/commons/collections4/list/TreeList$b;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/list/TreeList$b;->B(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    const/4 v5, 0x0

    invoke-virtual {v0, p0, v5}, Lorg/apache/commons/collections4/list/TreeList$b;->D(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$b;->C(Lorg/apache/commons/collections4/list/TreeList$b;I)I

    invoke-virtual {p0, p0, v3}, Lorg/apache/commons/collections4/list/TreeList$b;->C(Lorg/apache/commons/collections4/list/TreeList$b;I)I

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/collections4/list/TreeList$b;->C(Lorg/apache/commons/collections4/list/TreeList$b;I)I

    return-object v0
.end method

.method public final B(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->b:Z

    if-eqz v0, :cond_1

    move-object p1, p2

    :cond_1
    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->u()V

    return-void
.end method

.method public final C(Lorg/apache/commons/collections4/list/TreeList$b;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;I)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/TreeList$b;->i(Lorg/apache/commons/collections4/list/TreeList$b;)I

    move-result p0

    iput p2, p1, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    return p0
.end method

.method public final D(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->d:Z

    if-eqz v0, :cond_1

    move-object p1, p2

    :cond_1
    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->u()V

    return-void
.end method

.method public E(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->g:Ljava/lang/Object;

    return-void
.end method

.method public F([Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->g:Ljava/lang/Object;

    aput-object v0, p1, p2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->h()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    iget v1, v0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$b;->F([Ljava/lang/Object;I)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->j()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$b;->F([Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public final d(Lorg/apache/commons/collections4/list/TreeList$b;I)Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;I)",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->q()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/collections4/list/TreeList$b;->r()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v1

    iget v2, p1, Lorg/apache/commons/collections4/list/TreeList$b;->e:I

    iget v3, p0, Lorg/apache/commons/collections4/list/TreeList$b;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-le v2, v3, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->w()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iget v6, p1, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    add-int/2addr v6, p2

    move-object v7, p1

    :goto_0
    move v10, v6

    move v6, v4

    move v4, v10

    :goto_1
    if-eqz v7, :cond_1

    iget v8, v7, Lorg/apache/commons/collections4/list/TreeList$b;->e:I

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/list/TreeList$b;->g(Lorg/apache/commons/collections4/list/TreeList$b;)I

    move-result v9

    if-le v8, v9, :cond_1

    invoke-interface {v3, v7}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    iget-object v7, v7, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    if-eqz v7, :cond_0

    iget v6, v7, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    add-int/2addr v6, v4

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2, v5}, Lorg/apache/commons/collections4/list/TreeList$b;->B(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/collections4/list/TreeList$b;->D(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/apache/commons/collections4/list/TreeList$b;->q()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    invoke-virtual {p0, v5, v0}, Lorg/apache/commons/collections4/list/TreeList$b;->D(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    iget p0, v2, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    add-int/lit8 v1, p2, -0x1

    sub-int/2addr p0, v1

    iput p0, v2, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lorg/apache/commons/collections4/list/TreeList$b;->r()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    invoke-virtual {p0, v5, v0}, Lorg/apache/commons/collections4/list/TreeList$b;->B(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    sub-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x1

    iput v4, v7, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    :cond_3
    add-int/lit8 p0, p2, -0x1

    sub-int/2addr p0, v6

    iput p0, v0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    iget p0, p1, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    add-int/2addr p0, p2

    iput p0, p1, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    :goto_2
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {v3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {p0, v0, v5}, Lorg/apache/commons/collections4/list/TreeList$b;->B(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->e()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    goto :goto_2

    :cond_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Lorg/apache/commons/collections4/list/TreeList$b;->x()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iget v3, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    move-object v6, p0

    :goto_3
    move v10, v4

    move v4, v3

    move v3, v10

    :goto_4
    if-eqz v6, :cond_7

    iget v7, v6, Lorg/apache/commons/collections4/list/TreeList$b;->e:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/TreeList$b;->g(Lorg/apache/commons/collections4/list/TreeList$b;)I

    move-result v8

    if-le v7, v8, :cond_7

    invoke-interface {v2, v6}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    iget-object v6, v6, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    if-eqz v6, :cond_6

    iget v3, v6, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    add-int/2addr v3, v4

    goto :goto_3

    :cond_6
    move v3, v4

    goto :goto_4

    :cond_7
    invoke-virtual {v1, p1, v5}, Lorg/apache/commons/collections4/list/TreeList$b;->D(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    invoke-virtual {v1, v6, v0}, Lorg/apache/commons/collections4/list/TreeList$b;->B(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/apache/commons/collections4/list/TreeList$b;->r()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    invoke-virtual {p0, v5, v1}, Lorg/apache/commons/collections4/list/TreeList$b;->B(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    iget p0, p1, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lorg/apache/commons/collections4/list/TreeList$b;->q()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    invoke-virtual {p0, v5, v1}, Lorg/apache/commons/collections4/list/TreeList$b;->D(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    sub-int/2addr v4, p2

    iput v4, v6, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    :cond_9
    sub-int/2addr p2, v3

    iput p2, v1, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    :goto_5
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {p0, v1, v5}, Lorg/apache/commons/collections4/list/TreeList$b;->D(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->e()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v1

    goto :goto_5

    :cond_a
    return-object v1
.end method

.method public final e()Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->l()I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$b;->l()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$b;->A()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$b;->D(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->z()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "tree inconsistent!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object p0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$b;->l()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$b;->z()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$b;->B(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->A()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    return-object p0
.end method

.method public f(I)Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->h()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->j()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/TreeList$b;->f(I)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lorg/apache/commons/collections4/list/TreeList$b;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p1, Lorg/apache/commons/collections4/list/TreeList$b;->e:I

    :goto_0
    return p0
.end method

.method public final h()Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->b:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    :goto_0
    return-object p0
.end method

.method public final i(Lorg/apache/commons/collections4/list/TreeList$b;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p1, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    return p0
.end method

.method public final j()Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->d:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    :goto_0
    return-object p0
.end method

.method public k()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public final l()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->j()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$b;->g(Lorg/apache/commons/collections4/list/TreeList$b;)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->h()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/list/TreeList$b;->g(Lorg/apache/commons/collections4/list/TreeList$b;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public m(Ljava/lang/Object;I)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->h()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    iget v2, v0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, v2}, Lorg/apache/commons/collections4/list/TreeList$b;->m(Ljava/lang/Object;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->g:Ljava/lang/Object;

    if-nez v0, :cond_1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return p2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->j()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$b;->m(Ljava/lang/Object;I)I

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public n(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    sub-int/2addr p1, v0

    if-gtz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$b;->o(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$b;->p(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    return-object p0
.end method

.method public final o(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->h()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p1, Lorg/apache/commons/collections4/list/TreeList$b;

    const/4 v0, -0x1

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-direct {p1, v0, p2, p0, v2}, Lorg/apache/commons/collections4/list/TreeList$b;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$b;->B(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$b;->n(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$b;->B(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    :goto_0
    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    if-ltz p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->e()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->u()V

    return-object p1
.end method

.method public final p(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->j()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p1, Lorg/apache/commons/collections4/list/TreeList$b;

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-direct {p1, v1, p2, v0, p0}, Lorg/apache/commons/collections4/list/TreeList$b;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/list/TreeList$b;->D(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$b;->n(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/list/TreeList$b;->D(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    :goto_0
    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    if-gez p1, :cond_1

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->e()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->u()V

    return-object p1
.end method

.method public final q()Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->j()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->q()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final r()Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->h()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->r()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public s()Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$b;->r()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    return-object p0
.end method

.method public t()Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$b;->q()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AVLNode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$b;->g:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->j()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", faedelung "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->d:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->h()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->h()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    iget v0, v0, Lorg/apache/commons/collections4/list/TreeList$b;->e:I

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->j()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->j()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v1

    iget v1, v1, Lorg/apache/commons/collections4/list/TreeList$b;->e:I

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->e:I

    return-void
.end method

.method public v(I)Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->y()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    return-object p0

    :cond_0
    if-lez p1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/TreeList$b;->v(I)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/TreeList$b;->D(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    if-gez p1, :cond_2

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/TreeList$b;->v(I)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/TreeList$b;->B(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->u()V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->e()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    return-object p0
.end method

.method public final w()Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->j()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->y()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$b;->w()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections4/list/TreeList$b;->D(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    if-gez v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->u()V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->e()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    return-object p0
.end method

.method public final x()Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->h()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->y()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$b;->x()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections4/list/TreeList$b;->B(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->u()V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->e()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    return-object p0
.end method

.method public final y()Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->j()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->h()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->j()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    if-lez v0, :cond_1

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    iget v3, v2, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    add-int/2addr v3, v0

    iput v3, v2, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$b;->q()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections4/list/TreeList$b;->D(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->h()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    iget v3, v0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    iget v4, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    if-gez v4, :cond_3

    const/4 v2, 0x0

    :cond_3
    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    iput v3, v0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$b;->r()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections4/list/TreeList$b;->B(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->l()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$b;->r()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/commons/collections4/list/TreeList$b;->g:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->g:Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->b:Z

    if-eqz v1, :cond_5

    iget-object v0, v0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$b;->x()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    if-gez v0, :cond_9

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$b;->q()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/commons/collections4/list/TreeList$b;->g:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->g:Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->d:Z

    if-eqz v1, :cond_7

    iget-object v0, v0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    :cond_7
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    iget-object v1, v0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$b;->w()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    if-nez v0, :cond_8

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$b;->a:Lorg/apache/commons/collections4/list/TreeList$b;

    iput-boolean v2, p0, Lorg/apache/commons/collections4/list/TreeList$b;->b:Z

    :cond_8
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    if-lez v0, :cond_9

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    :cond_9
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->u()V

    return-object p0
.end method

.method public final z()Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$b;->c:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->j()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections4/list/TreeList$b;->h()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$b;->i(Lorg/apache/commons/collections4/list/TreeList$b;)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lorg/apache/commons/collections4/list/TreeList$b;->f:I

    neg-int v3, v3

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$b;->i(Lorg/apache/commons/collections4/list/TreeList$b;)I

    move-result v4

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/list/TreeList$b;->i(Lorg/apache/commons/collections4/list/TreeList$b;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/list/TreeList$b;->D(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    const/4 v5, 0x0

    invoke-virtual {v0, p0, v5}, Lorg/apache/commons/collections4/list/TreeList$b;->B(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;)V

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$b;->C(Lorg/apache/commons/collections4/list/TreeList$b;I)I

    invoke-virtual {p0, p0, v3}, Lorg/apache/commons/collections4/list/TreeList$b;->C(Lorg/apache/commons/collections4/list/TreeList$b;I)I

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/collections4/list/TreeList$b;->C(Lorg/apache/commons/collections4/list/TreeList$b;I)I

    return-object v0
.end method
