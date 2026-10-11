.class public final Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;
.super Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ActivityRetainedC;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

.field public final b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

.field public c:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ldagger/hilt/android/ActivityRetainedLifecycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "savedStateHandleHolderParam"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ActivityRetainedC;-><init>()V

    .line 3
    iput-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

    .line 4
    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;->a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    .line 5
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;->a(Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;)V

    return-void
.end method


# virtual methods
.method public final a(Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "savedStateHandleHolderParam"
        }
    .end annotation

    new-instance p1, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e$a;

    iget-object v0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;->a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    iget-object v1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e$a;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;->c:Ldagger/internal/Provider;

    return-void
.end method

.method public activityComponentBuilder()Ldagger/hilt/android/internal/builders/ActivityComponentBuilder;
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$b;

    iget-object v1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;->a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    iget-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$b;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V

    return-object v0
.end method

.method public getActivityRetainedLifecycle()Ldagger/hilt/android/ActivityRetainedLifecycle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;->c:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldagger/hilt/android/ActivityRetainedLifecycle;

    return-object p0
.end method
