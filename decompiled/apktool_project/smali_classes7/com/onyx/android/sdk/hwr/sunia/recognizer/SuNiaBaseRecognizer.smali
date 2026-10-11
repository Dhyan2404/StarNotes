.class public Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuNiaBaseRecognizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaBaseRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer\n+ 2 HWRException.kt\ncom/onyx/android/sdk/hwr/data/bean/HWRException$Companion\n*L\n1#1,210:1\n49#2:211\n49#2:212\n49#2:213\n*S KotlinDebug\n*F\n+ 1 SuNiaBaseRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer\n*L\n45#1:211\n48#1:212\n51#1:213\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008S\u0010TJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\t\u001a\u00020\u0006H\u0016J\u0008\u0010\n\u001a\u00020\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016J\u0008\u0010\u000c\u001a\u00020\u0006H\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0008\u0010\u000f\u001a\u00020\u0004H\u0016J\u000e\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0016J\u0008\u0010\u0014\u001a\u00020\u0013H\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0017\u001a\u00020\u0015H\u0016J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001d\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00192\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001d\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00192\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001bJ\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001d\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00192\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001bJ\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010 \u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010!\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010#\u001a\u00020\"2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010%\u001a\u00020\"2\u0006\u0010$\u001a\u00020\"2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010)\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u00152\u0006\u0010\'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u0015H\u0016J\n\u0010+\u001a\u0004\u0018\u00010*H\u0016J\n\u0010-\u001a\u0004\u0018\u00010,H\u0016J\u0008\u0010.\u001a\u00020\u0002H\u0016R\"\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R$\u0010;\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R$\u0010C\u001a\u0004\u0018\u00010<8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR$\u0010K\u001a\u0004\u0018\u00010D8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR$\u0010R\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010Q\u00a8\u0006U"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;",
        "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "input",
        "",
        "a",
        "",
        "init",
        "open",
        "createEditor",
        "clear",
        "close",
        "destroy",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;",
        "lifecycle",
        "isIdle",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "waitForIdle",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "getRecognizerType",
        "",
        "getContentType",
        "getLang",
        "onPointerEvents",
        "",
        "onImport",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)[Ljava/lang/String;",
        "onAddStroke",
        "onErase",
        "onReplace",
        "onTransform",
        "onUndo",
        "onRedo",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
        "export",
        "convertBean",
        "optimize",
        "type",
        "data",
        "lang",
        "compileTextModel",
        "Lcom/onyx/android/sdk/hwr/service/listener/IHWRRecognizerListener;",
        "getOutputListener",
        "Lcom/onyx/android/sdk/hwr/service/handler/IHWRGestureHandler;",
        "getGestureHandler",
        "getOpenParam",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;",
        "getLifecycle",
        "()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;",
        "setLifecycle",
        "(Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;)V",
        "Lcom/sunia/HTREnginev2/sdk/Engine;",
        "b",
        "Lcom/sunia/HTREnginev2/sdk/Engine;",
        "getEngine",
        "()Lcom/sunia/HTREnginev2/sdk/Engine;",
        "setEngine",
        "(Lcom/sunia/HTREnginev2/sdk/Engine;)V",
        "engine",
        "Lcom/sunia/HTREnginev2/sdk/editor/Editor;",
        "c",
        "Lcom/sunia/HTREnginev2/sdk/editor/Editor;",
        "getEditor",
        "()Lcom/sunia/HTREnginev2/sdk/editor/Editor;",
        "setEditor",
        "(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V",
        "editor",
        "Lcom/sunia/HTREnginev2/sdk/Params;",
        "d",
        "Lcom/sunia/HTREnginev2/sdk/Params;",
        "getParams",
        "()Lcom/sunia/HTREnginev2/sdk/Params;",
        "setParams",
        "(Lcom/sunia/HTREnginev2/sdk/Params;)V",
        "params",
        "e",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "getOpenInput",
        "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "setOpenInput",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V",
        "openInput",
        "<init>",
        "()V",
        "sdk-sunia_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSuNiaBaseRecognizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaBaseRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer\n+ 2 HWRException.kt\ncom/onyx/android/sdk/hwr/data/bean/HWRException$Companion\n*L\n1#1,210:1\n49#2:211\n49#2:212\n49#2:213\n*S KotlinDebug\n*F\n+ 1 SuNiaBaseRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer\n*L\n45#1:211\n48#1:212\n51#1:213\n*E\n"
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/sunia/HTREnginev2/sdk/Engine;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/sunia/HTREnginev2/sdk/editor/Editor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lcom/sunia/HTREnginev2/sdk/Params;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->CREATED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->e:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->c:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->clearContent()V

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->CLEARED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->c:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->c:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->CLOSED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    return-void
.end method

.method public compileTextModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lang"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public createEditor()V
    .locals 2

    invoke-static {}, Lcom/sunia/HTREnginev2/sdk/Params;->createInstance()Lcom/sunia/HTREnginev2/sdk/Params;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->d:Lcom/sunia/HTREnginev2/sdk/Params;

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->b:Lcom/sunia/HTREnginev2/sdk/Engine;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/sunia/HTREnginev2/sdk/Engine;->createEditor(Lcom/sunia/HTREnginev2/sdk/Params;)Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->c:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->close()V

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->b:Lcom/sunia/HTREnginev2/sdk/Engine;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sdk/Engine;->release()V

    :cond_0
    return-void
.end method

.method public export(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;-><init>()V

    return-object p0
.end method

.method public exportObservable(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
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

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->exportObservable(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, ""

    return-object p0
.end method

.method public final getEditor()Lcom/sunia/HTREnginev2/sdk/editor/Editor;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->c:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    return-object p0
.end method

.method public final getEngine()Lcom/sunia/HTREnginev2/sdk/Engine;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->b:Lcom/sunia/HTREnginev2/sdk/Engine;

    return-object p0
.end method

.method public getGestureHandler()Lcom/onyx/android/sdk/hwr/service/handler/IHWRGestureHandler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLang()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->e:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/hwr/utils/HWRLangUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRLangUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/utils/HWRLangUtils;->getDefaultHWRLang()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final getLifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    return-object p0
.end method

.method public final getOpenInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->e:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-object p0
.end method

.method public getOpenParam()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;-><init>()V

    return-object p0
.end method

.method public getOutputListener()Lcom/onyx/android/sdk/hwr/service/listener/IHWRRecognizerListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getParams()Lcom/sunia/HTREnginev2/sdk/Params;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->d:Lcom/sunia/HTREnginev2/sdk/Params;

    return-object p0
.end method

.method public getRecognizerType()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->SUNIA:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    return-object p0
.end method

.method public init(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getUserOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getProductKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-nez v1, :cond_5

    invoke-static {}, Lcom/onyx/android/sdk/auth/UserConfig;->singleton()Lcom/onyx/android/sdk/auth/UserConfig;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getUserOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/auth/UserConfig;->setUserId(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer$init$1;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer$init$1;-><init>(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V

    invoke-static {v0, v1}, Lcom/sunia/commonv2/module/CommonModule;->attachBaseContext(Landroid/content/Context;Lcom/sunia/commonv2/module/ICommonModule;)V

    const-class v0, Lcom/sunia/commonv2/auth/HWRURLType;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getActivateServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/EnumUtils;->getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sunia/commonv2/auth/HWRURLType;

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v2, ""

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v3, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer$init$callback$1;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer$init$callback$1;-><init>(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;Ljava/util/concurrent/CompletableFuture;Lcom/sunia/commonv2/auth/HWRURLType;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getProductKey()Ljava/lang/String;

    move-result-object p1

    sget-object v5, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer$init$2;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer$init$2;

    invoke-static {v0, v5}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/commonv2/auth/HWRURLType;

    invoke-static {v4, p1, v0, v3}, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2;->authorizeAndCreateEngine(Ljava/lang/String;Ljava/lang/String;Lcom/sunia/commonv2/auth/HWRURLType;Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;)V

    invoke-virtual {v2}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    :goto_3
    sget-object p1, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->INITIALIZED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    return-void

    :cond_4
    sget-object p1, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LogFileUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->e(Ljava/lang/Class;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    sget-object p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->RECOGNIZER_INIT_FAIL:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0

    :cond_5
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string p1, "productKey is required"

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->RECOGNIZER_INIT_FAIL:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0

    :cond_6
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string p1, "appId is required"

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->RECOGNIZER_INIT_FAIL:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0

    :cond_7
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string p1, "uid is required"

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->RECOGNIZER_INIT_FAIL:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method

.method public isIdle()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->c:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->isIdle()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public lifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    return-object p0
.end method

.method public needActivate()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needActivate(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z

    move-result p0

    return p0
.end method

.method public needClear()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needClear(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z

    move-result p0

    return p0
.end method

.method public needClose()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needClose(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z

    move-result p0

    return p0
.end method

.method public needDestroy()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needDestroy(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z

    move-result p0

    return p0
.end method

.method public needDiscard()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needDiscard(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z

    move-result p0

    return p0
.end method

.method public needHandle()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needHandle(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z

    move-result p0

    return p0
.end method

.method public needInitialize()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needInitialize(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z

    move-result p0

    return p0
.end method

.method public needOpen()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needOpen(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z

    move-result p0

    return p0
.end method

.method public needReopen(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;->needReopen(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z

    move-result p0

    return p0
.end method

.method public onAddStroke(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)[Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public onErase(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onImport(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)[Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public onPointerEvents(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRedo(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReplace(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)[Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public onTransform(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onUndo(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public open(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->INITIALIZED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->CLOSED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->a(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->close()V

    :cond_2
    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->e:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    iget-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->c:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->createEditor()V

    :cond_3
    sget-object p1, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->OPENED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    return-void
.end method

.method public optimize(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
    .locals 0
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

    const-string p0, "convertBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "input"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;-><init>()V

    return-object p0
.end method

.method public final setEditor(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V
    .locals 0
    .param p1    # Lcom/sunia/HTREnginev2/sdk/editor/Editor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->c:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    return-void
.end method

.method public final setEngine(Lcom/sunia/HTREnginev2/sdk/Engine;)V
    .locals 0
    .param p1    # Lcom/sunia/HTREnginev2/sdk/Engine;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->b:Lcom/sunia/HTREnginev2/sdk/Engine;

    return-void
.end method

.method public final setLifecycle(Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->a:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    return-void
.end method

.method public final setOpenInput(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->e:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-void
.end method

.method public final setParams(Lcom/sunia/HTREnginev2/sdk/Params;)V
    .locals 0
    .param p1    # Lcom/sunia/HTREnginev2/sdk/Params;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->d:Lcom/sunia/HTREnginev2/sdk/Params;

    return-void
.end method

.method public waitForIdle()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
