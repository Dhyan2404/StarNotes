.class public abstract Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ActivityRetainedC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/hilt/android/components/ActivityRetainedComponent;
.implements Ldagger/hilt/android/internal/managers/ActivityComponentManager$ActivityComponentBuilderEntryPoint;
.implements Ldagger/hilt/android/internal/managers/HiltWrapper_ActivityRetainedComponentManager_ActivityRetainedLifecycleEntryPoint;
.implements Ldagger/hilt/internal/GeneratedComponent;


# annotations
.annotation runtime Ldagger/Subcomponent;
    modules = {
        Ldagger/hilt/android/internal/managers/HiltWrapper_ActivityRetainedComponentManager_LifecycleModule;,
        Ldagger/hilt/android/internal/managers/HiltWrapper_SavedStateHandleModule;,
        Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel_HiltModules$KeyModule;,
        Lcom/onyx/galaxy/note/NoteApp_HiltComponents$a;,
        Lcom/onyx/galaxy/note/NoteApp_HiltComponents$f;
    }
.end annotation

.annotation build Ldagger/hilt/android/scopes/ActivityRetainedScoped;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/NoteApp_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActivityRetainedC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ActivityRetainedC$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
