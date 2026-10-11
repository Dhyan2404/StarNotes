.class public Lcom/evernote/edam/notestore/NoteCollectionCounts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase<",
        "Lcom/evernote/edam/notestore/NoteCollectionCounts;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final NOTEBOOK_COUNTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final TAG_COUNTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final TRASH_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __TRASHCOUNT_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private notebookCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tagCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private trashCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "NoteCollectionCounts"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "notebookCounts"

    const/16 v3, 0xd

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->NOTEBOOK_COUNTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "tagCounts"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->TAG_COUNTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/16 v1, 0x8

    const/4 v2, 0x3

    const-string v3, "trashCount"

    invoke-direct {v0, v3, v1, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->TRASH_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteCollectionCounts;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 4
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->__isset_vector:[Z

    .line 5
    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteCollectionCounts;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetNotebookCounts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 11
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_0
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetTagCounts()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 17
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 18
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 19
    :cond_2
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    .line 20
    :cond_3
    iget p1, p1, Lcom/evernote/edam/notestore/NoteCollectionCounts;->trashCount:I

    iput p1, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->trashCount:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->setTrashCountIsSet(Z)V

    iput v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->trashCount:I

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteCollectionCounts;)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetNotebookCounts()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetNotebookCounts()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetNotebookCounts()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetTagCounts()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetTagCounts()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetTagCounts()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetTrashCount()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetTrashCount()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetTrashCount()Z

    move-result v0

    if-eqz v0, :cond_6

    iget p0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->trashCount:I

    iget p1, p1, Lcom/evernote/edam/notestore/NoteCollectionCounts;->trashCount:I

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result p0

    if-eqz p0, :cond_6

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/notestore/NoteCollectionCounts;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->compareTo(Lcom/evernote/edam/notestore/NoteCollectionCounts;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteCollectionCounts;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/notestore/NoteCollectionCounts;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;-><init>(Lcom/evernote/edam/notestore/NoteCollectionCounts;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->deepCopy()Lcom/evernote/edam/notestore/NoteCollectionCounts;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/notestore/NoteCollectionCounts;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetNotebookCounts()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetNotebookCounts()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_a

    if-nez v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetTagCounts()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetTagCounts()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_a

    if-nez v2, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetTrashCount()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetTrashCount()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_a

    if-nez v2, :cond_8

    goto :goto_0

    .line 11
    :cond_8
    iget p0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->trashCount:I

    iget p1, p1, Lcom/evernote/edam/notestore/NoteCollectionCounts;->trashCount:I

    if-eq p0, p1, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x1

    return p0

    :cond_a
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/evernote/edam/notestore/NoteCollectionCounts;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/notestore/NoteCollectionCounts;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->equals(Lcom/evernote/edam/notestore/NoteCollectionCounts;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getNotebookCounts()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    return-object p0
.end method

.method public getNotebookCountsSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTagCounts()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    return-object p0
.end method

.method public getTagCountsSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTrashCount()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->trashCount:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSetNotebookCounts()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetTagCounts()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetTrashCount()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public putToNotebookCounts(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putToTagCounts(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/4 v2, 0x0

    const/16 v3, 0xd

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :cond_1
    const/16 v0, 0x8

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->trashCount:I

    invoke-virtual {p0, v5}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->setTrashCountIsSet(Z)V

    goto :goto_3

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_3

    :cond_3
    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readMapBegin()Lcom/evernote/thrift/protocol/TMap;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    iget v3, v0, Lcom/evernote/thrift/protocol/TMap;->size:I

    mul-int/2addr v3, v4

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    :goto_1
    iget v1, v0, Lcom/evernote/thrift/protocol/TMap;->size:I

    if-ge v2, v1, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v3

    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readMapEnd()V

    goto :goto_3

    :cond_5
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_3

    :cond_6
    if-ne v1, v3, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readMapBegin()Lcom/evernote/thrift/protocol/TMap;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    iget v3, v0, Lcom/evernote/thrift/protocol/TMap;->size:I

    mul-int/2addr v3, v4

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    :goto_2
    iget v1, v0, Lcom/evernote/thrift/protocol/TMap;->size:I

    if-ge v2, v1, :cond_7

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v3

    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readMapEnd()V

    goto :goto_3

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto/16 :goto_0
.end method

.method public setNotebookCounts(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    return-void
.end method

.method public setNotebookCountsIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public setTagCounts(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    return-void
.end method

.method public setTagCountsIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public setTrashCount(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->trashCount:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->setTrashCountIsSet(Z)V

    return-void
.end method

.method public setTrashCountIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NoteCollectionCounts("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetNotebookCounts()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "null"

    if-eqz v1, :cond_1

    const-string v1, "notebookCounts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetTagCounts()Z

    move-result v4

    const-string v5, ", "

    if-eqz v4, :cond_4

    if-nez v1, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "tagCounts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    if-nez v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetTrashCount()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v2, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "trashCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->trashCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetNotebookCounts()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    return-void
.end method

.method public unsetTagCounts()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    return-void
.end method

.method public unsetTrashCount()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->validate()V

    sget-object v0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    const/16 v1, 0x8

    const/16 v2, 0xb

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetNotebookCounts()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->NOTEBOOK_COUNTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TMap;

    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/evernote/thrift/protocol/TMap;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeMapBegin(Lcom/evernote/thrift/protocol/TMap;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->notebookCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMapEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetTagCounts()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->TAG_COUNTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TMap;

    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/evernote/thrift/protocol/TMap;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeMapBegin(Lcom/evernote/thrift/protocol/TMap;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->tagCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMapEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->isSetTrashCount()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->TRASH_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget p0, p0, Lcom/evernote/edam/notestore/NoteCollectionCounts;->trashCount:I

    invoke-virtual {p1, p0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_4
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
