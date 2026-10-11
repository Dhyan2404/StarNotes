.class public Lcom/google/mlkit/vision/digitalink/RecognitionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/RecognitionResult;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCandidates()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/RecognitionResult;->a:Ljava/util/List;

    return-object p0
.end method
