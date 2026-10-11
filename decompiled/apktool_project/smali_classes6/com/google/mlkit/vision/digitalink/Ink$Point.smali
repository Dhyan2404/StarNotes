.class public abstract Lcom/google/mlkit/vision/digitalink/Ink$Point;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/digitalink/Ink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Point"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(FF)Lcom/google/mlkit/vision/digitalink/Ink$Point;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/mlkit/vision/digitalink/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/mlkit/vision/digitalink/c;-><init>(FFLjava/lang/Long;)V

    return-object v0
.end method

.method public static create(FFJ)Lcom/google/mlkit/vision/digitalink/Ink$Point;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/google/mlkit/vision/digitalink/c;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/mlkit/vision/digitalink/c;-><init>(FFLjava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public abstract getTimestamp()Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getX()F
.end method

.method public abstract getY()F
.end method
