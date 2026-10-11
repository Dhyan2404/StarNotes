.class public final Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/NoteApp_HiltComponents$FragmentC$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

.field public final b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

.field public final c:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;

.field public d:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;)V
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
            "activityCImpl"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$f;->a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$f;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

    .line 5
    iput-object p3, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$f;->c:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$f;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/onyx/galaxy/note/NoteApp_HiltComponents$FragmentC;
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$f;->d:Landroidx/fragment/app/Fragment;

    const-class v1, Landroidx/fragment/app/Fragment;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$g;

    iget-object v3, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$f;->a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    iget-object v4, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$f;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

    iget-object v5, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$f;->c:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;

    iget-object v6, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$f;->d:Landroidx/fragment/app/Fragment;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$g;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;Landroidx/fragment/app/Fragment;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V

    return-object v0
.end method

.method public b(Landroidx/fragment/app/Fragment;)Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$f;->d:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public bridge synthetic build()Ldagger/hilt/android/components/FragmentComponent;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$f;->a()Lcom/onyx/galaxy/note/NoteApp_HiltComponents$FragmentC;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic fragment(Landroidx/fragment/app/Fragment;)Ldagger/hilt/android/internal/builders/FragmentComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "fragment"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$f;->b(Landroidx/fragment/app/Fragment;)Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$f;

    move-result-object p0

    return-object p0
.end method
