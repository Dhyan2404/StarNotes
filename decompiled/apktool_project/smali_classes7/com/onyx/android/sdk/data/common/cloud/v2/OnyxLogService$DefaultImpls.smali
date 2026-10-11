.class public final Lcom/onyx/android/sdk/data/common/cloud/v2/OnyxLogService$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/common/cloud/v2/OnyxLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic feedbacks$default(Lcom/onyx/android/sdk/data/common/cloud/v2/OnyxLogService;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/common/cloud/v2/FeedbacksParams;ILjava/lang/Object;)Lretrofit2/Call;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-string p2, "galaxy"

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/common/cloud/v2/OnyxLogService;->feedbacks(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/common/cloud/v2/FeedbacksParams;)Lretrofit2/Call;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: feedbacks"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
