.class public abstract Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel_HiltModules$BindsModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation build Ldagger/hilt/InstallIn;
    value = {
        Ldagger/hilt/android/components/ViewModelComponent;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel_HiltModules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BindsModule"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract binds(Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;)Landroidx/lifecycle/ViewModel;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation build Ldagger/hilt/android/internal/lifecycle/HiltViewModelMap;
    .end annotation

    .annotation runtime Ldagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Ldagger/multibindings/LazyClassKey;
        value = Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;
    .end annotation
.end method
