.class public final Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ldagger/internal/DaggerGenerated;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$Builder;,
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;,
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$i;,
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$e;,
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$n;,
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$c;,
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$l;,
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$g;,
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$p;,
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$h;,
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$m;,
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$k;,
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$o;,
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$f;,
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$b;,
        Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$Builder;
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$Builder;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V

    return-object v0
.end method

.method public static create()Lcom/onyx/galaxy/note/NoteApp_HiltComponents$SingletonC;
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$Builder;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$Builder;->build()Lcom/onyx/galaxy/note/NoteApp_HiltComponents$SingletonC;

    move-result-object v0

    return-object v0
.end method
