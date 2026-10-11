.class public Lcom/samsung/android/sdk/penremote/SpenEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/penremote/SpenEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_AIR_MOTION:I = 0x1

.field public static final TYPE_BUTTON:I


# instance fields
.field private mTimeStamp:J

.field private mValues:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/penremote/SpenEvent$a;

    invoke-direct {v0}, Lcom/samsung/android/sdk/penremote/SpenEvent$a;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/penremote/SpenEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/samsung/android/sdk/penremote/SpenEvent;->mValues:[F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/penremote/SpenEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/penremote/SpenEvent;->mTimeStamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenEvent;->mValues:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/penremote/SpenEvent;->mTimeStamp:J

    return-wide v0
.end method

.method public getValue(I)F
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/sdk/penremote/SpenEvent;->mValues:[F

    array-length v0, p0

    if-gt v0, p1, :cond_0

    const p0, -0x3194865d

    return p0

    :cond_0
    aget p0, p0, p1

    return p0
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/penremote/SpenEvent;->mTimeStamp:J

    return-void
.end method

.method public setValue(IF)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/penremote/SpenEvent;->mValues:[F

    aput p2, p0, p1

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/penremote/SpenEvent;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/samsung/android/sdk/penremote/SpenEvent;->mValues:[F

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/samsung/android/sdk/penremote/SpenEvent;->mValues:[F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
