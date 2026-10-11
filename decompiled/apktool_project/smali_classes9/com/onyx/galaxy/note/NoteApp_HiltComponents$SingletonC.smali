.class public abstract Lcom/onyx/galaxy/note/NoteApp_HiltComponents$SingletonC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/pay/IPaymentFactoryEntryPoint;
.implements Lcom/onyx/android/sdk/statistics/IStatisticsEntryPoint;
.implements Lcom/onyx/galaxy/note/NoteApp_GeneratedInjector;
.implements Lcom/onyx/galaxy/note/account/hilt/IAccountAuthEntryPoint;
.implements Lcom/onyx/galaxy/note/hilt/convert/IHWRResultConvertEntryPoint;
.implements Lcom/onyx/galaxy/note/hilt/recognizer/IRecognizerEntrypoint;
.implements Ldagger/hilt/android/flags/FragmentGetContextFix$FragmentGetContextFixEntryPoint;
.implements Ldagger/hilt/android/internal/managers/HiltWrapper_ActivityRetainedComponentManager_ActivityRetainedComponentBuilderEntryPoint;
.implements Ldagger/hilt/android/internal/managers/ServiceComponentManager$ServiceComponentBuilderEntryPoint;
.implements Ldagger/hilt/components/SingletonComponent;
.implements Ldagger/hilt/internal/GeneratedComponent;


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/onyx/galaxy/note/account/AccountAuthModule;,
        Ldagger/hilt/android/internal/modules/ApplicationContextModule;,
        Lcom/onyx/android/sdk/statistics/GoogleStatisticsModule;,
        Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertModule;,
        Ldagger/hilt/android/flags/HiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule;,
        Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;,
        Lcom/onyx/galaxy/note/NoteApp_HiltComponents$b;,
        Lcom/onyx/galaxy/note/NoteApp_HiltComponents$d;,
        Lcom/onyx/android/sdk/pay/google/PaymentModule;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/NoteApp_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SingletonC"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
