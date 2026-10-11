.class public interface abstract Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0011\n\u0002\u0008\r\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J \u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H&J\u0008\u0010\n\u001a\u00020\u0003H&J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH&J\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00102\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u0011\u001a\u00020\u0007H&J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H&J\u0008\u0010\u0014\u001a\u00020\u0007H&J\u0008\u0010\u0015\u001a\u00020\u000eH&J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0017H&J\u0008\u0010\u0018\u001a\u00020\u0019H&J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u0008\u0010\u001b\u001a\u00020\u001cH&J\u0008\u0010\u001d\u001a\u00020\u001eH&J\u0008\u0010\u001f\u001a\u00020\u001cH\u0016J\u0008\u0010 \u001a\u00020\u001cH\u0016J\u0008\u0010!\u001a\u00020\u001cH\u0016J\u0008\u0010\"\u001a\u00020\u001cH\u0016J\u0008\u0010#\u001a\u00020\u001cH\u0016J\u0008\u0010$\u001a\u00020\u001cH\u0016J\u0008\u0010%\u001a\u00020\u001cH\u0016J\u0008\u0010&\u001a\u00020\u001cH\u0016J\u0010\u0010\'\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001b\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00070)2\u0006\u0010\r\u001a\u00020\u000eH&\u00a2\u0006\u0002\u0010*J\u0010\u0010+\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u001b\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00070)2\u0006\u0010\r\u001a\u00020\u000eH&\u00a2\u0006\u0002\u0010*J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u001b\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00070)2\u0006\u0010\r\u001a\u00020\u000eH&\u00a2\u0006\u0002\u0010*J\u0010\u00100\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u00101\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u00102\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u0018\u00103\u001a\u00020\u000c2\u0006\u00104\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH&J\u000e\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0010H&\u00a8\u00066"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
        "",
        "clear",
        "",
        "close",
        "compileTextModel",
        "type",
        "",
        "data",
        "lang",
        "destroy",
        "export",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
        "input",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "exportObservable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "getContentType",
        "getGestureHandler",
        "Lcom/onyx/android/sdk/hwr/service/handler/IHWRGestureHandler;",
        "getLang",
        "getOpenParam",
        "getOutputListener",
        "Lcom/onyx/android/sdk/hwr/service/listener/IHWRRecognizerListener;",
        "getRecognizerType",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "init",
        "isIdle",
        "",
        "lifecycle",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;",
        "needActivate",
        "needClear",
        "needClose",
        "needDestroy",
        "needDiscard",
        "needHandle",
        "needInitialize",
        "needOpen",
        "needReopen",
        "onAddStroke",
        "",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)[Ljava/lang/String;",
        "onErase",
        "onImport",
        "onPointerEvents",
        "onRedo",
        "onReplace",
        "onTransform",
        "onUndo",
        "open",
        "optimize",
        "convertBean",
        "waitForIdle",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract close()V
.end method

.method public abstract compileTextModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract destroy()V
.end method

.method public abstract export(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract exportObservable(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lio/reactivex/rxjava3/core/Observable;
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getContentType()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getGestureHandler()Lcom/onyx/android/sdk/hwr/service/handler/IHWRGestureHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getLang()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getOpenParam()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getOutputListener()Lcom/onyx/android/sdk/hwr/service/listener/IHWRRecognizerListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getRecognizerType()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract init(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isIdle()Z
.end method

.method public abstract lifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract needActivate()Z
.end method

.method public abstract needClear()Z
.end method

.method public abstract needClose()Z
.end method

.method public abstract needDestroy()Z
.end method

.method public abstract needDiscard()Z
.end method

.method public abstract needHandle()Z
.end method

.method public abstract needInitialize()Z
.end method

.method public abstract needOpen()Z
.end method

.method public abstract needReopen(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onAddStroke(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)[Ljava/lang/String;
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract onErase(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onImport(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)[Ljava/lang/String;
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract onPointerEvents(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onRedo(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onReplace(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)[Ljava/lang/String;
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract onTransform(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onUndo(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract open(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract optimize(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract waitForIdle()Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
