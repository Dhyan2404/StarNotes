.class public Lcom/github/mikephil/charting/data/filter/Approximator$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/data/filter/Approximator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:[F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public final synthetic g:Lcom/github/mikephil/charting/data/filter/Approximator;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/data/filter/Approximator;FFFF)V
    .locals 2

    iput-object p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$a;->g:Lcom/github/mikephil/charting/data/filter/Approximator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-float p1, p2, p4

    iput p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$a;->d:F

    sub-float v0, p3, p5

    iput v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator$a;->e:F

    mul-float v1, p2, p5

    iput v1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$a;->b:F

    mul-float v1, p4, p3

    iput v1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$a;->c:F

    mul-float/2addr p1, p1

    mul-float/2addr v0, v0

    add-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$a;->f:F

    const/4 p1, 0x4

    new-array p1, p1, [F

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput p3, p1, p2

    const/4 p2, 0x2

    aput p4, p1, p2

    const/4 p2, 0x3

    aput p5, p1, p2

    iput-object p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$a;->a:[F

    return-void
.end method


# virtual methods
.method public a(FF)F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator$a;->e:F

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$a;->d:F

    mul-float/2addr p1, p2

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$a;->b:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$a;->c:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/github/mikephil/charting/data/filter/Approximator$a;->f:F

    div-float/2addr p1, p0

    return p1
.end method

.method public b()[F
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/data/filter/Approximator$a;->a:[F

    return-object p0
.end method
