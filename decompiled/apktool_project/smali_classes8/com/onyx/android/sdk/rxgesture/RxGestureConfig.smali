.class public final Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008-\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008/\n\u0002\u0010\u0007\n\u0002\u0008\u001d\u0018\u00002\u00020\u0001B\t\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\"\u0010\u0010\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0004\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\"\u0010\u0013\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0004\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0004\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\"\u0010\u001c\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0004\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R\"\u0010\u001f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0004\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R\"\u0010\"\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u0004\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R\"\u0010%\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u0004\u001a\u0004\u0008%\u0010\u0006\"\u0004\u0008&\u0010\u0008R\"\u0010(\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u0004\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008R\"\u0010+\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u0004\u001a\u0004\u0008+\u0010\u0006\"\u0004\u0008,\u0010\u0008R\"\u0010.\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010\u0004\u001a\u0004\u0008.\u0010\u0006\"\u0004\u0008/\u0010\u0008R\"\u00107\u001a\u0002008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\"\u0010?\u001a\u0002088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\"\u0010C\u001a\u0002008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u00102\u001a\u0004\u0008A\u00104\"\u0004\u0008B\u00106R\"\u0010G\u001a\u0002008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u00102\u001a\u0004\u0008E\u00104\"\u0004\u0008F\u00106R\"\u0010K\u001a\u0002008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u00102\u001a\u0004\u0008I\u00104\"\u0004\u0008J\u00106R\"\u0010O\u001a\u0002088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010:\u001a\u0004\u0008M\u0010<\"\u0004\u0008N\u0010>R\"\u0010S\u001a\u0002088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010:\u001a\u0004\u0008Q\u0010<\"\u0004\u0008R\u0010>R\"\u0010W\u001a\u0002088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010:\u001a\u0004\u0008U\u0010<\"\u0004\u0008V\u0010>R\"\u0010[\u001a\u0002008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008X\u00102\u001a\u0004\u0008Y\u00104\"\u0004\u0008Z\u00106R\"\u0010_\u001a\u0002088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\\\u0010:\u001a\u0004\u0008]\u0010<\"\u0004\u0008^\u0010>R\"\u0010c\u001a\u0002088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008`\u0010:\u001a\u0004\u0008a\u0010<\"\u0004\u0008b\u0010>R\"\u0010g\u001a\u0002088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008d\u0010:\u001a\u0004\u0008e\u0010<\"\u0004\u0008f\u0010>R\"\u0010o\u001a\u00020h8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008i\u0010j\u001a\u0004\u0008k\u0010l\"\u0004\u0008m\u0010nR\"\u0010s\u001a\u0002088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008p\u0010:\u001a\u0004\u0008q\u0010<\"\u0004\u0008r\u0010>R\"\u0010w\u001a\u0002088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008t\u0010:\u001a\u0004\u0008u\u0010<\"\u0004\u0008v\u0010>R\"\u0010{\u001a\u0002008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008x\u00102\u001a\u0004\u0008y\u00104\"\u0004\u0008z\u00106R\"\u0010\u007f\u001a\u0002008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008|\u00102\u001a\u0004\u0008}\u00104\"\u0004\u0008~\u00106R%\u0010\u0082\u0001\u001a\u0002088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008j\u0010:\u001a\u0005\u0008\u0080\u0001\u0010<\"\u0005\u0008\u0081\u0001\u0010>\u00a8\u0006\u0085\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;",
        "",
        "",
        "a",
        "Z",
        "isEnableMoveGesture",
        "()Z",
        "setEnableMoveGesture",
        "(Z)V",
        "b",
        "isEnableFlingGesture",
        "setEnableFlingGesture",
        "c",
        "isEnableScaleGesture",
        "setEnableScaleGesture",
        "d",
        "isEnableCommonGesture",
        "setEnableCommonGesture",
        "e",
        "isEnableNoGesture",
        "setEnableNoGesture",
        "f",
        "isEnableDoubleGesture",
        "setEnableDoubleGesture",
        "g",
        "isEnableLongPressGesture",
        "setEnableLongPressGesture",
        "h",
        "isEnabledPenTouch",
        "setEnabledPenTouch",
        "i",
        "isEnabledMultiTouch",
        "setEnabledMultiTouch",
        "j",
        "isEnabledPalmReject",
        "setEnabledPalmReject",
        "k",
        "isEnableFilterOnHover",
        "setEnableFilterOnHover",
        "l",
        "isEnableTwoMoveGesture",
        "setEnableTwoMoveGesture",
        "m",
        "isEnableMultiClick",
        "setEnableMultiClick",
        "n",
        "isEnableScaleSpanCheck",
        "setEnableScaleSpanCheck",
        "",
        "o",
        "I",
        "getMultiMoveDistanceThreshold",
        "()I",
        "setMultiMoveDistanceThreshold",
        "(I)V",
        "multiMoveDistanceThreshold",
        "",
        "p",
        "J",
        "getMultiMoveTimeThreshold",
        "()J",
        "setMultiMoveTimeThreshold",
        "(J)V",
        "multiMoveTimeThreshold",
        "q",
        "getSingleMoveDistanceThreshold",
        "setSingleMoveDistanceThreshold",
        "singleMoveDistanceThreshold",
        "r",
        "getSingleMoveDistanceThresholdShort",
        "setSingleMoveDistanceThresholdShort",
        "singleMoveDistanceThresholdShort",
        "s",
        "getSingleTapDistanceThreshold",
        "setSingleTapDistanceThreshold",
        "singleTapDistanceThreshold",
        "t",
        "getSingleTapTimeMsMax",
        "setSingleTapTimeMsMax",
        "singleTapTimeMsMax",
        "u",
        "getSingleTapTimeMsMin",
        "setSingleTapTimeMsMin",
        "singleTapTimeMsMin",
        "v",
        "getSingleTapConfirmedTimeMsThreshold",
        "setSingleTapConfirmedTimeMsThreshold",
        "singleTapConfirmedTimeMsThreshold",
        "w",
        "getDoubleTapDistanceThreshold",
        "setDoubleTapDistanceThreshold",
        "doubleTapDistanceThreshold",
        "x",
        "getDoubleTapTimeMsThreshold",
        "setDoubleTapTimeMsThreshold",
        "doubleTapTimeMsThreshold",
        "y",
        "getSingleMoveTimeThreshold",
        "setSingleMoveTimeThreshold",
        "singleMoveTimeThreshold",
        "z",
        "getPenLeaveTimeThreshold",
        "setPenLeaveTimeThreshold",
        "penLeaveTimeThreshold",
        "",
        "A",
        "F",
        "getScaleFactorIntervalThreshold",
        "()F",
        "setScaleFactorIntervalThreshold",
        "(F)V",
        "scaleFactorIntervalThreshold",
        "B",
        "getScaleIntervalTimeMs",
        "setScaleIntervalTimeMs",
        "scaleIntervalTimeMs",
        "C",
        "getMoveIntervalTimeMs",
        "setMoveIntervalTimeMs",
        "moveIntervalTimeMs",
        "D",
        "getMoveDistanceThreshold",
        "setMoveDistanceThreshold",
        "moveDistanceThreshold",
        "E",
        "getLongPressMoveDistanceThreshold",
        "setLongPressMoveDistanceThreshold",
        "longPressMoveDistanceThreshold",
        "getLongPressTime",
        "setLongPressTime",
        "longPressTime",
        "<init>",
        "()V",
        "sdk-rxgesture_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public A:F

