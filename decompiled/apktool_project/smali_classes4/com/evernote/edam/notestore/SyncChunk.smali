.class public Lcom/evernote/edam/notestore/SyncChunk;
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
        "Lcom/evernote/edam/notestore/SyncChunk;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final CHUNK_HIGH_USN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EXPUNGED_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EXPUNGED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EXPUNGED_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EXPUNGED_SEARCHES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EXPUNGED_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RESOURCES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SEARCHES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UPDATE_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __CHUNKHIGHUSN_ISSET_ID:I = 0x1

.field private static final __CURRENTTIME_ISSET_ID:I = 0x0

.field private static final __UPDATECOUNT_ISSET_ID:I = 0x2


# instance fields
.field private __isset_vector:[Z

.field private chunkHighUSN:I

.field private currentTime:J

.field private expungedLinkedNotebooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expungedNotebooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expungedNotes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expungedSearches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expungedTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private linkedNotebooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
        }
    .end annotation
.end field

.field private notebooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation
.end field

.field private notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Note;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private searches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private updateCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "SyncChunk"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "currentTime"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x2

    const-string v2, "chunkHighUSN"

    const/16 v4, 0x8

    invoke-direct {v0, v2, v4, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->CHUNK_HIGH_USN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "updateCount"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->UPDATE_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x4

    const-string v2, "notes"

    const/16 v5, 0xf

    invoke-direct {v0, v2, v5, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notebooks"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "tags"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "searches"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->SEARCHES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "resources"

    invoke-direct {v0, v1, v5, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->RESOURCES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "expungedNotes"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "expungedNotebooks"

    invoke-direct {v0, v1, v5, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "expungedTags"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "expungedSearches"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_SEARCHES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "linkedNotebooks"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "expungedLinkedNotebooks"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/evernote/edam/notestore/SyncChunk;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunk;->setCurrentTimeIsSet(Z)V

    .line 6
    iput p3, p0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    .line 7
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunk;->setUpdateCountIsSet(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/SyncChunk;)V
    .locals 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 9
    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    .line 10
    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-wide v0, p1, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    iput-wide v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    .line 12
    iget v0, p1, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    iput v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    .line 13
    iget v0, p1, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    iput v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    .line 14
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/Note;

    .line 17
    new-instance v3, Lcom/evernote/edam/type/Note;

    invoke-direct {v3, v2}, Lcom/evernote/edam/type/Note;-><init>(Lcom/evernote/edam/type/Note;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_0
    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotebooks()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/Notebook;

    .line 22
    new-instance v3, Lcom/evernote/edam/type/Notebook;

    invoke-direct {v3, v2}, Lcom/evernote/edam/type/Notebook;-><init>(Lcom/evernote/edam/type/Notebook;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_2
    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    .line 24
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetTags()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/Tag;

    .line 27
    new-instance v3, Lcom/evernote/edam/type/Tag;

    invoke-direct {v3, v2}, Lcom/evernote/edam/type/Tag;-><init>(Lcom/evernote/edam/type/Tag;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 28
    :cond_4
    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    .line 29
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetSearches()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/SavedSearch;

    .line 32
    new-instance v3, Lcom/evernote/edam/type/SavedSearch;

    invoke-direct {v3, v2}, Lcom/evernote/edam/type/SavedSearch;-><init>(Lcom/evernote/edam/type/SavedSearch;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 33
    :cond_6
    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    .line 34
    :cond_7
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetResources()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/Resource;

    .line 37
    new-instance v3, Lcom/evernote/edam/type/Resource;

    invoke-direct {v3, v2}, Lcom/evernote/edam/type/Resource;-><init>(Lcom/evernote/edam/type/Resource;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 38
    :cond_8
    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    .line 39
    :cond_9
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotes()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 42
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 43
    :cond_a
    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    .line 44
    :cond_b
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 48
    :cond_c
    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    .line 49
    :cond_d
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedTags()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 53
    :cond_e
    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    .line 54
    :cond_f
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedSearches()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 58
    :cond_10
    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    .line 59
    :cond_11
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetLinkedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/LinkedNotebook;

    .line 62
    new-instance v3, Lcom/evernote/edam/type/LinkedNotebook;

    invoke-direct {v3, v2}, Lcom/evernote/edam/type/LinkedNotebook;-><init>(Lcom/evernote/edam/type/LinkedNotebook;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 63
    :cond_12
    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    .line 64
    :cond_13
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedLinkedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object p1, p1, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 68
    :cond_14
    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    :cond_15
    return-void
.end method


# virtual methods
.method public addToExpungedLinkedNotebooks(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToExpungedNotebooks(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToExpungedNotes(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToExpungedSearches(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToExpungedTags(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToLinkedNotebooks(Lcom/evernote/edam/type/LinkedNotebook;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToNotebooks(Lcom/evernote/edam/type/Notebook;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToNotes(Lcom/evernote/edam/type/Note;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToResources(Lcom/evernote/edam/type/Resource;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToSearches(Lcom/evernote/edam/type/SavedSearch;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToTags(Lcom/evernote/edam/type/Tag;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunk;->setCurrentTimeIsSet(Z)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunk;->setChunkHighUSNIsSet(Z)V

    iput v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunk;->setUpdateCountIsSet(Z)V

    iput v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/SyncChunk;)I
    .locals 4

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
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetCurrentTime()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetCurrentTime()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetCurrentTime()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    iget-wide v2, p1, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetChunkHighUSN()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetChunkHighUSN()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetChunkHighUSN()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    iget v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetUpdateCount()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetUpdateCount()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetUpdateCount()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    iget v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotes()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotes()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotes()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotebooks()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotebooks()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotebooks()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetTags()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetTags()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetTags()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetSearches()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetSearches()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetSearches()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetResources()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetResources()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 19
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetResources()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    .line 20
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotes()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotes()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 21
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotes()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    .line 22
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotebooks()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotebooks()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    .line 23
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    .line 24
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedTags()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedTags()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    .line 25
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedTags()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 26
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedSearches()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedSearches()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    .line 27
    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedSearches()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_18

    return v0

    .line 28
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetLinkedNotebooks()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetLinkedNotebooks()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_19

    return v0

    .line 29
    :cond_19
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetLinkedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_1a

    return v0

    .line 30
    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedLinkedNotebooks()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedLinkedNotebooks()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1b

    return v0

    .line 31
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedLinkedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    iget-object p1, p1, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result p0

    if-eqz p0, :cond_1c

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/notestore/SyncChunk;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunk;->compareTo(Lcom/evernote/edam/notestore/SyncChunk;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/SyncChunk;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/notestore/SyncChunk;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/SyncChunk;-><init>(Lcom/evernote/edam/notestore/SyncChunk;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->deepCopy()Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/notestore/SyncChunk;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-wide v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    iget-wide v3, p1, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetChunkHighUSN()Z

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetChunkHighUSN()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    if-eqz v1, :cond_27

    if-nez v2, :cond_3

    goto/16 :goto_0

    .line 6
    :cond_3
    iget v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    iget v2, p1, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    if-eq v1, v2, :cond_4

    return v0

    .line 7
    :cond_4
    iget v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    iget v2, p1, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    if-eq v1, v2, :cond_5

    return v0

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotes()Z

    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotes()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_8

    :cond_6
    if-eqz v1, :cond_27

    if-nez v2, :cond_7

    goto/16 :goto_0

    .line 10
    :cond_7
    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    iget-object v2, p1, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 11
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotebooks()Z

    move-result v1

    .line 12
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotebooks()Z

    move-result v2

    if-nez v1, :cond_9

    if-eqz v2, :cond_b

    :cond_9
    if-eqz v1, :cond_27

    if-nez v2, :cond_a

    goto/16 :goto_0

    .line 13
    :cond_a
    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    iget-object v2, p1, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 14
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetTags()Z

    move-result v1

    .line 15
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetTags()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_e

    :cond_c
    if-eqz v1, :cond_27

    if-nez v2, :cond_d

    goto/16 :goto_0

    .line 16
    :cond_d
    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    iget-object v2, p1, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v0

    .line 17
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetSearches()Z

    move-result v1

    .line 18
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetSearches()Z

    move-result v2

    if-nez v1, :cond_f

    if-eqz v2, :cond_11

    :cond_f
    if-eqz v1, :cond_27

    if-nez v2, :cond_10

    goto/16 :goto_0

    .line 19
    :cond_10
    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    iget-object v2, p1, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v0

    .line 20
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetResources()Z

    move-result v1

    .line 21
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetResources()Z

    move-result v2

    if-nez v1, :cond_12

    if-eqz v2, :cond_14

    :cond_12
    if-eqz v1, :cond_27

    if-nez v2, :cond_13

    goto/16 :goto_0

    .line 22
    :cond_13
    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    iget-object v2, p1, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v0

    .line 23
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotes()Z

    move-result v1

    .line 24
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotes()Z

    move-result v2

    if-nez v1, :cond_15

    if-eqz v2, :cond_17

    :cond_15
    if-eqz v1, :cond_27

    if-nez v2, :cond_16

    goto/16 :goto_0

    .line 25
    :cond_16
    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    iget-object v2, p1, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v0

    .line 26
    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotebooks()Z

    move-result v1

    .line 27
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotebooks()Z

    move-result v2

    if-nez v1, :cond_18

    if-eqz v2, :cond_1a

    :cond_18
    if-eqz v1, :cond_27

    if-nez v2, :cond_19

    goto/16 :goto_0

    .line 28
    :cond_19
    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    iget-object v2, p1, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v0

    .line 29
    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedTags()Z

    move-result v1

    .line 30
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedTags()Z

    move-result v2

    if-nez v1, :cond_1b

    if-eqz v2, :cond_1d

    :cond_1b
    if-eqz v1, :cond_27

    if-nez v2, :cond_1c

    goto :goto_0

    .line 31
    :cond_1c
    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    iget-object v2, p1, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v0

    .line 32
    :cond_1d
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedSearches()Z

    move-result v1

    .line 33
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedSearches()Z

    move-result v2

    if-nez v1, :cond_1e

    if-eqz v2, :cond_20

    :cond_1e
    if-eqz v1, :cond_27

    if-nez v2, :cond_1f

    goto :goto_0

    .line 34
    :cond_1f
    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    iget-object v2, p1, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v0

    .line 35
    :cond_20
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetLinkedNotebooks()Z

    move-result v1

    .line 36
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetLinkedNotebooks()Z

    move-result v2

    if-nez v1, :cond_21

    if-eqz v2, :cond_23

    :cond_21
    if-eqz v1, :cond_27

    if-nez v2, :cond_22

    goto :goto_0

    .line 37
    :cond_22
    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    iget-object v2, p1, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v0

    .line 38
    :cond_23
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedLinkedNotebooks()Z

    move-result v1

    .line 39
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedLinkedNotebooks()Z

    move-result v2

    if-nez v1, :cond_24

    if-eqz v2, :cond_26

    :cond_24
    if-eqz v1, :cond_27

    if-nez v2, :cond_25

    goto :goto_0

    .line 40
    :cond_25
    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    iget-object p1, p1, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    return v0

    :cond_26
    const/4 p0, 0x1

    return p0

    :cond_27
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
    instance-of v1, p1, Lcom/evernote/edam/notestore/SyncChunk;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/notestore/SyncChunk;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunk;->equals(Lcom/evernote/edam/notestore/SyncChunk;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getChunkHighUSN()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    return p0
.end method

.method public getCurrentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    return-wide v0
.end method

.method public getExpungedLinkedNotebooks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    return-object p0
.end method

.method public getExpungedLinkedNotebooksIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getExpungedLinkedNotebooksSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getExpungedNotebooks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    return-object p0
.end method

.method public getExpungedNotebooksIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getExpungedNotebooksSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getExpungedNotes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    return-object p0
.end method

.method public getExpungedNotesIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getExpungedNotesSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getExpungedSearches()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    return-object p0
.end method

.method public getExpungedSearchesIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getExpungedSearchesSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getExpungedTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    return-object p0
.end method

.method public getExpungedTagsIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getExpungedTagsSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getLinkedNotebooks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    return-object p0
.end method

.method public getLinkedNotebooksIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLinkedNotebooksSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getNotebooks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    return-object p0
.end method

.method public getNotebooksIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getNotebooksSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getNotes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Note;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    return-object p0
.end method

.method public getNotesIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/evernote/edam/type/Note;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getNotesSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getResources()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Resource;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    return-object p0
.end method

.method public getResourcesIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/evernote/edam/type/Resource;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getResourcesSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getSearches()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    return-object p0
.end method

.method public getSearchesIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSearchesSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    return-object p0
.end method

.method public getTagsIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTagsSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getUpdateCount()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSetChunkHighUSN()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetCurrentTime()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetExpungedLinkedNotebooks()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetExpungedNotebooks()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetExpungedNotes()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetExpungedSearches()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetExpungedTags()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetLinkedNotebooks()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetNotebooks()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetNotes()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetResources()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetSearches()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetTags()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetUpdateCount()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
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

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/16 v4, 0xf

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_c

    :pswitch_0
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    :goto_1
    iget v1, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v3, v1, :cond_1

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_c

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_c

    :pswitch_1
    if-ne v1, v4, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    :goto_2
    iget v1, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v3, v1, :cond_3

    new-instance v1, Lcom/evernote/edam/type/LinkedNotebook;

    invoke-direct {v1}, Lcom/evernote/edam/type/LinkedNotebook;-><init>()V

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/LinkedNotebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_c

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_c

    :pswitch_2
    if-ne v1, v4, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    :goto_3
    iget v1, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v3, v1, :cond_5

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_c

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_c

    :pswitch_3
    if-ne v1, v4, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    :goto_4
    iget v1, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v3, v1, :cond_7

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_c

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_c

    :pswitch_4
    if-ne v1, v4, :cond_a

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    :goto_5
    iget v1, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v3, v1, :cond_9

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_c

    :cond_a
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_c

    :pswitch_5
    if-ne v1, v4, :cond_c

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    :goto_6
    iget v1, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v3, v1, :cond_b

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_c

    :cond_c
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_c

    :pswitch_6
    if-ne v1, v4, :cond_e

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    :goto_7
    iget v1, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v3, v1, :cond_d

    new-instance v1, Lcom/evernote/edam/type/Resource;

    invoke-direct {v1}, Lcom/evernote/edam/type/Resource;-><init>()V

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Resource;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_d
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_c

    :cond_e
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_c

    :pswitch_7
    if-ne v1, v4, :cond_10

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    :goto_8
    iget v1, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v3, v1, :cond_f

    new-instance v1, Lcom/evernote/edam/type/SavedSearch;

    invoke-direct {v1}, Lcom/evernote/edam/type/SavedSearch;-><init>()V

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/SavedSearch;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_c

    :cond_10
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_c

    :pswitch_8
    if-ne v1, v4, :cond_12

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    :goto_9
    iget v1, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v3, v1, :cond_11

    new-instance v1, Lcom/evernote/edam/type/Tag;

    invoke-direct {v1}, Lcom/evernote/edam/type/Tag;-><init>()V

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Tag;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_c

    :cond_12
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_c

    :pswitch_9
    if-ne v1, v4, :cond_14

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    :goto_a
    iget v1, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v3, v1, :cond_13

    new-instance v1, Lcom/evernote/edam/type/Notebook;

    invoke-direct {v1}, Lcom/evernote/edam/type/Notebook;-><init>()V

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Notebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_13
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_c

    :cond_14
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_c

    :pswitch_a
    if-ne v1, v4, :cond_16

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    :goto_b
    iget v1, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v3, v1, :cond_15

    new-instance v1, Lcom/evernote/edam/type/Note;

    invoke-direct {v1}, Lcom/evernote/edam/type/Note;-><init>()V

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Note;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_15
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_c

    :cond_16
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_c

    :pswitch_b
    if-ne v1, v2, :cond_17

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    invoke-virtual {p0, v5}, Lcom/evernote/edam/notestore/SyncChunk;->setUpdateCountIsSet(Z)V

    goto :goto_c

    :cond_17
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_c

    :pswitch_c
    if-ne v1, v2, :cond_18

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    invoke-virtual {p0, v5}, Lcom/evernote/edam/notestore/SyncChunk;->setChunkHighUSNIsSet(Z)V

    goto :goto_c

    :cond_18
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_c

    :pswitch_d
    const/16 v0, 0xa

    if-ne v1, v0, :cond_19

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    invoke-virtual {p0, v5}, Lcom/evernote/edam/notestore/SyncChunk;->setCurrentTimeIsSet(Z)V

    goto :goto_c

    :cond_19
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_c
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setChunkHighUSN(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunk;->setChunkHighUSNIsSet(Z)V

    return-void
.end method

.method public setChunkHighUSNIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setCurrentTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunk;->setCurrentTimeIsSet(Z)V

    return-void
.end method

.method public setCurrentTimeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setExpungedLinkedNotebooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    return-void
.end method

.method public setExpungedLinkedNotebooksIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setExpungedNotebooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    return-void
.end method

.method public setExpungedNotebooksIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setExpungedNotes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    return-void
.end method

.method public setExpungedNotesIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setExpungedSearches(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    return-void
.end method

.method public setExpungedSearchesIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setExpungedTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    return-void
.end method

.method public setExpungedTagsIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setLinkedNotebooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    return-void
.end method

.method public setLinkedNotebooksIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setNotebooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    return-void
.end method

.method public setNotebooksIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setNotes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Note;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    return-void
.end method

.method public setNotesIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Resource;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    return-void
.end method

.method public setResourcesIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setSearches(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    return-void
.end method

.method public setSearchesIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Tag;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    return-void
.end method

.method public setTagsIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setUpdateCount(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunk;->setUpdateCountIsSet(Z)V

    return-void
.end method

.method public setUpdateCountIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SyncChunk("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "currentTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetChunkHighUSN()Z

    move-result v1

    const-string v2, ", "

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "chunkHighUSN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "updateCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotes()Z

    move-result v1

    const-string v3, "null"

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "notes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotebooks()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "notebooks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    if-nez v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetTags()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    if-nez v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetSearches()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "searches:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    if-nez v1, :cond_7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetResources()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "resources:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    if-nez v1, :cond_9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotes()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "expungedNotes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    if-nez v1, :cond_b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c
    :goto_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotebooks()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "expungedNotebooks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    if-nez v1, :cond_d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedTags()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "expungedTags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    if-nez v1, :cond_f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_10
    :goto_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedSearches()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "expungedSearches:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    if-nez v1, :cond_11

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_12
    :goto_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetLinkedNotebooks()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "linkedNotebooks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    if-nez v1, :cond_13

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    :goto_9
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedLinkedNotebooks()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "expungedLinkedNotebooks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    if-nez p0, :cond_15

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_16
    :goto_a
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetChunkHighUSN()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetCurrentTime()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public unsetExpungedLinkedNotebooks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    return-void
.end method

.method public unsetExpungedNotebooks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    return-void
.end method

.method public unsetExpungedNotes()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    return-void
.end method

.method public unsetExpungedSearches()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    return-void
.end method

.method public unsetExpungedTags()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    return-void
.end method

.method public unsetLinkedNotebooks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    return-void
.end method

.method public unsetNotebooks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    return-void
.end method

.method public unsetNotes()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    return-void
.end method

.method public unsetResources()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    return-void
.end method

.method public unsetSearches()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    return-void
.end method

.method public unsetTags()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    return-void
.end method

.method public unsetUpdateCount()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetCurrentTime()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetUpdateCount()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'updateCount\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'currentTime\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->validate()V

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunk;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunk;->CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetChunkHighUSN()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunk;->CHUNK_HIGH_USN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    sget-object v0, Lcom/evernote/edam/notestore/SyncChunk;->UPDATE_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    const/16 v1, 0xc

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotes()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunk;->NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TList;

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/Note;

    invoke-virtual {v2, p1}, Lcom/evernote/edam/type/Note;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotebooks()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunk;->NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TList;

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/Notebook;

    invoke-virtual {v2, p1}, Lcom/evernote/edam/type/Notebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetTags()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunk;->TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TList;

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/Tag;

    invoke-virtual {v2, p1}, Lcom/evernote/edam/type/Tag;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_6
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetSearches()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunk;->SEARCHES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TList;

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/SavedSearch;

    invoke-virtual {v2, p1}, Lcom/evernote/edam/type/SavedSearch;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_8
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetResources()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunk;->RESOURCES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TList;

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/Resource;

    invoke-virtual {v2, p1}, Lcom/evernote/edam/type/Resource;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_a
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    const/16 v2, 0xb

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotes()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TList;

    iget-object v3, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_c
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TList;

    iget-object v3, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_e
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedTags()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TList;

    iget-object v3, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_10
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedSearches()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_SEARCHES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TList;

    iget-object v3, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_12
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetLinkedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunk;->LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TList;

    iget-object v3, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/edam/type/LinkedNotebook;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/LinkedNotebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_9

    :cond_13
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_14
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedLinkedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TList;

    iget-object v1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :cond_15
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_16
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
