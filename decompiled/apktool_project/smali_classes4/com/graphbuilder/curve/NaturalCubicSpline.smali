.class public Lcom/graphbuilder/curve/NaturalCubicSpline;
.super Lcom/graphbuilder/curve/ParametricCurve;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphbuilder/curve/NaturalCubicSpline$b;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/graphbuilder/curve/NaturalCubicSpline$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphbuilder/curve/NaturalCubicSpline$a;

    invoke-direct {v0}, Lcom/graphbuilder/curve/NaturalCubicSpline$a;-><init>()V

    sput-object v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphbuilder/curve/ParametricCurve;-><init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V

    sget-object p1, Lcom/graphbuilder/curve/NaturalCubicSpline;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    iput-object p1, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->b:Z

    return-void
.end method


# virtual methods
.method public final a(IIZ)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p2

    add-int/lit8 v2, p1, -0x1

    iget-object v3, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v3}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v3

    mul-int/lit8 v4, v1, 0x4

    aget-object v3, v3, v4

    iget-object v5, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v5}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    aget-object v5, v5, v6

    iget-object v6, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v6}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v6

    add-int/lit8 v7, v4, 0x2

    aget-object v6, v6, v7

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz p3, :cond_3

    iget-object v11, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v11

    add-int/lit8 v4, v4, 0x3

    aget-object v4, v11, v4

    move/from16 v11, v16

    move v12, v11

    :goto_0
    if-ge v11, v1, :cond_8

    const-wide/high16 v19, 0x3fd0000000000000L    # 0.25

    aput-wide v19, v3, v15

    aput-wide v19, v4, v15

    iget-object v9, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v9}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v9

    aget-object v9, v9, v15

    aget-wide v9, v9, v11

    iget-object v15, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v15}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v15

    aget-object v15, v15, v2

    aget-wide v21, v15, v11

    sub-double v9, v9, v21

    const-wide/high16 v21, 0x3fe8000000000000L    # 0.75

    mul-double v21, v21, v9

    aput-wide v21, v5, v16

    iget-object v9, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v9}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v9

    aget-object v9, v9, v16

    aget-wide v9, v9, v11

    iget-object v15, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v15}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v15

    add-int/lit8 v21, v2, -0x1

    aget-object v15, v15, v21

    aget-wide v22, v15, v11

    sub-double v9, v9, v22

    mul-double/2addr v9, v13

    move-wide/from16 v24, v7

    const/4 v15, 0x1

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    :goto_1
    if-ge v15, v2, :cond_0

    add-int/lit8 v26, v15, 0x1

    aget-wide v27, v3, v15

    sub-double v27, v7, v27

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    div-double v7, v19, v27

    aput-wide v7, v3, v26

    neg-double v13, v7

    aget-wide v29, v4, v15

    mul-double v13, v13, v29

    aput-wide v13, v4, v26

    iget-object v13, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v13}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v13

    aget-object v13, v13, v26

    aget-wide v13, v13, v11

    iget-object v1, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v1}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v1

    add-int/lit8 v29, v15, -0x1

    aget-object v1, v1, v29

    aget-wide v30, v1, v11

    sub-double v13, v13, v30

    const-wide/high16 v27, 0x4008000000000000L    # 3.0

    mul-double v13, v13, v27

    aget-wide v30, v5, v29

    sub-double v13, v13, v30

    mul-double/2addr v7, v13

    aput-wide v7, v5, v15

    aget-wide v7, v4, v15

    mul-double v7, v7, v22

    sub-double v24, v24, v7

    aget-wide v7, v5, v29

    mul-double v7, v7, v22

    sub-double/2addr v9, v7

    aget-wide v7, v3, v15

    neg-double v7, v7

    mul-double v22, v22, v7

    move/from16 v1, p2

    move/from16 v15, v26

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    goto :goto_1

    :cond_0
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double v22, v22, v7

    aget-wide v7, v3, v2

    aget-wide v13, v4, v2

    add-double/2addr v7, v13

    mul-double v7, v7, v22

    sub-double v24, v24, v7

    aget-wide v7, v5, v21

    mul-double v22, v22, v7

    sub-double v9, v9, v22

    aput-wide v9, v5, v2

    div-double v9, v9, v24

    aput-wide v9, v6, v2

    aget-wide v7, v5, v21

    aget-wide v13, v3, v2

    aget-wide v22, v4, v2

    add-double v13, v13, v22

    mul-double/2addr v13, v9

    sub-double/2addr v7, v13

    aput-wide v7, v6, v21

    add-int/lit8 v1, v2, -0x2

    :goto_2
    if-ltz v1, :cond_1

    aget-wide v7, v5, v1

    add-int/lit8 v9, v1, 0x1

    aget-wide v13, v3, v9

    aget-wide v21, v6, v9

    mul-double v13, v13, v21

    sub-double/2addr v7, v13

    aget-wide v9, v4, v9

    aget-wide v13, v6, v2

    mul-double/2addr v9, v13

    sub-double/2addr v7, v9

    aput-wide v7, v6, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v1}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v1

    add-int/lit8 v7, v12, 0x1

    aget-object v1, v1, v12

    iget-object v8, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v8}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    aget-object v7, v8, v7

    iget-object v8, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v8}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v8

    add-int/lit8 v10, v9, 0x1

    aget-object v8, v8, v9

    iget-object v9, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v9}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v9

    add-int/lit8 v12, v10, 0x1

    aget-object v9, v9, v10

    move/from16 v10, v16

    :goto_3
    if-ge v10, v2, :cond_2

    iget-object v13, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v13}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v13

    aget-object v13, v13, v10

    aget-wide v13, v13, v11

    aput-wide v13, v1, v10

    aget-wide v13, v6, v10

    aput-wide v13, v7, v10

    iget-object v13, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v13}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v13

    add-int/lit8 v14, v10, 0x1

    aget-object v13, v13, v14

    aget-wide v21, v13, v11

    iget-object v13, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v13}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v13

    aget-object v13, v13, v10

    aget-wide v23, v13, v11

    sub-double v21, v21, v23

    const-wide/high16 v23, 0x4008000000000000L    # 3.0

    mul-double v21, v21, v23

    aget-wide v23, v6, v10

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v23, v23, v17

    sub-double v21, v21, v23

    aget-wide v23, v6, v14

    sub-double v21, v21, v23

    aput-wide v21, v8, v10

    iget-object v13, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v13}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v13

    aget-object v13, v13, v10

    aget-wide v21, v13, v11

    iget-object v13, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v13}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v13

    aget-object v13, v13, v14

    aget-wide v23, v13, v11

    sub-double v21, v21, v23

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v21, v21, v17

    aget-wide v23, v6, v10

    add-double v21, v21, v23

    aget-wide v23, v6, v14

    add-double v21, v21, v23

    aput-wide v21, v9, v10

    move v10, v14

    goto :goto_3

    :cond_2
    iget-object v10, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v10}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v10

    aget-object v10, v10, v2

    aget-wide v13, v10, v11

    aput-wide v13, v1, v2

    aget-wide v13, v6, v2

    aput-wide v13, v7, v2

    iget-object v1, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v1}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v1

    aget-object v1, v1, v16

    aget-wide v13, v1, v11

    iget-object v1, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v1}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v1

    aget-object v1, v1, v2

    aget-wide v21, v1, v11

    sub-double v13, v13, v21

    const-wide/high16 v21, 0x4008000000000000L    # 3.0

    mul-double v13, v13, v21

    aget-wide v21, v6, v2

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v21, v21, v17

    sub-double v13, v13, v21

    aget-wide v21, v6, v16

    sub-double v13, v13, v21

    aput-wide v13, v8, v2

    iget-object v1, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v1}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v1

    aget-object v1, v1, v2

    aget-wide v7, v1, v11

    iget-object v1, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v1}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v1

    aget-object v1, v1, v16

    aget-wide v13, v1, v11

    sub-double/2addr v7, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v13

    aget-wide v13, v6, v2

    add-double/2addr v7, v13

    aget-wide v13, v6, v16

    add-double/2addr v7, v13

    aput-wide v7, v9, v2

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p2

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_3
    move/from16 v1, p2

    move/from16 v4, v16

    move v7, v4

    :goto_4
    if-ge v4, v1, :cond_8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    aput-wide v8, v3, v16

    const/4 v8, 0x1

    :goto_5
    if-ge v8, v2, :cond_4

    add-int/lit8 v9, v8, -0x1

    aget-wide v9, v3, v9

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    sub-double v9, v11, v9

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    div-double v9, v13, v9

    aput-wide v9, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_4
    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v8, v2, -0x1

    aget-wide v9, v3, v8

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    sub-double v9, v17, v9

    div-double v9, v13, v9

    aput-wide v9, v3, v2

    aget-wide v9, v3, v16

    iget-object v15, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v15}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v15

    const/16 v19, 0x1

    aget-object v15, v15, v19

    aget-wide v20, v15, v4

    iget-object v15, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v15}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v15

    aget-object v15, v15, v16

    aget-wide v22, v15, v4

    sub-double v20, v20, v22

    const-wide/high16 v22, 0x4008000000000000L    # 3.0

    mul-double v20, v20, v22

    mul-double v9, v9, v20

    aput-wide v9, v5, v16

    move/from16 v9, v19

    :goto_6
    if-ge v9, v2, :cond_5

    aget-wide v20, v3, v9

    iget-object v10, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v10}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v10

    add-int/lit8 v15, v9, 0x1

    aget-object v10, v10, v15

    aget-wide v22, v10, v4

    iget-object v10, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v10}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v10

    add-int/lit8 v24, v9, -0x1

    aget-object v10, v10, v24

    aget-wide v25, v10, v4

    sub-double v22, v22, v25

    const-wide/high16 v25, 0x4008000000000000L    # 3.0

    mul-double v22, v22, v25

    aget-wide v24, v5, v24

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    aput-wide v20, v5, v9

    move v9, v15

    goto :goto_6

    :cond_5
    aget-wide v9, v3, v2

    iget-object v15, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v15}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v15

    aget-object v15, v15, v2

    aget-wide v20, v15, v4

    iget-object v15, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v15}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v15

    aget-object v15, v15, v8

    aget-wide v22, v15, v4

    sub-double v20, v20, v22

    const-wide/high16 v22, 0x4008000000000000L    # 3.0

    mul-double v20, v20, v22

    aget-wide v22, v5, v8

    sub-double v20, v20, v22

    mul-double v9, v9, v20

    aput-wide v9, v5, v2

    aput-wide v9, v6, v2

    :goto_7
    if-ltz v8, :cond_6

    aget-wide v9, v5, v8

    aget-wide v20, v3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v22, v6, v15

    mul-double v20, v20, v22

    sub-double v9, v9, v20

    aput-wide v9, v6, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    :cond_6
    iget-object v8, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v8}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    aget-object v7, v8, v7

    iget-object v8, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v8}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v8

    add-int/lit8 v10, v9, 0x1

    aget-object v8, v8, v9

    iget-object v9, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v9}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v9

    add-int/lit8 v15, v10, 0x1

    aget-object v9, v9, v10

    iget-object v10, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v10}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v10

    add-int/lit8 v20, v15, 0x1

    aget-object v10, v10, v15

    move/from16 v15, v16

    :goto_8
    if-ge v15, v2, :cond_7

    iget-object v11, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v11

    aget-object v11, v11, v15

    aget-wide v11, v11, v4

    aput-wide v11, v7, v15

    aget-wide v11, v6, v15

    aput-wide v11, v8, v15

    iget-object v11, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v11

    add-int/lit8 v12, v15, 0x1

    aget-object v11, v11, v12

    aget-wide v21, v11, v4

    iget-object v11, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v11

    aget-object v11, v11, v15

    aget-wide v23, v11, v4

    sub-double v21, v21, v23

    const-wide/high16 v23, 0x4008000000000000L    # 3.0

    mul-double v21, v21, v23

    aget-wide v25, v6, v15

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v25, v25, v17

    sub-double v21, v21, v25

    aget-wide v25, v6, v12

    sub-double v21, v21, v25

    aput-wide v21, v9, v15

    iget-object v11, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v11

    aget-object v11, v11, v15

    aget-wide v21, v11, v4

    iget-object v11, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v11

    aget-object v11, v11, v12

    aget-wide v25, v11, v4

    sub-double v21, v21, v25

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v21, v21, v17

    aget-wide v25, v6, v15

    add-double v21, v21, v25

    aget-wide v25, v6, v12

    add-double v21, v21, v25

    aput-wide v21, v10, v15

    move v15, v12

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    goto :goto_8

    :cond_7
    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    const-wide/high16 v23, 0x4008000000000000L    # 3.0

    iget-object v11, v0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v11

    aget-object v11, v11, v2

    aget-wide v11, v11, v4

    aput-wide v11, v7, v2

    const-wide/16 v11, 0x0

    aput-wide v11, v8, v2

    aput-wide v11, v9, v2

    aput-wide v11, v10, v2

    add-int/lit8 v4, v4, 0x1

    move/from16 v7, v20

    goto/16 :goto_4

    :cond_8
    return-void