.field public B:J

.field public C:J

.field public D:I

.field public E:I

.field public F:J

.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:J

.field public q:I

.field public r:I

.field public s:I

.field public t:J

.field public u:J

.field public v:J

.field public w:I

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->i:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->j:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->k:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->m:Z

    const/16 v0, 0x96

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->o:I

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->p:J

    const/16 v0, 0x1e

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->q:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->r:I

    sget-object v1, Lcom/onyx/android/sdk/rxgesture/RxGestureConstant;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureConstant;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConstant;->getSINGLE_TAP_DISTANCE_THRESHOLD()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->s:I

    const-wide/16 v2, 0x4b0

    iput-wide v2, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->t:J

    const-wide/16 v4, 0x1e

    iput-wide v4, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->u:J

    iput-wide v2, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->v:J

    invoke-virtual {v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConstant;->getDOUBLE_TAP_DISTANCE_THRESHOLD()I

    move-result v1

    iput v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->w:I

    iput-wide v2, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->x:J

    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->y:J

    const-wide/16 v1, 0x14

    iput-wide v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->z:J

    const v1, 0x3cf5c28f    # 0.03f

    iput v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->A:F

    const-wide/16 v1, 0x32

    iput-wide v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->B:J

    const-wide/16 v1, 0x50

    iput-wide v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->C:J

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->D:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->E:I

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->F:J

    return-void
.end method


# virtual methods
.method public final getDoubleTapDistanceThreshold()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->w:I

    return p0
.end method

.method public final getDoubleTapTimeMsThreshold()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->x:J

    return-wide v0
.end method

.method public final getLongPressMoveDistanceThreshold()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->E:I

    return p0
.end method

.method public final getLongPressTime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->F:J

    return-wide v0
.end method

.method public final getMoveDistanceThreshold()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->D:I

    return p0
.end method

.method public final getMoveIntervalTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->C:J

    return-wide v0
.end method

.method public final getMultiMoveDistanceThreshold()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->o:I

    return p0
.end method

.method public final getMultiMoveTimeThreshold()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->p:J

    return-wide v0
.end method

.method public final getPenLeaveTimeThreshold()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->z:J

    return-wide v0
.end method

.method public final getScaleFactorIntervalThreshold()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->A:F

    return p0
.end method

.method public final getScaleIntervalTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->B:J

    return-wide v0
.end method

.method public final getSingleMoveDistanceThreshold()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->q:I

    return p0
.end method

.method public final getSingleMoveDistanceThresholdShort()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->r:I

    return p0
.end method

.method public final getSingleMoveTimeThreshold()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->y:J

    return-wide v0
.end method

.method public final getSingleTapConfirmedTimeMsThreshold()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->v:J

    return-wide v0
.end method

.method public final getSingleTapDistanceThreshold()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->s:I

    return p0
.end method

.method public final getSingleTapTimeMsMax()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->t:J

    return-wide v0
.end method

.method public final getSingleTapTimeMsMin()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->u:J

    return-wide v0
.end method

.method public final isEnableCommonGesture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->d:Z

    return p0
.end method

.method public final isEnableDoubleGesture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->f:Z

    return p0
.end method

.method public final isEnableFilterOnHover()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->k:Z

    return p0
.end method

.method public final isEnableFlingGesture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->b:Z

    return p0
.end method

.method public final isEnableLongPressGesture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->g:Z

    return p0
.end method

.method public final isEnableMoveGesture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->a:Z

    return p0
.end method

.method public final isEnableMultiClick()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->m:Z

    return p0
.end method

.method public final isEnableNoGesture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->e:Z

    return p0
.end method

.method public final isEnableScaleGesture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->c:Z

    return p0
.end method

.method public final isEnableScaleSpanCheck()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->n:Z

    return p0
.end method

.method public final isEnableTwoMoveGesture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->l:Z

    return p0
.end method

.method public final isEnabledMultiTouch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->i:Z

    return p0
.end method

.method public final isEnabledPalmReject()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->j:Z

    return p0
.end method

.method public final isEnabledPenTouch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->h:Z

    return p0
.end method

.method public final setDoubleTapDistanceThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->w:I

    return-void
.end method

.method public final setDoubleTapTimeMsThreshold(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->x:J

    return-void
.end method

.method public final setEnableCommonGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->d:Z

    return-void
.end method

.method public final setEnableDoubleGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->f:Z

    return-void
.end method

.method public final setEnableFilterOnHover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->k:Z

    return-void
.end method

.method public final setEnableFlingGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->b:Z

    return-void
.end method

.method public final setEnableLongPressGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->g:Z

    return-void
.end method

.method public final setEnableMoveGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->a:Z

    return-void
.end method

.method public final setEnableMultiClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->m:Z

    return-void
.end method

.method public final setEnableNoGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->e:Z

    return-void
.end method

.method public final setEnableScaleGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->c:Z

    return-void
.end method

.method public final setEnableScaleSpanCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->n:Z

    return-void
.end method

.method public final setEnableTwoMoveGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->l:Z

    return-void
.end method

.method public final setEnabledMultiTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->i:Z

    return-void
.end method

.method public final setEnabledPalmReject(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->j:Z

    return-void
.end method

.method public final setEnabledPenTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->h:Z

    return-void
.end method

.method public final setLongPressMoveDistanceThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->E:I

    return-void
.end method

.method public final setLongPressTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->F:J

    return-void
.end method

.method public final setMoveDistanceThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->D:I

    return-void
.end method

.method public final setMoveIntervalTimeMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->C:J

    return-void
.end method

.method public final setMultiMoveDistanceThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->o:I

    return-void
.end method

.method public final setMultiMoveTimeThreshold(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->p:J

    return-void
.end method

.method public final setPenLeaveTimeThreshold(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->z:J

    return-void
.end method

.method public final setScaleFactorIntervalThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->A:F

    return-void
.end method

.method public final setScaleIntervalTimeMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->B:J

    return-void
.end method

.method public final setSingleMoveDistanceThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->q:I

    return-void
.end method

.method public final setSingleMoveDistanceThresholdShort(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->r:I

    return-void
.end method

.method public final setSingleMoveTimeThreshold(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->y:J

    return-void
.end method

.method public final setSingleTapConfirmedTimeMsThreshold(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->v:J

    return-void
.end method

.method public final setSingleTapDistanceThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->s:I

    return-void
.end method

.method public final setSingleTapTimeMsMax(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->t:J

    return-void
.end method

.method public final setSingleTapTimeMsMin(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->u:J

    return-void
.end method
