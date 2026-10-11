.class public Lcom/samsung/android/sdk/penremote/ButtonEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_UP:I = 0x1

.field public static final c:I


# instance fields
.field public a:I

.field public b:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/penremote/SpenEvent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/penremote/SpenEvent;->getValue(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sdk/penremote/ButtonEvent;->a:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/penremote/SpenEvent;->getTimeStamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/penremote/ButtonEvent;->b:J

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/penremote/ButtonEvent;->a:I

    return p0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/penremote/ButtonEvent;->b:J

    return-wide v0
.end method
