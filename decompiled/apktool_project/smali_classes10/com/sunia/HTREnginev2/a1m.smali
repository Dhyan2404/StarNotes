.class public abstract Lcom/sunia/HTREnginev2/a1m;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;)Landroidx/lifecycle/SavedStateHandle;
    .locals 0
    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Ldagger/hilt/android/UnstableApi;
        }
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation build Ldagger/hilt/android/lifecycle/ActivityRetainedSavedState;
    .end annotation

    .annotation build Ldagger/hilt/android/scopes/ActivityRetainedScoped;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedStateHandleHolder"
        }
    .end annotation

    invoke-virtual {p0}, Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;->a()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p0

    return-object p0
.end method