.end method

.method public appendTo(Lcom/graphbuilder/curve/MultiPath;)V
    .locals 9

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    iget-object v1, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/ControlPath;->numPoints()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/graphbuilder/curve/GroupIterator;->isInRange(II)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0}, Lcom/graphbuilder/curve/GroupIterator;->getGroupSize()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/graphbuilder/curve/MultiPath;->getDimension()I

    move-result v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v4}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v4

    array-length v4, v4

    if-ge v4, v3, :cond_1

    new-array v3, v3, [[D

    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v5}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v5}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v5

    aget-object v5, v5, v4

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v4, v3}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->b(Lcom/graphbuilder/curve/NaturalCubicSpline$b;[[D)[[D

    :cond_1
    iget-object v3, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v3}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v3

    array-length v3, v3

    if-ge v3, v0, :cond_2

    mul-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    new-array v5, v3, [[D

    invoke-static {v4, v5}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->f(Lcom/graphbuilder/curve/NaturalCubicSpline$b;[[D)[[D

    move v4, v2

    :goto_1
    iget-object v5, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v5}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v5}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v5

    new-array v6, v3, [D

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v3, v2, v2}, Lcom/graphbuilder/curve/GroupIterator;->set(II)V

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v4}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v4

    iget-object v5, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    iget-object v6, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v6}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/graphbuilder/curve/ControlPath;->getPoint(I)Lcom/graphbuilder/curve/Point;

    move-result-object v5

    invoke-interface {v5}, Lcom/graphbuilder/curve/Point;->getLocation()[D

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-boolean v3, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->b:Z

    invoke-virtual {p0, v0, v1, v3}, Lcom/graphbuilder/curve/NaturalCubicSpline;->a(IIZ)V

    iget-object v3, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v3, v2}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->d(Lcom/graphbuilder/curve/NaturalCubicSpline$b;I)I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [D

    invoke-virtual {p0, v1}, Lcom/graphbuilder/curve/NaturalCubicSpline;->eval([D)V

    iget-boolean v3, p0, Lcom/graphbuilder/curve/Curve;->connect:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1, v1}, Lcom/graphbuilder/curve/MultiPath;->lineTo([D)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v1}, Lcom/graphbuilder/curve/MultiPath;->moveTo([D)V

    :goto_3
    if-ge v2, v0, :cond_5

    iget-object v1, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v1, v2}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->d(Lcom/graphbuilder/curve/NaturalCubicSpline$b;I)I

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v3, p0

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lcom/graphbuilder/curve/BinaryCurveApproximationAlgorithm;->genPts(Lcom/graphbuilder/curve/ParametricCurve;DDLcom/graphbuilder/curve/MultiPath;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Group iterator size < 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Group iterator not in range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public eval([D)V
    .locals 14

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-wide v1, p1, v0

    mul-double v3, v1, v1

    mul-double v5, v3, v1

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v7, v0, :cond_0

    iget-object v9, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v9}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    aget-object v8, v9, v8

    iget-object v9, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v9}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->c(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)I

    move-result v9

    aget-wide v8, v8, v9

    iget-object v11, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    aget-object v10, v11, v10

    iget-object v11, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->c(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)I

    move-result v11

    aget-wide v10, v10, v11

    mul-double/2addr v10, v1

    add-double/2addr v8, v10

    iget-object v10, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v10}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v10

    add-int/lit8 v11, v12, 0x1

    aget-object v10, v10, v12

    iget-object v12, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v12}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->c(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)I

    move-result v12

    aget-wide v12, v10, v12

    mul-double/2addr v12, v3

    add-double/2addr v8, v12

    iget-object v10, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v10}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v10

    add-int/lit8 v12, v11, 0x1

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->c(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)I

    move-result v11

    aget-wide v10, v10, v11

    mul-double/2addr v10, v5

    add-double/2addr v8, v10

    aput-wide v8, p1, v7

    add-int/lit8 v7, v7, 0x1

    move v8, v12

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->b:Z

    return p0
.end method

.method public getSampleLimit()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public resetMemory()V
    .locals 3

    iget-object v0, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v0}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->e(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    new-array v2, v1, [[D

    invoke-static {v0, v2}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->f(Lcom/graphbuilder/curve/NaturalCubicSpline$b;[[D)[[D

    :cond_0
    iget-object v0, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    invoke-static {v0}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->a(Lcom/graphbuilder/curve/NaturalCubicSpline$b;)[[D

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->a:Lcom/graphbuilder/curve/NaturalCubicSpline$b;

    new-array v0, v1, [[D

    invoke-static {p0, v0}, Lcom/graphbuilder/curve/NaturalCubicSpline$b;->b(Lcom/graphbuilder/curve/NaturalCubicSpline$b;[[D)[[D

    :cond_1
    return-void
.end method

.method public setClosed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphbuilder/curve/NaturalCubicSpline;->b:Z

    return-void
.end method
