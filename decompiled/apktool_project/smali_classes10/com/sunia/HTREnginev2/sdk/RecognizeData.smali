.class public Lcom/sunia/HTREnginev2/sdk/RecognizeData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ACTION_DOWN:I

.field public final ACTION_MOVE:I

.field public final ACTION_UP:I

.field public final VERSION:I

.field private density:F

.field private descMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private recognizePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeData;->VERSION:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeData;->ACTION_DOWN:I

    iput v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeData;->ACTION_MOVE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeData;->ACTION_UP:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeData;->density:F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeData;->descMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeData;->recognizePathList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDensity()F
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeData;->density:F

    return p0
.end method

.method public getDescMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeData;->descMap:Ljava/util/Map;

    return-object p0
.end method

.method public getRecognizePathList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeData;->recognizePathList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setDensity(F)V
    .locals 0

    iput p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeData;->density:F

    return-void
.end method
