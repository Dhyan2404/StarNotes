.class public Lcom/evernote/edam/notestore/NotesMetadataResultSpec;
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
        "Lcom/evernote/edam/notestore/NotesMetadataResultSpec;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final INCLUDE_ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_CONTENT_LENGTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_LARGEST_RESOURCE_MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_LARGEST_RESOURCE_SIZE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_TAG_GUIDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_TITLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __INCLUDEATTRIBUTES_ISSET_ID:I = 0x8

.field private static final __INCLUDECONTENTLENGTH_ISSET_ID:I = 0x1

.field private static final __INCLUDECREATED_ISSET_ID:I = 0x2

.field private static final __INCLUDEDELETED_ISSET_ID:I = 0x4

.field private static final __INCLUDELARGESTRESOURCEMIME_ISSET_ID:I = 0x9

.field private static final __INCLUDELARGESTRESOURCESIZE_ISSET_ID:I = 0xa

.field private static final __INCLUDENOTEBOOKGUID_ISSET_ID:I = 0x6

.field private static final __INCLUDETAGGUIDS_ISSET_ID:I = 0x7

.field private static final __INCLUDETITLE_ISSET_ID:I = 0x0

.field private static final __INCLUDEUPDATED_ISSET_ID:I = 0x3

.field private static final __INCLUDEUPDATESEQUENCENUM_ISSET_ID:I = 0x5


