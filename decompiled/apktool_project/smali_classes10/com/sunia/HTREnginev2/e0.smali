.class public Lcom/sunia/HTREnginev2/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/sunia/HTREnginev2/l1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sunia/HTREnginev2/l1;

    const/4 v1, -0x1

    const-string v2, "mrow"

    invoke-static {v1, v2, v0}, Lcom/sunia/HTREnginev2/l1;->a(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/e0;->a:Lcom/sunia/HTREnginev2/l1;

    return-void
.end method

.method public static a(Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;
    .locals 3

    .line 16
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/l1;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mrow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sunia/HTREnginev2/l1;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 p0, -0x1

    .line 17
    invoke-static {p0, v1, v0}, Lcom/sunia/HTREnginev2/l1;->a(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    :goto_0
    if-gez v3, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/sunia/HTREnginev2/e0;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    if-ltz v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v4, 0x1

    .line 4
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v7, v4

    move v4, v3

    move v3, v7

    .line 5
    :goto_2
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_7

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_6

    add-int/lit8 v5, v4, 0x1

    .line 6
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 7
    invoke-static {v4}, Ljava/lang/Character;->isLetter(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move v3, v4

    move v4, v5

    .line 10
    :goto_3
    invoke-static {v3}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_3

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v7, v4

    move v4, v3

    move v3, v7

    goto :goto_3

    :cond_3
    move v3, v1

    goto :goto_3

    .line 13
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_5
    new-instance v6, Ljava/lang/String;

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v6, v3, v2, v4}, Ljava/lang/String;-><init>([III)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v1

    move v4, v5

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v4, -0x1

    .line 15
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move v3, v1

    goto :goto_0
.end method

.method public static b(Ljava/util/LinkedList;)Lcom/sunia/HTREnginev2/l1;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/sunia/HTREnginev2/l1;",
            ">;)",
            "Lcom/sunia/HTREnginev2/l1;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 39
    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    const-string v6, "msubsup"

    const/4 v7, 0x3

    const-string v8, "mrow"

    const-string v9, "msup"

    const-string v10, "msub"

    const/4 v11, 0x2

    const/4 v12, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v5, :cond_8

    .line 40
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/HTREnginev2/l1;

    .line 41
    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/l1;->c()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/l1;->b()[Lcom/sunia/HTREnginev2/l1;

    move-result-object v15

    aget-object v15, v15, v14

    sget-object v2, Lcom/sunia/HTREnginev2/e0;->a:Lcom/sunia/HTREnginev2/l1;

    if-ne v15, v2, :cond_2

    if-nez v3, :cond_1

    .line 42
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 43
    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/l1;->b()[Lcom/sunia/HTREnginev2/l1;

    move-result-object v3

    aget-object v3, v3, v13

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v3, v2

    goto :goto_2

    .line 44
    :cond_1
    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/l1;->b()[Lcom/sunia/HTREnginev2/l1;

    move-result-object v2

    aget-object v2, v2, v13

    invoke-virtual {v3, v14, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 45
    :goto_2
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/l1;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/l1;->b()[Lcom/sunia/HTREnginev2/l1;

    move-result-object v2

    aget-object v2, v2, v14

    sget-object v15, Lcom/sunia/HTREnginev2/e0;->a:Lcom/sunia/HTREnginev2/l1;

    if-ne v2, v15, :cond_4

    if-nez v4, :cond_3

    .line 47
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 48
    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/l1;->b()[Lcom/sunia/HTREnginev2/l1;

    move-result-object v4

    aget-object v4, v4, v13

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v4, v2

    goto :goto_3

    .line 49
    :cond_3
    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/l1;->b()[Lcom/sunia/HTREnginev2/l1;

    move-result-object v2

    aget-object v2, v2, v13

    invoke-virtual {v4, v14, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 50
    :goto_3
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    if-eqz v4, :cond_5

    new-array v2, v7, [Lcom/sunia/HTREnginev2/l1;

    .line 51
    invoke-static {v5}, Lcom/sunia/HTREnginev2/e0;->a(Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v5

    aput-object v5, v2, v14

    invoke-static {v3}, Lcom/sunia/HTREnginev2/e0;->b(Ljava/util/LinkedList;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-static {v4}, Lcom/sunia/HTREnginev2/e0;->b(Ljava/util/LinkedList;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v12, v6, v2}, Lcom/sunia/HTREnginev2/l1;->a(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    new-array v2, v11, [Lcom/sunia/HTREnginev2/l1;

    .line 52
    invoke-static {v5}, Lcom/sunia/HTREnginev2/e0;->a(Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v5

    aput-object v5, v2, v14

    invoke-static {v3}, Lcom/sunia/HTREnginev2/e0;->b(Ljava/util/LinkedList;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-static {v12, v10, v2}, Lcom/sunia/HTREnginev2/l1;->a(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    :goto_4
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_6
    if-eqz v4, :cond_7

    .line 53
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    new-array v2, v11, [Lcom/sunia/HTREnginev2/l1;

    .line 54
    sget-object v5, Lcom/sunia/HTREnginev2/e0;->a:Lcom/sunia/HTREnginev2/l1;

    aput-object v5, v2, v14

    invoke-static {v4}, Lcom/sunia/HTREnginev2/e0;->b(Ljava/util/LinkedList;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v12, v9, v2}, Lcom/sunia/HTREnginev2/l1;->a(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 55
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto/16 :goto_0

    .line 56
    :cond_7
    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/l1;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 58
    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/l1;->b()[Lcom/sunia/HTREnginev2/l1;

    move-result-object v2

    array-length v5, v2

    :goto_5
    if-ge v14, v5, :cond_0

    aget-object v6, v2, v14

    .line 59
    invoke-interface {v1, v6}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_a

    if-eqz v4, :cond_9

    new-array v1, v7, [Lcom/sunia/HTREnginev2/l1;

    .line 60
    sget-object v2, Lcom/sunia/HTREnginev2/e0;->a:Lcom/sunia/HTREnginev2/l1;

    aput-object v2, v1, v14

    invoke-static {v3}, Lcom/sunia/HTREnginev2/e0;->b(Ljava/util/LinkedList;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v4}, Lcom/sunia/HTREnginev2/e0;->b(Ljava/util/LinkedList;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v12, v6, v1}, Lcom/sunia/HTREnginev2/l1;->a(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    new-array v1, v11, [Lcom/sunia/HTREnginev2/l1;

    .line 61
    sget-object v2, Lcom/sunia/HTREnginev2/e0;->a:Lcom/sunia/HTREnginev2/l1;

    aput-object v2, v1, v14

    invoke-static {v3}, Lcom/sunia/HTREnginev2/e0;->b(Ljava/util/LinkedList;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v12, v10, v1}, Lcom/sunia/HTREnginev2/l1;->a(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    if-eqz v4, :cond_b

    new-array v1, v11, [Lcom/sunia/HTREnginev2/l1;

    .line 62
    sget-object v2, Lcom/sunia/HTREnginev2/e0;->a:Lcom/sunia/HTREnginev2/l1;

    aput-object v2, v1, v14

    invoke-static {v4}, Lcom/sunia/HTREnginev2/e0;->b(Ljava/util/LinkedList;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v12, v9, v1}, Lcom/sunia/HTREnginev2/l1;->a(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_b
    :goto_6
    new-array v1, v14, [Lcom/sunia/HTREnginev2/l1;

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sunia/HTREnginev2/l1;

    invoke-static {v12, v8, v0}, Lcom/sunia/HTREnginev2/l1;->a(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/List;)Lcom/sunia/HTREnginev2/l1;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sunia/HTREnginev2/l1;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_d

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "\\sqrt"

    const/4 v6, -0x1

    const-string v7, "["

    const/4 v8, 0x2

    const/4 v9, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v6, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "\\left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_2
    const-string v4, "\\frac"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_3
    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_4
    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_5
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_6
    const-string v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    move v6, v8

    goto :goto_1

    :sswitch_7
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    move v6, v2

    goto :goto_1

    :sswitch_8
    const-string v4, "\\right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    move v6, v9

    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 6
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-static {v1, v3}, Lcom/sunia/HTREnginev2/l1;->a(ILjava/lang/String;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_0
    add-int/lit8 v3, v1, 0x1

    .line 7
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 8
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/l1;

    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/HTREnginev2/l1;

    new-array v5, v8, [Lcom/sunia/HTREnginev2/l1;

    aput-object v4, v5, v9

    aput-object v3, v5, v2

    const-string v3, "mroot"

    .line 10
    invoke-static {v1, v3, v5}, Lcom/sunia/HTREnginev2/l1;->a(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v3

    goto :goto_2

    .line 11
    :cond_9
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/l1;

    new-array v4, v2, [Lcom/sunia/HTREnginev2/l1;

    aput-object v3, v4, v9

    const-string v3, "msqrt"

    .line 12
    invoke-static {v1, v3, v4}, Lcom/sunia/HTREnginev2/l1;->a(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v3

    .line 13
    :goto_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 14
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/l1;

    .line 15
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/HTREnginev2/l1;

    new-array v5, v8, [Lcom/sunia/HTREnginev2/l1;

    aput-object v3, v5, v9

    aput-object v4, v5, v2

    const-string v3, "mfrac"

    .line 16
    invoke-static {v1, v3, v5}, Lcom/sunia/HTREnginev2/l1;->a(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v3

    .line 17
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 18
    :pswitch_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 19
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 20
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-static {v3}, Lcom/sunia/HTREnginev2/e0;->b(Ljava/util/LinkedList;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 21
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/l1;

    .line 22
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    new-array v5, v8, [Lcom/sunia/HTREnginev2/l1;

    sget-object v6, Lcom/sunia/HTREnginev2/e0;->a:Lcom/sunia/HTREnginev2/l1;

    aput-object v6, v5, v9

    aput-object v3, v5, v2

    const-string v3, "msub"

    invoke-static {v1, v3, v5}, Lcom/sunia/HTREnginev2/l1;->a(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 23
    :pswitch_5
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/l1;

    .line 24
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    new-array v5, v8, [Lcom/sunia/HTREnginev2/l1;

    sget-object v6, Lcom/sunia/HTREnginev2/e0;->a:Lcom/sunia/HTREnginev2/l1;

    aput-object v6, v5, v9

    aput-object v3, v5, v2

    const-string v3, "msup"

    invoke-static {v1, v3, v5}, Lcom/sunia/HTREnginev2/l1;->a(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_6
    if-lez v1, :cond_c

    add-int/lit8 v3, v1, -0x1

    .line 25
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 26
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 27
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 28
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 29
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/HTREnginev2/l1;

    .line 30
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 31
    invoke-virtual {v6}, Lcom/sunia/HTREnginev2/l1;->c()Ljava/lang/String;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_4

    .line 32
    :cond_a
    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 33
    :cond_b
    :goto_4
    invoke-static {v3}, Lcom/sunia/HTREnginev2/e0;->b(Ljava/util/LinkedList;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_5

    .line 34
    :cond_c
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-static {v1, v7}, Lcom/sunia/HTREnginev2/l1;->a(ILjava/lang/String;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_5
    :pswitch_7
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 35
    :cond_d
    :goto_6
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-le p0, v2, :cond_e

    .line 36
    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    .line 37
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/e0;->b(Ljava/util/LinkedList;)Lcom/sunia/HTREnginev2/l1;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_6

    .line 38
    :cond_e
    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/e0;->b(Ljava/util/LinkedList;)Lcom/sunia/HTREnginev2/l1;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c8a64c0 -> :sswitch_8
        0x5b -> :sswitch_7
        0x5e -> :sswitch_6
        0x5f -> :sswitch_5
        0x7b -> :sswitch_4
        0x7d -> :sswitch_3
        0x540884a -> :sswitch_2
        0x5431263 -> :sswitch_1
        0x5466f7c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    const/16 v7, 0x2e

    if-nez v6, :cond_8

    if-ne v7, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    move v7, v2

    move-object v6, v3

    :goto_1
    sget-object v8, Lcom/sunia/HTREnginev2/u;->C:Ljava/util/TreeMap;

    invoke-virtual {v8, v6}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v4, v6

    goto :goto_2

    :cond_1
    if-eqz v8, :cond_5

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/2addr v7, v5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v5, :cond_5

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_7

    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_8
    :goto_4
    add-int/lit8 v4, v2, 0x1

    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_a

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v5, :cond_a

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_9

    goto :goto_6

    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_7
    sub-int/2addr v3, v5

    add-int/2addr v2, v3

    goto :goto_8

    :cond_b
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v2, v5

    goto/16 :goto_0

    :cond_c
    return-object v0
.end method
