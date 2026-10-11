.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel_HiltModules_KeyModule_ProvideFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation build Ldagger/internal/DaggerGenerated;
.end annotation

.annotation build Ldagger/internal/QualifierMetadata;
    value = {
        "dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"
    }
.end annotation

.annotation build Ldagger/internal/ScopeMetadata;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel_HiltModules_KeyModule_ProvideFactory$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel_HiltModules_KeyModule_ProvideFactory;
    .locals 1

    invoke-static {}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel_HiltModules_KeyModule_ProvideFactory$a;->a()Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel_HiltModules_KeyModule_ProvideFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provide()Z
    .locals 1

    invoke-static {}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel_HiltModules$KeyModule;->provide()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 0

    .line 2
    invoke-static {}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel_HiltModules_KeyModule_ProvideFactory;->provide()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel_HiltModules_KeyModule_ProvideFactory;->get()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
