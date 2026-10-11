.class public Lcom/vivo/penalgoengine/entity/TouchPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vivo/penalgoengine/entity/TouchPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:I

.field private pressure:F

.field private time:J

.field private type:I

.field private x:F

.field private y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vivo/penalgoengine/entity/TouchPoint$a;

    invoke-direct {v0}, Lcom/vivo/penalgoengine/entity/TouchPoint$a;-><init>()V

    sput-object v0, Lcom/vivo/penalgoengine/entity/TouchPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->type:I

    return-void
.end method

.method public constructor <init>(IIFFFJ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->action:I

    .line 13
    iput p2, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->type:I

    .line 14
    iput p3, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->x:F

    .line 15
    iput p4, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->y:F

    .line 16
    iput p5, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->pressure:F

    .line 17
    iput-wide p6, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->time:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->type:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->action:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->type:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->x:F

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->y:F

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->pressure:F

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->time:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAction()I
    .locals 0

    iget p0, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->action:I

    return p0
.end method

.method public getPressure()F
    .locals 0

    iget p0, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->pressure:F

    return p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->time:J

    return-wide v0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->type:I

    return p0
.end method

.method public getX()F
    .locals 0

    iget p0, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->x:F

    return p0
.end method

.method public getY()F
    .locals 0

    iget p0, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->y:F

    return p0
.end method

.method public setAction(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->action:I

    return-void
.end method

.method public setPressure(F)V
    .locals 0

    iput p1, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->pressure:F

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->time:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->type:I

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchPoint{action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->pressure:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->action:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->x:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->y:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->pressure:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Lcom/vivo/penalgoengine/entity/TouchPoint;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
