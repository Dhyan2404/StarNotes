.class public final Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$p;
.super Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ViewWithFragmentC;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation


# instance fields
.field public final a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

.field public final b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

.field public final c:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;

.field public final d:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$g;

.field public final e:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$p;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$g;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "fragmentCImpl",
            "viewParam"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ViewWithFragmentC;-><init>()V

    .line 3
    iput-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$p;->e:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$p;

    .line 4
    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$p;->a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    .line 5
    iput-object p2, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$p;->b:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;

    .line 6
    iput-object p3, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$p;->c:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;

    .line 7
    iput-object p4, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$p;->d:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$g;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$g;Landroid/view/View;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$p;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$g;Landroid/view/View;)V

    return-void
.end method
