.class public Lcom/evernote/edam/type/Notebook;
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
        "Lcom/evernote/edam/type/Notebook;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final BUSINESS_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CONTACT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DEFAULT_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PUBLISHED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PUBLISHING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RESTRICTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SERVICE_CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SERVICE_UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SHARED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SHARED_NOTEBOOK_IDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STACK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __DEFAULTNOTEBOOK_ISSET_ID:I = 0x1

.field private static final __PUBLISHED_ISSET_ID:I = 0x4

.field private static final __SERVICECREATED_ISSET_ID:I = 0x2

.field private static final __SERVICEUPDATED_ISSET_ID:I = 0x3

.field private static final __UPDATESEQUENCENUM_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private businessNotebook:Lcom/evernote/edam/type/BusinessNotebook;

.field private contact:Lcom/evernote/edam/type/User;

.field private defaultNotebook:Z

.field private guid:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private published:Z

.field private publishing:Lcom/evernote/edam/type/Publishing;

.field private restrictions:Lcom/evernote/edam/type/NotebookRestrictions;

.field private serviceCreated:J

.field private serviceUpdated:J

.field private sharedNotebookIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private sharedNotebooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/SharedNotebook;",
            ">;"
        }
    .end annotation
.end field

.field private stack:Ljava/lang/String;

