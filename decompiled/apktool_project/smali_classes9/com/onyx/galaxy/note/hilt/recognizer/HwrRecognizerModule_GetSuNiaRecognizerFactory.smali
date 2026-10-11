.class public final Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule_GetSuNiaRecognizerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation build Ldagger/internal/DaggerGenerated;
.end annotation

.annotation build Ldagger/internal/QualifierMetadata;
.end annotation

.annotation build Ldagger/internal/ScopeMetadata;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule_GetSuNiaRecognizerFactory;->a:Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;

    return-void
.end method

.method public static create(Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;)Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule_GetSuNiaRecognizerFactory;
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule_GetSuNiaRecognizerFactory;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule_GetSuNiaRecognizerFactory;-><init>(Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;)V

    return-object v0
.end method

.method public static getSuNiaRecognizer(Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;->getSuNiaRecognizer()Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule_GetSuNiaRecognizerFactory;->a:Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;

    invoke-static {p0}, Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule_GetSuNiaRecognizerFactory;->getSuNiaRecognizer(Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule_GetSuNiaRecognizerFactory;->get()Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object p0

    return-object p0
.end method
