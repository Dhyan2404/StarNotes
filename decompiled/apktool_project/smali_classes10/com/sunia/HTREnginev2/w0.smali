.class public Lcom/sunia/HTREnginev2/w0;
.super Lcom/sunia/HTREnginev2/s1;
.source "SourceFile"


# instance fields
.field public final c:J

.field public final d:F

.field public final e:F

.field public final f:F


# direct methods
.method public constructor <init>(FFJFFF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    iput-wide p3, p0, Lcom/sunia/HTREnginev2/w0;->c:J

    iput p5, p0, Lcom/sunia/HTREnginev2/w0;->d:F

    iput p6, p0, Lcom/sunia/HTREnginev2/w0;->e:F

    iput p7, p0, Lcom/sunia/HTREnginev2/w0;->f:F

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/w0;->c:J

    return-wide v0
.end method
