.class public Lcom/miui/penengine/f/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:J


# direct methods
.method public constructor <init>(FFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/penengine/f/f;->a:F

    iput p2, p0, Lcom/miui/penengine/f/f;->b:F

    iput-wide p3, p0, Lcom/miui/penengine/f/f;->c:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/penengine/f/f;->c:J

    return-wide v0
.end method

.method public a(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/miui/penengine/f/f;->a:F

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/miui/penengine/f/f;->c:J

    return-void
.end method

.method public b()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/penengine/f/f;->a:F

    return p0
.end method

.method public b(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/miui/penengine/f/f;->b:F

    return-void
.end method

.method public c()F
    .locals 0

    iget p0, p0, Lcom/miui/penengine/f/f;->b:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PredictPoint{x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/penengine/f/f;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/penengine/f/f;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/penengine/f/f;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
