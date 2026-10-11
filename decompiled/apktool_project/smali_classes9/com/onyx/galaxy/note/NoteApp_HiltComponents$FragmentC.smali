.class public abstract Lcom/onyx/galaxy/note/NoteApp_HiltComponents$FragmentC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment_GeneratedInjector;
.implements Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment_GeneratedInjector;
.implements Ldagger/hilt/android/components/FragmentComponent;
.implements Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$FragmentEntryPoint;
.implements Ldagger/hilt/android/internal/managers/ViewComponentManager$ViewWithFragmentComponentBuilderEntryPoint;
.implements Ldagger/hilt/internal/GeneratedComponent;


# annotations
.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lcom/onyx/galaxy/note/NoteApp_HiltComponents$g;
    }
.end annotation

.annotation build Ldagger/hilt/android/scopes/FragmentScoped;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/NoteApp_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FragmentC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/NoteApp_HiltComponents$FragmentC$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
