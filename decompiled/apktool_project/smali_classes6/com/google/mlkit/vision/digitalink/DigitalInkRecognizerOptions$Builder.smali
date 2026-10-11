.class public abstract Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setExecutor(Ljava/util/concurrent/Executor;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setMaxResultCount(I)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
