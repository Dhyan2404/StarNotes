.class public abstract Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ActivityC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/ui/NoteListActivity_GeneratedInjector;
.implements Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity_GeneratedInjector;
.implements Ldagger/hilt/android/components/ActivityComponent;
.implements Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$ActivityEntryPoint;
.implements Ldagger/hilt/android/internal/lifecycle/HiltWrapper_HiltViewModelFactory_ActivityCreatorEntryPoint;
.implements Ldagger/hilt/android/internal/managers/FragmentComponentManager$FragmentComponentBuilderEntryPoint;
.implements Ldagger/hilt/android/internal/managers/ViewComponentManager$ViewComponentBuilderEntryPoint;
.implements Ldagger/hilt/internal/GeneratedComponent;


# annotations
.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lcom/onyx/galaxy/note/update/GoogleAppUpdateModule;,
        Ldagger/hilt/android/internal/modules/HiltWrapper_ActivityModule;,
        Ldagger/hilt/android/internal/lifecycle/HiltWrapper_DefaultViewModelFactories_ActivityModule;,
        Lcom/onyx/galaxy/note/NoteApp_HiltComponents$c;,
        Lcom/onyx/galaxy/note/NoteApp_HiltComponents$e;
    }
.end annotation

.annotation build Ldagger/hilt/android/scopes/ActivityScoped;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/NoteApp_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActivityC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ActivityC$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
