.class public Lcom/evernote/edam/notestore/SyncChunkFilter;
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
        "Lcom/evernote/edam/notestore/SyncChunkFilter;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final INCLUDE_EXPUNGED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_NOTE_APPLICATION_DATA_FULL_MAP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_NOTE_ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_NOTE_RESOURCES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_NOTE_RESOURCE_APPLICATION_DATA_FULL_MAP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_RESOURCES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_RESOURCE_APPLICATION_DATA_FULL_MAP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_SEARCHES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REQUIRE_NOTE_CONTENT_CLASS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __INCLUDEEXPUNGED_ISSET_ID:I = 0x8

.field private static final __INCLUDELINKEDNOTEBOOKS_ISSET_ID:I = 0x7

.field private static final __INCLUDENOTEAPPLICATIONDATAFULLMAP_ISSET_ID:I = 0x9

.field private static final __INCLUDENOTEATTRIBUTES_ISSET_ID:I = 0x2

.field private static final __INCLUDENOTEBOOKS_ISSET_ID:I = 0x3

.field private static final __INCLUDENOTERESOURCEAPPLICATIONDATAFULLMAP_ISSET_ID:I = 0xb

.field private static final __INCLUDENOTERESOURCES_ISSET_ID:I = 0x1

.field private static final __INCLUDENOTES_ISSET_ID:I = 0x0

.field private static final __INCLUDERESOURCEAPPLICATIONDATAFULLMAP_ISSET_ID:I = 0xa

.field private static final __INCLUDERESOURCES_ISSET_ID:I = 0x6

.field private static final __INCLUDESEARCHES_ISSET_ID:I = 0x5

.field private static final __INCLUDETAGS_ISSET_ID:I = 0x4


