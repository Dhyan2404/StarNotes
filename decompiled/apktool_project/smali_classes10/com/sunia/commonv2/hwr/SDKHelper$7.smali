.class Lcom/sunia/commonv2/hwr/SDKHelper$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/commonv2/callback/CoreCommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/commonv2/hwr/SDKHelper;->testPointForAssets(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sunia/commonv2/callback/CoreCommonCallback<",
        "Lcom/sunia/commonv2/bean/HWRSimpleResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$startIndex:I

.field final synthetic val$testBeanList:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/hwr/SDKHelper$7;->val$testBeanList:Ljava/util/List;

    iput p2, p0, Lcom/sunia/commonv2/hwr/SDKHelper$7;->val$startIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->release()V

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public onSuccess(Lcom/sunia/commonv2/bean/HWRSimpleResult;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/sunia/commonv2/hwr/SDKHelper$7;->val$testBeanList:Ljava/util/List;

    iget p0, p0, Lcom/sunia/commonv2/hwr/SDKHelper$7;->val$startIndex:I

    add-int/lit8 p0, p0, 0x1

    invoke-static {p1, p0}, Lcom/sunia/commonv2/hwr/SDKHelper;->testPointForAssets(Ljava/util/List;I)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sunia/commonv2/bean/HWRSimpleResult;

    invoke-virtual {p0, p1}, Lcom/sunia/commonv2/hwr/SDKHelper$7;->onSuccess(Lcom/sunia/commonv2/bean/HWRSimpleResult;)V

    return-void
.end method
