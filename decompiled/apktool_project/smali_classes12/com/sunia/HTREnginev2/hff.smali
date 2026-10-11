.class public Lcom/sunia/HTREnginev2/hff;
.super Lcom/sunia/HTREnginev2/hvl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lcom/sunia/HTREnginev2/hvl<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final i:[[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;Z[[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, Lcom/sunia/HTREnginev2/hvl;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    const/16 v0, 0x10

    const/4 v1, 0x7

    move-object/from16 v2, p1

    invoke-static {v2, v1, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v3, p0

    iput-object v0, v3, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v4, 0x0

    aget-object v5, v0, v4

    const-wide v6, 0x40f9741000000000L    # 104257.0

    const-wide v8, 0x413d4cf000000000L    # 1920240.0

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-wide/from16 p4, v6

    move-wide/from16 p6, v8

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v4

    aget-object v5, v0, v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    aget-object v5, v0, v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    aget-object v5, v0, v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    aget-object v5, v0, v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v10, 0x4

    aput-object v6, v5, v10

    aget-object v5, v0, v4

    const-wide v11, 0x4149ef4f80000000L    # 3399327.0

    const-wide v13, 0x41274f8000000000L    # 763840.0

    move-wide/from16 p4, v11

    move-wide/from16 p6, v13

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    const/4 v11, 0x5

    aput-object v6, v5, v11

    aget-object v5, v0, v4

    const-wide v12, 0x418fbf4000000000L    # 6.6578432E7

    const-wide v14, 0x4180c8ae78000000L    # 3.5198415E7

    move-wide/from16 p4, v12

    move-wide/from16 p6, v14

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    const/4 v12, 0x6

    aput-object v6, v5, v12

    aget-object v5, v0, v4

    const-wide v13, -0x3e270ac0cf400000L    # -1.674902723E9

    const-wide v15, 0x41b1357670000000L    # 2.887164E8

    move-wide/from16 p4, v13

    move-wide/from16 p6, v15

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v1

    aget-object v5, v0, v4

    const-wide v13, 0x42c9008ebfdc2c80L    # 5.4980371265625E13

    const-wide v15, 0x42e4166cc96ea800L    # 1.76692375811392E14

    move-wide/from16 p4, v13

    move-wide/from16 p6, v15

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    const/16 v13, 0x8

    aput-object v6, v5, v13

    aget-object v5, v0, v4

    const-wide v14, -0x3ed996b200000000L    # -734375.0

    const-wide v16, 0x4152693000000000L    # 4826304.0

    move-wide/from16 p4, v14

    move-wide/from16 p6, v16

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    const/16 v14, 0x9

    aput-object v6, v5, v14

    aget-object v5, v0, v4

    const-wide v15, 0x41a46f2882000000L    # 1.71414593E8

    const-wide v17, 0x41c95e9bec000000L    # 8.512614E8

    move-wide/from16 p4, v15

    move-wide/from16 p6, v17

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    const/16 v15, 0xa

    aput-object v6, v5, v15

    aget-object v5, v0, v4

    const-wide v16, 0x4100d5a800000000L    # 137909.0

    const-wide v18, 0x4147886000000000L    # 3084480.0

    move-wide/from16 p4, v16

    move-wide/from16 p6, v18

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    const/16 v16, 0xb

    aput-object v6, v5, v16

    aget-object v5, v0, v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v17, 0xc

    aput-object v6, v5, v17

    aget-object v5, v0, v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v18, 0xd

    aput-object v6, v5, v18

    aget-object v5, v0, v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v19, 0xe

    aput-object v6, v5, v19

    aget-object v5, v0, v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v20, 0xf

    aput-object v6, v5, v20

    aget-object v5, v0, v7

    aget-object v6, v0, v4

    aget-object v6, v6, v4

    invoke-interface {v6}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-interface {v6, v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v4

    aget-object v5, v0, v7

    aget-object v6, v0, v4

    aget-object v6, v6, v7

    invoke-interface {v6}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v7

    aget-object v5, v0, v7

    aget-object v6, v0, v4

    aget-object v6, v6, v8

    invoke-interface {v6}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v8

    aget-object v5, v0, v7

    aget-object v6, v0, v4

    aget-object v6, v6, v9

    invoke-interface {v6}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v9

    aget-object v5, v0, v7

    aget-object v6, v0, v4

    aget-object v6, v6, v10

    invoke-interface {v6}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v10

    aget-object v5, v0, v7

    aget-object v6, v0, v4

    aget-object v6, v6, v11

    invoke-interface {v6}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v11

    aget-object v5, v0, v7

    aget-object v6, v0, v4

    aget-object v6, v6, v12

    invoke-interface {v6}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v12

    aget-object v5, v0, v7

    aget-object v6, v0, v4

    aget-object v6, v6, v1

    invoke-interface {v6}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v1

    aget-object v5, v0, v7

    aget-object v6, v0, v4

    aget-object v6, v6, v13

    invoke-interface {v6}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v13

    aget-object v5, v0, v7

    aget-object v6, v0, v4

    const/16 v22, 0x9

    aget-object v6, v6, v22

    invoke-interface {v6}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v22

    aget-object v5, v0, v7

    aget-object v6, v0, v4

    const/16 v21, 0xa

    aget-object v6, v6, v21

    invoke-interface {v6}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v21

    aget-object v5, v0, v7

    aget-object v6, v0, v4

    aget-object v6, v6, v16

    invoke-interface {v6}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v16

    aget-object v5, v0, v7

    aget-object v6, v0, v4

    aget-object v6, v6, v17

    invoke-interface {v6}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v17

    aget-object v5, v0, v7

    aget-object v6, v0, v4

    aget-object v6, v6, v18

    invoke-interface {v6}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v18

    aget-object v5, v0, v7

    aget-object v6, v0, v4

    aget-object v6, v6, v19

    invoke-interface {v6}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v19

    aget-object v5, v0, v7

    aget-object v6, v0, v4

    aget-object v6, v6, v20

    invoke-interface {v6}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v20

    aget-object v5, v0, v8

    aget-object v6, v0, v4

    aget-object v6, v6, v4

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v4

    aget-object v5, v0, v8

    aget-object v6, v0, v4

    aget-object v6, v6, v7

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v7

    aget-object v5, v0, v8

    aget-object v6, v0, v4

    aget-object v6, v6, v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v8

    aget-object v5, v0, v8

    aget-object v6, v0, v4

    aget-object v6, v6, v9

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v9

    aget-object v5, v0, v8

    aget-object v6, v0, v4

    aget-object v6, v6, v10

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v10

    aget-object v5, v0, v8

    aget-object v6, v0, v4

    aget-object v6, v6, v11

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v11

    aget-object v5, v0, v8

    aget-object v6, v0, v4

    aget-object v6, v6, v12

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v12

    aget-object v5, v0, v8

    aget-object v6, v0, v4

    aget-object v6, v6, v1

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v1

    aget-object v5, v0, v8

    aget-object v6, v0, v4

    aget-object v6, v6, v13

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v13

    aget-object v5, v0, v8

    aget-object v6, v0, v4

    const/16 v22, 0x9

    aget-object v6, v6, v22

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v22

    aget-object v5, v0, v8

    aget-object v6, v0, v4

    const/16 v21, 0xa

    aget-object v6, v6, v21

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v21

    aget-object v5, v0, v8

    aget-object v6, v0, v4

    aget-object v6, v6, v16

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v16

    aget-object v5, v0, v8

    aget-object v6, v0, v4

    aget-object v6, v6, v17

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v17

    aget-object v5, v0, v8

    aget-object v6, v0, v4

    aget-object v6, v6, v18

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v18

    aget-object v5, v0, v8

    aget-object v6, v0, v4

    aget-object v6, v6, v19

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v19

    aget-object v5, v0, v8

    aget-object v6, v0, v4

    aget-object v6, v6, v20

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v20

    aget-object v5, v0, v9

    const-wide v14, -0x3def77988ebc0000L    # -1.7751989329E10

    const-wide v22, 0x41df620b64000000L    # 2.10607656E9

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v4

    aget-object v5, v0, v9

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v7

    aget-object v5, v0, v9

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v8

    aget-object v5, v0, v9

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v9

    aget-object v5, v0, v9

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v10

    aget-object v5, v0, v9

    const-wide v14, 0x41efd60356e00000L    # 4.272954039E9

    const-wide v22, 0x41fc169344000000L    # 7.53986464E9

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v11

    aget-object v5, v0, v9

    const-wide v14, -0x3dc46a42d4000000L    # -1.18476319744E11

    const-wide v22, 0x4221fa0e33b20000L    # 3.8604839385E10

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v12

    aget-object v5, v0, v9

    const-wide v14, 0x4265fa1bae6d6000L    # 7.55123450731E11

    const-wide v22, 0x42526e9162040000L    # 3.166577316E11

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v1

    aget-object v5, v0, v9

    const-wide v14, 0x43c99efe0d5d097aL    # 3.6923844612348283E18

    const-wide v22, 0x43b8346565578dffL    # 1.7441304416342505E18

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v13

    aget-object v5, v0, v9

    const-wide v14, -0x3e0ed112aa100000L    # -4.612609375E9

    const-wide v22, 0x41f3b829d4000000L    # 5.293382976E9

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    const/16 v14, 0x9

    aput-object v6, v5, v14

    aget-object v5, v0, v9

    const-wide v14, 0x427e70757f66b000L    # 2.091772278379E12

    const-wide v22, 0x426b2c31b9cd0000L    # 9.336445866E11

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    const/16 v14, 0xa

    aput-object v6, v5, v14

    aget-object v5, v0, v9

    const-wide v14, 0x41dfd69302400000L    # 2.136624137E9

    const-wide v22, 0x41e9348a28000000L    # 3.38298912E9

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v16

    aget-object v5, v0, v9

    const-wide v14, -0x3f011e3000000000L    # -126493.0

    const-wide v22, 0x4135b07000000000L    # 1421424.0

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v17

    aget-object v5, v0, v9

    const-wide v14, 0x419772cec0000000L    # 9.835E7

    const-wide v22, 0x4154ac2ac0000000L    # 5419179.0

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v18

    aget-object v5, v0, v9

    const-wide v14, -0x3e8dff1530000000L    # -1.8878125E7

    const-wide v22, 0x413f543000000000L    # 2053168.0

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v19

    aget-object v5, v0, v9

    const-wide v14, -0x3e23062899400000L    # -1.944542619E9

    const-wide v22, 0x41ba20b608000000L    # 4.38351368E8

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v20

    aget-object v5, v0, v10

    const-wide v14, 0x421eade9a4440000L    # 3.2941697297E10

    const-wide v22, 0x41e789888b000000L    # 3.15911484E9

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v4

    aget-object v5, v0, v10

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v7

    aget-object v5, v0, v10

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v8

    aget-object v5, v0, v10

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v9

    aget-object v5, v0, v10

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v10

    aget-object v5, v0, v10

    const-wide v14, 0x425a954dae54c000L    # 4.56696183123E11

    const-wide v22, 0x41dc169344000000L    # 1.88496616E9

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v11

    aget-object v5, v0, v10

    const-wide v14, 0x42b166a8771c0000L    # 1.9132610714624E13

    const-wide v22, 0x423af7154d8b0000L    # 1.15814518155E11

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v12

    aget-object v5, v0, v10

    const-wide v14, -0x3d1bc64ac770fa20L    # -1.77904688592943E14

    const-wide v22, 0x425ba5da13060000L    # 4.749865974E11

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v1

    aget-object v5, v0, v10

    const-wide v14, -0x3c2f45f7b10c97d2L    # -4.8211399418367652E18

    const-wide v22, 0x4388346565578dffL    # 2.18016305204281312E17

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v13

    aget-object v5, v0, v10

    const-wide v14, 0x421c97ee52240000L    # 3.0702015625E10

    const-wide v22, 0x41ed943ebe000000L    # 3.970037232E9

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    const/16 v14, 0x9

    aput-object v6, v5, v14

    aget-object v5, v0, v10

    const-wide v14, -0x3d2c7706a68e6780L    # -8.5916079474274E13

    const-wide v22, 0x428461254b59c000L    # 2.8009337598E12

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    const/16 v14, 0xa

    aput-object v6, v5, v14

    aget-object v5, v0, v10

    const-wide v14, -0x3e09f2c161900000L    # -5.919468007E9

    const-wide v22, 0x41c2e7679e000000L    # 6.3431046E8

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v16

    aget-object v5, v0, v10

    const-wide v14, 0x4142ea1b80000000L    # 2479159.0

    const-wide v22, 0x4103478000000000L    # 157936.0

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v17

    aget-object v5, v0, v10

    const-wide v14, -0x3e8e1e5d00000000L    # -1.875E7

    const-wide v22, 0x4122602600000000L    # 602131.0

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v18

    aget-object v5, v0, v10

    const-wide v14, -0x3e8dafbcb0000000L    # -1.9203125E7

    const-wide v22, 0x413f543000000000L    # 2053168.0

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v19

    aget-object v5, v0, v10

    const-wide v14, 0x420d3e8407b80000L    # 1.5700361463E10

    const-wide v22, 0x41ba20b608000000L    # 4.38351368E8

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v20

    aget-object v5, v0, v11

    const-wide v14, 0x42078507bf380000L    # 1.2627015655E10

    const-wide v22, 0x41c2d46d3c000000L    # 6.31822968E8

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v4

    aget-object v5, v0, v11

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v7

    aget-object v5, v0, v11

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v8

    aget-object v5, v0, v11

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v9

    aget-object v5, v0, v11

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v5, v10

    aget-object v5, v0, v11

    const-wide v14, -0x3dcf0387a44b0000L    # -7.2955222965E10

    const-wide v22, 0x41a67875d0000000L    # 1.88496616E8

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v11

    aget-object v5, v0, v11

    const-wide v14, -0x3d58168915680000L    # -1.314574495232E13

    const-wide v22, 0x42302dd994ed0000L    # 6.9488710893E10

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v12

    aget-object v5, v0, v11

    const-wide v14, 0x42bb5c870505d100L    # 3.0084216194513E13

    const-wide v22, 0x422a8abcdf100000L    # 5.6998391688E10

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v1

    aget-object v5, v0, v11

    const-wide v14, -0x3c6f85621e66f248L    # -2.9685876100664064E17

    const-wide v22, 0x4356c7e6f5f80d2cL    # 2.5648977082856624E16

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v13

    aget-object v5, v0, v11

    const-wide v14, 0x41c0f632c8800000L    # 5.69140625E8

    const-wide v22, 0x4193b829d4000000L    # 8.2709109E7

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    const/16 v14, 0x9

    aput-object v6, v5, v14

    aget-object v5, v0, v11

    const-wide v14, -0x3dee9957814c0000L    # -1.8684190637E10

    const-wide v22, 0x421163f6dd500000L    # 1.8672891732E10

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    const/16 v14, 0xa

    aput-object v6, v5, v14

    aget-object v5, v0, v11

    const-wide v14, 0x41909abc34000000L    # 6.9644045E7

    const-wide v22, 0x419559ae40000000L    # 8.9549712E7

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v16

    aget-object v5, v0, v11

    const-wide v14, -0x3e996751e0000000L    # -1.1847025E7

    const-wide v22, 0x4150445400000000L    # 4264272.0

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v17

    aget-object v5, v0, v11

    const-wide v14, -0x3e32d57e38000000L    # -9.7865E8

    const-wide v22, 0x416f024020000000L    # 1.6257537E7

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v18

    aget-object v5, v0, v11

    const-wide v14, 0x41bef4fc63000000L    # 5.19371875E8

    const-wide v22, 0x41577f2400000000L    # 6159504.0

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v19

    aget-object v5, v0, v11

    const-wide v14, 0x41f3954f86900000L    # 5.256837225E9

    const-wide v22, 0x41ba20b608000000L    # 4.38351368E8

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v20

    aget-object v5, v0, v12

    const-wide v14, -0x3e451f2063000000L    # -4.50944925E8

    const-wide v22, 0x4170bcd2e0000000L    # 1.7550638E7

    move-wide/from16 p4, v14

    move-wide/from16 p6, v22

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v5, v4

    aget-object v4, v0, v12

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v7

    aget-object v4, v0, v12

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v8

    aget-object v4, v0, v12

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v9

    aget-object v4, v0, v12

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v10

    aget-object v4, v0, v12

    const-wide v5, -0x3df4ee8b36980000L    # -1.4532122925E10

    const-wide v7, 0x41967875d0000000L    # 9.4248308E7

    move-wide/from16 p4, v5

    move-wide/from16 p6, v7

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v4, v11

    aget-object v4, v0, v12

    const-wide v5, -0x3d9ea85ee2000000L    # -5.958769664E11

    const-wide v7, 0x41e32cdbf2e00000L    # 2.573655959E9

    move-wide/from16 p4, v5

    move-wide/from16 p6, v7

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v4, v12

    aget-object v4, v0, v12

    const-wide v5, 0x4245f925f0eb8000L    # 1.88748653015E11

    const-wide v7, 0x41bf7505c6000000L    # 5.27762886E8

    move-wide/from16 p4, v5

    move-wide/from16 p6, v7

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v4, v1

    aget-object v1, v0, v12

    const-wide v4, 0x43c1a9b0c4cff0c5L    # 2.5454854581152343E18

    const-wide v6, 0x4358346565578dffL    # 2.7252038150535164E16

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v1, v13

    aget-object v1, v0, v12

    const-wide v4, -0x3e2b7b5736c00000L    # -1.376953125E9

    const-wide v6, 0x41818741a0000000L    # 3.6759604E7

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v1, v5

    aget-object v1, v0, v12

    const-wide v4, 0x422924c6d7f60000L    # 5.3995596795E10

    const-wide v6, 0x41beea9a6d000000L    # 5.18691437E8

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    const/16 v5, 0xa

    aput-object v4, v1, v5

    aget-object v1, v0, v12

    const-wide v4, 0x41a9123072000000L    # 2.10311225E8

    const-wide v6, 0x415ae2b580000000L    # 7047894.0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v1, v16

    aget-object v1, v0, v12

    const-wide v4, -0x3ec5c5a500000000L    # -1718875.0

    const-wide v6, 0x40e3478000000000L    # 39484.0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v1, v17

    aget-object v1, v0, v12

    const-wide v4, 0x418ba81400000000L    # 5.8E7

    const-wide v6, 0x4122602600000000L    # 602131.0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v1, v18

    aget-object v1, v0, v12

    const-wide v4, -0x3ec8658500000000L    # -1546875.0

    const-wide v6, 0x40e3478000000000L    # 39484.0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v1, v19

    aget-object v0, v0, v12

    const-wide v4, -0x3e2d3131ca400000L    # -1.262172375E9

    const-wide v6, 0x4160142140000000L    # 8429834.0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    invoke-virtual/range {p2 .. p7}, Lcom/sunia/HTREnginev2/hff;->h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v0, v20

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lcom/sunia/HTREnginev2/hvl;
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lcom/sunia/HTREnginev2/hff;->g(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lcom/sunia/HTREnginev2/hff;

    move-result-object p0

    return-object p0
.end method

.method public computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;TT;TT;TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v6}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, -0x3

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    invoke-interface {v6, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v1, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-interface {v11, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x5

    invoke-interface {v1, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v13, 0x4020000000000000L    # 8.0

    invoke-interface {v12, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v12}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v7, v12}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v13, -0x6

    invoke-interface {v1, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v14, 0x402e000000000000L    # 15.0

    invoke-interface {v13, v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v1, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v16, v12

    const-wide/high16 v11, 0x4028000000000000L    # 12.0

    invoke-interface {v13, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v1, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v10, -0x7

    invoke-interface {v1, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v11, 0x4032000000000000L    # 18.0

    invoke-interface {v10, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    invoke-interface {v10, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v10

    const/16 v17, 0xa

    const/16 v18, 0x9

    const/16 v19, 0x8

    const/16 v20, 0x7

    const/16 v11, 0x10

    const/16 v21, 0x6

    const/16 v22, 0x4

    const/16 v23, 0x3

    const/16 v24, 0x1

    const/16 v25, 0x0

    if-eqz v10, :cond_1

    invoke-interface/range {p3 .. p3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v26

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    cmpg-double v10, v26, v28

    if-gtz v10, :cond_1

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v12, v26

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v13, v26

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v14, v26

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v15

    invoke-static {v15, v11}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-static {v5, v11}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 p3, v5

    move/from16 v11, v25

    :goto_0
    array-length v5, v15

    if-ge v11, v5, :cond_0

    iget-object v5, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v5, v25

    aget-object v5, v5, v11

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v2, v2, v24

    aget-object v2, v2, v11

    invoke-interface {v10, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    const/16 v30, 0x2

    aget-object v5, v5, v30

    aget-object v5, v5, v11

    invoke-interface {v12, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v5, v23

    aget-object v5, v5, v11

    invoke-interface {v13, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v5, v22

    aget-object v5, v5, v11

    invoke-interface {v14, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    const/16 v31, 0x5

    aget-object v5, v5, v31

    aget-object v5, v5, v11

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v5, v21

    aget-object v5, v5, v11

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v15, v11

    iget-object v2, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v2, v25

    aget-object v5, v5, v11

    aget-object v2, v2, v24

    aget-object v2, v2, v11

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    const/16 v30, 0x2

    aget-object v5, v5, v30

    aget-object v5, v5, v11

    invoke-interface {v8, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v5, v23

    aget-object v5, v5, v11

    invoke-interface {v6, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v5, v22

    aget-object v5, v5, v11

    move-object/from16 p5, v10

    move-object/from16 v10, v16

    invoke-interface {v10, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    const/16 v16, 0x5

    aget-object v5, v5, v16

    aget-object v5, v5, v11

    invoke-interface {v9, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v5, v21

    aget-object v5, v5, v11

    invoke-interface {v7, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, p3, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p4

    move-object/from16 v16, v10

    move-object/from16 v10, p5

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x10

    new-array v1, v2, [Lorg/apache/commons/math3/RealFieldElement;

    aget-object v2, v15, v25

    aput-object v2, v1, v25

    aget-object v2, v15, v24

    aput-object v2, v1, v24

    const/4 v2, 0x2

    aget-object v3, v15, v2

    aput-object v3, v1, v2

    aget-object v2, v15, v23

    aput-object v2, v1, v23

    aget-object v2, v15, v22

    aput-object v2, v1, v22

    const/4 v2, 0x5

    aget-object v3, v15, v2

    aput-object v3, v1, v2

    aget-object v2, v15, v21

    aput-object v2, v1, v21

    aget-object v2, v15, v20

    aput-object v2, v1, v20

    aget-object v2, v15, v19

    aput-object v2, v1, v19

    aget-object v2, v15, v18

    aput-object v2, v1, v18

    aget-object v2, v15, v17

    aput-object v2, v1, v17

    const/16 v2, 0xb

    aget-object v3, v15, v2

    aput-object v3, v1, v2

    const/16 v2, 0xc

    aget-object v3, v15, v2

    aput-object v3, v1, v2

    const/16 v2, 0xd

    aget-object v3, v15, v2

    aput-object v3, v1, v2

    const/16 v2, 0xe

    aget-object v3, v15, v2

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aget-object v3, v15, v2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/hvl;->f([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [Lorg/apache/commons/math3/RealFieldElement;

    aget-object v3, p3, v25

    aput-object v3, v2, v25

    aget-object v3, p3, v24

    aput-object v3, v2, v24

    const/4 v3, 0x2

    aget-object v4, p3, v3

    aput-object v4, v2, v3

    aget-object v3, p3, v23

    aput-object v3, v2, v23

    aget-object v3, p3, v22

    aput-object v3, v2, v22

    const/4 v3, 0x5

    aget-object v4, p3, v3

    aput-object v4, v2, v3

    aget-object v3, p3, v21

    aput-object v3, v2, v21

    aget-object v3, p3, v20

    aput-object v3, v2, v20

    aget-object v3, p3, v19

    aput-object v3, v2, v19

    aget-object v3, p3, v18

    aput-object v3, v2, v18

    aget-object v3, p3, v17

    aput-object v3, v2, v17

    const/16 v3, 0xb

    aget-object v4, p3, v3

    aput-object v4, v2, v3

    const/16 v3, 0xc

    aget-object v4, p3, v3

    aput-object v4, v2, v3

    const/16 v3, 0xd

    aget-object v4, p3, v3

    aput-object v4, v2, v3

    const/16 v3, 0xe

    aget-object v4, p3, v3

    aput-object v4, v2, v3

    const/16 v3, 0xf

    aget-object v4, p3, v3

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/sunia/HTREnginev2/hvl;->e([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    goto/16 :goto_2

    :cond_1
    move-object/from16 v10, v16

    invoke-interface/range {p5 .. p5}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v16, v7

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v7

    invoke-static {v7, v15}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 p3, v7

    move/from16 v15, v25

    :goto_1
    array-length v7, v14

    if-ge v15, v7, :cond_2

    iget-object v7, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, v7, v25

    aget-object v7, v7, v15

    invoke-interface {v2, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 p4, v2

    iget-object v2, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v2, v2, v24

    aget-object v2, v2, v15

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v7, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    const/16 v30, 0x2

    aget-object v7, v7, v30

    aget-object v7, v7, v15

    invoke-interface {v11, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, v7, v23

    aget-object v7, v7, v15

    invoke-interface {v12, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, v7, v22

    aget-object v7, v7, v15

    invoke-interface {v13, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    const/16 v31, 0x5

    aget-object v7, v7, v31

    aget-object v7, v7, v15

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, v7, v21

    aget-object v7, v7, v15

    invoke-interface {v1, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v14, v15

    iget-object v2, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, v2, v25

    aget-object v7, v7, v15

    aget-object v2, v2, v24

    aget-object v2, v2, v15

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v7, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    const/16 v30, 0x2

    aget-object v7, v7, v30

    aget-object v7, v7, v15

    invoke-interface {v8, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, v7, v23

    aget-object v7, v7, v15

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, v7, v22

    aget-object v7, v7, v15

    invoke-interface {v10, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    const/16 v31, 0x5

    aget-object v7, v7, v31

    aget-object v7, v7, v15

    invoke-interface {v9, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v7, v0, Lcom/sunia/HTREnginev2/hff;->i:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, v7, v21

    aget-object v7, v7, v15

    move-object/from16 p5, v1

    move-object/from16 v1, v16

    invoke-interface {v1, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, p3, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p4

    move-object/from16 v1, p5

    goto/16 :goto_1

    :cond_2
    const/16 v2, 0x10

    new-array v1, v2, [Lorg/apache/commons/math3/RealFieldElement;

    aget-object v2, v14, v25

    aput-object v2, v1, v25

    aget-object v2, v14, v24

    aput-object v2, v1, v24

    const/4 v2, 0x2

    aget-object v3, v14, v2

    aput-object v3, v1, v2

    aget-object v2, v14, v23

    aput-object v2, v1, v23

    aget-object v2, v14, v22

    aput-object v2, v1, v22

    const/4 v2, 0x5

    aget-object v3, v14, v2

    aput-object v3, v1, v2

    aget-object v2, v14, v21

    aput-object v2, v1, v21

    aget-object v2, v14, v20

    aput-object v2, v1, v20

    aget-object v2, v14, v19

    aput-object v2, v1, v19

    aget-object v2, v14, v18

    aput-object v2, v1, v18

    aget-object v2, v14, v17

    aput-object v2, v1, v17

    const/16 v2, 0xb

    aget-object v3, v14, v2

    aput-object v3, v1, v2

    const/16 v2, 0xc

    aget-object v3, v14, v2

    aput-object v3, v1, v2

    const/16 v2, 0xd

    aget-object v3, v14, v2

    aput-object v3, v1, v2

    const/16 v2, 0xe

    aget-object v3, v14, v2

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aget-object v3, v14, v2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/hvl;->d([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [Lorg/apache/commons/math3/RealFieldElement;

    aget-object v3, p3, v25

    aput-object v3, v2, v25

    aget-object v3, p3, v24

    aput-object v3, v2, v24

    const/4 v3, 0x2

    aget-object v4, p3, v3

    aput-object v4, v2, v3

    aget-object v3, p3, v23

    aput-object v3, v2, v23

    aget-object v3, p3, v22

    aput-object v3, v2, v22

    const/4 v3, 0x5

    aget-object v4, p3, v3

    aput-object v4, v2, v3

    aget-object v3, p3, v21

    aput-object v3, v2, v21

    aget-object v3, p3, v20

    aput-object v3, v2, v20

    aget-object v3, p3, v19

    aput-object v3, v2, v19

    aget-object v3, p3, v18

    aput-object v3, v2, v18

    aget-object v3, p3, v17

    aput-object v3, v2, v17

    const/16 v3, 0xb

    aget-object v4, p3, v3

    aput-object v4, v2, v3

    const/16 v3, 0xc

    aget-object v4, p3, v3

    aput-object v4, v2, v3

    const/16 v3, 0xd

    aget-object v4, p3, v3

    aput-object v4, v2, v3

    const/16 v3, 0xe

    aget-object v4, p3, v3

    aput-object v4, v2, v3

    const/16 v3, 0xf

    aget-object v4, p3, v3

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/sunia/HTREnginev2/hvl;->e([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    :goto_2
    new-instance v2, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-object/from16 v3, p2

    invoke-direct {v2, v3, v1, v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v2
.end method

.method public g(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lcom/sunia/HTREnginev2/hff;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;Z[[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;)",
            "Lcom/sunia/HTREnginev2/hff<",
            "TT;>;"
        }
    .end annotation

    new-instance v9, Lcom/sunia/HTREnginev2/hff;

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/sunia/HTREnginev2/hff;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v9
.end method

.method public final h(Lorg/apache/commons/math3/Field;DD)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;DD)TT;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0, p2, p3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0, p4, p5}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method
