.class public Lcom/sunia/HTREnginev2/sdk/RecognizePoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MOVE:I = 0x1

.field public static final ACTION_UP:I = 0x2


# instance fields
.field public action:I

.field public id:J

.field public offsetX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public offsetY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public p:F

.field public t:J

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>(FFJ)V

    return-void
.end method

.method public constructor <init>(FFFJI)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    .line 7
    iput p2, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    .line 8
    iput-wide p4, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->t:J

    .line 9
    iput p3, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->p:F

    .line 10
    invoke-static {p6}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->androidAction2HWRAction(I)I

    move-result p1

    iput p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->action:I

    return-void
.end method

.method public constructor <init>(FFJ)V
    .locals 6

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>(FFJI)V

    return-void
.end method

.method public constructor <init>(FFJI)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    move v6, p5

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>(FFFJI)V

    return-void
.end method

.method public static androidAction2HWRAction(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method public static motionEventToRecognizePoint(Landroid/view/MotionEvent;)Lcom/sunia/HTREnginev2/sdk/RecognizePoint;
    .locals 3

    new-instance v0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>()V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    iput v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->p:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->t:J

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->androidAction2HWRAction(I)I

    move-result p0

    iput p0, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->action:I

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/sunia/HTREnginev2/sdk/RecognizePoint;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    .line 3
    iget v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    iput v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    .line 4
    iget v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    iput v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    .line 5
    iget-wide v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->t:J

    iput-wide v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->t:J

    .line 6
    iget v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->action:I

    iput v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->action:I

    .line 7
    iget-wide v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->id:J

    iput-wide v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->id:J
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->clone()Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    move-result-object p0

    return-object p0
.end method

.method public down()Lcom/sunia/HTREnginev2/sdk/RecognizePoint;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->action:I

    return-object p0
.end method

.method public move()Lcom/sunia/HTREnginev2/sdk/RecognizePoint;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->action:I

    return-object p0
.end method

.method public offset(FF)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    iget p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    return-void
.end method

.method public setOffset(FF)V
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->offsetX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->offsetX:F

    iget p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->offsetY:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->offsetY:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognizePoint{ACTION_DOWN=0, ACTION_MOVE=1, ACTION_UP=2, x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public up()Lcom/sunia/HTREnginev2/sdk/RecognizePoint;
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->action:I

    return-object p0
.end method
