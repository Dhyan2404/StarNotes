.class public final Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$b;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final h:Ldagger/hilt/android/components/ActivityRetainedComponent;

.field public final i:Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;


# direct methods
.method public constructor <init>(Ldagger/hilt/android/components/ActivityRetainedComponent;Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "savedStateHandleHolder"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$b;->h:Ldagger/hilt/android/components/ActivityRetainedComponent;

    iput-object p2, p0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$b;->i:Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;

    return-void
.end method


# virtual methods
.method public d()Ldagger/hilt/android/components/ActivityRetainedComponent;
    .locals 0

    iget-object p0, p0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$b;->h:Ldagger/hilt/android/components/ActivityRetainedComponent;

    return-object p0
.end method

.method public e()Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;
    .locals 0

    iget-object p0, p0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$b;->i:Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;

    return-object p0
.end method

.method public onCleared()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    iget-object p0, p0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$b;->h:Ldagger/hilt/android/components/ActivityRetainedComponent;

    const-class v0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$ActivityRetainedLifecycleEntryPoint;

    invoke-static {p0, v0}, Ldagger/hilt/EntryPoints;->get(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$ActivityRetainedLifecycleEntryPoint;

    invoke-interface {p0}, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$ActivityRetainedLifecycleEntryPoint;->getActivityRetainedLifecycle()Ldagger/hilt/android/ActivityRetainedLifecycle;

    move-result-object p0

    check-cast p0, Ldagger/hilt/android/internal/lifecycle/RetainedLifecycleImpl;

    invoke-virtual {p0}, Ldagger/hilt/android/internal/lifecycle/RetainedLifecycleImpl;->dispatchOnCleared()V

    return-void
.end method
