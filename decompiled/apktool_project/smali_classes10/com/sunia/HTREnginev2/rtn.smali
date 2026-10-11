.class public final Lcom/sunia/HTREnginev2/rtn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:S

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(SIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/sunia/HTREnginev2/rtn;->a:S

    iput p2, p0, Lcom/sunia/HTREnginev2/rtn;->b:I

    iput-wide p3, p0, Lcom/sunia/HTREnginev2/rtn;->c:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sunia/HTREnginev2/rtn;

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/sunia/HTREnginev2/rtn;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/rtn;->c:J

    iget-wide v3, p1, Lcom/sunia/HTREnginev2/rtn;->c:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-short v1, p0, Lcom/sunia/HTREnginev2/rtn;->a:S

    iget-short v2, p1, Lcom/sunia/HTREnginev2/rtn;->a:S

    if-ne v1, v2, :cond_0

    iget p0, p0, Lcom/sunia/HTREnginev2/rtn;->b:I

    iget p1, p1, Lcom/sunia/HTREnginev2/rtn;->b:I

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/rtn;->c:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/sunia/HTREnginev2/rtn;->b:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget-short p0, p0, Lcom/sunia/HTREnginev2/rtn;->a:S

    mul-int/lit8 p0, p0, 0x61

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/sunia/HTREnginev2/rtn;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lcom/sunia/HTREnginev2/rtn;->a:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/rtn;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Unknown(%d)@%08x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-short v0, p0, Lcom/sunia/HTREnginev2/rtn;->a:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iget v1, p0, Lcom/sunia/HTREnginev2/rtn;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/rtn;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Unknown(%d)[%d]@%08x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
