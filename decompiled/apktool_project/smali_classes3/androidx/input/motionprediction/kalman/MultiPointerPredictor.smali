.class public Landroidx/input/motionprediction/kalman/MultiPointerPredictor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/input/motionprediction/kalman/KalmanPredictor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "MultiPointerPredictor"

.field public static final d:Z


# instance fields
.field public final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/input/motionprediction/kalman/SinglePointerPredictor;",
            ">;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MultiPointerPredictor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->b:I

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v0, p1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    iget-object p0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    goto :goto_2

    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;

    if-eqz v0, :cond_8

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v0, p1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    :goto_0
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;

    invoke-virtual {v0, p1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    :goto_1
    new-instance v0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;-><init>(II)V

    iget v1, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->b:I

    if-lez v1, :cond_7

    invoke-virtual {v0, v1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->setReportRate(I)V

    :cond_7
    invoke-virtual {v0, p1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    :goto_2
    return v3
.end method

.method public predict(I)Landroid/view/MotionEvent;
    .locals 23
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v2, 0x0

    const-string v15, "MultiPointerPredictor"

    if-nez v8, :cond_1

    sget-boolean v0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "predict() -> null: no pointer on screen"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v2

    :cond_1
    const/4 v14, 0x0

    const/4 v13, 0x1

    if-ne v8, v13, :cond_3

    iget-object v0, v0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;

    invoke-virtual {v0, v1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->predict(I)Landroid/view/MotionEvent;

    move-result-object v0

    sget-boolean v1, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->d:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "predict() -> MotionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    :cond_3
    new-array v3, v8, [I

    new-array v4, v8, [Landroid/view/MotionEvent;

    move v5, v14

    :goto_0
    if-ge v5, v8, :cond_4

    iget-object v6, v0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->a:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v3, v5

    iget-object v6, v0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->a:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;

    invoke-virtual {v6, v1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->predict(I)Landroid/view/MotionEvent;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const v0, 0x7fffffff

    move v1, v14

    :goto_1
    if-ge v1, v8, :cond_7

    aget-object v5, v4, v1

    if-nez v5, :cond_5

    move v1, v13

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    if-ge v6, v0, :cond_6

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    move v1, v14

    :goto_2
    if-eqz v1, :cond_a

    :goto_3
    if-ge v14, v8, :cond_9

    aget-object v0, v4, v14

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_9
    return-object v2

    :cond_a
    add-int/2addr v0, v13

    filled-new-array {v0, v8}, [I

    move-result-object v1

    const-class v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/view/MotionEvent$PointerCoords;

    move v2, v14

    :goto_4
    if-ge v2, v8, :cond_d

    aget-object v5, v4, v2

    invoke-static {v5}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;->iterate(Landroid/view/MotionEvent;)Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v14

    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;

    aget-object v9, v1, v6

    iget-object v7, v7, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;->coords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, v14

    aput-object v7, v9, v2

    add-int/2addr v6, v13

    if-gt v0, v6, :cond_b

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    move v2, v14

    :goto_5
    if-ge v2, v8, :cond_e

    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    new-array v9, v8, [Landroid/view/MotionEvent$PointerProperties;

    move v2, v14

    :goto_6
    if-ge v2, v8, :cond_f

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v9, v2

    aget v5, v3, v2

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_f
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    aget-object v10, v1, v14

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, v13

    move v13, v2

    move v2, v14

    move/from16 v14, v16

    move-object/from16 v22, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v3

    move/from16 v13, v21

    :goto_7
    if-ge v13, v0, :cond_10

    const-wide/16 v4, 0x0

    aget-object v6, v1, v13

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/view/MotionEvent;->addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_10
    sget-boolean v0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->d:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "predict() -> MotionEvent: (pointerCount=%d, historySize=%d);"

    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;->iterate(Landroid/view/MotionEvent;)Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;

    const-string v5, "      "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;->coords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v5, v4

    move v14, v2

    :goto_9
    if-ge v14, v5, :cond_11

    aget-object v6, v4, v14

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v8, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v8, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "(%f, %f)"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_11
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-object v3
.end method

.method public setReportRate(I)V
    .locals 2

    if-lez p1, :cond_1

    iput p1, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->b:I

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;

    iget v1, p0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->b:I

    invoke-virtual {v0, v1}, Landroidx/input/motionprediction/kalman/SinglePointerPredictor;->setReportRate(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "reportRateMs should always be a strictlypositive number"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
