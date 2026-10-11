.class public abstract Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ViewModelC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/hilt/android/components/ViewModelComponent;
.implements Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory$ViewModelFactoriesEntryPoint;
.implements Ldagger/hilt/internal/GeneratedComponent;


# annotations
.annotation runtime Ldagger/Subcomponent;
    modules = {
        Ldagger/hilt/android/internal/lifecycle/HiltWrapper_HiltViewModelFactory_ViewModelModule;,
        Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel_HiltModules$BindsModule;
    }
.end annotation

.annotation build Ldagger/hilt/android/scopes/ViewModelScoped;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/NoteApp_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewModelC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ViewModelC$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
