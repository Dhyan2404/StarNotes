.class public Lcom/graphbuilder/math/ExpressionTree;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/graphbuilder/struc/Stack;Lcom/graphbuilder/struc/Stack;)Lcom/graphbuilder/math/Expression;
    .locals 6

    new-instance v0, Lcom/graphbuilder/struc/Stack;

    invoke-direct {v0}, Lcom/graphbuilder/struc/Stack;-><init>()V

    new-instance v1, Lcom/graphbuilder/struc/Stack;

    invoke-direct {v1}, Lcom/graphbuilder/struc/Stack;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lcom/graphbuilder/struc/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/graphbuilder/struc/LinkedList;->removeTail()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/graphbuilder/struc/LinkedList;->removeTail()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/graphbuilder/struc/LinkedList;->removeTail()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "^"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v2, Lcom/graphbuilder/math/PowNode;

    check-cast v3, Lcom/graphbuilder/math/Expression;

    check-cast v4, Lcom/graphbuilder/math/Expression;

    invoke-direct {v2, v3, v4}, Lcom/graphbuilder/math/PowNode;-><init>(Lcom/graphbuilder/math/Expression;Lcom/graphbuilder/math/Expression;)V

    invoke-virtual {p0, v2}, Lcom/graphbuilder/struc/LinkedList;->addToTail(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Lcom/graphbuilder/struc/LinkedList;->addToTail(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/graphbuilder/struc/Stack;->push(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/graphbuilder/struc/Stack;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/graphbuilder/struc/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/graphbuilder/struc/Stack;->push(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v1}, Lcom/graphbuilder/struc/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/graphbuilder/struc/LinkedList;->removeTail()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/graphbuilder/struc/LinkedList;->removeTail()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/graphbuilder/struc/LinkedList;->removeTail()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v2, Lcom/graphbuilder/math/MultNode;

    check-cast v3, Lcom/graphbuilder/math/Expression;

    check-cast v4, Lcom/graphbuilder/math/Expression;

    invoke-direct {v2, v3, v4}, Lcom/graphbuilder/math/MultNode;-><init>(Lcom/graphbuilder/math/Expression;Lcom/graphbuilder/math/Expression;)V

    invoke-virtual {v0, v2}, Lcom/graphbuilder/struc/LinkedList;->addToTail(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v2, Lcom/graphbuilder/math/DivNode;

    check-cast v3, Lcom/graphbuilder/math/Expression;

    check-cast v4, Lcom/graphbuilder/math/Expression;

    invoke-direct {v2, v3, v4}, Lcom/graphbuilder/math/DivNode;-><init>(Lcom/graphbuilder/math/Expression;Lcom/graphbuilder/math/Expression;)V

    invoke-virtual {v0, v2}, Lcom/graphbuilder/struc/LinkedList;->addToTail(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4}, Lcom/graphbuilder/struc/LinkedList;->addToTail(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lcom/graphbuilder/struc/Stack;->push(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/graphbuilder/struc/Stack;->push(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/graphbuilder/struc/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/graphbuilder/struc/Stack;->push(Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {p1}, Lcom/graphbuilder/struc/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/graphbuilder/struc/LinkedList;->removeTail()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/graphbuilder/struc/LinkedList;->removeTail()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/graphbuilder/struc/LinkedList;->removeTail()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Lcom/graphbuilder/math/AddNode;

    check-cast v1, Lcom/graphbuilder/math/Expression;

    check-cast v2, Lcom/graphbuilder/math/Expression;

    invoke-direct {v0, v1, v2}, Lcom/graphbuilder/math/AddNode;-><init>(Lcom/graphbuilder/math/Expression;Lcom/graphbuilder/math/Expression;)V

    invoke-virtual {p0, v0}, Lcom/graphbuilder/struc/LinkedList;->addToTail(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v0, Lcom/graphbuilder/math/SubNode;

    check-cast v1, Lcom/graphbuilder/math/Expression;

    check-cast v2, Lcom/graphbuilder/math/Expression;

    invoke-direct {v0, v1, v2}, Lcom/graphbuilder/math/SubNode;-><init>(Lcom/graphbuilder/math/Expression;Lcom/graphbuilder/math/Expression;)V

    invoke-virtual {p0, v0}, Lcom/graphbuilder/struc/LinkedList;->addToTail(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-instance p0, Lcom/graphbuilder/math/ExpressionParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown operator: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/graphbuilder/math/ExpressionParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_7
    invoke-virtual {p0}, Lcom/graphbuilder/struc/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphbuilder/math/Expression;

    return-object p0
.end method

.method public static b(Ljava/lang/String;I)Lcom/graphbuilder/math/Expression;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/graphbuilder/struc/Stack;

    invoke-direct {v1}, Lcom/graphbuilder/struc/Stack;-><init>()V

    new-instance v2, Lcom/graphbuilder/struc/Stack;

    invoke-direct {v2}, Lcom/graphbuilder/struc/Stack;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_29

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_27

    const/16 v11, 0x9

    if-eq v9, v11, :cond_27

    const/16 v12, 0xa

    if-ne v9, v12, :cond_1

    goto/16 :goto_b

    :cond_1
    const-string v13, "("

    const/16 v14, 0x2f

    const/16 v15, 0x2a

    const/16 v3, 0x5e

    const/16 v4, 0x29

    const/16 v12, 0x2b

    const/16 v11, 0x2d

    if-eqz v6, :cond_21

    const/16 v10, 0x28

    if-ne v9, v10, :cond_3

    if-nez v8, :cond_2

    invoke-virtual {v2, v13}, Lcom/graphbuilder/struc/Stack;->push(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_2
    new-instance v0, Lcom/graphbuilder/math/ExpressionParseException;

    const-string v1, "Open bracket found after negate."

    invoke-direct {v0, v1, v5}, Lcom/graphbuilder/math/ExpressionParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    if-nez v7, :cond_5

    if-eq v9, v12, :cond_4

    if-ne v9, v11, :cond_5

    :cond_4
    const/4 v3, 0x1

    const/4 v7, 0x1

    if-ne v9, v11, :cond_28

    const/4 v8, 0x1

    goto/16 :goto_c

    :cond_5
    const/16 v6, 0x2e

    const/16 v7, 0x39

    const/16 v13, 0x30

    if-lt v9, v13, :cond_6

    if-le v9, v7, :cond_7

    :cond_6
    if-ne v9, v6, :cond_11

    :cond_7
    add-int/lit8 v3, v5, 0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_f

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v13, :cond_8

    if-le v4, v7, :cond_9

    :cond_8
    if-ne v4, v6, :cond_a

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    const/16 v6, 0x65

    if-eq v4, v6, :cond_b

    const/16 v6, 0x45

    if-ne v4, v6, :cond_f

    :cond_b
    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_e

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v12, :cond_d

    if-eq v4, v11, :cond_d

    if-lt v4, v13, :cond_c

    if-gt v4, v7, :cond_c

    goto :goto_2

    :cond_c
    new-instance v0, Lcom/graphbuilder/math/ExpressionParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected digit, plus sign or minus sign but found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int v3, v3, p1

    invoke-direct {v0, v1, v3}, Lcom/graphbuilder/math/ExpressionParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_d
    :goto_2
    add-int/lit8 v3, v3, 0x1

    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_f

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v13, :cond_f

    if-le v4, v7, :cond_d

    :cond_f
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_10

    neg-double v4, v4

    :cond_10
    new-instance v6, Lcom/graphbuilder/math/ValNode;

    invoke-direct {v6, v4, v5}, Lcom/graphbuilder/math/ValNode;-><init>(D)V

    invoke-virtual {v1, v6}, Lcom/graphbuilder/struc/Stack;->push(Ljava/lang/Object;)V

    add-int/lit8 v5, v3, -0x1

    :goto_3
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto/16 :goto_c

    :catchall_0
    new-instance v0, Lcom/graphbuilder/math/ExpressionParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Improperly formatted value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int v5, v5, p1

    invoke-direct {v0, v1, v5}, Lcom/graphbuilder/math/ExpressionParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_11
    const/16 v6, 0x2c

    if-eq v9, v6, :cond_20

    if-eq v9, v4, :cond_20

    if-eq v9, v3, :cond_20

    if-eq v9, v15, :cond_20

    if-eq v9, v14, :cond_20

    if-eq v9, v12, :cond_20

    if-eq v9, v11, :cond_20

    add-int/lit8 v7, v5, 0x1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v7, v13, :cond_12

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v6, :cond_12

    const/16 v13, 0x20

    if-eq v9, v13, :cond_12

    const/16 v13, 0x9

    if-eq v9, v13, :cond_12

    const/16 v13, 0xa

    if-eq v9, v13, :cond_12

    if-eq v9, v10, :cond_12

    if-eq v9, v4, :cond_12

    if-eq v9, v3, :cond_12

    if-eq v9, v15, :cond_12

    if-eq v9, v14, :cond_12

    if-eq v9, v12, :cond_12

    if-eq v9, v11, :cond_12

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_12
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v7, v3, :cond_1f

    move v3, v7

    const/16 v11, 0x20

    :goto_5
    const/16 v12, 0x9

    const/16 v13, 0xa

    if-eq v9, v11, :cond_13

    if-eq v9, v12, :cond_13

    if-ne v9, v13, :cond_14

    :cond_13
    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v3, v14, :cond_1e

    :cond_14
    if-ne v9, v10, :cond_1d

    new-instance v9, Lcom/graphbuilder/math/FuncNode;

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7, v8}, Lcom/graphbuilder/math/FuncNode;-><init>(Ljava/lang/String;Z)V

    add-int/lit8 v7, v3, 0x1

    const/4 v8, 0x1

    :cond_15
    :goto_6
    const-string v11, "Incomplete function."

    if-eqz v8, :cond_1a

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v3, v12, :cond_19

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v4, :cond_16

    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    :cond_16
    if-ne v12, v10, :cond_17

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_17
    if-ne v12, v6, :cond_15

    const/4 v12, 0x1

    if-ne v8, v12, :cond_15

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v7}, Lcom/graphbuilder/math/ExpressionTree;->b(Ljava/lang/String;I)Lcom/graphbuilder/math/Expression;

    move-result-object v12

    if-eqz v12, :cond_18

    invoke-virtual {v9, v12}, Lcom/graphbuilder/math/FuncNode;->add(Lcom/graphbuilder/math/Expression;)V

    add-int/lit8 v7, v3, 0x1

    goto :goto_6

    :cond_18
    new-instance v0, Lcom/graphbuilder/math/ExpressionParseException;

    add-int v7, v7, p1

    invoke-direct {v0, v11, v7}, Lcom/graphbuilder/math/ExpressionParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_19
    new-instance v0, Lcom/graphbuilder/math/ExpressionParseException;

    const-string v1, "Missing function close bracket."

    add-int v5, v5, p1

    invoke-direct {v0, v1, v5}, Lcom/graphbuilder/math/ExpressionParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1a
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/graphbuilder/math/ExpressionTree;->b(Ljava/lang/String;I)Lcom/graphbuilder/math/Expression;

    move-result-object v4

    if-nez v4, :cond_1c

    invoke-virtual {v9}, Lcom/graphbuilder/math/FuncNode;->numChildren()I

    move-result v4

    if-gtz v4, :cond_1b

    goto :goto_7

    :cond_1b
    new-instance v0, Lcom/graphbuilder/math/ExpressionParseException;

    add-int v7, v7, p1

    invoke-direct {v0, v11, v7}, Lcom/graphbuilder/math/ExpressionParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1c
    invoke-virtual {v9, v4}, Lcom/graphbuilder/math/FuncNode;->add(Lcom/graphbuilder/math/Expression;)V

    :goto_7
    invoke-virtual {v1, v9}, Lcom/graphbuilder/struc/Stack;->push(Ljava/lang/Object;)V

    goto :goto_8

    :cond_1d
    new-instance v4, Lcom/graphbuilder/math/VarNode;

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v8}, Lcom/graphbuilder/math/VarNode;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v4}, Lcom/graphbuilder/struc/Stack;->push(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, -0x1

    :goto_8
    move v5, v3

    goto/16 :goto_3

    :cond_1e
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto/16 :goto_5

    :cond_1f
    new-instance v3, Lcom/graphbuilder/math/VarNode;

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v8}, Lcom/graphbuilder/math/VarNode;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v3}, Lcom/graphbuilder/struc/Stack;->push(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    goto/16 :goto_3

    :cond_20
    new-instance v0, Lcom/graphbuilder/math/ExpressionParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int v5, v5, p1

    invoke-direct {v0, v1, v5}, Lcom/graphbuilder/math/ExpressionParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_21
    if-ne v9, v4, :cond_24

    new-instance v3, Lcom/graphbuilder/struc/Stack;

    invoke-direct {v3}, Lcom/graphbuilder/struc/Stack;-><init>()V

    new-instance v4, Lcom/graphbuilder/struc/Stack;

    invoke-direct {v4}, Lcom/graphbuilder/struc/Stack;-><init>()V

    :goto_9
    invoke-virtual {v2}, Lcom/graphbuilder/struc/LinkedList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_23

    invoke-virtual {v2}, Lcom/graphbuilder/struc/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {v1}, Lcom/graphbuilder/struc/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/graphbuilder/struc/LinkedList;->addToTail(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/graphbuilder/math/ExpressionTree;->a(Lcom/graphbuilder/struc/Stack;Lcom/graphbuilder/struc/Stack;)Lcom/graphbuilder/math/Expression;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/graphbuilder/struc/Stack;->push(Ljava/lang/Object;)V

    goto :goto_b

    :cond_22
    invoke-virtual {v1}, Lcom/graphbuilder/struc/Stack;->pop()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/graphbuilder/struc/LinkedList;->addToTail(Ljava/lang/Object;)V

    invoke-virtual {v4, v9}, Lcom/graphbuilder/struc/LinkedList;->addToTail(Ljava/lang/Object;)V

    goto :goto_9

    :cond_23
    new-instance v0, Lcom/graphbuilder/math/ExpressionParseException;

    const-string v1, "Missing open bracket."

    add-int v5, v5, p1

    invoke-direct {v0, v1, v5}, Lcom/graphbuilder/math/ExpressionParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_24
    if-eq v9, v3, :cond_26

    if-eq v9, v15, :cond_26

    if-eq v9, v14, :cond_26

    if-eq v9, v12, :cond_26

    if-ne v9, v11, :cond_25

    goto :goto_a

    :cond_25
    new-instance v0, Lcom/graphbuilder/math/ExpressionParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected operator or close bracket but found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int v5, v5, p1

    invoke-direct {v0, v1, v5}, Lcom/graphbuilder/math/ExpressionParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_26
    :goto_a
    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/graphbuilder/struc/Stack;->push(Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v6, 0x1

    goto :goto_c

    :cond_27
    :goto_b
    const/4 v3, 0x1

    :cond_28
    :goto_c
    add-int/2addr v5, v3

    goto/16 :goto_0

    :cond_29
    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/graphbuilder/struc/LinkedList;->size()I

    move-result v4

    invoke-virtual {v2}, Lcom/graphbuilder/struc/LinkedList;->size()I

    move-result v5

    add-int/2addr v5, v3

    if-ne v4, v5, :cond_2a

    invoke-static {v1, v2}, Lcom/graphbuilder/math/ExpressionTree;->a(Lcom/graphbuilder/struc/Stack;Lcom/graphbuilder/struc/Stack;)Lcom/graphbuilder/math/Expression;

    move-result-object v0

    return-object v0

    :cond_2a
    new-instance v1, Lcom/graphbuilder/math/ExpressionParseException;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v0, p1, v0

    const-string v2, "Incomplete expression."

    invoke-direct {v1, v2, v0}, Lcom/graphbuilder/math/ExpressionParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public static parse(Ljava/lang/String;)Lcom/graphbuilder/math/Expression;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/graphbuilder/math/ExpressionTree;->b(Ljava/lang/String;I)Lcom/graphbuilder/math/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/graphbuilder/math/ExpressionParseException;

    const-string v0, "Expression string cannot be null."

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/graphbuilder/math/ExpressionParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
