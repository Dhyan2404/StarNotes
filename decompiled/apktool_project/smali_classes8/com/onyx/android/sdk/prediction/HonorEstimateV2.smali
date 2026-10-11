.class public final Lcom/onyx/android/sdk/prediction/HonorEstimateV2;
.super Lcom/onyx/android/sdk/prediction/CommonEstimateV2;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/onyx/android/sdk/prediction/HonorEstimateV2;",
        "Lcom/onyx/android/sdk/prediction/CommonEstimateV2;",
        "()V",
        "sdk-prediction_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;-><init>()V

    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->setMaxPredictTime(F)V

    return-void
.end method
