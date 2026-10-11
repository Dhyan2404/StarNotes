.class public Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Search"
.end annotation


# instance fields
.field public final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/evernote/edam/notestore/NoteFilter;

.field public e:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

.field public f:I

.field public g:I

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->a:Ljava/util/EnumSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->c:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->f:I

    iput v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->g:I

    iput v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->h:I

    return-void
.end method

.method public static synthetic a(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)I
    .locals 0

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->k()I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)I
    .locals 0

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->i()I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->b:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Ljava/util/EnumSet;
    .locals 0

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->n()Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Lcom/evernote/edam/notestore/NoteFilter;
    .locals 0

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->j()Lcom/evernote/edam/notestore/NoteFilter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Lcom/evernote/edam/notestore/NotesMetadataResultSpec;
    .locals 0

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->m()Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)I
    .locals 0

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->l()I

    move-result p0

    return p0
.end method


# virtual methods
.method public addLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;
    .locals 1

    invoke-static {p1}, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->isBusinessNotebook(Lcom/evernote/edam/type/LinkedNotebook;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;->BUSINESS:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    invoke-virtual {p0, v0}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->addScope(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;)Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;->LINKED_NOTEBOOKS:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    invoke-virtual {p0, v0}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->addScope(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;)Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method public addScope(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;)Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;
    .locals 1

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->a:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->g:I

    if-gez p0, :cond_0

    const/16 p0, 0xa

    :cond_0
    return p0
.end method

.method public isIgnoreExceptions()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->i:Z

    return p0
.end method

.method public final j()Lcom/evernote/edam/notestore/NoteFilter;
    .locals 2

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->d:Lcom/evernote/edam/notestore/NoteFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/evernote/edam/notestore/NoteFilter;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteFilter;-><init>()V

    iput-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->d:Lcom/evernote/edam/notestore/NoteFilter;

    sget-object v1, Lcom/evernote/edam/type/NoteSortOrder;->UPDATED:Lcom/evernote/edam/type/NoteSortOrder;

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteSortOrder;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteFilter;->setOrder(I)V

    :cond_0
    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->d:Lcom/evernote/edam/notestore/NoteFilter;

    return-object p0
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->f:I

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->h:I

    if-gez p0, :cond_0

    const/16 p0, 0xa

    :cond_0
    return p0
.end method

.method public final m()Lcom/evernote/edam/notestore/NotesMetadataResultSpec;
    .locals 2

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->e:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    if-nez v0, :cond_0

    new-instance v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;-><init>()V

    iput-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->e:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeTitle(Z)V

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->e:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeNotebookGuid(Z)V

    :cond_0
    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->e:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    return-object p0
.end method

.method public final n()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->a:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;->PERSONAL_NOTES:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->a:Ljava/util/EnumSet;

    return-object p0
.end method

.method public setIgnoreExceptions(Z)Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->i:Z

    return-object p0
.end method

.method public setMaxNotes(I)Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;
    .locals 1

    const-string v0, "maxNotes must be greater or equal 1"

    invoke-static {p1, v0}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->g:I

    return-object p0
.end method

.method public setNoteFilter(Lcom/evernote/edam/notestore/NoteFilter;)Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;
    .locals 0

    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/edam/notestore/NoteFilter;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->d:Lcom/evernote/edam/notestore/NoteFilter;

    return-object p0
.end method

.method public setOffset(I)Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;
    .locals 1

    const-string v0, "negative value now allowed"

    invoke-static {p1, v0}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->f:I

    return-object p0
.end method

.method public setPageSize(I)Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;
    .locals 1

    const-string v0, "pageSize must be greater or equal 1"

    invoke-static {p1, v0}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->h:I

    return-object p0
.end method

.method public setResultSpec(Lcom/evernote/edam/notestore/NotesMetadataResultSpec;)Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;
    .locals 0

    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->e:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    return-object p0
.end method