# instance fields
.field private __isset_vector:[Z

.field private includeAttributes:Z

.field private includeContentLength:Z

.field private includeCreated:Z

.field private includeDeleted:Z

.field private includeLargestResourceMime:Z

.field private includeLargestResourceSize:Z

.field private includeNotebookGuid:Z

.field private includeTagGuids:Z

.field private includeTitle:Z

.field private includeUpdateSequenceNum:Z

.field private includeUpdated:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "NotesMetadataResultSpec"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeTitle"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_TITLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeContentLength"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_CONTENT_LENGTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeCreated"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeUpdated"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeDeleted"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeUpdateSequenceNum"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeNotebookGuid"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeTagGuids"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_TAG_GUIDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeAttributes"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeLargestResourceMime"

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_LARGEST_RESOURCE_MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeLargestResourceSize"

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_LARGEST_RESOURCE_SIZE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NotesMetadataResultSpec;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [Z

    .line 4
    iput-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    .line 5
    iget-object v1, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    .line 7
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    .line 8
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    .line 9
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    .line 10
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    .line 11
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    .line 12
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    .line 13
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    .line 14
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    .line 15
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    .line 16
    iget-boolean p1, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeTitleIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeContentLengthIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeCreatedIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeUpdatedIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeDeletedIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeUpdateSequenceNumIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeNotebookGuidIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeTagGuidsIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeAttributesIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeLargestResourceMimeIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeLargestResourceSizeIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NotesMetadataResultSpec;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTitle()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTitle()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeContentLength()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeContentLength()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeContentLength()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeCreated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeCreated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeCreated()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdated()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeDeleted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeDeleted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeDeleted()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdateSequenceNum()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdateSequenceNum()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdateSequenceNum()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeNotebookGuid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeNotebookGuid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeNotebookGuid()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTagGuids()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTagGuids()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 19
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTagGuids()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    .line 20
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeAttributes()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeAttributes()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 21
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeAttributes()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    .line 22
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceMime()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceMime()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    .line 23
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceMime()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    .line 24
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceSize()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceSize()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    .line 25
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceSize()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    iget-boolean p1, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result p0

    if-eqz p0, :cond_16

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->compareTo(Lcom/evernote/edam/notestore/NotesMetadataResultSpec;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NotesMetadataResultSpec;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;-><init>(Lcom/evernote/edam/notestore/NotesMetadataResultSpec;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->deepCopy()Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/notestore/NotesMetadataResultSpec;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTitle()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTitle()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_22

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeContentLength()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeContentLength()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_22

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 8
    :cond_5
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    if-eq v1, v2, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeCreated()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeCreated()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_22

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 11
    :cond_8
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    if-eq v1, v2, :cond_9

    return v0

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdated()Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdated()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_22

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 14
    :cond_b
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    if-eq v1, v2, :cond_c

    return v0

    .line 15
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeDeleted()Z

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeDeleted()Z

    move-result v2

    if-nez v1, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-eqz v1, :cond_22

    if-nez v2, :cond_e

    goto/16 :goto_0

    .line 17
    :cond_e
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    if-eq v1, v2, :cond_f

    return v0

    .line 18
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdateSequenceNum()Z

    move-result v1

    .line 19
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdateSequenceNum()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_12

    :cond_10
    if-eqz v1, :cond_22

    if-nez v2, :cond_11

    goto/16 :goto_0

    .line 20
    :cond_11
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    if-eq v1, v2, :cond_12

    return v0

    .line 21
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeNotebookGuid()Z

    move-result v1

    .line 22
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeNotebookGuid()Z

    move-result v2

    if-nez v1, :cond_13

    if-eqz v2, :cond_15

    :cond_13
    if-eqz v1, :cond_22

    if-nez v2, :cond_14

    goto/16 :goto_0

    .line 23
    :cond_14
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    if-eq v1, v2, :cond_15

    return v0

    .line 24
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTagGuids()Z

    move-result v1

    .line 25
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTagGuids()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_18

    :cond_16
    if-eqz v1, :cond_22

    if-nez v2, :cond_17

    goto :goto_0

    .line 26
    :cond_17
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    if-eq v1, v2, :cond_18

    return v0

    .line 27
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeAttributes()Z

    move-result v1

    .line 28
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeAttributes()Z

    move-result v2

    if-nez v1, :cond_19

    if-eqz v2, :cond_1b

    :cond_19
    if-eqz v1, :cond_22

    if-nez v2, :cond_1a

    goto :goto_0

    .line 29
    :cond_1a
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    if-eq v1, v2, :cond_1b

    return v0

    .line 30
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceMime()Z

    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceMime()Z

    move-result v2

    if-nez v1, :cond_1c

    if-eqz v2, :cond_1e

    :cond_1c
    if-eqz v1, :cond_22

    if-nez v2, :cond_1d

    goto :goto_0

    .line 32
    :cond_1d
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    if-eq v1, v2, :cond_1e

    return v0

    .line 33
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceSize()Z

    move-result v1

    .line 34
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceSize()Z

    move-result v2

    if-nez v1, :cond_1f

    if-eqz v2, :cond_21

    :cond_1f
    if-eqz v1, :cond_22

    if-nez v2, :cond_20

    goto :goto_0

    .line 35
    :cond_20
    iget-boolean p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    iget-boolean p1, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    if-eq p0, p1, :cond_21

    return v0

    :cond_21
    const/4 p0, 0x1

    return p0

    :cond_22
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
    instance-of v1, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->equals(Lcom/evernote/edam/notestore/NotesMetadataResultSpec;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIncludeAttributes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    return p0
.end method

.method public isIncludeContentLength()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    return p0
.end method

.method public isIncludeCreated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    return p0
.end method

.method public isIncludeDeleted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    return p0
.end method

.method public isIncludeLargestResourceMime()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    return p0
.end method

.method public isIncludeLargestResourceSize()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    return p0
.end method

.method public isIncludeNotebookGuid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    return p0
.end method

.method public isIncludeTagGuids()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    return p0
.end method

.method public isIncludeTitle()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    return p0
.end method

.method public isIncludeUpdateSequenceNum()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    return p0
.end method

.method public isIncludeUpdated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    return p0
.end method

.method public isSetIncludeAttributes()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v0, 0x8

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeContentLength()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeCreated()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeDeleted()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeLargestResourceMime()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v0, 0x9

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeLargestResourceSize()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v0, 0xa

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeNotebookGuid()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x6

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeTagGuids()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x7

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeTitle()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeUpdateSequenceNum()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x5

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeUpdated()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    return p0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 5
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

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_12

    const/16 v4, 0xe

    if-eq v0, v4, :cond_10

    const/4 v4, 0x5

    if-eq v0, v4, :cond_e

    const/4 v4, 0x6

    if-eq v0, v4, :cond_c

    const/4 v4, 0x7

    if-eq v0, v4, :cond_a

    const/16 v4, 0x8

    if-eq v0, v4, :cond_8

    const/16 v4, 0x14

    if-eq v0, v4, :cond_6

    const/16 v4, 0x15

    if-eq v0, v4, :cond_4

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_0
    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeTagGuidsIsSet(Z)V

    goto/16 :goto_1

    :cond_1
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_1
    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeNotebookGuidIsSet(Z)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_2
    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeUpdateSequenceNumIsSet(Z)V

    goto/16 :goto_1

    :cond_3
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :cond_4
    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeLargestResourceSizeIsSet(Z)V

    goto/16 :goto_1

    :cond_5
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :cond_6
    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeLargestResourceMimeIsSet(Z)V

    goto/16 :goto_1

    :cond_7
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_8
    if-ne v1, v3, :cond_9

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeDeletedIsSet(Z)V

    goto :goto_1

    :cond_9
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_a
    if-ne v1, v3, :cond_b

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeUpdatedIsSet(Z)V

    goto :goto_1

    :cond_b
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_c
    if-ne v1, v3, :cond_d

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeCreatedIsSet(Z)V

    goto :goto_1

    :cond_d
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_e
    if-ne v1, v3, :cond_f

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeContentLengthIsSet(Z)V

    goto :goto_1

    :cond_f
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_10
    if-ne v1, v3, :cond_11

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeAttributesIsSet(Z)V

    goto :goto_1

    :cond_11
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_12
    if-ne v1, v3, :cond_13

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeTitleIsSet(Z)V

    goto :goto_1

    :cond_13
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setIncludeAttributes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeAttributesIsSet(Z)V

    return-void
.end method

.method public setIncludeAttributesIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v0, 0x8

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeContentLength(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeContentLengthIsSet(Z)V

    return-void
.end method

.method public setIncludeContentLengthIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeCreated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeCreatedIsSet(Z)V

    return-void
.end method

.method public setIncludeCreatedIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeDeleted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeDeletedIsSet(Z)V

    return-void
.end method

.method public setIncludeDeletedIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x4

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeLargestResourceMime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeLargestResourceMimeIsSet(Z)V

    return-void
.end method

.method public setIncludeLargestResourceMimeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v0, 0x9

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeLargestResourceSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeLargestResourceSizeIsSet(Z)V

    return-void
.end method

.method public setIncludeLargestResourceSizeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v0, 0xa

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeNotebookGuid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeNotebookGuidIsSet(Z)V

    return-void
.end method

.method public setIncludeNotebookGuidIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x6

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeTagGuids(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeTagGuidsIsSet(Z)V

    return-void
.end method

.method public setIncludeTagGuidsIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x7

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeTitleIsSet(Z)V

    return-void
.end method

.method public setIncludeTitleIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeUpdateSequenceNum(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeUpdateSequenceNumIsSet(Z)V

    return-void
.end method

.method public setIncludeUpdateSequenceNumIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x5

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeUpdated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeUpdatedIsSet(Z)V

    return-void
.end method

.method public setIncludeUpdatedIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x3

    aput-boolean p1, p0, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotesMetadataResultSpec("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTitle()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "includeTitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeContentLength()Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "includeContentLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeCreated()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "includeCreated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdated()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v1, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "includeUpdated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeDeleted()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v1, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "includeDeleted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdateSequenceNum()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v1, :cond_9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, "includeUpdateSequenceNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeNotebookGuid()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v1, :cond_b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, "includeNotebookGuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTagGuids()Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v1, :cond_d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, "includeTagGuids:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeAttributes()Z

    move-result v3

    if-eqz v3, :cond_10

    if-nez v1, :cond_f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v1, "includeAttributes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceMime()Z

    move-result v3

    if-eqz v3, :cond_12

    if-nez v1, :cond_11

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v1, "includeLargestResourceMime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_12
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceSize()Z

    move-result v1

    if-eqz v1, :cond_14

    if-nez v2, :cond_13

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string v1, "includeLargestResourceSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_14
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetIncludeAttributes()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeContentLength()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeCreated()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeDeleted()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeLargestResourceMime()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v0, 0x9

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeLargestResourceSize()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v0, 0xa

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeNotebookGuid()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeTagGuids()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeTitle()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public unsetIncludeUpdateSequenceNum()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeUpdated()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->validate()V

    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_TITLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeContentLength()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_CONTENT_LENGTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeCreated()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdated()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeDeleted()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdateSequenceNum()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeNotebookGuid()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTagGuids()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_TAG_GUIDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeAttributes()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceMime()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_LARGEST_RESOURCE_MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceSize()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_LARGEST_RESOURCE_SIZE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    invoke-virtual {p1, p0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_a
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
