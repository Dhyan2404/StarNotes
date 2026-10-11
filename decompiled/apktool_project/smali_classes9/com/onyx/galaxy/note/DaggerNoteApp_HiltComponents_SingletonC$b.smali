.class public final Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ActivityC$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

.field public final b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

.field public c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$b;->a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$b;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$b;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$b;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public bridge synthetic activity(Landroid/app/Activity;)Ldagger/hilt/android/internal/builders/ActivityComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "activity"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$b;->a(Landroid/app/Activity;)Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$b;

    move-result-object p0

    return-object p0
.end method

.method public b()Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ActivityC;
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$b;->c:Landroid/app/Activity;

    const-class v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;

    iget-object v1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$b;->a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    iget-object v2, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$b;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

    iget-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$b;->c:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Landroid/app/Activity;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/hilt/android/components/ActivityComponent;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$b;->b()Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ActivityC;

    move-result-object p0

    return-object p0
.end method
