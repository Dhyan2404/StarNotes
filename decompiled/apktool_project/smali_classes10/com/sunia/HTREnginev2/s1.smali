.class public Lcom/sunia/HTREnginev2/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/sunia/HTREnginev2/s1;->a:F

    .line 3
    iput p2, p0, Lcom/sunia/HTREnginev2/s1;->b:F

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-float p1, p1

    .line 5
    iput p1, p0, Lcom/sunia/HTREnginev2/s1;->a:F

    int-to-float p1, p2

    .line 6
    iput p1, p0, Lcom/sunia/HTREnginev2/s1;->b:F

    return-void
.end method

.method public static a(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)D
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p0

    sub-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b()F
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/s1;->a:F

    return p0
.end method

.method public c()F
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/s1;->b:F

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/sunia/HTREnginev2/s1;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sunia/HTREnginev2/s1;

    iget v0, p1, Lcom/sunia/HTREnginev2/s1;->a:F

    iget v1, p0, Lcom/sunia/HTREnginev2/s1;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p1, p1, Lcom/sunia/HTREnginev2/s1;->b:F

    iget p0, p0, Lcom/sunia/HTREnginev2/s1;->b:F

    cmpl-float p0, p1, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/s1;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0xeb

    mul-int/lit8 v0, v0, 0x2f

    iget p0, p0, Lcom/sunia/HTREnginev2/s1;->b:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/HTREnginev2/s1;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sunia/HTREnginev2/s1;->b:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
