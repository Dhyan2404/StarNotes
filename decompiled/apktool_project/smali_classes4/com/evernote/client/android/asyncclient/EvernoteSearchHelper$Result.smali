.class public final Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;",
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;",
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Lcom/evernote/client/android/type/NoteRef$Factory;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;->PERSONAL_NOTES:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->a:Ljava/util/List;

    .line 4
    sget-object v0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;->LINKED_NOTEBOOKS:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->b:Ljava/util/Map;

    .line 5
    sget-object v0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;->BUSINESS:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_2
    iput-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->c:Ljava/util/Map;

    .line 6
    new-instance p1, Lcom/evernote/client/android/type/NoteRef$DefaultFactory;

    invoke-direct {p1}, Lcom/evernote/client/android/type/NoteRef$DefaultFactory;-><init>()V

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->d:Lcom/evernote/client/android/type/NoteRef$Factory;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;-><init>(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic a(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->f(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;Lcom/evernote/edam/type/LinkedNotebook;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->e(Lcom/evernote/edam/type/LinkedNotebook;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;Lcom/evernote/edam/type/LinkedNotebook;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->d(Lcom/evernote/edam/type/LinkedNotebook;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/evernote/edam/type/LinkedNotebook;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/evernote/edam/type/LinkedNotebook;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->c:Ljava/util/Map;

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Lcom/evernote/edam/type/LinkedNotebook;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/evernote/edam/type/LinkedNotebook;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->b:Ljava/util/Map;

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public fillNoteRef(Ljava/util/List;Ljava/util/List;Lcom/evernote/edam/type/LinkedNotebook;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;",
            "Ljava/util/List<",
            "Lcom/evernote/client/android/type/NoteRef;",
            ">;",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/edam/notestore/NotesMetadataList;

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NotesMetadataList;->getNotes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/edam/notestore/NoteMetadata;

    iget-object v2, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->d:Lcom/evernote/client/android/type/NoteRef$Factory;

    if-nez p3, :cond_1

    invoke-interface {v2, v1}, Lcom/evernote/client/android/type/NoteRef$Factory;->fromPersonal(Lcom/evernote/edam/notestore/NoteMetadata;)Lcom/evernote/client/android/type/NoteRef;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v2, v1, p3}, Lcom/evernote/client/android/type/NoteRef$Factory;->fromLinked(Lcom/evernote/edam/notestore/NoteMetadata;Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/client/android/type/NoteRef;

    move-result-object v1

    :goto_1
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getAllAsNoteRef()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/client/android/type/NoteRef;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->getPersonalResultsAsNoteRef()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->getLinkedNotebookResultsAsNoteRef()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->getBusinessResultsAsNoteRef()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public getBusinessResults()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;",
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->c:Ljava/util/Map;

    return-object p0
.end method

.method public getBusinessResultsAsNoteRef()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/client/android/type/NoteRef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/evernote/edam/type/LinkedNotebook;

    invoke-virtual {p0, v3, v0, v2}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->fillNoteRef(Ljava/util/List;Ljava/util/List;Lcom/evernote/edam/type/LinkedNotebook;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getLinkedNotebookResults()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;",
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->b:Ljava/util/Map;

    return-object p0
.end method

.method public getLinkedNotebookResultsAsNoteRef()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/client/android/type/NoteRef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/evernote/edam/type/LinkedNotebook;

    invoke-virtual {p0, v3, v0, v2}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->fillNoteRef(Ljava/util/List;Ljava/util/List;Lcom/evernote/edam/type/LinkedNotebook;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPersonalResults()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->a:Ljava/util/List;

    return-object p0
.end method

.method public getPersonalResultsAsNoteRef()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/client/android/type/NoteRef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->a:Ljava/util/List;

    invoke-virtual {p0, v2, v0, v1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->fillNoteRef(Ljava/util/List;Ljava/util/List;Lcom/evernote/edam/type/LinkedNotebook;)V

    return-object v0
.end method

.method public setNoteRefFactory(Lcom/evernote/client/android/type/NoteRef$Factory;)V
    .locals 0
    .param p1    # Lcom/evernote/client/android/type/NoteRef$Factory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/client/android/type/NoteRef$Factory;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->d:Lcom/evernote/client/android/type/NoteRef$Factory;

    return-void
.end method
