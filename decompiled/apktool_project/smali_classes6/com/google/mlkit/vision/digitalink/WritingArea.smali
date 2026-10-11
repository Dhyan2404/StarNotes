.class public Lcom/google/mlkit/vision/digitalink/WritingArea;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/mlkit/vision/digitalink/WritingArea;->a:F

    iput p2, p0, Lcom/google/mlkit/vision/digitalink/WritingArea;->b:F

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 0

    iget p0, p0, Lcom/google/mlkit/vision/digitalink/WritingArea;->b:F

    return p0
.end method

.method public getWidth()F
    .locals 0

    iget p0, p0, Lcom/google/mlkit/vision/digitalink/WritingArea;->a:F

    return p0
.end method
