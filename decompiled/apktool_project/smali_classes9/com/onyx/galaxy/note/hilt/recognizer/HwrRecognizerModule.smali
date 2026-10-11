.class public final Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation build Ldagger/hilt/InstallIn;
    value = {
        Ldagger/hilt/components/SingletonComponent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u0008\u0010\u0005\u001a\u00020\u0004H\u0007J\u0008\u0010\u0006\u001a\u00020\u0004H\u0007J\u0008\u0010\u0007\u001a\u00020\u0004H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;",
        "",
        "()V",
        "getCommonRecognizer",
        "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
        "getMixedRecognizer",
        "getSuNiaNaiNbiRecognizer",
        "getSuNiaRecognizer",
        "note_overseasRelease"
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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCommonRecognizer()Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Ldagger/multibindings/StringKey;
        value = "ML"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLCommonRecognizer;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLCommonRecognizer;-><init>()V

    return-object p0
.end method

.method public final getMixedRecognizer()Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Ldagger/multibindings/StringKey;
        value = "ML_MIXED"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;-><init>()V

    return-object p0
.end method

.method public final getSuNiaNaiNbiRecognizer()Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Ldagger/multibindings/StringKey;
        value = "SUNIA_NAI_NBI"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;-><init>()V

    return-object p0
.end method

.method public final getSuNiaRecognizer()Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Ldagger/multibindings/StringKey;
        value = "SUNIA"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;-><init>()V

    return-object p0
.end method
