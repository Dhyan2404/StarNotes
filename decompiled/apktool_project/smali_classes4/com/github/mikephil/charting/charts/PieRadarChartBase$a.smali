.class public Lcom/github/mikephil/charting/charts/PieRadarChartBase$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/mikephil/charting/charts/PieRadarChartBase;->spin(IFFLcom/github/mikephil/charting/animation/Easing$EasingOption;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/github/mikephil/charting/charts/PieRadarChartBase;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase$a;->e:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase$a;->e:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
