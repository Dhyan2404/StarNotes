.class public final Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;
.super Lcom/onyx/galaxy/note/NoteApp_HiltComponents$SingletonC;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;

.field public final b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

.field public c:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/onyx/android/sdk/pay/PaymentSelector$Factory;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector$Creator;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/onyx/galaxy/note/hilt/recognizer/RecognizerSelector$Creator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hwrRecognizerModuleParam"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/onyx/galaxy/note/NoteApp_HiltComponents$SingletonC;-><init>()V

    .line 3
    iput-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    .line 4
    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->a:Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;

    .line 5
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->e(Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;-><init>(Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->f()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->h()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->g()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->i()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final e(Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "hwrRecognizerModuleParam"
        }
    .end annotation

    new-instance p1, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a;

    iget-object v0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;I)V

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->c:Ldagger/internal/Provider;

    new-instance p1, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a;

    iget-object v0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;I)V

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->d:Ldagger/internal/Provider;

    new-instance p1, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a;

    iget-object v0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;I)V

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->e:Ldagger/internal/Provider;

    new-instance p1, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a;

    iget-object v0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;I)V

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->f:Ldagger/internal/Provider;

    return-void
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/pay/BasePayment;",
            ">;"
        }
    .end annotation

    const-string p0, "GOOGLE_IAP"

    invoke-static {}, Lcom/onyx/android/sdk/pay/google/PaymentModule_GetGooglePaymentFactory;->getGooglePayment()Lcom/onyx/android/sdk/pay/BasePayment;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;",
            ">;"
        }
    .end annotation

    const-string p0, "GoogleML"

    invoke-static {}, Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertModule_GetMLResultConvertFactory;->getMLResultConvert()Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public getAccountAuthCreator()Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->d:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;

    return-object p0
.end method

.method public getConvertCreator()Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector$Creator;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->e:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertSelector$Creator;

    return-object p0
.end method

.method public getDisableFragmentGetContextFix()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public getFactory()Lcom/onyx/android/sdk/pay/PaymentSelector$Factory;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->c:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/pay/PaymentSelector$Factory;

    return-object p0
.end method

.method public getRecognizeCreator()Lcom/onyx/galaxy/note/hilt/recognizer/RecognizerSelector$Creator;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->f:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/hilt/recognizer/RecognizerSelector$Creator;

    return-object p0
.end method

.method public getStatistics()Lcom/onyx/android/sdk/statistics/IStatistics;
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/statistics/GoogleStatistics;

    invoke-direct {p0}, Lcom/onyx/android/sdk/statistics/GoogleStatistics;-><init>()V

    return-object p0
.end method

.method public final h()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/account/AccountAuthModule_GetGoogleAccountAuthFactory;->getGoogleAccountAuth()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    move-result-object p0

    const-string v0, "microsoft"

    invoke-static {}, Lcom/onyx/galaxy/note/account/AccountAuthModule_GetMicroSoftAccountAuthFactory;->getMicroSoftAccountAuth()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    move-result-object v1

    const-string v2, "google"

    invoke-static {v2, p0, v0, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public final i()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
            ">;"
        }
    .end annotation

    const-string v0, "ML"

    iget-object v1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->a:Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;

    invoke-static {v1}, Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule_GetCommonRecognizerFactory;->getCommonRecognizer(Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object v1

    const-string v2, "ML_MIXED"

    iget-object v3, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->a:Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;

    invoke-static {v3}, Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule_GetMixedRecognizerFactory;->getMixedRecognizer(Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object v3

    const-string v4, "SUNIA"

    iget-object v5, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->a:Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;

    invoke-static {v5}, Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule_GetSuNiaRecognizerFactory;->getSuNiaRecognizer(Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object v5

    const-string v6, "SUNIA_NAI_NBI"

    iget-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->a:Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;

    invoke-static {p0}, Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule_GetSuNiaNaiNbiRecognizerFactory;->getSuNiaNaiNbiRecognizer(Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public injectNoteApp(Lcom/onyx/galaxy/note/NoteApp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public retainedComponentBuilder()Ldagger/hilt/android/internal/builders/ActivityRetainedComponentBuilder;
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$d;

    iget-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$d;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V

    return-object v0
.end method

.method public serviceComponentBuilder()Ldagger/hilt/android/internal/builders/ServiceComponentBuilder;
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$h;

    iget-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$h;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V

    return-object v0
.end method
