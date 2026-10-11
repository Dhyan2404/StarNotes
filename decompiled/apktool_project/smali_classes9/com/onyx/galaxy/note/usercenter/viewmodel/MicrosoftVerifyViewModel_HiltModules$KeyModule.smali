.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel_HiltModules$KeyModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation build Ldagger/hilt/InstallIn;
    value = {
        Ldagger/hilt/android/components/ActivityRetainedComponent;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel_HiltModules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyModule"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provide()Z
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation build Ldagger/hilt/android/internal/lifecycle/HiltViewModelMap$KeySet;
    .end annotation

    .annotation runtime Ldagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Ldagger/multibindings/LazyClassKey;
        value = Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
