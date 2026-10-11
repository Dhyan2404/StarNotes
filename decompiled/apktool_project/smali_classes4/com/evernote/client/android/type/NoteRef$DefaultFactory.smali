.class public Lcom/evernote/client/android/type/NoteRef$DefaultFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/client/android/type/NoteRef$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/type/NoteRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromLinked(Lcom/evernote/edam/notestore/NoteMetadata;Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/client/android/type/NoteRef;
    .locals 2

    new-instance p0, Lcom/evernote/client/android/type/NoteRef;

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/evernote/edam/type/LinkedNotebook;->getGuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, p1, v1}, Lcom/evernote/client/android/type/NoteRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public fromPersonal(Lcom/evernote/edam/notestore/NoteMetadata;)Lcom/evernote/client/android/type/NoteRef;
    .locals 3

    new-instance p0, Lcom/evernote/client/android/type/NoteRef;

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->getNotebookGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/evernote/client/android/type/NoteRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method
