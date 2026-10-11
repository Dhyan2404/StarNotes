.class public final Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$drawNBIPathCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/nbiv2/sdk/NBICallbackV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J,\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016J\u0014\u0010\u000b\u001a\u00020\u00032\n\u0010\u000c\u001a\u00060\rj\u0002`\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "com/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$drawNBIPathCallback$1",
        "Lcom/sunia/nbiv2/sdk/NBICallbackV2;",
        "onCancel",
        "",
        "onDrawNBIPath",
        "param",
        "",
        "nbiAxisPathList",
        "",
        "Lcom/sunia/nbiv2/sdk/NBIAxisPath;",
        "nbiOutlinePathList",
        "onError",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onLoad",
        "onProgress",
        "index",
        "",
        "total",
        "sdk-sunia_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$drawNBIPathCallback$1;->this$0:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onDrawNBIPath(JLjava/util/List;Ljava/util/List;)V
    .locals 4
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/nbiv2/sdk/NBIAxisPath;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/nbiv2/sdk/NBIAxisPath;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nbiAxisPathList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nbiOutlinePathList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$drawNBIPathCallback$1;->this$0:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nbi_time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p4, v0, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    invoke-direct {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;-><init>()V

    sget-object p2, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->toHWRPointerEventList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->setHwrResultPoints(Ljava/util/List;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$drawNBIPathCallback$1;->this$0:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->getSubject()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$drawNBIPathCallback$1;

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$drawNBIPathCallback$1;->this$0:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->getSubject()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onLoad()V
    .locals 1

    invoke-static {}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->getInstance()Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->nbiSetOutlineOutput(Z)Z

    return-void
.end method

.method public onProgress(II)V
    .locals 0

    return-void
.end method
