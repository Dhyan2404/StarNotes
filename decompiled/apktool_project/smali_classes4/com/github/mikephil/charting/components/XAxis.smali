.class public Lcom/github/mikephil/charting/components/XAxis;
.super Lcom/github/mikephil/charting/components/AxisBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;
    }
.end annotation


# instance fields
.field public h:Z

.field public i:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

.field public mLabelHeight:I

.field public mLabelRotatedHeight:I

.field public mLabelRotatedWidth:I

.field protected mLabelRotationAngle:F

.field public mLabelWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/github/mikephil/charting/components/AxisBase;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mLabelWidth:I

    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mLabelHeight:I

    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedWidth:I

    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotationAngle:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/XAxis;->h:Z

    sget-object v0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->i:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    return-void
.end method


# virtual methods
.method public getLabelRotationAngle()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotationAngle:F

    return p0
.end method

.method public getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/components/XAxis;->i:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    return-object p0
.end method

.method public isAvoidFirstLastClippingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/XAxis;->h:Z

    return p0
.end method

.method public setAvoidFirstLastClipping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/XAxis;->h:Z

    return-void
.end method

.method public setLabelRotationAngle(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotationAngle:F

    return-void
.end method

.method public setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/components/XAxis;->i:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    return-void
.end method
