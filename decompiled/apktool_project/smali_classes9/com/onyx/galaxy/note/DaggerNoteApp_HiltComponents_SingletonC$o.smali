.class public final Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ViewWithFragmentC$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation


# instance fields
.field public final a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

.field public final b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

.field public final c:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;

.field public final d:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$g;

.field public e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$g;)V
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
            "activityCImpl",
            "fragmentCImpl"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;->a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

    .line 5
    iput-object p3, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;->c:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;

    .line 6
    iput-object p4, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;->d:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$g;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$g;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$g;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ViewWithFragmentC;
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;->e:Landroid/view/View;

    const-class v1, Landroid/view/View;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$p;

    iget-object v3, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;->a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    iget-object v4, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

    iget-object v5, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;->c:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;

    iget-object v6, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;->d:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$g;

    iget-object v7, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;->e:Landroid/view/View;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$p;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$g;Landroid/view/View;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V

    return-object v0
.end method

.method public b(Landroid/view/View;)Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;->e:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic build()Ldagger/hilt/android/components/ViewWithFragmentComponent;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;->a()Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ViewWithFragmentC;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic view(Landroid/view/View;)Ldagger/hilt/android/internal/builders/ViewWithFragmentComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;->b(Landroid/view/View;)Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;

    move-result-object p0

    return-object p0
.end method
