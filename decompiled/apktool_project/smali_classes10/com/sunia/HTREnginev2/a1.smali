.class public Lcom/sunia/HTREnginev2/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/a1;->a:J

    iput-wide p3, p0, Lcom/sunia/HTREnginev2/a1;->b:J

    return-void
.end method

.method public static a(JJ)Lcom/sunia/HTREnginev2/a1;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    neg-long p0, p0

    neg-long p2, p2

    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_1

    const-wide/32 v2, -0x80000000

    cmp-long v2, p0, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x1

    cmp-long v2, p2, v2

    if-ltz v2, :cond_1

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lcom/sunia/HTREnginev2/a1;->c(JJ)J

    move-result-wide v0

    .line 3
    new-instance v2, Lcom/sunia/HTREnginev2/a1;

    div-long/2addr p0, v0

    div-long/2addr p2, v0

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/a1;-><init>(JJ)V

    return-object v2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(JJ)J
    .locals 4

    rem-long/2addr p0, p2

    :goto_0
    move-wide v2, p0

    move-wide p0, p2

    move-wide p2, v2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    rem-long/2addr p0, p2

    goto :goto_0

    :cond_0
    return-wide p0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/sunia/HTREnginev2/a1;->b:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/a1;->a:J

    return-wide v0
.end method
