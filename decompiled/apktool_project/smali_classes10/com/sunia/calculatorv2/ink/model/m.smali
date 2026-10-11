.class public Lcom/sunia/calculatorv2/ink/model/m;
.super Lcom/sunia/calculatorv2/ink/model/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/calculatorv2/ink/model/f<",
        "Lcom/sunia/calculatorv2/ink/model/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/sunia/calculatorv2/ink/model/f;

.field public static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/m;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunia/calculatorv2/ink/model/m;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/model/m;->f:Lcom/sunia/calculatorv2/ink/model/f;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sunia/calculatorv2/ink/model/m;->h:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/sunia/calculatorv2/ink/model/m;->i:Ljava/util/Set;

    const-string v2, "\u2211"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "\u220f"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "\u2210"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "\u2227"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "\u2228"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "\u2229"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "\u222a"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "\u2295"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "\u2296"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "\u2297"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "\u222b"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "\u222e"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v4, "\u2a0f"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v5, "\u222f"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "\u2230"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "="

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "\u2192"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "lim"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "limsup"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "liminf"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "sup"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "inf"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "max"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "min"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sunia/calculatorv2/ink/model/f;-><init>()V

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/model/m;->e:Ljava/util/List;

    return-void
.end method

.method public static b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/m;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/sunia/calculatorv2/ink/model/m;->s(Ljava/util/List;Ljava/util/List;)V

    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/calculatorv2/ink/model/f;

    instance-of v2, v1, Lcom/sunia/calculatorv2/ink/model/r;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sunia/calculatorv2/ink/model/r;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/r;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunia/calculatorv2/ink/model/r;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v3}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2}, Lcom/sunia/calculatorv2/ink/model/m;->q(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2}, Lcom/sunia/calculatorv2/ink/model/m;->q(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    invoke-virtual {p0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/model/m;->q(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/model/m;->q(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object p0

    return-object p0
.end method

.method public static l()Lcom/sunia/calculatorv2/ink/model/m;
    .locals 2

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/m;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v1}, Lcom/sunia/HTREnginev2/g0;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunia/calculatorv2/ink/model/m;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static q(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/m;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v2, p0

    invoke-interface {v2, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_f

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/sunia/calculatorv2/ink/model/f;

    instance-of v5, v8, Lcom/sunia/calculatorv2/ink/model/o;

    if-eqz v5, :cond_2

    move-object v5, v8

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/o;

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/model/o;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v7

    invoke-static {v7}, Lcom/sunia/calculatorv2/ink/model/m;->v(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    :cond_1
    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/model/o;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v5, v8, Lcom/sunia/calculatorv2/ink/model/q;

    if-eqz v5, :cond_4

    move-object v5, v8

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/q;

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/model/q;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v7

    invoke-static {v7}, Lcom/sunia/calculatorv2/ink/model/m;->v(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :cond_3
    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/model/q;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    instance-of v5, v8, Lcom/sunia/calculatorv2/ink/model/p;

    if-eqz v5, :cond_7

    move-object v5, v8

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/p;

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/model/p;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v7

    invoke-static {v7}, Lcom/sunia/calculatorv2/ink/model/m;->v(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v3, :cond_5

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    :cond_5
    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/model/p;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-nez v4, :cond_6

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :cond_6
    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/model/p;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_8

    invoke-static {v3}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v5

    goto :goto_1

    :cond_8
    sget-object v5, Lcom/sunia/calculatorv2/ink/model/m;->f:Lcom/sunia/calculatorv2/ink/model/f;

    :goto_1
    move-object v9, v5

    if-eqz v4, :cond_9

    invoke-static {v4}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v5

    goto :goto_2

    :cond_9
    sget-object v5, Lcom/sunia/calculatorv2/ink/model/m;->f:Lcom/sunia/calculatorv2/ink/model/f;

    :goto_2
    move-object v10, v5

    if-nez v3, :cond_b

    if-eqz v4, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    :goto_3
    invoke-static {v8}, Lcom/sunia/calculatorv2/ink/model/m;->u(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {v8, v9, v10}, Lcom/sunia/calculatorv2/ink/model/m;->t(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v6, 0x1

    :cond_c
    move v12, v6

    if-eqz v3, :cond_e

    if-eqz v4, :cond_d

    new-instance v3, Lcom/sunia/calculatorv2/ink/model/p;

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/sunia/calculatorv2/ink/model/p;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    move-object v4, v2

    goto :goto_4

    :cond_d
    new-instance v3, Lcom/sunia/calculatorv2/ink/model/o;

    invoke-direct {v3, v8, v9, v11, v12}, Lcom/sunia/calculatorv2/ink/model/o;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_4
    move-object v3, v2

    goto/16 :goto_0

    :cond_e
    if-eqz v4, :cond_0

    new-instance v4, Lcom/sunia/calculatorv2/ink/model/q;

    invoke-direct {v4, v8, v10, v11, v12}, Lcom/sunia/calculatorv2/ink/model/q;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    move-object v4, v2

    goto/16 :goto_0

    :cond_f
    if-eqz v3, :cond_11

    if-eqz v4, :cond_10

    new-instance v1, Lcom/sunia/calculatorv2/ink/model/p;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v14

    invoke-static {v3}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v15

    invoke-static {v4}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/sunia/calculatorv2/ink/model/p;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_5

    :cond_10
    new-instance v1, Lcom/sunia/calculatorv2/ink/model/o;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v2

    invoke-static {v3}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v3

    invoke-direct {v1, v2, v3, v6, v6}, Lcom/sunia/calculatorv2/ink/model/o;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_5

    :cond_11
    if-eqz v4, :cond_12

    new-instance v1, Lcom/sunia/calculatorv2/ink/model/q;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v2

    invoke-static {v4}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v3

    invoke-direct {v1, v2, v3, v6, v6}, Lcom/sunia/calculatorv2/ink/model/q;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_12
    :goto_5
    new-instance v1, Lcom/sunia/calculatorv2/ink/model/m;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lcom/sunia/calculatorv2/ink/model/m;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static r(Lcom/sunia/calculatorv2/ink/model/f;Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/r;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/r;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v0, p1}, Lcom/sunia/calculatorv2/ink/model/m;->r(Lcom/sunia/calculatorv2/ink/model/f;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static s(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    instance-of v1, v0, Lcom/sunia/calculatorv2/ink/model/m;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sunia/calculatorv2/ink/model/m;->s(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static t(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ")Z"
        }
    .end annotation

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/r;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sunia/calculatorv2/ink/model/m;->i:Ljava/util/Set;

    move-object v3, p0

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/model/r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->i()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/f;->i()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/model/f;->i()Ljava/util/List;

    move-result-object p2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/sunia/HTREnginev2/p1;->a(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/sunia/HTREnginev2/p1;->a(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result p1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterX()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p2}, Lcom/sunia/HTREnginev2/p1;->a(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result p1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterX()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    :cond_4
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/k;

    if-eqz v0, :cond_5

    return v2

    :cond_5
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/m;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {p0, p1, p2}, Lcom/sunia/calculatorv2/ink/model/m;->t(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result p0

    return p0

    :cond_6
    return v2
.end method

.method public static u(Lcom/sunia/calculatorv2/ink/model/f;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)Z"
        }
    .end annotation

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/r;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sunia/calculatorv2/ink/model/m;->h:Ljava/util/Set;

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/r;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/k;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lcom/sunia/calculatorv2/ink/model/m;->r(Lcom/sunia/calculatorv2/ink/model/f;Ljava/lang/StringBuilder;)V

    sget-object p0, Lcom/sunia/calculatorv2/ink/model/m;->h:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/model/m;->u(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public static v(Lcom/sunia/calculatorv2/ink/model/f;)Z
    .locals 1

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/m;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/m;

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/m;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/m;->e:Ljava/util/List;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    const-string p0, "group"

    return-object p0
.end method
