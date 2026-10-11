.class final Lcom/onyx/galaxy/note/utils/HwrSdkInitializer$installSupportedRecognizer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
        "type",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/utils/HwrSdkInitializer$installSupportedRecognizer$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer$installSupportedRecognizer$1;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer$installSupportedRecognizer$1;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer$installSupportedRecognizer$1;->INSTANCE:Lcom/onyx/galaxy/note/utils/HwrSdkInitializer$installSupportedRecognizer$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/onyx/galaxy/note/hilt/recognizer/IRecognizerEntrypoint;

    .line 3
    invoke-static {p0, v0}, Ldagger/hilt/android/EntryPointAccessors;->fromApplication(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/hilt/recognizer/IRecognizerEntrypoint;

    .line 4
    invoke-interface {p0}, Lcom/onyx/galaxy/note/hilt/recognizer/IRecognizerEntrypoint;->getRecognizeCreator()Lcom/onyx/galaxy/note/hilt/recognizer/RecognizerSelector$Creator;

    move-result-object p0

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/hilt/recognizer/RecognizerSelector$Creator;->create(Ljava/lang/String;)Lcom/onyx/galaxy/note/hilt/recognizer/RecognizerSelector;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/hilt/recognizer/RecognizerSelector;->getRecognizer()Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "HWR Recognizer Not Found"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer$installSupportedRecognizer$1;->invoke(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object p0

    return-object p0
.end method
