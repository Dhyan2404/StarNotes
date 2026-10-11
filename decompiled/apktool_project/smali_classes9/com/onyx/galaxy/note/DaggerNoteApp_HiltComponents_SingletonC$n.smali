.class public final Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n;
.super Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ViewModelC;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n$b;,
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

.field public final b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

.field public final c:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n;

.field public d:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "savedStateHandleParam",
            "viewModelLifecycleParam"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ViewModelC;-><init>()V

    .line 3
    iput-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n;->c:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n;

    .line 4
    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n;->a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    .line 5
    iput-object p2, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

    .line 6
    invoke-virtual {p0, p3, p4}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n;->a(Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "savedStateHandleParam",
            "viewModelLifecycleParam"
        }
    .end annotation

    new-instance p1, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n$b;

    iget-object p2, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n;->a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    iget-object v0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

    iget-object v1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n;->c:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n$b;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n;I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n;->d:Ldagger/internal/Provider;

    return-void
.end method

.method public getHiltViewModelAssistedMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public getHiltViewModelMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroidx/lifecycle/ViewModel;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n$a;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n;->d:Ldagger/internal/Provider;

    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/LazyClassKeyMap;->of(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
