.class public final Lcom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction;
.super Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction<",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRIncrementalImportAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRIncrementalImportAction.kt\ncom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,34:1\n37#2,2:35\n*S KotlinDebug\n*F\n+ 1 HWRIncrementalImportAction.kt\ncom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction\n*L\n31#1:35,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0008\u0016\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0014J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002R\"\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR*\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction;",
        "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "onSuccess",
        "n",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "g",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "getInput",
        "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "setInput",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V",
        "input",
        "",
        "",
        "h",
        "[Ljava/lang/String;",
        "getItemIds",
        "()[Ljava/lang/String;",
        "setItemIds",
        "([Ljava/lang/String;)V",
        "itemIds",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "bundle",
        "<init>",
        "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V",
        "sdk-hwr_release"
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
        "SMAP\nHWRIncrementalImportAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRIncrementalImportAction.kt\ncom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,34:1\n37#2,2:35\n*S KotlinDebug\n*F\n+ 1 HWRIncrementalImportAction.kt\ncom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction\n*L\n31#1:35,2\n*E\n"
    }
.end annotation


# instance fields
.field public g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-void
.end method

.method public static final synthetic access$importStrokes(Lcom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction;)Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction;->n()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction$a;-><init>(Lcom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-object p0
.end method

.method public final getItemIds()[Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction;->h:[Ljava/lang/String;

    return-object p0
.end method

.method public final n()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getRecognizerManager()Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->getActiveRecognizer()Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->onAddStroke(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction;->h:[Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getShapeIds()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction;->h:[Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getOutput()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;->getItemIdMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->fillItemIdMap([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getOutput()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    move-result-object p0

    return-object p0
.end method

.method public onSuccess()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getOutput()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;->setOutputType(I)V

    return-void
.end method

.method public final setInput(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-void
.end method

.method public final setItemIds([Ljava/lang/String;)V
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalImportAction;->h:[Ljava/lang/String;

    return-void
.end method
