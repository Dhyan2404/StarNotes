.class public Lcom/sunia/HTREnginev2/zzm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/zzm;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/sunia/HTREnginev2/zzm;->b:D

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/zzm;->a:D

    .line 4
    iput-wide v0, p0, Lcom/sunia/HTREnginev2/zzm;->c:D

    .line 5
    iput-wide v0, p0, Lcom/sunia/HTREnginev2/zzm;->d:D

    .line 6
    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/zzm;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/sunia/HTREnginev2/zzm;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/sunia/HTREnginev2/zzm;->c:D

    iget-wide v4, v1, Lcom/sunia/HTREnginev2/zzm;->c:D

    add-double/2addr v4, v2

    iput-wide v4, v0, Lcom/sunia/HTREnginev2/zzm;->c:D

    iget-wide v6, v1, Lcom/sunia/HTREnginev2/zzm;->a:D

    iget-wide v8, v0, Lcom/sunia/HTREnginev2/zzm;->a:D

    sub-double/2addr v6, v8

    iget-wide v10, v1, Lcom/sunia/HTREnginev2/zzm;->b:D

    iget-wide v12, v0, Lcom/sunia/HTREnginev2/zzm;->b:D

    sub-double/2addr v10, v12

    iget-wide v14, v1, Lcom/sunia/HTREnginev2/zzm;->c:D

    mul-double v16, v6, v14

    div-double v16, v16, v4

    add-double v8, v8, v16

    iput-wide v8, v0, Lcom/sunia/HTREnginev2/zzm;->a:D

    mul-double v8, v10, v14

    div-double/2addr v8, v4

    add-double/2addr v12, v8

    iput-wide v12, v0, Lcom/sunia/HTREnginev2/zzm;->b:D

    iget-wide v8, v0, Lcom/sunia/HTREnginev2/zzm;->d:D

    iget-wide v12, v1, Lcom/sunia/HTREnginev2/zzm;->d:D

    mul-double/2addr v2, v14

    div-double/2addr v2, v4

    mul-double/2addr v2, v6

    mul-double/2addr v2, v10

    add-double/2addr v12, v2

    add-double/2addr v8, v12

    iput-wide v8, v0, Lcom/sunia/HTREnginev2/zzm;->d:D

    return-void
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/zzm;->c:D

    return-wide v0
.end method

.method public c()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/zzm;->c:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_1

    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/zzm;->e:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/zzm;->d:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    :goto_0
    div-double/2addr v2, v0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/sunia/HTREnginev2/zzm;->d:D

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/zzm;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public d(DD)V
    .locals 10

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/zzm;->c:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/zzm;->c:D

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/zzm;->a:D

    sub-double/2addr p1, v4

    iget-wide v6, p0, Lcom/sunia/HTREnginev2/zzm;->b:D

    sub-double/2addr p3, v6

    div-double v8, p1, v0

    add-double/2addr v4, v8

    iput-wide v4, p0, Lcom/sunia/HTREnginev2/zzm;->a:D

    div-double v4, p3, v0

    add-double/2addr v6, v4

    iput-wide v6, p0, Lcom/sunia/HTREnginev2/zzm;->b:D

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/zzm;->d:D

    sub-double v2, v0, v2

    div-double/2addr v2, v0

    mul-double/2addr v2, p1

    mul-double/2addr v2, p3

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/sunia/HTREnginev2/zzm;->d:D

    return-void
.end method
