.class public final Lcom/sunia/HTREnginev2/arf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/arf;->a:J

    iput-wide p3, p0, Lcom/sunia/HTREnginev2/arf;->b:J

    iput p5, p0, Lcom/sunia/HTREnginev2/arf;->c:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/arf;->b:J

    return-wide v0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/arf;->c:I

    return p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/arf;->a:J

    return-wide v0
.end method