# instance fields
.field private __isset_vector:[Z

.field private includeExpunged:Z

.field private includeLinkedNotebooks:Z

.field private includeNoteApplicationDataFullMap:Z

.field private includeNoteAttributes:Z

.field private includeNoteResourceApplicationDataFullMap:Z

.field private includeNoteResources:Z

.field private includeNotebooks:Z

.field private includeNotes:Z

.field private includeResourceApplicationDataFullMap:Z

.field private includeResources:Z

.field private includeSearches:Z

.field private includeTags:Z

.field private requireNoteContentClass:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "SyncChunkFilter"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "includeNotes"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeNoteResources"

    invoke-direct {v0, v1, v3, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_NOTE_RESOURCES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeNoteAttributes"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_NOTE_ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeNotebooks"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeTags"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeSearches"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_SEARCHES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeResources"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_RESOURCES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeLinkedNotebooks"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeExpunged"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_EXPUNGED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeNoteApplicationDataFullMap"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_NOTE_APPLICATION_DATA_FULL_MAP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeResourceApplicationDataFullMap"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_RESOURCE_APPLICATION_DATA_FULL_MAP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeNoteResourceApplicationDataFullMap"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_NOTE_RESOURCE_APPLICATION_DATA_FULL_MAP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "requireNoteContentClass"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->REQUIRE_NOTE_CONTENT_CLASS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/SyncChunkFilter;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [Z

    .line 4
    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    .line 5
    iget-object v1, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotes:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotes:Z

    .line 7
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResources:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResources:Z

    .line 8
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteAttributes:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteAttributes:Z

    .line 9
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotebooks:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotebooks:Z

    .line 10
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeTags:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeTags:Z

    .line 11
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeSearches:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeSearches:Z

    .line 12
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResources:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResources:Z

    .line 13
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeLinkedNotebooks:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeLinkedNotebooks:Z

    .line 14
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeExpunged:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeExpunged:Z

    .line 15
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteApplicationDataFullMap:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteApplicationDataFullMap:Z

    .line 16
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResourceApplicationDataFullMap:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResourceApplicationDataFullMap:Z

    .line 17
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResourceApplicationDataFullMap:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResourceApplicationDataFullMap:Z

    .line 18
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetRequireNoteContentClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iget-object p1, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->requireNoteContentClass:Ljava/lang/String;

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->requireNoteContentClass:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNotesIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotes:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNoteResourcesIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResources:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNoteAttributesIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteAttributes:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNotebooksIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotebooks:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeTagsIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeTags:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeSearchesIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeSearches:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeResourcesIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResources:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeLinkedNotebooksIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeLinkedNotebooks:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeExpungedIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeExpunged:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNoteApplicationDataFullMapIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteApplicationDataFullMap:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeResourceApplicationDataFullMapIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResourceApplicationDataFullMap:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNoteResourceApplicationDataFullMapIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResourceApplicationDataFullMap:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->requireNoteContentClass:Ljava/lang/String;

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/SyncChunkFilter;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNotes()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNotes()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNotes()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotes:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotes:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteResources()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteResources()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteResources()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResources:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResources:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteAttributes()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteAttributes()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteAttributes()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteAttributes:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteAttributes:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNotebooks()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNotebooks()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNotebooks()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotebooks:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotebooks:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeTags()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeTags()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeTags()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeTags:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeTags:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeSearches()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeSearches()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeSearches()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeSearches:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeSearches:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeResources()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeResources()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeResources()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResources:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResources:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeLinkedNotebooks()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeLinkedNotebooks()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 19
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeLinkedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeLinkedNotebooks:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeLinkedNotebooks:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    .line 20
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeExpunged()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeExpunged()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 21
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeExpunged()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeExpunged:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeExpunged:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    .line 22
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteApplicationDataFullMap()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteApplicationDataFullMap()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    .line 23
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteApplicationDataFullMap()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteApplicationDataFullMap:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteApplicationDataFullMap:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    .line 24
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeResourceApplicationDataFullMap()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeResourceApplicationDataFullMap()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    .line 25
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeResourceApplicationDataFullMap()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResourceApplicationDataFullMap:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResourceApplicationDataFullMap:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 26
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteResourceApplicationDataFullMap()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteResourceApplicationDataFullMap()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    .line 27
    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteResourceApplicationDataFullMap()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResourceApplicationDataFullMap:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResourceApplicationDataFullMap:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_18

    return v0

    .line 28
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetRequireNoteContentClass()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetRequireNoteContentClass()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_19

    return v0

    .line 29
    :cond_19
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetRequireNoteContentClass()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->requireNoteContentClass:Ljava/lang/String;

    iget-object p1, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->requireNoteContentClass:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1a

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/notestore/SyncChunkFilter;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->compareTo(Lcom/evernote/edam/notestore/SyncChunkFilter;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/SyncChunkFilter;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/notestore/SyncChunkFilter;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;-><init>(Lcom/evernote/edam/notestore/SyncChunkFilter;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->deepCopy()Lcom/evernote/edam/notestore/SyncChunkFilter;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/notestore/SyncChunkFilter;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNotes()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNotes()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_28

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotes:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotes:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteResources()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteResources()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_28

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 8
    :cond_5
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResources:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResources:Z

    if-eq v1, v2, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteAttributes()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteAttributes()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_28

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 11
    :cond_8
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteAttributes:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteAttributes:Z

    if-eq v1, v2, :cond_9

    return v0

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNotebooks()Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNotebooks()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_28

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 14
    :cond_b
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotebooks:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotebooks:Z

    if-eq v1, v2, :cond_c

    return v0

    .line 15
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeTags()Z

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeTags()Z

    move-result v2

    if-nez v1, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-eqz v1, :cond_28

    if-nez v2, :cond_e

    goto/16 :goto_0

    .line 17
    :cond_e
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeTags:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeTags:Z

    if-eq v1, v2, :cond_f

    return v0

    .line 18
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeSearches()Z

    move-result v1

    .line 19
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeSearches()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_12

    :cond_10
    if-eqz v1, :cond_28

    if-nez v2, :cond_11

    goto/16 :goto_0

    .line 20
    :cond_11
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeSearches:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeSearches:Z

    if-eq v1, v2, :cond_12

    return v0

    .line 21
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeResources()Z

    move-result v1

    .line 22
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeResources()Z

    move-result v2

    if-nez v1, :cond_13

    if-eqz v2, :cond_15

    :cond_13
    if-eqz v1, :cond_28

    if-nez v2, :cond_14

    goto/16 :goto_0

    .line 23
    :cond_14
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResources:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResources:Z

    if-eq v1, v2, :cond_15

    return v0

    .line 24
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeLinkedNotebooks()Z

    move-result v1

    .line 25
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeLinkedNotebooks()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_18

    :cond_16
    if-eqz v1, :cond_28

    if-nez v2, :cond_17

    goto/16 :goto_0

    .line 26
    :cond_17
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeLinkedNotebooks:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeLinkedNotebooks:Z

    if-eq v1, v2, :cond_18

    return v0

    .line 27
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeExpunged()Z

    move-result v1

    .line 28
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeExpunged()Z

    move-result v2

    if-nez v1, :cond_19

    if-eqz v2, :cond_1b

    :cond_19
    if-eqz v1, :cond_28

    if-nez v2, :cond_1a

    goto/16 :goto_0

    .line 29
    :cond_1a
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeExpunged:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeExpunged:Z

    if-eq v1, v2, :cond_1b

    return v0

    .line 30
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteApplicationDataFullMap()Z

    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteApplicationDataFullMap()Z

    move-result v2

    if-nez v1, :cond_1c

    if-eqz v2, :cond_1e

    :cond_1c
    if-eqz v1, :cond_28

    if-nez v2, :cond_1d

    goto :goto_0

    .line 32
    :cond_1d
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteApplicationDataFullMap:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteApplicationDataFullMap:Z

    if-eq v1, v2, :cond_1e

    return v0

    .line 33
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeResourceApplicationDataFullMap()Z

    move-result v1

    .line 34
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeResourceApplicationDataFullMap()Z

    move-result v2

    if-nez v1, :cond_1f

    if-eqz v2, :cond_21

    :cond_1f
    if-eqz v1, :cond_28

    if-nez v2, :cond_20

    goto :goto_0

    .line 35
    :cond_20
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResourceApplicationDataFullMap:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResourceApplicationDataFullMap:Z

    if-eq v1, v2, :cond_21

    return v0

    .line 36
    :cond_21
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteResourceApplicationDataFullMap()Z

    move-result v1

    .line 37
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteResourceApplicationDataFullMap()Z

    move-result v2

    if-nez v1, :cond_22

    if-eqz v2, :cond_24

    :cond_22
    if-eqz v1, :cond_28

    if-nez v2, :cond_23

    goto :goto_0

    .line 38
    :cond_23
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResourceApplicationDataFullMap:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResourceApplicationDataFullMap:Z

    if-eq v1, v2, :cond_24

    return v0

    .line 39
    :cond_24
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetRequireNoteContentClass()Z

    move-result v1

    .line 40
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetRequireNoteContentClass()Z

    move-result v2

    if-nez v1, :cond_25

    if-eqz v2, :cond_27

    :cond_25
    if-eqz v1, :cond_28

    if-nez v2, :cond_26

    goto :goto_0

    .line 41
    :cond_26
    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->requireNoteContentClass:Ljava/lang/String;

    iget-object p1, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;->requireNoteContentClass:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    return v0

    :cond_27
    const/4 p0, 0x1

    return p0

    :cond_28
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
    instance-of v1, p1, Lcom/evernote/edam/notestore/SyncChunkFilter;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/notestore/SyncChunkFilter;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->equals(Lcom/evernote/edam/notestore/SyncChunkFilter;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getRequireNoteContentClass()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->requireNoteContentClass:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIncludeExpunged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeExpunged:Z

    return p0
.end method

.method public isIncludeLinkedNotebooks()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeLinkedNotebooks:Z

    return p0
.end method

.method public isIncludeNoteApplicationDataFullMap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteApplicationDataFullMap:Z

    return p0
.end method

.method public isIncludeNoteAttributes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteAttributes:Z

    return p0
.end method

.method public isIncludeNoteResourceApplicationDataFullMap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResourceApplicationDataFullMap:Z

    return p0
.end method

.method public isIncludeNoteResources()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResources:Z

    return p0
.end method

.method public isIncludeNotebooks()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotebooks:Z

    return p0
.end method

.method public isIncludeNotes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotes:Z

    return p0
.end method

.method public isIncludeResourceApplicationDataFullMap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResourceApplicationDataFullMap:Z

    return p0
.end method

.method public isIncludeResources()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResources:Z

    return p0
.end method

.method public isIncludeSearches()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeSearches:Z

    return p0
.end method

.method public isIncludeTags()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeTags:Z

    return p0
.end method

.method public isSetIncludeExpunged()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/16 v0, 0x8

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeLinkedNotebooks()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x7

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeNoteApplicationDataFullMap()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/16 v0, 0x9

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeNoteAttributes()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeNoteResourceApplicationDataFullMap()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/16 v0, 0xb

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeNoteResources()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeNotebooks()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeNotes()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeResourceApplicationDataFullMap()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/16 v0, 0xa

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeResources()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x6

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeSearches()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x5

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeTags()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetRequireNoteContentClass()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->requireNoteContentClass:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 4
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

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_0
    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResourceApplicationDataFullMap:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNoteResourceApplicationDataFullMapIsSet(Z)V

    goto/16 :goto_1

    :cond_1
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_1
    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResourceApplicationDataFullMap:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeResourceApplicationDataFullMapIsSet(Z)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_2
    const/16 v0, 0xb

    if-ne v1, v0, :cond_3

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->requireNoteContentClass:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_3
    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteApplicationDataFullMap:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNoteApplicationDataFullMapIsSet(Z)V

    goto/16 :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_4
    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeExpunged:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeExpungedIsSet(Z)V

    goto/16 :goto_1

    :cond_5
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_5
    if-ne v1, v3, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeLinkedNotebooks:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeLinkedNotebooksIsSet(Z)V

    goto/16 :goto_1

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_6
    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResources:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeResourcesIsSet(Z)V

    goto/16 :goto_1

    :cond_7
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_7
    if-ne v1, v3, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeSearches:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeSearchesIsSet(Z)V

    goto :goto_1

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_8
    if-ne v1, v3, :cond_9

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeTags:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeTagsIsSet(Z)V

    goto :goto_1

    :cond_9
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_9
    if-ne v1, v3, :cond_a

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotebooks:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNotebooksIsSet(Z)V

    goto :goto_1

    :cond_a
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_a
    if-ne v1, v3, :cond_b

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteAttributes:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNoteAttributesIsSet(Z)V

    goto :goto_1

    :cond_b
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_b
    if-ne v1, v3, :cond_c

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResources:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNoteResourcesIsSet(Z)V

    goto :goto_1

    :cond_c
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_c
    if-ne v1, v3, :cond_d

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotes:Z

    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNotesIsSet(Z)V

    goto :goto_1

    :cond_d
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public setIncludeExpunged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeExpunged:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeExpungedIsSet(Z)V

    return-void
.end method

.method public setIncludeExpungedIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/16 v0, 0x8

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeLinkedNotebooks(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeLinkedNotebooks:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeLinkedNotebooksIsSet(Z)V

    return-void
.end method

.method public setIncludeLinkedNotebooksIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x7

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeNoteApplicationDataFullMap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteApplicationDataFullMap:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNoteApplicationDataFullMapIsSet(Z)V

    return-void
.end method

.method public setIncludeNoteApplicationDataFullMapIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/16 v0, 0x9

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeNoteAttributes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteAttributes:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNoteAttributesIsSet(Z)V

    return-void
.end method

.method public setIncludeNoteAttributesIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeNoteResourceApplicationDataFullMap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResourceApplicationDataFullMap:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNoteResourceApplicationDataFullMapIsSet(Z)V

    return-void
.end method

.method public setIncludeNoteResourceApplicationDataFullMapIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/16 v0, 0xb

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeNoteResources(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResources:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNoteResourcesIsSet(Z)V

    return-void
.end method

.method public setIncludeNoteResourcesIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeNotebooks(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotebooks:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNotebooksIsSet(Z)V

    return-void
.end method

.method public setIncludeNotebooksIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x3

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeNotes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotes:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeNotesIsSet(Z)V

    return-void
.end method

.method public setIncludeNotesIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeResourceApplicationDataFullMap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResourceApplicationDataFullMap:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeResourceApplicationDataFullMapIsSet(Z)V

    return-void
.end method

.method public setIncludeResourceApplicationDataFullMapIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/16 v0, 0xa

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeResources(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResources:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeResourcesIsSet(Z)V

    return-void
.end method

.method public setIncludeResourcesIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x6

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeSearches(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeSearches:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeSearchesIsSet(Z)V

    return-void
.end method

.method public setIncludeSearchesIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x5

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeTags(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeTags:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->setIncludeTagsIsSet(Z)V

    return-void
.end method

.method public setIncludeTagsIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x4

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setRequireNoteContentClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->requireNoteContentClass:Ljava/lang/String;

    return-void
.end method

.method public setRequireNoteContentClassIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->requireNoteContentClass:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SyncChunkFilter("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNotes()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "includeNotes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteResources()Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "includeNoteResources:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResources:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteAttributes()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "includeNoteAttributes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteAttributes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNotebooks()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v1, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "includeNotebooks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotebooks:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeTags()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v1, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "includeTags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeTags:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeSearches()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v1, :cond_9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, "includeSearches:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeSearches:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeResources()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v1, :cond_b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, "includeResources:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResources:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeLinkedNotebooks()Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v1, :cond_d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, "includeLinkedNotebooks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeLinkedNotebooks:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeExpunged()Z

    move-result v3

    if-eqz v3, :cond_10

    if-nez v1, :cond_f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v1, "includeExpunged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeExpunged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteApplicationDataFullMap()Z

    move-result v3

    if-eqz v3, :cond_12

    if-nez v1, :cond_11

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v1, "includeNoteApplicationDataFullMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteApplicationDataFullMap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeResourceApplicationDataFullMap()Z

    move-result v3

    if-eqz v3, :cond_14

    if-nez v1, :cond_13

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string v1, "includeResourceApplicationDataFullMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResourceApplicationDataFullMap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteResourceApplicationDataFullMap()Z

    move-result v3

    if-eqz v3, :cond_16

    if-nez v1, :cond_15

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string v1, "includeNoteResourceApplicationDataFullMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResourceApplicationDataFullMap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_16
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetRequireNoteContentClass()Z

    move-result v1

    if-eqz v1, :cond_19

    if-nez v2, :cond_17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const-string v1, "requireNoteContentClass:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->requireNoteContentClass:Ljava/lang/String;

    if-nez p0, :cond_18

    const-string p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    :goto_2
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetIncludeExpunged()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeLinkedNotebooks()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeNoteApplicationDataFullMap()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/16 v0, 0x9

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeNoteAttributes()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeNoteResourceApplicationDataFullMap()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/16 v0, 0xb

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeNoteResources()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeNotebooks()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeNotes()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public unsetIncludeResourceApplicationDataFullMap()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/16 v0, 0xa

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeResources()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeSearches()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludeTags()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->__isset_vector:[Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetRequireNoteContentClass()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->requireNoteContentClass:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->validate()V

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNotes()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotes:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteResources()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_NOTE_RESOURCES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResources:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteAttributes()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_NOTE_ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteAttributes:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNotebooks()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNotebooks:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeTags()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeTags:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeSearches()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_SEARCHES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeSearches:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeResources()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_RESOURCES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResources:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeLinkedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeLinkedNotebooks:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeExpunged()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_EXPUNGED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeExpunged:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteApplicationDataFullMap()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_NOTE_APPLICATION_DATA_FULL_MAP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteApplicationDataFullMap:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_9
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->requireNoteContentClass:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetRequireNoteContentClass()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->REQUIRE_NOTE_CONTENT_CLASS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->requireNoteContentClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeResourceApplicationDataFullMap()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_RESOURCE_APPLICATION_DATA_FULL_MAP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeResourceApplicationDataFullMap:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunkFilter;->isSetIncludeNoteResourceApplicationDataFullMap()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/evernote/edam/notestore/SyncChunkFilter;->INCLUDE_NOTE_RESOURCE_APPLICATION_DATA_FULL_MAP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/SyncChunkFilter;->includeNoteResourceApplicationDataFullMap:Z

    invoke-virtual {p1, p0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_c
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