.field private updateSequenceNum:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "Notebook"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/Notebook;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "guid"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Notebook;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "name"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Notebook;->NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x5

    const-string v4, "updateSequenceNum"

    const/16 v5, 0x8

    invoke-direct {v0, v4, v5, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Notebook;->UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "defaultNotebook"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Notebook;->DEFAULT_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x7

    const-string v4, "serviceCreated"

    const/16 v6, 0xa

    invoke-direct {v0, v4, v6, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Notebook;->SERVICE_CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "serviceUpdated"

    invoke-direct {v0, v1, v6, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Notebook;->SERVICE_UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "publishing"

    const/16 v4, 0xc

    invoke-direct {v0, v1, v4, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Notebook;->PUBLISHING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "published"

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Notebook;->PUBLISHED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "stack"

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Notebook;->STACK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/16 v1, 0xd

    const-string v2, "sharedNotebookIds"

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Notebook;->SHARED_NOTEBOOK_IDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "sharedNotebooks"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Notebook;->SHARED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "businessNotebook"

    invoke-direct {v0, v1, v4, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Notebook;->BUSINESS_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "contact"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Notebook;->CONTACT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "restrictions"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Notebook;->RESTRICTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/Notebook;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Z

    .line 4
    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

    .line 5
    iget-object v1, p1, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p1, Lcom/evernote/edam/type/Notebook;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->guid:Ljava/lang/String;

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p1, Lcom/evernote/edam/type/Notebook;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->name:Ljava/lang/String;

    .line 10
    :cond_1
    iget v0, p1, Lcom/evernote/edam/type/Notebook;->updateSequenceNum:I

    iput v0, p0, Lcom/evernote/edam/type/Notebook;->updateSequenceNum:I

    .line 11
    iget-boolean v0, p1, Lcom/evernote/edam/type/Notebook;->defaultNotebook:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/Notebook;->defaultNotebook:Z

    .line 12
    iget-wide v0, p1, Lcom/evernote/edam/type/Notebook;->serviceCreated:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Notebook;->serviceCreated:J

    .line 13
    iget-wide v0, p1, Lcom/evernote/edam/type/Notebook;->serviceUpdated:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Notebook;->serviceUpdated:J

    .line 14
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetPublishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    new-instance v0, Lcom/evernote/edam/type/Publishing;

    iget-object v1, p1, Lcom/evernote/edam/type/Notebook;->publishing:Lcom/evernote/edam/type/Publishing;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Publishing;-><init>(Lcom/evernote/edam/type/Publishing;)V

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->publishing:Lcom/evernote/edam/type/Publishing;

    .line 16
    :cond_2
    iget-boolean v0, p1, Lcom/evernote/edam/type/Notebook;->published:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/Notebook;->published:Z

    .line 17
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetStack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p1, Lcom/evernote/edam/type/Notebook;->stack:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->stack:Ljava/lang/String;

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetSharedNotebookIds()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v1, p1, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_4
    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    .line 24
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetSharedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iget-object v1, p1, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/SharedNotebook;

    .line 27
    new-instance v3, Lcom/evernote/edam/type/SharedNotebook;

    invoke-direct {v3, v2}, Lcom/evernote/edam/type/SharedNotebook;-><init>(Lcom/evernote/edam/type/SharedNotebook;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 28
    :cond_6
    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    .line 29
    :cond_7
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetBusinessNotebook()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 30
    new-instance v0, Lcom/evernote/edam/type/BusinessNotebook;

    iget-object v1, p1, Lcom/evernote/edam/type/Notebook;->businessNotebook:Lcom/evernote/edam/type/BusinessNotebook;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/BusinessNotebook;-><init>(Lcom/evernote/edam/type/BusinessNotebook;)V

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->businessNotebook:Lcom/evernote/edam/type/BusinessNotebook;

    .line 31
    :cond_8
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetContact()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 32
    new-instance v0, Lcom/evernote/edam/type/User;

    iget-object v1, p1, Lcom/evernote/edam/type/Notebook;->contact:Lcom/evernote/edam/type/User;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/User;-><init>(Lcom/evernote/edam/type/User;)V

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->contact:Lcom/evernote/edam/type/User;

    .line 33
    :cond_9
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetRestrictions()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 34
    new-instance v0, Lcom/evernote/edam/type/NotebookRestrictions;

    iget-object p1, p1, Lcom/evernote/edam/type/Notebook;->restrictions:Lcom/evernote/edam/type/NotebookRestrictions;

    invoke-direct {v0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;-><init>(Lcom/evernote/edam/type/NotebookRestrictions;)V

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->restrictions:Lcom/evernote/edam/type/NotebookRestrictions;

    :cond_a
    return-void
.end method


# virtual methods
.method public addToSharedNotebookIds(J)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToSharedNotebooks(Lcom/evernote/edam/type/SharedNotebook;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/Notebook;->setUpdateSequenceNumIsSet(Z)V

    iput v1, p0, Lcom/evernote/edam/type/Notebook;->updateSequenceNum:I

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/Notebook;->setDefaultNotebookIsSet(Z)V

    iput-boolean v1, p0, Lcom/evernote/edam/type/Notebook;->defaultNotebook:Z

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/Notebook;->setServiceCreatedIsSet(Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/evernote/edam/type/Notebook;->serviceCreated:J

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/Notebook;->setServiceUpdatedIsSet(Z)V

    iput-wide v2, p0, Lcom/evernote/edam/type/Notebook;->serviceUpdated:J

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->publishing:Lcom/evernote/edam/type/Publishing;

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/Notebook;->setPublishedIsSet(Z)V

    iput-boolean v1, p0, Lcom/evernote/edam/type/Notebook;->published:Z

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->stack:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->businessNotebook:Lcom/evernote/edam/type/BusinessNotebook;

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->contact:Lcom/evernote/edam/type/User;

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->restrictions:Lcom/evernote/edam/type/NotebookRestrictions;

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/Notebook;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetGuid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetGuid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->guid:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/Notebook;->guid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetName()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetName()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetName()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/Notebook;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetUpdateSequenceNum()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetUpdateSequenceNum()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetUpdateSequenceNum()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/evernote/edam/type/Notebook;->updateSequenceNum:I

    iget v1, p1, Lcom/evernote/edam/type/Notebook;->updateSequenceNum:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetDefaultNotebook()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetDefaultNotebook()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetDefaultNotebook()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/evernote/edam/type/Notebook;->defaultNotebook:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/Notebook;->defaultNotebook:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetServiceCreated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetServiceCreated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetServiceCreated()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/evernote/edam/type/Notebook;->serviceCreated:J

    iget-wide v2, p1, Lcom/evernote/edam/type/Notebook;->serviceCreated:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetServiceUpdated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetServiceUpdated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetServiceUpdated()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-wide v0, p0, Lcom/evernote/edam/type/Notebook;->serviceUpdated:J

    iget-wide v2, p1, Lcom/evernote/edam/type/Notebook;->serviceUpdated:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetPublishing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetPublishing()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetPublishing()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->publishing:Lcom/evernote/edam/type/Publishing;

    iget-object v1, p1, Lcom/evernote/edam/type/Notebook;->publishing:Lcom/evernote/edam/type/Publishing;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetPublished()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetPublished()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 19
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetPublished()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/evernote/edam/type/Notebook;->published:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/Notebook;->published:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    .line 20
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetStack()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetStack()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 21
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetStack()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->stack:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/Notebook;->stack:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    .line 22
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetSharedNotebookIds()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetSharedNotebookIds()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    .line 23
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetSharedNotebookIds()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    iget-object v1, p1, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    .line 24
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetSharedNotebooks()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetSharedNotebooks()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    .line 25
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetSharedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    iget-object v1, p1, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 26
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetBusinessNotebook()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetBusinessNotebook()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    .line 27
    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetBusinessNotebook()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->businessNotebook:Lcom/evernote/edam/type/BusinessNotebook;

    iget-object v1, p1, Lcom/evernote/edam/type/Notebook;->businessNotebook:Lcom/evernote/edam/type/BusinessNotebook;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_18

    return v0

    .line 28
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetContact()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetContact()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_19

    return v0

    .line 29
    :cond_19
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetContact()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->contact:Lcom/evernote/edam/type/User;

    iget-object v1, p1, Lcom/evernote/edam/type/Notebook;->contact:Lcom/evernote/edam/type/User;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_1a

    return v0

    .line 30
    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetRestrictions()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetRestrictions()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1b

    return v0

    .line 31
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetRestrictions()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->restrictions:Lcom/evernote/edam/type/NotebookRestrictions;

    iget-object p1, p1, Lcom/evernote/edam/type/Notebook;->restrictions:Lcom/evernote/edam/type/NotebookRestrictions;

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

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
    check-cast p1, Lcom/evernote/edam/type/Notebook;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Notebook;->compareTo(Lcom/evernote/edam/type/Notebook;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/type/Notebook;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/type/Notebook;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/Notebook;-><init>(Lcom/evernote/edam/type/Notebook;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->deepCopy()Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/type/Notebook;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetGuid()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetGuid()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_2b

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->guid:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/Notebook;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetName()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetName()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_2b

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 8
    :cond_5
    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/Notebook;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetUpdateSequenceNum()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetUpdateSequenceNum()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_2b

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 11
    :cond_8
    iget v1, p0, Lcom/evernote/edam/type/Notebook;->updateSequenceNum:I

    iget v2, p1, Lcom/evernote/edam/type/Notebook;->updateSequenceNum:I

    if-eq v1, v2, :cond_9

    return v0

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetDefaultNotebook()Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetDefaultNotebook()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_2b

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 14
    :cond_b
    iget-boolean v1, p0, Lcom/evernote/edam/type/Notebook;->defaultNotebook:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/Notebook;->defaultNotebook:Z

    if-eq v1, v2, :cond_c

    return v0

    .line 15
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetServiceCreated()Z

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetServiceCreated()Z

    move-result v2

    if-nez v1, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-eqz v1, :cond_2b

    if-nez v2, :cond_e

    goto/16 :goto_0

    .line 17
    :cond_e
    iget-wide v1, p0, Lcom/evernote/edam/type/Notebook;->serviceCreated:J

    iget-wide v3, p1, Lcom/evernote/edam/type/Notebook;->serviceCreated:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_f

    return v0

    .line 18
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetServiceUpdated()Z

    move-result v1

    .line 19
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetServiceUpdated()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_12

    :cond_10
    if-eqz v1, :cond_2b

    if-nez v2, :cond_11

    goto/16 :goto_0

    .line 20
    :cond_11
    iget-wide v1, p0, Lcom/evernote/edam/type/Notebook;->serviceUpdated:J

    iget-wide v3, p1, Lcom/evernote/edam/type/Notebook;->serviceUpdated:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_12

    return v0

    .line 21
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetPublishing()Z

    move-result v1

    .line 22
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetPublishing()Z

    move-result v2

    if-nez v1, :cond_13

    if-eqz v2, :cond_15

    :cond_13
    if-eqz v1, :cond_2b

    if-nez v2, :cond_14

    goto/16 :goto_0

    .line 23
    :cond_14
    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->publishing:Lcom/evernote/edam/type/Publishing;

    iget-object v2, p1, Lcom/evernote/edam/type/Notebook;->publishing:Lcom/evernote/edam/type/Publishing;

    invoke-virtual {v1, v2}, Lcom/evernote/edam/type/Publishing;->equals(Lcom/evernote/edam/type/Publishing;)Z

    move-result v1

    if-nez v1, :cond_15

    return v0

    .line 24
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetPublished()Z

    move-result v1

    .line 25
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetPublished()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_18

    :cond_16
    if-eqz v1, :cond_2b

    if-nez v2, :cond_17

    goto/16 :goto_0

    .line 26
    :cond_17
    iget-boolean v1, p0, Lcom/evernote/edam/type/Notebook;->published:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/Notebook;->published:Z

    if-eq v1, v2, :cond_18

    return v0

    .line 27
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetStack()Z

    move-result v1

    .line 28
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetStack()Z

    move-result v2

    if-nez v1, :cond_19

    if-eqz v2, :cond_1b

    :cond_19
    if-eqz v1, :cond_2b

    if-nez v2, :cond_1a

    goto/16 :goto_0

    .line 29
    :cond_1a
    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->stack:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/Notebook;->stack:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v0

    .line 30
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetSharedNotebookIds()Z

    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetSharedNotebookIds()Z

    move-result v2

    if-nez v1, :cond_1c

    if-eqz v2, :cond_1e

    :cond_1c
    if-eqz v1, :cond_2b

    if-nez v2, :cond_1d

    goto/16 :goto_0

    .line 32
    :cond_1d
    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    iget-object v2, p1, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v0

    .line 33
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetSharedNotebooks()Z

    move-result v1

    .line 34
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetSharedNotebooks()Z

    move-result v2

    if-nez v1, :cond_1f

    if-eqz v2, :cond_21

    :cond_1f
    if-eqz v1, :cond_2b

    if-nez v2, :cond_20

    goto :goto_0

    .line 35
    :cond_20
    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    iget-object v2, p1, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v0

    .line 36
    :cond_21
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetBusinessNotebook()Z

    move-result v1

    .line 37
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetBusinessNotebook()Z

    move-result v2

    if-nez v1, :cond_22

    if-eqz v2, :cond_24

    :cond_22
    if-eqz v1, :cond_2b

    if-nez v2, :cond_23

    goto :goto_0

    .line 38
    :cond_23
    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->businessNotebook:Lcom/evernote/edam/type/BusinessNotebook;

    iget-object v2, p1, Lcom/evernote/edam/type/Notebook;->businessNotebook:Lcom/evernote/edam/type/BusinessNotebook;

    invoke-virtual {v1, v2}, Lcom/evernote/edam/type/BusinessNotebook;->equals(Lcom/evernote/edam/type/BusinessNotebook;)Z

    move-result v1

    if-nez v1, :cond_24

    return v0

    .line 39
    :cond_24
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetContact()Z

    move-result v1

    .line 40
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetContact()Z

    move-result v2

    if-nez v1, :cond_25

    if-eqz v2, :cond_27

    :cond_25
    if-eqz v1, :cond_2b

    if-nez v2, :cond_26

    goto :goto_0

    .line 41
    :cond_26
    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->contact:Lcom/evernote/edam/type/User;

    iget-object v2, p1, Lcom/evernote/edam/type/Notebook;->contact:Lcom/evernote/edam/type/User;

    invoke-virtual {v1, v2}, Lcom/evernote/edam/type/User;->equals(Lcom/evernote/edam/type/User;)Z

    move-result v1

    if-nez v1, :cond_27

    return v0

    .line 42
    :cond_27
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetRestrictions()Z

    move-result v1

    .line 43
    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->isSetRestrictions()Z

    move-result v2

    if-nez v1, :cond_28

    if-eqz v2, :cond_2a

    :cond_28
    if-eqz v1, :cond_2b

    if-nez v2, :cond_29

    goto :goto_0

    .line 44
    :cond_29
    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->restrictions:Lcom/evernote/edam/type/NotebookRestrictions;

    iget-object p1, p1, Lcom/evernote/edam/type/Notebook;->restrictions:Lcom/evernote/edam/type/NotebookRestrictions;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->equals(Lcom/evernote/edam/type/NotebookRestrictions;)Z

    move-result p0

    if-nez p0, :cond_2a

    return v0

    :cond_2a
    const/4 p0, 0x1

    return p0

    :cond_2b
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
    instance-of v1, p1, Lcom/evernote/edam/type/Notebook;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/type/Notebook;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Notebook;->equals(Lcom/evernote/edam/type/Notebook;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getBusinessNotebook()Lcom/evernote/edam/type/BusinessNotebook;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->businessNotebook:Lcom/evernote/edam/type/BusinessNotebook;

    return-object p0
.end method

.method public getContact()Lcom/evernote/edam/type/User;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->contact:Lcom/evernote/edam/type/User;

    return-object p0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->guid:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPublishing()Lcom/evernote/edam/type/Publishing;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->publishing:Lcom/evernote/edam/type/Publishing;

    return-object p0
.end method

.method public getRestrictions()Lcom/evernote/edam/type/NotebookRestrictions;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->restrictions:Lcom/evernote/edam/type/NotebookRestrictions;

    return-object p0
.end method

.method public getServiceCreated()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/Notebook;->serviceCreated:J

    return-wide v0
.end method

.method public getServiceUpdated()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/Notebook;->serviceUpdated:J

    return-wide v0
.end method

.method public getSharedNotebookIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    return-object p0
.end method

.method public getSharedNotebookIdsIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSharedNotebookIdsSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getSharedNotebooks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/SharedNotebook;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    return-object p0
.end method

.method public getSharedNotebooksIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/evernote/edam/type/SharedNotebook;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSharedNotebooksSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getStack()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->stack:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateSequenceNum()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/Notebook;->updateSequenceNum:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDefaultNotebook()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/Notebook;->defaultNotebook:Z

    return p0
.end method

.method public isPublished()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/Notebook;->published:Z

    return p0
.end method

.method public isSetBusinessNotebook()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->businessNotebook:Lcom/evernote/edam/type/BusinessNotebook;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetContact()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->contact:Lcom/evernote/edam/type/User;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetDefaultNotebook()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetGuid()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->guid:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetName()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->name:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetPublished()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetPublishing()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->publishing:Lcom/evernote/edam/type/Publishing;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetRestrictions()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->restrictions:Lcom/evernote/edam/type/NotebookRestrictions;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetServiceCreated()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetServiceUpdated()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetSharedNotebookIds()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetSharedNotebooks()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetStack()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->stack:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 9
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

    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/4 v2, 0x0

    const/16 v3, 0xf

    const/16 v4, 0xa

    const/4 v5, 0x2

    const/16 v6, 0xb

    const/16 v7, 0xc

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_1
    if-ne v1, v7, :cond_1

    new-instance v0, Lcom/evernote/edam/type/NotebookRestrictions;

    invoke-direct {v0}, Lcom/evernote/edam/type/NotebookRestrictions;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->restrictions:Lcom/evernote/edam/type/NotebookRestrictions;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_3

    :cond_1
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_2
    if-ne v1, v7, :cond_2

    new-instance v0, Lcom/evernote/edam/type/User;

    invoke-direct {v0}, Lcom/evernote/edam/type/User;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->contact:Lcom/evernote/edam/type/User;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/User;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_3

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_3
    if-ne v1, v7, :cond_3

    new-instance v0, Lcom/evernote/edam/type/BusinessNotebook;

    invoke-direct {v0}, Lcom/evernote/edam/type/BusinessNotebook;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->businessNotebook:Lcom/evernote/edam/type/BusinessNotebook;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/BusinessNotebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_3

    :cond_3
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_4
    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v3, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    :goto_1
    iget v1, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v2, v1, :cond_4

    new-instance v1, Lcom/evernote/edam/type/SharedNotebook;

    invoke-direct {v1}, Lcom/evernote/edam/type/SharedNotebook;-><init>()V

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/SharedNotebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    iget-object v3, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_3

    :cond_5
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_5
    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v3, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    :goto_2
    iget v1, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v2, v1, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v3

    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_3

    :cond_7
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_6
    if-ne v1, v6, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->stack:Ljava/lang/String;

    goto/16 :goto_3

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_7
    if-ne v1, v5, :cond_9

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/Notebook;->published:Z

    invoke-virtual {p0, v8}, Lcom/evernote/edam/type/Notebook;->setPublishedIsSet(Z)V

    goto/16 :goto_3

    :cond_9
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_8
    if-ne v1, v7, :cond_a

    new-instance v0, Lcom/evernote/edam/type/Publishing;

    invoke-direct {v0}, Lcom/evernote/edam/type/Publishing;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->publishing:Lcom/evernote/edam/type/Publishing;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Publishing;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_3

    :cond_a
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_3

    :pswitch_9
    if-ne v1, v4, :cond_b

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/Notebook;->serviceUpdated:J

    invoke-virtual {p0, v8}, Lcom/evernote/edam/type/Notebook;->setServiceUpdatedIsSet(Z)V

    goto :goto_3

    :cond_b
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_3

    :pswitch_a
    if-ne v1, v4, :cond_c

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/Notebook;->serviceCreated:J

    invoke-virtual {p0, v8}, Lcom/evernote/edam/type/Notebook;->setServiceCreatedIsSet(Z)V

    goto :goto_3

    :cond_c
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_3

    :pswitch_b
    if-ne v1, v5, :cond_d

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/Notebook;->defaultNotebook:Z

    invoke-virtual {p0, v8}, Lcom/evernote/edam/type/Notebook;->setDefaultNotebookIsSet(Z)V

    goto :goto_3

    :cond_d
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_3

    :pswitch_c
    const/16 v0, 0x8

    if-ne v1, v0, :cond_e

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/type/Notebook;->updateSequenceNum:I

    invoke-virtual {p0, v8}, Lcom/evernote/edam/type/Notebook;->setUpdateSequenceNumIsSet(Z)V

    goto :goto_3

    :cond_e
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_3

    :pswitch_d
    if-ne v1, v6, :cond_f

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->name:Ljava/lang/String;

    goto :goto_3

    :cond_f
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_3

    :pswitch_e
    if-ne v1, v6, :cond_10

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->guid:Ljava/lang/String;

    goto :goto_3

    :cond_10
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBusinessNotebook(Lcom/evernote/edam/type/BusinessNotebook;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->businessNotebook:Lcom/evernote/edam/type/BusinessNotebook;

    return-void
.end method

.method public setBusinessNotebookIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->businessNotebook:Lcom/evernote/edam/type/BusinessNotebook;

    :cond_0
    return-void
.end method

.method public setContact(Lcom/evernote/edam/type/User;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->contact:Lcom/evernote/edam/type/User;

    return-void
.end method

.method public setContactIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->contact:Lcom/evernote/edam/type/User;

    :cond_0
    return-void
.end method

.method public setDefaultNotebook(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/Notebook;->defaultNotebook:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Notebook;->setDefaultNotebookIsSet(Z)V

    return-void
.end method

.method public setDefaultNotebookIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->guid:Ljava/lang/String;

    return-void
.end method

.method public setGuidIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->guid:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->name:Ljava/lang/String;

    return-void
.end method

.method public setNameIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setPublished(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/Notebook;->published:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Notebook;->setPublishedIsSet(Z)V

    return-void
.end method

.method public setPublishedIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

    const/4 v0, 0x4

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setPublishing(Lcom/evernote/edam/type/Publishing;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->publishing:Lcom/evernote/edam/type/Publishing;

    return-void
.end method

.method public setPublishingIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->publishing:Lcom/evernote/edam/type/Publishing;

    :cond_0
    return-void
.end method

.method public setRestrictions(Lcom/evernote/edam/type/NotebookRestrictions;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->restrictions:Lcom/evernote/edam/type/NotebookRestrictions;

    return-void
.end method

.method public setRestrictionsIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->restrictions:Lcom/evernote/edam/type/NotebookRestrictions;

    :cond_0
    return-void
.end method

.method public setServiceCreated(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/Notebook;->serviceCreated:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Notebook;->setServiceCreatedIsSet(Z)V

    return-void
.end method

.method public setServiceCreatedIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setServiceUpdated(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/Notebook;->serviceUpdated:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Notebook;->setServiceUpdatedIsSet(Z)V

    return-void
.end method

.method public setServiceUpdatedIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

    const/4 v0, 0x3

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setSharedNotebookIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    return-void
.end method

.method public setSharedNotebookIdsIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setSharedNotebooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/SharedNotebook;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    return-void
.end method

.method public setSharedNotebooksIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setStack(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->stack:Ljava/lang/String;

    return-void
.end method

.method public setStackIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Notebook;->stack:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setUpdateSequenceNum(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/type/Notebook;->updateSequenceNum:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Notebook;->setUpdateSequenceNumIsSet(Z)V

    return-void
.end method

.method public setUpdateSequenceNumIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Notebook("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetGuid()Z

    move-result v1

    const-string v2, "null"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "guid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->guid:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetName()Z

    move-result v4

    const-string v5, ", "

    if-eqz v4, :cond_4

    if-nez v1, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->name:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v1, v3

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetUpdateSequenceNum()Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v1, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "updateSequenceNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/type/Notebook;->updateSequenceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetDefaultNotebook()Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v1, :cond_7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "defaultNotebook:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/Notebook;->defaultNotebook:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetServiceCreated()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v1, :cond_9

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, "serviceCreated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/Notebook;->serviceCreated:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetServiceUpdated()Z

    move-result v4

    if-eqz v4, :cond_c

    if-nez v1, :cond_b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, "serviceUpdated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/Notebook;->serviceUpdated:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetPublishing()Z

    move-result v4

    if-eqz v4, :cond_f

    if-nez v1, :cond_d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, "publishing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->publishing:Lcom/evernote/edam/type/Publishing;

    if-nez v1, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    move v1, v3

    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetPublished()Z

    move-result v4

    if-eqz v4, :cond_11

    if-nez v1, :cond_10

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v1, "published:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/Notebook;->published:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetStack()Z

    move-result v4

    if-eqz v4, :cond_14

    if-nez v1, :cond_12

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const-string v1, "stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->stack:Ljava/lang/String;

    if-nez v1, :cond_13

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v1, v3

    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetSharedNotebookIds()Z

    move-result v4

    if-eqz v4, :cond_17

    if-nez v1, :cond_15

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string v1, "sharedNotebookIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    if-nez v1, :cond_16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_5
    move v1, v3

    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetSharedNotebooks()Z

    move-result v4

    if-eqz v4, :cond_1a

    if-nez v1, :cond_18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    const-string v1, "sharedNotebooks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    if-nez v1, :cond_19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_6
    move v1, v3

    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetBusinessNotebook()Z

    move-result v4

    if-eqz v4, :cond_1d

    if-nez v1, :cond_1b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const-string v1, "businessNotebook:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->businessNotebook:Lcom/evernote/edam/type/BusinessNotebook;

    if-nez v1, :cond_1c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_7
    move v1, v3

    :cond_1d
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetContact()Z

    move-result v4

    if-eqz v4, :cond_20

    if-nez v1, :cond_1e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const-string v1, "contact:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->contact:Lcom/evernote/edam/type/User;

    if-nez v1, :cond_1f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_20
    move v3, v1

    :goto_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetRestrictions()Z

    move-result v1

    if-eqz v1, :cond_23

    if-nez v3, :cond_21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    const-string v1, "restrictions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->restrictions:Lcom/evernote/edam/type/NotebookRestrictions;

    if-nez p0, :cond_22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    :goto_9
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetBusinessNotebook()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->businessNotebook:Lcom/evernote/edam/type/BusinessNotebook;

    return-void
.end method

.method public unsetContact()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->contact:Lcom/evernote/edam/type/User;

    return-void
.end method

.method public unsetDefaultNotebook()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetGuid()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->guid:Ljava/lang/String;

    return-void
.end method

.method public unsetName()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->name:Ljava/lang/String;

    return-void
.end method

.method public unsetPublished()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetPublishing()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->publishing:Lcom/evernote/edam/type/Publishing;

    return-void
.end method

.method public unsetRestrictions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->restrictions:Lcom/evernote/edam/type/NotebookRestrictions;

    return-void
.end method

.method public unsetServiceCreated()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetServiceUpdated()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetSharedNotebookIds()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    return-void
.end method

.method public unsetSharedNotebooks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    return-void
.end method

.method public unsetStack()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Notebook;->stack:Ljava/lang/String;

    return-void
.end method

.method public unsetUpdateSequenceNum()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->__isset_vector:[Z

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->validate()V

    sget-object v0, Lcom/evernote/edam/type/Notebook;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/type/Notebook;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->guid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetName()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/type/Notebook;->NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetUpdateSequenceNum()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/type/Notebook;->UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/type/Notebook;->updateSequenceNum:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetDefaultNotebook()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/type/Notebook;->DEFAULT_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/Notebook;->defaultNotebook:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetServiceCreated()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/evernote/edam/type/Notebook;->SERVICE_CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/Notebook;->serviceCreated:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetServiceUpdated()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/evernote/edam/type/Notebook;->SERVICE_UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/Notebook;->serviceUpdated:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->publishing:Lcom/evernote/edam/type/Publishing;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetPublishing()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/evernote/edam/type/Notebook;->PUBLISHING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->publishing:Lcom/evernote/edam/type/Publishing;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Publishing;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetPublished()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/evernote/edam/type/Notebook;->PUBLISHED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/Notebook;->published:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_7
    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->stack:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetStack()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/evernote/edam/type/Notebook;->STACK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->stack:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_8
    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetSharedNotebookIds()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/evernote/edam/type/Notebook;->SHARED_NOTEBOOK_IDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TList;

    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebookIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_a
    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetSharedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/evernote/edam/type/Notebook;->SHARED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TList;

    iget-object v1, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xc

    invoke-direct {v0, v2, v1}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->sharedNotebooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/edam/type/SharedNotebook;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/SharedNotebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    :cond_b
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_c
    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->businessNotebook:Lcom/evernote/edam/type/BusinessNotebook;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetBusinessNotebook()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/evernote/edam/type/Notebook;->BUSINESS_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->businessNotebook:Lcom/evernote/edam/type/BusinessNotebook;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/BusinessNotebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_d
    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->contact:Lcom/evernote/edam/type/User;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetContact()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/evernote/edam/type/Notebook;->CONTACT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->contact:Lcom/evernote/edam/type/User;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/User;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_e
    iget-object v0, p0, Lcom/evernote/edam/type/Notebook;->restrictions:Lcom/evernote/edam/type/NotebookRestrictions;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->isSetRestrictions()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/evernote/edam/type/Notebook;->RESTRICTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object p0, p0, Lcom/evernote/edam/type/Notebook;->restrictions:Lcom/evernote/edam/type/NotebookRestrictions;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_f
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
