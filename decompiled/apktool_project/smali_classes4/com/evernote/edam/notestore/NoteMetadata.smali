.class public Lcom/evernote/edam/notestore/NoteMetadata;
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
        "Lcom/evernote/edam/notestore/NoteMetadata;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CONTENT_LENGTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LARGEST_RESOURCE_MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LARGEST_RESOURCE_SIZE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final TAG_GUIDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final TITLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __CONTENTLENGTH_ISSET_ID:I = 0x0

.field private static final __CREATED_ISSET_ID:I = 0x1

.field private static final __DELETED_ISSET_ID:I = 0x3

.field private static final __LARGESTRESOURCESIZE_ISSET_ID:I = 0x5

.field private static final __UPDATED_ISSET_ID:I = 0x2

.field private static final __UPDATESEQUENCENUM_ISSET_ID:I = 0x4


# instance fields
.field private __isset_vector:[Z

.field private attributes:Lcom/evernote/edam/type/NoteAttributes;

.field private contentLength:I

.field private created:J

.field private deleted:J

.field private guid:Ljava/lang/String;

.field private largestResourceMime:Ljava/lang/String;

.field private largestResourceSize:I

.field private notebookGuid:Ljava/lang/String;

.field private tagGuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private updateSequenceNum:I

.field private updated:J


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "NoteMetadata"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "guid"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "title"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->TITLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x5

    const-string v2, "contentLength"

    const/16 v4, 0x8

    invoke-direct {v0, v2, v4, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->CONTENT_LENGTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x6

    const-string v2, "created"

    const/16 v5, 0xa

    invoke-direct {v0, v2, v5, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "updated"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "deleted"

    invoke-direct {v0, v1, v5, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "updateSequenceNum"

    invoke-direct {v0, v1, v4, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notebookGuid"

    invoke-direct {v0, v1, v3, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "tagGuids"

    const/16 v2, 0xf

    const/16 v5, 0xc

    invoke-direct {v0, v1, v2, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->TAG_GUIDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "attributes"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "largestResourceMime"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->LARGEST_RESOURCE_MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "largestResourceSize"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->LARGEST_RESOURCE_SIZE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteMetadata;)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Z

    .line 6
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    .line 7
    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    .line 12
    :cond_1
    iget v0, p1, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    iput v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    .line 13
    iget-wide v0, p1, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    iput-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    .line 14
    iget-wide v0, p1, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    iput-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    .line 15
    iget-wide v0, p1, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    iput-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    .line 16
    iget v0, p1, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    iput v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    .line 17
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetNotebookGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTagGuids()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_3
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    .line 24
    :cond_4
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetAttributes()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    new-instance v0, Lcom/evernote/edam/type/NoteAttributes;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/NoteAttributes;-><init>(Lcom/evernote/edam/type/NoteAttributes;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    .line 26
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceMime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    .line 28
    :cond_6
    iget p1, p1, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    iput p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/evernote/edam/notestore/NoteMetadata;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addToTagGuids(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/evernote/edam/notestore/NoteMetadata;->setContentLengthIsSet(Z)V

    iput v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    invoke-virtual {p0, v1}, Lcom/evernote/edam/notestore/NoteMetadata;->setCreatedIsSet(Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    invoke-virtual {p0, v1}, Lcom/evernote/edam/notestore/NoteMetadata;->setUpdatedIsSet(Z)V

    iput-wide v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    invoke-virtual {p0, v1}, Lcom/evernote/edam/notestore/NoteMetadata;->setDeletedIsSet(Z)V

    iput-wide v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    invoke-virtual {p0, v1}, Lcom/evernote/edam/notestore/NoteMetadata;->setUpdateSequenceNumIsSet(Z)V

    iput v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/evernote/edam/notestore/NoteMetadata;->setLargestResourceSizeIsSet(Z)V

    iput v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteMetadata;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetGuid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetGuid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTitle()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTitle()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTitle()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetContentLength()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetContentLength()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetContentLength()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    iget v1, p1, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetCreated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetCreated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetCreated()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    iget-wide v2, p1, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdated()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    iget-wide v2, p1, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetDeleted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetDeleted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetDeleted()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    iget-wide v2, p1, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdateSequenceNum()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdateSequenceNum()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdateSequenceNum()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    iget v1, p1, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetNotebookGuid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetNotebookGuid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 19
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetNotebookGuid()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    .line 20
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTagGuids()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTagGuids()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 21
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTagGuids()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    .line 22
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetAttributes()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetAttributes()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    .line 23
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetAttributes()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    .line 24
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceMime()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceMime()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    .line 25
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceMime()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 26
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceSize()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceSize()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    .line 27
    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceSize()Z

    move-result v0

    if-eqz v0, :cond_18

    iget p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    iget p1, p1, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result p0

    if-eqz p0, :cond_18

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/notestore/NoteMetadata;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteMetadata;->compareTo(Lcom/evernote/edam/notestore/NoteMetadata;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteMetadata;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/notestore/NoteMetadata;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteMetadata;-><init>(Lcom/evernote/edam/notestore/NoteMetadata;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->deepCopy()Lcom/evernote/edam/notestore/NoteMetadata;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/notestore/NoteMetadata;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetGuid()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetGuid()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_25

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTitle()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTitle()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_25

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 8
    :cond_5
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetContentLength()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetContentLength()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_25

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 11
    :cond_8
    iget v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    iget v2, p1, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    if-eq v1, v2, :cond_9

    return v0

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetCreated()Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetCreated()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_25

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 14
    :cond_b
    iget-wide v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    iget-wide v3, p1, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c

    return v0

    .line 15
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdated()Z

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdated()Z

    move-result v2

    if-nez v1, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-eqz v1, :cond_25

    if-nez v2, :cond_e

    goto/16 :goto_0

    .line 17
    :cond_e
    iget-wide v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    iget-wide v3, p1, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_f

    return v0

    .line 18
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetDeleted()Z

    move-result v1

    .line 19
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetDeleted()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_12

    :cond_10
    if-eqz v1, :cond_25

    if-nez v2, :cond_11

    goto/16 :goto_0

    .line 20
    :cond_11
    iget-wide v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    iget-wide v3, p1, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_12

    return v0

    .line 21
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdateSequenceNum()Z

    move-result v1

    .line 22
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdateSequenceNum()Z

    move-result v2

    if-nez v1, :cond_13

    if-eqz v2, :cond_15

    :cond_13
    if-eqz v1, :cond_25

    if-nez v2, :cond_14

    goto/16 :goto_0

    .line 23
    :cond_14
    iget v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    iget v2, p1, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    if-eq v1, v2, :cond_15

    return v0

    .line 24
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetNotebookGuid()Z

    move-result v1

    .line 25
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetNotebookGuid()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_18

    :cond_16
    if-eqz v1, :cond_25

    if-nez v2, :cond_17

    goto/16 :goto_0

    .line 26
    :cond_17
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v0

    .line 27
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTagGuids()Z

    move-result v1

    .line 28
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTagGuids()Z

    move-result v2

    if-nez v1, :cond_19

    if-eqz v2, :cond_1b

    :cond_19
    if-eqz v1, :cond_25

    if-nez v2, :cond_1a

    goto :goto_0

    .line 29
    :cond_1a
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v0

    .line 30
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetAttributes()Z

    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetAttributes()Z

    move-result v2

    if-nez v1, :cond_1c

    if-eqz v2, :cond_1e

    :cond_1c
    if-eqz v1, :cond_25

    if-nez v2, :cond_1d

    goto :goto_0

    .line 32
    :cond_1d
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    invoke-virtual {v1, v2}, Lcom/evernote/edam/type/NoteAttributes;->equals(Lcom/evernote/edam/type/NoteAttributes;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v0

    .line 33
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceMime()Z

    move-result v1

    .line 34
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceMime()Z

    move-result v2

    if-nez v1, :cond_1f

    if-eqz v2, :cond_21

    :cond_1f
    if-eqz v1, :cond_25

    if-nez v2, :cond_20

    goto :goto_0

    .line 35
    :cond_20
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v0

    .line 36
    :cond_21
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceSize()Z

    move-result v1

    .line 37
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceSize()Z

    move-result v2

    if-nez v1, :cond_22

    if-eqz v2, :cond_24

    :cond_22
    if-eqz v1, :cond_25

    if-nez v2, :cond_23

    goto :goto_0

    .line 38
    :cond_23
    iget p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    iget p1, p1, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    if-eq p0, p1, :cond_24

    return v0

    :cond_24
    const/4 p0, 0x1

    return p0

    :cond_25
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
    instance-of v1, p1, Lcom/evernote/edam/notestore/NoteMetadata;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/notestore/NoteMetadata;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteMetadata;->equals(Lcom/evernote/edam/notestore/NoteMetadata;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getAttributes()Lcom/evernote/edam/type/NoteAttributes;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    return-object p0
.end method

.method public getContentLength()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    return p0
.end method

.method public getCreated()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    return-wide v0
.end method

.method public getDeleted()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    return-wide v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    return-object p0
.end method

.method public getLargestResourceMime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    return-object p0
.end method

.method public getLargestResourceSize()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    return p0
.end method

.method public getNotebookGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    return-object p0
.end method

.method public getTagGuids()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    return-object p0
.end method

.method public getTagGuidsIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTagGuidsSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateSequenceNum()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    return p0
.end method

.method public getUpdated()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSetAttributes()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetContentLength()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetCreated()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetDeleted()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetGuid()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetLargestResourceMime()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetLargestResourceSize()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v0, 0x5

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNotebookGuid()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetTagGuids()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetTitle()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetUpdateSequenceNum()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetUpdated()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 7
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

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-eq v0, v3, :cond_15

    const/4 v4, 0x2

    if-eq v0, v4, :cond_13

    const/4 v4, 0x5

    const/16 v5, 0x8

    if-eq v0, v4, :cond_11

    const/4 v4, 0x6

    const/16 v6, 0xa

    if-eq v0, v4, :cond_f

    const/4 v4, 0x7

    if-eq v0, v4, :cond_d

    if-eq v0, v5, :cond_b

    const/16 v4, 0xe

    if-eq v0, v4, :cond_9

    const/16 v4, 0x14

    if-eq v0, v4, :cond_7

    const/16 v4, 0x15

    if-eq v0, v4, :cond_5

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :pswitch_0
    const/16 v0, 0xf

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    const/4 v1, 0x0

    :goto_1
    iget v2, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_2

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :pswitch_1
    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :pswitch_2
    if-ne v1, v5, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteMetadata;->setUpdateSequenceNumIsSet(Z)V

    goto/16 :goto_2

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :cond_5
    if-ne v1, v5, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteMetadata;->setLargestResourceSizeIsSet(Z)V

    goto/16 :goto_2

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :cond_7
    if-ne v1, v2, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :cond_9
    const/16 v0, 0xc

    if-ne v1, v0, :cond_a

    new-instance v0, Lcom/evernote/edam/type/NoteAttributes;

    invoke-direct {v0}, Lcom/evernote/edam/type/NoteAttributes;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/NoteAttributes;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_2

    :cond_a
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_2

    :cond_b
    if-ne v1, v6, :cond_c

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteMetadata;->setDeletedIsSet(Z)V

    goto :goto_2

    :cond_c
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_2

    :cond_d
    if-ne v1, v6, :cond_e

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteMetadata;->setUpdatedIsSet(Z)V

    goto :goto_2

    :cond_e
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_2

    :cond_f
    if-ne v1, v6, :cond_10

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteMetadata;->setCreatedIsSet(Z)V

    goto :goto_2

    :cond_10
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_2

    :cond_11
    if-ne v1, v5, :cond_12

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteMetadata;->setContentLengthIsSet(Z)V

    goto :goto_2

    :cond_12
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_2

    :cond_13
    if-ne v1, v2, :cond_14

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    goto :goto_2

    :cond_14
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_2

    :cond_15
    if-ne v1, v2, :cond_16

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    goto :goto_2

    :cond_16
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAttributes(Lcom/evernote/edam/type/NoteAttributes;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    return-void
.end method

.method public setAttributesIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    :cond_0
    return-void
.end method

.method public setContentLength(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteMetadata;->setContentLengthIsSet(Z)V

    return-void
.end method

.method public setContentLengthIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setCreated(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteMetadata;->setCreatedIsSet(Z)V

    return-void
.end method

.method public setCreatedIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setDeleted(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteMetadata;->setDeletedIsSet(Z)V

    return-void
.end method

.method public setDeletedIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v0, 0x3

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    return-void
.end method

.method public setGuidIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLargestResourceMime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    return-void
.end method

.method public setLargestResourceMimeIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLargestResourceSize(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteMetadata;->setLargestResourceSizeIsSet(Z)V

    return-void
.end method

.method public setLargestResourceSizeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v0, 0x5

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNotebookGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    return-void
.end method

.method public setNotebookGuidIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTagGuids(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    return-void
.end method

.method public setTagGuidsIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setUpdateSequenceNum(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteMetadata;->setUpdateSequenceNumIsSet(Z)V

    return-void
.end method

.method public setUpdateSequenceNumIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v0, 0x4

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setUpdated(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteMetadata;->setUpdatedIsSet(Z)V

    return-void
.end method

.method public setUpdatedIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NoteMetadata("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "guid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTitle()Z

    move-result v1

    const-string v3, ", "

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetContentLength()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "contentLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetCreated()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "created:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdated()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "updated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetDeleted()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deleted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdateSequenceNum()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "updateSequenceNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetNotebookGuid()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "notebookGuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    if-nez v1, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTagGuids()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tagGuids:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    if-nez v1, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetAttributes()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "attributes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    if-nez v1, :cond_c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d
    :goto_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceMime()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "largestResourceMime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    if-nez v1, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceSize()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "largestResourceSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_10
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetAttributes()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    return-void
.end method

.method public unsetContentLength()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public unsetCreated()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetDeleted()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetGuid()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    return-void
.end method

.method public unsetLargestResourceMime()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    return-void
.end method

.method public unsetLargestResourceSize()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNotebookGuid()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    return-void
.end method

.method public unsetTagGuids()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    return-void
.end method

.method public unsetTitle()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    return-void
.end method

.method public unsetUpdateSequenceNum()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetUpdated()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

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

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'guid\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->validate()V

    sget-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->TITLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetContentLength()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->CONTENT_LENGTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetCreated()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdated()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetDeleted()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdateSequenceNum()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_6
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetNotebookGuid()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_7
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTagGuids()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->TAG_GUIDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TList;

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_9
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetAttributes()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/NoteAttributes;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_a
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceMime()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->LARGEST_RESOURCE_MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceSize()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->LARGEST_RESOURCE_SIZE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget p0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    invoke-virtual {p1, p0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_c
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
