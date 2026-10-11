.class public abstract Lcom/google/mlkit/vision/digitalink/RecognitionContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/mlkit/vision/digitalink/e;

    invoke-direct {v0}, Lcom/google/mlkit/vision/digitalink/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getPreContext()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getWritingArea()Lcom/google/mlkit/vision/digitalink/WritingArea;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
