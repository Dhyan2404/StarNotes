.class public final Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTION_ALGO_SERVICE:Ljava/lang/String; = "com.vivo.penalgoengine.intent.ACTION_ALGO_SERVICE"

.field private static final RECOGNIZE_MODE_SHAPE:I = 0x1

.field private static final STYLUS_ALGO_PKG_NAME:Ljava/lang/String; = "com.vivo.penalgoengine"

.field private static final TAG:Ljava/lang/String; = "VivoAlgorithmManagerImpl"


# instance fields
.field private mAlgoService:Lcom/vivo/penalgoengine/IAlgoService;

.field private final mContext:Landroid/content/Context;

.field private mHasBond:Z

.field private mInitSuccess:Z

.field private mNeedRebind:Z

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mTrackPredCore:Lcom/vivo/trackpredictor/core/TrackPredCore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl$1;-><init>(Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;)V

    iput-object v0, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mContext:Landroid/content/Context;

    const-string v0, "vivo"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vivo/trackpredictor/core/TrackPredCore;->getInstance()Lcom/vivo/trackpredictor/core/TrackPredCore;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mTrackPredCore:Lcom/vivo/trackpredictor/core/TrackPredCore;

    invoke-virtual {v0, p1}, Lcom/vivo/trackpredictor/core/TrackPredCore;->init(Landroid/content/Context;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mNeedRebind:Z

    invoke-direct {p0}, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->bindServiceIfNeed()V

    iput-boolean p1, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mInitSuccess:Z

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invoke init, result="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mInitSuccess:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VivoAlgorithmManagerImpl"

    invoke-static {p1, p0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mHasBond:Z

    return p1
.end method

.method public static synthetic access$102(Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;Lcom/vivo/penalgoengine/IAlgoService;)Lcom/vivo/penalgoengine/IAlgoService;
    .locals 0

    iput-object p1, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mAlgoService:Lcom/vivo/penalgoengine/IAlgoService;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->bindServiceIfNeed()V

    return-void
.end method

.method private bindServiceIfNeed()V
    .locals 4

    const-string v0, "VivoAlgorithmManagerImpl"

    iget-boolean v1, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mNeedRebind:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mHasBond:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.vivo.penalgoengine.intent.ACTION_ALGO_SERVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.vivo.penalgoengine"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string p0, "bindService"

    invoke-static {v0, p0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "bindService error"

    invoke-static {v0, v1, p0}, Lcom/vivo/penengine/impl/EngineLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public computeEstimatePoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 12

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/vivo/trackpredictor/utils/HwPoint;

    invoke-direct {v0}, Lcom/vivo/trackpredictor/utils/HwPoint;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/trackpredictor/utils/HwPoint;->setActionCode(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/trackpredictor/utils/HwPoint;->setPointX(F)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/trackpredictor/utils/HwPoint;->setPointY(F)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/trackpredictor/utils/HwPoint;->setPressure(F)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/vivo/trackpredictor/utils/HwPoint;->setPointTime(I)V

    invoke-virtual {p0}, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->isEstimateEnable()Z

    move-result v1

    const-string v2, "VivoAlgorithmManagerImpl"

    if-nez v1, :cond_1

    const-string p0, "failed to invoke computeEstimatePoint: estimate disable"

    invoke-static {v2, p0}, Lcom/vivo/penengine/impl/EngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/PointF;

    invoke-virtual {v0}, Lcom/vivo/trackpredictor/utils/HwPoint;->getPointX()F

    move-result p1

    invoke-virtual {v0}, Lcom/vivo/trackpredictor/utils/HwPoint;->getPointY()F

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_1
    const-string v1, "invoke computeEstimatePoint"

    invoke-static {v2, v1}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    sub-int/2addr v2, v4

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v6

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v7

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v8

    new-instance v10, Lcom/vivo/trackpredictor/utils/HwPoint;

    invoke-direct {v10}, Lcom/vivo/trackpredictor/utils/HwPoint;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/vivo/trackpredictor/utils/HwPoint;->setActionCode(I)V

    invoke-virtual {v10, v5}, Lcom/vivo/trackpredictor/utils/HwPoint;->setPointX(F)V

    invoke-virtual {v10, v6}, Lcom/vivo/trackpredictor/utils/HwPoint;->setPointY(F)V

    invoke-virtual {v10, v7}, Lcom/vivo/trackpredictor/utils/HwPoint;->setPressure(F)V

    long-to-int v5, v8

    invoke-virtual {v10, v5}, Lcom/vivo/trackpredictor/utils/HwPoint;->setPointTime(I)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mTrackPredCore:Lcom/vivo/trackpredictor/core/TrackPredCore;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/vivo/trackpredictor/core/TrackPredCore;->doPredict(Ljava/util/List;I)Lcom/vivo/trackpredictor/utils/HwPoint;

    move-result-object p0

    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/vivo/trackpredictor/utils/HwPoint;->getPointX()F

    move-result v0

    invoke-virtual {p0}, Lcom/vivo/trackpredictor/utils/HwPoint;->getPointY()F

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public computeShapeData(Ljava/util/List;)Lcom/vivo/penalgoengine/entity/ShapeData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vivo/penalgoengine/entity/TouchPoint;",
            ">;)",
            "Lcom/vivo/penalgoengine/entity/ShapeData;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->isComputeShapeEnable()Z

    move-result v1

    const-string v2, "VivoAlgorithmManagerImpl"

    if-nez v1, :cond_1

    const-string p0, "failed to invoke computeEstimatePoint: compute disable"

    invoke-static {v2, p0}, Lcom/vivo/penengine/impl/EngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v1, "invoke computeShapeData"

    invoke-static {v2, v1}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mAlgoService:Lcom/vivo/penalgoengine/IAlgoService;

    const/4 v1, 0x1

    invoke-interface {p0, p1, v1}, Lcom/vivo/penalgoengine/IAlgoService;->computeShapeData(Ljava/util/List;I)Lcom/vivo/penalgoengine/entity/ShapeData;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "computeShapeData error"

    invoke-static {v2, p1, p0}, Lcom/vivo/penengine/impl/EngineLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public isComputeShapeEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mInitSuccess:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mAlgoService:Lcom/vivo/penalgoengine/IAlgoService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEstimateEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mInitSuccess:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mTrackPredCore:Lcom/vivo/trackpredictor/core/TrackPredCore;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTablet()Z
    .locals 4

    const-string p0, "VivoAlgorithmManagerImpl"

    :try_start_0
    const-string v0, "android.util.FtDeviceInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDeviceType"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "get device type error."

    invoke-static {p0, v0}, Lcom/vivo/penengine/impl/EngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "phone"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "tablet"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public release()V
    .locals 4

    const-string v0, "VivoAlgorithmManagerImpl"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mNeedRebind:Z

    :try_start_0
    iget-boolean v2, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mHasBond:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "unbind service error"

    invoke-static {v0, v3, v2}, Lcom/vivo/penengine/impl/EngineLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mHasBond:Z

    iget-object v2, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mTrackPredCore:Lcom/vivo/trackpredictor/core/TrackPredCore;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/vivo/trackpredictor/core/TrackPredCore;->release()V

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mTrackPredCore:Lcom/vivo/trackpredictor/core/TrackPredCore;

    iput-boolean v1, p0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;->mInitSuccess:Z

    const-string p0, "invoke release"

    invoke-static {v0, p0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
