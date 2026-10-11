.class public abstract Lcom/onyx/galaxy/note/Hilt_NoteApp;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Ldagger/hilt/internal/GeneratedComponentManagerHolder;


# instance fields
.field public e:Z

.field public final f:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/Hilt_NoteApp;->e:Z

    new-instance v0, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    new-instance v1, Lcom/onyx/galaxy/note/Hilt_NoteApp$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/Hilt_NoteApp$a;-><init>(Lcom/onyx/galaxy/note/Hilt_NoteApp;)V

    invoke-direct {v0, v1}, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;-><init>(Ldagger/hilt/android/internal/managers/ComponentSupplier;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/Hilt_NoteApp;->f:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/Hilt_NoteApp;->f:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    return-object p0
.end method

.method public bridge synthetic componentManager()Ldagger/hilt/internal/GeneratedComponentManager;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/Hilt_NoteApp;->componentManager()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    move-result-object p0

    return-object p0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/Hilt_NoteApp;->componentManager()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    move-result-object p0

    invoke-virtual {p0}, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;->generatedComponent()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hiltInternalInject()V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/Hilt_NoteApp;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/Hilt_NoteApp;->e:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/Hilt_NoteApp;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/NoteApp_GeneratedInjector;

    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/NoteApp;

    invoke-interface {v0, p0}, Lcom/onyx/galaxy/note/NoteApp_GeneratedInjector;->injectNoteApp(Lcom/onyx/galaxy/note/NoteApp;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/Hilt_NoteApp;->hiltInternalInject()V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method
