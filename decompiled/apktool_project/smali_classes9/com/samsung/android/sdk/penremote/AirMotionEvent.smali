.class public Lcom/samsung/android/sdk/penremote/AirMotionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1


# instance fields
.field public a:F

.field public b:F

.field public c:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/penremote/SpenEvent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/penremote/SpenEvent;->getValue(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/penremote/AirMotionEvent;->a:F

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/penremote/SpenEvent;->getValue(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/penremote/AirMotionEvent;->b:F

    invoke-virtual {p1}, Lcom/samsung/android/sdk/penremote/SpenEvent;->getTimeStamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/penremote/AirMotionEvent;->c:J

    return-void
.end method


# virtual methods
.method public getDeltaX()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/penremote/AirMotionEvent;->a:F

    return p0
.end method

.method public getDeltaY()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/penremote/AirMotionEvent;->b:F

    return p0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/penremote/AirMotionEvent;->c:J

    return-wide v0
.end method
