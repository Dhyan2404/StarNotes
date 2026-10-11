.class public Lcom/graphbuilder/curve/NURBSpline;
.super Lcom/graphbuilder/curve/BSpline;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphbuilder/curve/NURBSpline$b;
    }
.end annotation


# static fields
.field public static final m:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/graphbuilder/curve/NURBSpline$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final j:Lcom/graphbuilder/curve/NURBSpline$b;

.field public k:Lcom/graphbuilder/curve/ValueVector;

.field public l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphbuilder/curve/NURBSpline$a;

    invoke-direct {v0}, Lcom/graphbuilder/curve/NURBSpline$a;-><init>()V

    sput-object v0, Lcom/graphbuilder/curve/NURBSpline;->m:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/graphbuilder/curve/BSpline;-><init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V

    sget-object p1, Lcom/graphbuilder/curve/NURBSpline;->m:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphbuilder/curve/NURBSpline$b;

    iput-object p1, p0, Lcom/graphbuilder/curve/NURBSpline;->j:Lcom/graphbuilder/curve/NURBSpline$b;

    new-instance p1, Lcom/graphbuilder/curve/ValueVector;

    const/4 p2, 0x4

    new-array v0, p2, [D

    fill-array-data v0, :array_0

    invoke-direct {p1, v0, p2}, Lcom/graphbuilder/curve/ValueVector;-><init>([DI)V

    iput-object p1, p0, Lcom/graphbuilder/curve/NURBSpline;->k:Lcom/graphbuilder/curve/ValueVector;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/graphbuilder/curve/NURBSpline;->l:Z

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public appendTo(Lcom/graphbuilder/curve/MultiPath;)V
    .locals 7

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    iget-object v1, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/ControlPath;->numPoints()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/graphbuilder/curve/GroupIterator;->isInRange(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0}, Lcom/graphbuilder/curve/GroupIterator;->getGroupSize()I

    move-result v0

    iget-object v1, p0, Lcom/graphbuilder/curve/NURBSpline;->j:Lcom/graphbuilder/curve/NURBSpline$b;

    invoke-static {v1}, Lcom/graphbuilder/curve/NURBSpline$b;->a(Lcom/graphbuilder/curve/NURBSpline$b;)[D

    move-result-object v1

    array-length v1, v1

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lcom/graphbuilder/curve/NURBSpline;->j:Lcom/graphbuilder/curve/NURBSpline$b;

    mul-int/lit8 v3, v0, 0x2

    new-array v4, v3, [D

    invoke-static {v1, v4}, Lcom/graphbuilder/curve/NURBSpline$b;->b(Lcom/graphbuilder/curve/NURBSpline$b;[D)[D

    iget-object v1, p0, Lcom/graphbuilder/curve/NURBSpline;->j:Lcom/graphbuilder/curve/NURBSpline$b;

    new-array v3, v3, [D

    invoke-static {v1, v3}, Lcom/graphbuilder/curve/NURBSpline$b;->d(Lcom/graphbuilder/curve/NURBSpline$b;[D)[D

    :cond_0
    iget-boolean v1, p0, Lcom/graphbuilder/curve/NURBSpline;->l:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/graphbuilder/curve/NURBSpline;->k:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/ValueVector;->size()I

    move-result v1

    if-ne v1, v0, :cond_2

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v1, p0, Lcom/graphbuilder/curve/NURBSpline;->j:Lcom/graphbuilder/curve/NURBSpline$b;

    invoke-static {v1}, Lcom/graphbuilder/curve/NURBSpline$b;->c(Lcom/graphbuilder/curve/NURBSpline$b;)[D

    move-result-object v1

    iget-object v3, p0, Lcom/graphbuilder/curve/NURBSpline;->k:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v3, v2}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v3

    aput-wide v3, v1, v2

    iget-object v1, p0, Lcom/graphbuilder/curve/NURBSpline;->j:Lcom/graphbuilder/curve/NURBSpline$b;

    invoke-static {v1}, Lcom/graphbuilder/curve/NURBSpline$b;->c(Lcom/graphbuilder/curve/NURBSpline$b;)[D

    move-result-object v1

    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmpg-double v1, v3, v5

    if-ltz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative weight not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weightVector.size("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/graphbuilder/curve/NURBSpline;->k:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {p0}, Lcom/graphbuilder/curve/ValueVector;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") != group iterator size("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v1, p0, Lcom/graphbuilder/curve/NURBSpline;->j:Lcom/graphbuilder/curve/NURBSpline$b;

    invoke-static {v1}, Lcom/graphbuilder/curve/NURBSpline$b;->c(Lcom/graphbuilder/curve/NURBSpline$b;)[D

    move-result-object v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Lcom/graphbuilder/curve/BSpline;->appendTo(Lcom/graphbuilder/curve/MultiPath;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Group iterator not in range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public eval([D)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-wide v3, v1, v2

    iget-object v5, v0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v5}, Lcom/graphbuilder/curve/GroupIterator;->getGroupSize()I

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-wide v10, v6

    move v9, v8

    :goto_0
    if-ge v9, v5, :cond_0

    iget-object v12, v0, Lcom/graphbuilder/curve/NURBSpline;->j:Lcom/graphbuilder/curve/NURBSpline$b;

    invoke-static {v12}, Lcom/graphbuilder/curve/NURBSpline$b;->a(Lcom/graphbuilder/curve/NURBSpline$b;)[D

    move-result-object v12

    invoke-virtual {v0, v3, v4, v9}, Lcom/graphbuilder/curve/BSpline;->N(DI)D

    move-result-wide v13

    iget-object v15, v0, Lcom/graphbuilder/curve/NURBSpline;->j:Lcom/graphbuilder/curve/NURBSpline$b;

    invoke-static {v15}, Lcom/graphbuilder/curve/NURBSpline$b;->c(Lcom/graphbuilder/curve/NURBSpline$b;)[D

    move-result-object v15

    aget-wide v15, v15, v9

    mul-double/2addr v13, v15

    aput-wide v13, v12, v9

    iget-object v12, v0, Lcom/graphbuilder/curve/NURBSpline;->j:Lcom/graphbuilder/curve/NURBSpline$b;

    invoke-static {v12}, Lcom/graphbuilder/curve/NURBSpline$b;->a(Lcom/graphbuilder/curve/NURBSpline$b;)[D

    move-result-object v12

    aget-wide v12, v12, v9

    add-double/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    cmpl-double v3, v10, v6

    if-nez v3, :cond_1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    :cond_1
    move v3, v8

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v4, v0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v4, v8, v8}, Lcom/graphbuilder/curve/GroupIterator;->set(II)V

    move-wide v12, v6

    move v4, v8

    :goto_2
    if-ge v4, v5, :cond_2

    iget-object v9, v0, Lcom/graphbuilder/curve/NURBSpline;->j:Lcom/graphbuilder/curve/NURBSpline$b;

    invoke-static {v9}, Lcom/graphbuilder/curve/NURBSpline$b;->a(Lcom/graphbuilder/curve/NURBSpline$b;)[D

    move-result-object v9

    aget-wide v14, v9, v4

    iget-object v9, v0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    iget-object v6, v0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v6}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    move-result v6

    invoke-virtual {v9, v6}, Lcom/graphbuilder/curve/ControlPath;->getPoint(I)Lcom/graphbuilder/curve/Point;

    move-result-object v6

    invoke-interface {v6}, Lcom/graphbuilder/curve/Point;->getLocation()[D

    move-result-object v6

    aget-wide v6, v6, v3

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v6, 0x0

    goto :goto_2

    :cond_2
    div-double/2addr v12, v10

    aput-wide v12, v1, v3

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v6, 0x0

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getUseWeightVector()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphbuilder/curve/NURBSpline;->l:Z

    return p0
.end method

.method public getWeightVector()Lcom/graphbuilder/curve/ValueVector;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/NURBSpline;->k:Lcom/graphbuilder/curve/ValueVector;

    return-object p0
.end method

.method public resetMemory()V
    .locals 3

    invoke-super {p0}, Lcom/graphbuilder/curve/BSpline;->resetMemory()V

    iget-object v0, p0, Lcom/graphbuilder/curve/NURBSpline;->j:Lcom/graphbuilder/curve/NURBSpline$b;

    invoke-static {v0}, Lcom/graphbuilder/curve/NURBSpline$b;->a(Lcom/graphbuilder/curve/NURBSpline$b;)[D

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/graphbuilder/curve/NURBSpline;->j:Lcom/graphbuilder/curve/NURBSpline$b;

    const/4 v1, 0x0

    new-array v2, v1, [D

    invoke-static {v0, v2}, Lcom/graphbuilder/curve/NURBSpline$b;->b(Lcom/graphbuilder/curve/NURBSpline$b;[D)[D

    iget-object p0, p0, Lcom/graphbuilder/curve/NURBSpline;->j:Lcom/graphbuilder/curve/NURBSpline$b;

    new-array v0, v1, [D

    invoke-static {p0, v0}, Lcom/graphbuilder/curve/NURBSpline$b;->d(Lcom/graphbuilder/curve/NURBSpline$b;[D)[D

    :cond_0
    return-void
.end method

.method public setUseWeightVector(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphbuilder/curve/NURBSpline;->l:Z

    return-void
.end method

.method public setWeightVector(Lcom/graphbuilder/curve/ValueVector;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/graphbuilder/curve/NURBSpline;->k:Lcom/graphbuilder/curve/ValueVector;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Weight-vector cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
