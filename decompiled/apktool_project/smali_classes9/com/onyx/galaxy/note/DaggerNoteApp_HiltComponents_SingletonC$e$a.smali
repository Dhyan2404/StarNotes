.class public final Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

.field public final b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "id"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e$a;->a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    iput-object p2, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e$a;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

    iput p3, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e$a;->c:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e$a;->c:I

    if-nez v0, :cond_0

    invoke-static {}, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager_LifecycleModule_ProvideActivityRetainedLifecycleFactory;->provideActivityRetainedLifecycle()Ldagger/hilt/android/ActivityRetainedLifecycle;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e$a;->c:I

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0
.end method
