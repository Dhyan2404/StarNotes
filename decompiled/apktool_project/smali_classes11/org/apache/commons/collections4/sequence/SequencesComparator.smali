.class public Lorg/apache/commons/collections4/sequence/SequencesComparator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/sequence/SequencesComparator$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lorg/apache/commons/collections4/Equator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Equator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final d:[I

.field public final e:[I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/commons/collections4/functors/DefaultEquator;->defaultEquator()Lorg/apache/commons/collections4/functors/DefaultEquator;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator;-><init>(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/collections4/Equator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/collections4/Equator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;",
            "Lorg/apache/commons/collections4/Equator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->a:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->b:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->c:Lorg/apache/commons/collections4/Equator;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x2

    .line 7
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->d:[I

    .line 8
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->e:[I

    return-void
.end method


# virtual methods
.method public final a(IIIILorg/apache/commons/collections4/sequence/EditScript;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lorg/apache/commons/collections4/sequence/EditScript<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->c(IIII)Lorg/apache/commons/collections4/sequence/SequencesComparator$a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->c()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->a()I

    move-result v1

    sub-int v2, p2, p4

    if-eq v1, v2, :cond_3

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->b()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->a()I

    move-result v1

    sub-int v2, p1, p3

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->c()I

    move-result v5

    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->c()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->a()I

    move-result v2

    sub-int v7, v1, v2

    move-object v3, p0

    move v4, p1

    move v6, p3

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->a(IIIILorg/apache/commons/collections4/sequence/EditScript;)V

    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->c()I

    move-result p1

    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->b()I

    move-result p3

    if-ge p1, p3, :cond_2

    new-instance p3, Lorg/apache/commons/collections4/sequence/KeepCommand;

    iget-object v1, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p3, v1}, Lorg/apache/commons/collections4/sequence/KeepCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, p3}, Lorg/apache/commons/collections4/sequence/EditScript;->append(Lorg/apache/commons/collections4/sequence/KeepCommand;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->b()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->b()I

    move-result p1

    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->a()I

    move-result p3

    sub-int v4, p1, p3

    move-object v1, p0

    move v3, p2

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->a(IIIILorg/apache/commons/collections4/sequence/EditScript;)V

    goto :goto_3

    :cond_3
    :goto_1
    move v0, p1

    move v1, p3

    :goto_2
    if-lt v0, p2, :cond_5

    if-ge v1, p4, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    return-void

    :cond_5
    :goto_4
    if-ge v0, p2, :cond_6

    if-ge v1, p4, :cond_6

    iget-object v2, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->c:Lorg/apache/commons/collections4/Equator;

    iget-object v3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/collections4/Equator;->equate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/commons/collections4/sequence/KeepCommand;

    iget-object v3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/collections4/sequence/KeepCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v2}, Lorg/apache/commons/collections4/sequence/EditScript;->append(Lorg/apache/commons/collections4/sequence/KeepCommand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    sub-int v2, p2, p1

    sub-int v3, p4, p3

    if-le v2, v3, :cond_7

    new-instance v2, Lorg/apache/commons/collections4/sequence/DeleteCommand;

    iget-object v3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/collections4/sequence/DeleteCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v2}, Lorg/apache/commons/collections4/sequence/EditScript;->append(Lorg/apache/commons/collections4/sequence/DeleteCommand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    new-instance v2, Lorg/apache/commons/collections4/sequence/InsertCommand;

    iget-object v3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/collections4/sequence/InsertCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v2}, Lorg/apache/commons/collections4/sequence/EditScript;->append(Lorg/apache/commons/collections4/sequence/InsertCommand;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public final b(IIII)Lorg/apache/commons/collections4/sequence/SequencesComparator$a;
    .locals 5

    move v0, p1

    :goto_0
    sub-int v1, v0, p2

    if-ge v1, p4, :cond_0

    if-ge v0, p3, :cond_0

    iget-object v2, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->c:Lorg/apache/commons/collections4/Equator;

    iget-object v3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/collections4/Equator;->equate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;-><init>(III)V

    return-object p0
.end method

.method public final c(IIII)Lorg/apache/commons/collections4/sequence/SequencesComparator$a;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    sub-int v5, v2, v1

    sub-int v6, v4, v3

    if-eqz v5, :cond_e

    if-nez v6, :cond_0

    goto/16 :goto_a

    :cond_0
    sub-int v7, v5, v6

    add-int/2addr v6, v5

    rem-int/lit8 v5, v6, 0x2

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    :goto_0
    div-int/lit8 v6, v6, 0x2

    iget-object v5, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->d:[I

    add-int/lit8 v8, v6, 0x1

    aput v1, v5, v8

    iget-object v5, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->e:[I

    add-int/lit8 v9, v2, 0x1

    aput v9, v5, v8

    const/4 v5, 0x0

    :goto_1
    if-gt v5, v6, :cond_d

    neg-int v8, v5

    move v9, v8

    :goto_2
    if-gt v9, v5, :cond_6

    add-int v10, v9, v6

    if-eq v9, v8, :cond_3

    if-eq v9, v5, :cond_2

    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->d:[I

    add-int/lit8 v12, v10, -0x1

    aget v12, v11, v12

    add-int/lit8 v13, v10, 0x1

    aget v11, v11, v13

    if-ge v12, v11, :cond_2

    goto :goto_3

    :cond_2
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->d:[I

    add-int/lit8 v12, v10, -0x1

    aget v12, v11, v12

    add-int/lit8 v12, v12, 0x1

    aput v12, v11, v10

    goto :goto_4

    :cond_3
    :goto_3
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->d:[I

    add-int/lit8 v12, v10, 0x1

    aget v12, v11, v12

    aput v12, v11, v10

    :goto_4
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->d:[I

    aget v11, v11, v10

    sub-int v12, v11, v1

    add-int/2addr v12, v3

    sub-int/2addr v12, v9

    :goto_5
    if-ge v11, v2, :cond_4

    if-ge v12, v4, :cond_4

    iget-object v13, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->c:Lorg/apache/commons/collections4/Equator;

    iget-object v14, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->a:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    iget-object v15, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->b:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lorg/apache/commons/collections4/Equator;->equate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->d:[I

    add-int/lit8 v11, v11, 0x1

    aput v11, v13, v10

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_4
    rem-int/lit8 v11, v7, 0x2

    if-eqz v11, :cond_5

    sub-int v11, v7, v5

    if-gt v11, v9, :cond_5

    add-int v11, v7, v5

    if-gt v9, v11, :cond_5

    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->e:[I

    sub-int v12, v10, v7

    aget v11, v11, v12

    iget-object v12, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->d:[I

    aget v10, v12, v10

    if-gt v11, v10, :cond_5

    add-int/2addr v9, v1

    sub-int/2addr v9, v3

    invoke-virtual {v0, v11, v9, v2, v4}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->b(IIII)Lorg/apache/commons/collections4/sequence/SequencesComparator$a;

    move-result-object v0

    return-object v0

    :cond_5
    add-int/lit8 v9, v9, 0x2

    goto :goto_2

    :cond_6
    sub-int v9, v7, v5

    move v10, v9

    :goto_6
    add-int v11, v7, v5

    if-gt v10, v11, :cond_c

    add-int v12, v10, v6

    sub-int/2addr v12, v7

    if-eq v10, v9, :cond_8

    if-eq v10, v11, :cond_7

    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->e:[I

    add-int/lit8 v13, v12, 0x1

    aget v13, v11, v13

    add-int/lit8 v14, v12, -0x1

    aget v11, v11, v14

    if-gt v13, v11, :cond_7

    goto :goto_7

    :cond_7
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->e:[I

    add-int/lit8 v13, v12, -0x1

    aget v13, v11, v13

    aput v13, v11, v12

    goto :goto_8

    :cond_8
    :goto_7
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->e:[I

    add-int/lit8 v13, v12, 0x1

    aget v13, v11, v13

    add-int/lit8 v13, v13, -0x1

    aput v13, v11, v12

    :goto_8
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->e:[I

    aget v11, v11, v12

    add-int/lit8 v11, v11, -0x1

    sub-int v13, v11, v1

    add-int/2addr v13, v3

    sub-int/2addr v13, v10

    :goto_9
    if-lt v11, v1, :cond_9

    if-lt v13, v3, :cond_9

    iget-object v14, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->c:Lorg/apache/commons/collections4/Equator;

    iget-object v15, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->a:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v6

    iget-object v6, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->b:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v14, v15, v6}, Lorg/apache/commons/collections4/Equator;->equate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->e:[I

    add-int/lit8 v14, v11, -0x1

    aput v11, v6, v12

    add-int/lit8 v13, v13, -0x1

    move v11, v14

    move/from16 v6, v16

    goto :goto_9

    :cond_9
    move/from16 v16, v6

    :cond_a
    rem-int/lit8 v6, v7, 0x2

    if-nez v6, :cond_b

    if-gt v8, v10, :cond_b

    if-gt v10, v5, :cond_b

    iget-object v6, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->e:[I

    aget v6, v6, v12

    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->d:[I

    add-int/2addr v12, v7

    aget v11, v11, v12

    if-gt v6, v11, :cond_b

    add-int/2addr v10, v1

    sub-int/2addr v10, v3

    invoke-virtual {v0, v6, v10, v2, v4}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->b(IIII)Lorg/apache/commons/collections4/sequence/SequencesComparator$a;

    move-result-object v0

    return-object v0

    :cond_b
    add-int/lit8 v10, v10, 0x2

    move/from16 v6, v16

    goto :goto_6

    :cond_c
    move/from16 v16, v6

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal Error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScript()Lorg/apache/commons/collections4/sequence/EditScript;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/sequence/EditScript<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lorg/apache/commons/collections4/sequence/EditScript;

    invoke-direct {v6}, Lorg/apache/commons/collections4/sequence/EditScript;-><init>()V

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move-object v0, p0

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->a(IIIILorg/apache/commons/collections4/sequence/EditScript;)V

    return-object v6
.end method
