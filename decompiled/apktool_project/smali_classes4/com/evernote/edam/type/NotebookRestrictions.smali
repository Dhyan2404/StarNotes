.class public Lcom/evernote/edam/type/NotebookRestrictions;
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
        "Lcom/evernote/edam/type/NotebookRestrictions;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final EXPUNGE_WHICH_SHARED_NOTEBOOK_RESTRICTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_CREATE_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_CREATE_SHARED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_CREATE_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_EMAIL_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_EXPUNGE_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_EXPUNGE_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_EXPUNGE_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_PUBLISH_TO_BUSINESS_LIBRARY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_PUBLISH_TO_PUBLIC_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_READ_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_SEND_MESSAGE_TO_RECIPIENTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_SET_DEFAULT_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_SET_NOTEBOOK_STACK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_SET_PARENT_TAG_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_SHARE_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_UPDATE_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_UPDATE_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NO_UPDATE_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final UPDATE_WHICH_SHARED_NOTEBOOK_RESTRICTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __NOCREATENOTES_ISSET_ID:I = 0x1

.field private static final __NOCREATESHAREDNOTEBOOKS_ISSET_ID:I = 0x11

.field private static final __NOCREATETAGS_ISSET_ID:I = 0xd

.field private static final __NOEMAILNOTES_ISSET_ID:I = 0x5

.field private static final __NOEXPUNGENOTEBOOK_ISSET_ID:I = 0x8

.field private static final __NOEXPUNGENOTES_ISSET_ID:I = 0x3

.field private static final __NOEXPUNGETAGS_ISSET_ID:I = 0xf

.field private static final __NOPUBLISHTOBUSINESSLIBRARY_ISSET_ID:I = 0xc

.field private static final __NOPUBLISHTOPUBLIC_ISSET_ID:I = 0xb

.field private static final __NOREADNOTES_ISSET_ID:I = 0x0

.field private static final __NOSENDMESSAGETORECIPIENTS_ISSET_ID:I = 0x6

.field private static final __NOSETDEFAULTNOTEBOOK_ISSET_ID:I = 0x9

.field private static final __NOSETNOTEBOOKSTACK_ISSET_ID:I = 0xa

.field private static final __NOSETPARENTTAG_ISSET_ID:I = 0x10

.field private static final __NOSHARENOTES_ISSET_ID:I = 0x4

.field private static final __NOUPDATENOTEBOOK_ISSET_ID:I = 0x7

.field private static final __NOUPDATENOTES_ISSET_ID:I = 0x2

.field private static final __NOUPDATETAGS_ISSET_ID:I = 0xe


# instance fields
.field private __isset_vector:[Z

.field private expungeWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

.field private noCreateNotes:Z

.field private noCreateSharedNotebooks:Z

.field private noCreateTags:Z

.field private noEmailNotes:Z

.field private noExpungeNotebook:Z

.field private noExpungeNotes:Z

.field private noExpungeTags:Z

.field private noPublishToBusinessLibrary:Z

.field private noPublishToPublic:Z

.field private noReadNotes:Z

.field private noSendMessageToRecipients:Z

.field private noSetDefaultNotebook:Z

.field private noSetNotebookStack:Z

.field private noSetParentTag:Z

.field private noShareNotes:Z

.field private noUpdateNotebook:Z

.field private noUpdateNotes:Z

.field private noUpdateTags:Z

.field private updateWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "NotebookRestrictions"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "noReadNotes"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_READ_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noCreateNotes"

    invoke-direct {v0, v1, v3, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_CREATE_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noUpdateNotes"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_UPDATE_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noExpungeNotes"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_EXPUNGE_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noShareNotes"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_SHARE_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noEmailNotes"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_EMAIL_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noSendMessageToRecipients"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_SEND_MESSAGE_TO_RECIPIENTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noUpdateNotebook"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_UPDATE_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noExpungeNotebook"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_EXPUNGE_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noSetDefaultNotebook"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_SET_DEFAULT_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noSetNotebookStack"

    const/16 v4, 0xb

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_SET_NOTEBOOK_STACK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noPublishToPublic"

    const/16 v4, 0xc

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_PUBLISH_TO_PUBLIC_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noPublishToBusinessLibrary"

    const/16 v4, 0xd

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_PUBLISH_TO_BUSINESS_LIBRARY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noCreateTags"

    const/16 v4, 0xe

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_CREATE_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noUpdateTags"

    const/16 v4, 0xf

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_UPDATE_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noExpungeTags"

    const/16 v4, 0x10

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_EXPUNGE_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noSetParentTag"

    const/16 v4, 0x11

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_SET_PARENT_TAG_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noCreateSharedNotebooks"

    const/16 v4, 0x12

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_CREATE_SHARED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "updateWhichSharedNotebookRestrictions"

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->UPDATE_WHICH_SHARED_NOTEBOOK_RESTRICTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "expungeWhichSharedNotebookRestrictions"

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->EXPUNGE_WHICH_SHARED_NOTEBOOK_RESTRICTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/NotebookRestrictions;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    new-array v0, v0, [Z

    .line 4
    iput-object v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    .line 5
    iget-object v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noReadNotes:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noReadNotes:Z

    .line 7
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateNotes:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateNotes:Z

    .line 8
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotes:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotes:Z

    .line 9
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotes:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotes:Z

    .line 10
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noShareNotes:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noShareNotes:Z

    .line 11
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noEmailNotes:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noEmailNotes:Z

    .line 12
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noSendMessageToRecipients:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSendMessageToRecipients:Z

    .line 13
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotebook:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotebook:Z

    .line 14
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotebook:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotebook:Z

    .line 15
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noSetDefaultNotebook:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetDefaultNotebook:Z

    .line 16
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noSetNotebookStack:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetNotebookStack:Z

    .line 17
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToPublic:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToPublic:Z

    .line 18
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToBusinessLibrary:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToBusinessLibrary:Z

    .line 19
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateTags:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateTags:Z

    .line 20
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateTags:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateTags:Z

    .line 21
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeTags:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeTags:Z

    .line 22
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noSetParentTag:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetParentTag:Z

    .line 23
    iget-boolean v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateSharedNotebooks:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateSharedNotebooks:Z

    .line 24
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetUpdateWhichSharedNotebookRestrictions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p1, Lcom/evernote/edam/type/NotebookRestrictions;->updateWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    iput-object v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->updateWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetExpungeWhichSharedNotebookRestrictions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    iget-object p1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->expungeWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    iput-object p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->expungeWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoReadNotesIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noReadNotes:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoCreateNotesIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateNotes:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoUpdateNotesIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotes:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoExpungeNotesIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotes:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoShareNotesIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noShareNotes:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoEmailNotesIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noEmailNotes:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoSendMessageToRecipientsIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSendMessageToRecipients:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoUpdateNotebookIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotebook:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoExpungeNotebookIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotebook:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoSetDefaultNotebookIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetDefaultNotebook:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoSetNotebookStackIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetNotebookStack:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoPublishToPublicIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToPublic:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoPublishToBusinessLibraryIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToBusinessLibrary:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoCreateTagsIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateTags:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoUpdateTagsIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateTags:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoExpungeTagsIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeTags:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoSetParentTagIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetParentTag:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoCreateSharedNotebooksIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateSharedNotebooks:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->updateWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    iput-object v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->expungeWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/NotebookRestrictions;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoReadNotes()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoReadNotes()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoReadNotes()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noReadNotes:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noReadNotes:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateNotes()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateNotes()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateNotes()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateNotes:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateNotes:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateNotes()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateNotes()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateNotes()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotes:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotes:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeNotes()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeNotes()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeNotes()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotes:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotes:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoShareNotes()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoShareNotes()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoShareNotes()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noShareNotes:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noShareNotes:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoEmailNotes()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoEmailNotes()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoEmailNotes()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noEmailNotes:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noEmailNotes:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSendMessageToRecipients()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSendMessageToRecipients()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSendMessageToRecipients()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSendMessageToRecipients:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noSendMessageToRecipients:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateNotebook()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateNotebook()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 19
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateNotebook()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotebook:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotebook:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    .line 20
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeNotebook()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeNotebook()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 21
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeNotebook()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotebook:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotebook:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    .line 22
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetDefaultNotebook()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetDefaultNotebook()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    .line 23
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetDefaultNotebook()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetDefaultNotebook:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noSetDefaultNotebook:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    .line 24
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetNotebookStack()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetNotebookStack()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    .line 25
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetNotebookStack()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetNotebookStack:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noSetNotebookStack:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 26
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoPublishToPublic()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoPublishToPublic()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    .line 27
    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoPublishToPublic()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToPublic:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToPublic:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_18

    return v0

    .line 28
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoPublishToBusinessLibrary()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoPublishToBusinessLibrary()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_19

    return v0

    .line 29
    :cond_19
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoPublishToBusinessLibrary()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToBusinessLibrary:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToBusinessLibrary:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_1a

    return v0

    .line 30
    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateTags()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateTags()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1b

    return v0

    .line 31
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateTags()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateTags:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateTags:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_1c

    return v0

    .line 32
    :cond_1c
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateTags()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateTags()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1d

    return v0

    .line 33
    :cond_1d
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateTags()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateTags:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateTags:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_1e

    return v0

    .line 34
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeTags()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeTags()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1f

    return v0

    .line 35
    :cond_1f
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeTags()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeTags:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeTags:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_20

    return v0

    .line 36
    :cond_20
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetParentTag()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetParentTag()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_21

    return v0

    .line 37
    :cond_21
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetParentTag()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetParentTag:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noSetParentTag:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_22

    return v0

    .line 38
    :cond_22
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateSharedNotebooks()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateSharedNotebooks()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_23

    return v0

    .line 39
    :cond_23
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateSharedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateSharedNotebooks:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateSharedNotebooks:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_24

    return v0

    .line 40
    :cond_24
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetUpdateWhichSharedNotebookRestrictions()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetUpdateWhichSharedNotebookRestrictions()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_25

    return v0

    .line 41
    :cond_25
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetUpdateWhichSharedNotebookRestrictions()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->updateWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    iget-object v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->updateWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_26

    return v0

    .line 42
    :cond_26
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetExpungeWhichSharedNotebookRestrictions()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetExpungeWhichSharedNotebookRestrictions()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_27

    return v0

    .line 43
    :cond_27
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetExpungeWhichSharedNotebookRestrictions()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->expungeWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    iget-object p1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->expungeWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    if-eqz p0, :cond_28

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/type/NotebookRestrictions;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->compareTo(Lcom/evernote/edam/type/NotebookRestrictions;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/type/NotebookRestrictions;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/type/NotebookRestrictions;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/NotebookRestrictions;-><init>(Lcom/evernote/edam/type/NotebookRestrictions;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->deepCopy()Lcom/evernote/edam/type/NotebookRestrictions;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/type/NotebookRestrictions;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoReadNotes()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoReadNotes()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_3d

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noReadNotes:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noReadNotes:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateNotes()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateNotes()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_3d

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 8
    :cond_5
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateNotes:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateNotes:Z

    if-eq v1, v2, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateNotes()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateNotes()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_3d

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 11
    :cond_8
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotes:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotes:Z

    if-eq v1, v2, :cond_9

    return v0

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeNotes()Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeNotes()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_3d

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 14
    :cond_b
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotes:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotes:Z

    if-eq v1, v2, :cond_c

    return v0

    .line 15
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoShareNotes()Z

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoShareNotes()Z

    move-result v2

    if-nez v1, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-eqz v1, :cond_3d

    if-nez v2, :cond_e

    goto/16 :goto_0

    .line 17
    :cond_e
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noShareNotes:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noShareNotes:Z

    if-eq v1, v2, :cond_f

    return v0

    .line 18
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoEmailNotes()Z

    move-result v1

    .line 19
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoEmailNotes()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_12

    :cond_10
    if-eqz v1, :cond_3d

    if-nez v2, :cond_11

    goto/16 :goto_0

    .line 20
    :cond_11
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noEmailNotes:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noEmailNotes:Z

    if-eq v1, v2, :cond_12

    return v0

    .line 21
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSendMessageToRecipients()Z

    move-result v1

    .line 22
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSendMessageToRecipients()Z

    move-result v2

    if-nez v1, :cond_13

    if-eqz v2, :cond_15

    :cond_13
    if-eqz v1, :cond_3d

    if-nez v2, :cond_14

    goto/16 :goto_0

    .line 23
    :cond_14
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSendMessageToRecipients:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noSendMessageToRecipients:Z

    if-eq v1, v2, :cond_15

    return v0

    .line 24
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateNotebook()Z

    move-result v1

    .line 25
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateNotebook()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_18

    :cond_16
    if-eqz v1, :cond_3d

    if-nez v2, :cond_17

    goto/16 :goto_0

    .line 26
    :cond_17
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotebook:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotebook:Z

    if-eq v1, v2, :cond_18

    return v0

    .line 27
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeNotebook()Z

    move-result v1

    .line 28
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeNotebook()Z

    move-result v2

    if-nez v1, :cond_19

    if-eqz v2, :cond_1b

    :cond_19
    if-eqz v1, :cond_3d

    if-nez v2, :cond_1a

    goto/16 :goto_0

    .line 29
    :cond_1a
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotebook:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotebook:Z

    if-eq v1, v2, :cond_1b

    return v0

    .line 30
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetDefaultNotebook()Z

    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetDefaultNotebook()Z

    move-result v2

    if-nez v1, :cond_1c

    if-eqz v2, :cond_1e

    :cond_1c
    if-eqz v1, :cond_3d

    if-nez v2, :cond_1d

    goto/16 :goto_0

    .line 32
    :cond_1d
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetDefaultNotebook:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noSetDefaultNotebook:Z

    if-eq v1, v2, :cond_1e

    return v0

    .line 33
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetNotebookStack()Z

    move-result v1

    .line 34
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetNotebookStack()Z

    move-result v2

    if-nez v1, :cond_1f

    if-eqz v2, :cond_21

    :cond_1f
    if-eqz v1, :cond_3d

    if-nez v2, :cond_20

    goto/16 :goto_0

    .line 35
    :cond_20
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetNotebookStack:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noSetNotebookStack:Z

    if-eq v1, v2, :cond_21

    return v0

    .line 36
    :cond_21
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoPublishToPublic()Z

    move-result v1

    .line 37
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoPublishToPublic()Z

    move-result v2

    if-nez v1, :cond_22

    if-eqz v2, :cond_24

    :cond_22
    if-eqz v1, :cond_3d

    if-nez v2, :cond_23

    goto/16 :goto_0

    .line 38
    :cond_23
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToPublic:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToPublic:Z

    if-eq v1, v2, :cond_24

    return v0

    .line 39
    :cond_24
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoPublishToBusinessLibrary()Z

    move-result v1

    .line 40
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoPublishToBusinessLibrary()Z

    move-result v2

    if-nez v1, :cond_25

    if-eqz v2, :cond_27

    :cond_25
    if-eqz v1, :cond_3d

    if-nez v2, :cond_26

    goto/16 :goto_0

    .line 41
    :cond_26
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToBusinessLibrary:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToBusinessLibrary:Z

    if-eq v1, v2, :cond_27

    return v0

    .line 42
    :cond_27
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateTags()Z

    move-result v1

    .line 43
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateTags()Z

    move-result v2

    if-nez v1, :cond_28

    if-eqz v2, :cond_2a

    :cond_28
    if-eqz v1, :cond_3d

    if-nez v2, :cond_29

    goto/16 :goto_0

    .line 44
    :cond_29
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateTags:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateTags:Z

    if-eq v1, v2, :cond_2a

    return v0

    .line 45
    :cond_2a
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateTags()Z

    move-result v1

    .line 46
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateTags()Z

    move-result v2

    if-nez v1, :cond_2b

    if-eqz v2, :cond_2d

    :cond_2b
    if-eqz v1, :cond_3d

    if-nez v2, :cond_2c

    goto/16 :goto_0

    .line 47
    :cond_2c
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateTags:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateTags:Z

    if-eq v1, v2, :cond_2d

    return v0

    .line 48
    :cond_2d
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeTags()Z

    move-result v1

    .line 49
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeTags()Z

    move-result v2

    if-nez v1, :cond_2e

    if-eqz v2, :cond_30

    :cond_2e
    if-eqz v1, :cond_3d

    if-nez v2, :cond_2f

    goto/16 :goto_0

    .line 50
    :cond_2f
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeTags:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeTags:Z

    if-eq v1, v2, :cond_30

    return v0

    .line 51
    :cond_30
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetParentTag()Z

    move-result v1

    .line 52
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetParentTag()Z

    move-result v2

    if-nez v1, :cond_31

    if-eqz v2, :cond_33

    :cond_31
    if-eqz v1, :cond_3d

    if-nez v2, :cond_32

    goto :goto_0

    .line 53
    :cond_32
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetParentTag:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noSetParentTag:Z

    if-eq v1, v2, :cond_33

    return v0

    .line 54
    :cond_33
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateSharedNotebooks()Z

    move-result v1

    .line 55
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateSharedNotebooks()Z

    move-result v2

    if-nez v1, :cond_34

    if-eqz v2, :cond_36

    :cond_34
    if-eqz v1, :cond_3d

    if-nez v2, :cond_35

    goto :goto_0

    .line 56
    :cond_35
    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateSharedNotebooks:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateSharedNotebooks:Z

    if-eq v1, v2, :cond_36

    return v0

    .line 57
    :cond_36
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetUpdateWhichSharedNotebookRestrictions()Z

    move-result v1

    .line 58
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetUpdateWhichSharedNotebookRestrictions()Z

    move-result v2

    if-nez v1, :cond_37

    if-eqz v2, :cond_39

    :cond_37
    if-eqz v1, :cond_3d

    if-nez v2, :cond_38

    goto :goto_0

    .line 59
    :cond_38
    iget-object v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->updateWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    iget-object v2, p1, Lcom/evernote/edam/type/NotebookRestrictions;->updateWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    return v0

    .line 60
    :cond_39
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetExpungeWhichSharedNotebookRestrictions()Z

    move-result v1

    .line 61
    invoke-virtual {p1}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetExpungeWhichSharedNotebookRestrictions()Z

    move-result v2

    if-nez v1, :cond_3a

    if-eqz v2, :cond_3c

    :cond_3a
    if-eqz v1, :cond_3d

    if-nez v2, :cond_3b

    goto :goto_0

    .line 62
    :cond_3b
    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->expungeWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    iget-object p1, p1, Lcom/evernote/edam/type/NotebookRestrictions;->expungeWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    return v0

    :cond_3c
    const/4 p0, 0x1

    return p0

    :cond_3d
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
    instance-of v1, p1, Lcom/evernote/edam/type/NotebookRestrictions;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/type/NotebookRestrictions;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->equals(Lcom/evernote/edam/type/NotebookRestrictions;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getExpungeWhichSharedNotebookRestrictions()Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->expungeWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    return-object p0
.end method

.method public getUpdateWhichSharedNotebookRestrictions()Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->updateWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNoCreateNotes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateNotes:Z

    return p0
.end method

.method public isNoCreateSharedNotebooks()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateSharedNotebooks:Z

    return p0
.end method

.method public isNoCreateTags()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateTags:Z

    return p0
.end method

.method public isNoEmailNotes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noEmailNotes:Z

    return p0
.end method

.method public isNoExpungeNotebook()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotebook:Z

    return p0
.end method

.method public isNoExpungeNotes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotes:Z

    return p0
.end method

.method public isNoExpungeTags()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeTags:Z

    return p0
.end method

.method public isNoPublishToBusinessLibrary()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToBusinessLibrary:Z

    return p0
.end method

.method public isNoPublishToPublic()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToPublic:Z

    return p0
.end method

.method public isNoReadNotes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noReadNotes:Z

    return p0
.end method

.method public isNoSendMessageToRecipients()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSendMessageToRecipients:Z

    return p0
.end method

.method public isNoSetDefaultNotebook()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetDefaultNotebook:Z

    return p0
.end method

.method public isNoSetNotebookStack()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetNotebookStack:Z

    return p0
.end method

.method public isNoSetParentTag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetParentTag:Z

    return p0
.end method

.method public isNoShareNotes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noShareNotes:Z

    return p0
.end method

.method public isNoUpdateNotebook()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotebook:Z

    return p0
.end method

.method public isNoUpdateNotes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotes:Z

    return p0
.end method

.method public isNoUpdateTags()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateTags:Z

    return p0
.end method

.method public isSetExpungeWhichSharedNotebookRestrictions()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->expungeWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetNoCreateNotes()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoCreateSharedNotebooks()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0x11

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoCreateTags()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xd

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoEmailNotes()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x5

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoExpungeNotebook()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0x8

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoExpungeNotes()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoExpungeTags()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xf

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoPublishToBusinessLibrary()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xc

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoPublishToPublic()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xb

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoReadNotes()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoSendMessageToRecipients()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x6

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoSetDefaultNotebook()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0x9

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoSetNotebookStack()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xa

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoSetParentTag()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0x10

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoShareNotes()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoUpdateNotebook()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x7

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoUpdateNotes()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoUpdateTags()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xe

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetUpdateWhichSharedNotebookRestrictions()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->updateWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_0
    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    invoke-static {v0}, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;->findByValue(I)Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->expungeWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    goto/16 :goto_1

    :cond_1
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_1
    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    invoke-static {v0}, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;->findByValue(I)Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->updateWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    goto/16 :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_2
    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateSharedNotebooks:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoCreateSharedNotebooksIsSet(Z)V

    goto/16 :goto_1

    :cond_3
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_3
    if-ne v1, v4, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetParentTag:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoSetParentTagIsSet(Z)V

    goto/16 :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_4
    if-ne v1, v4, :cond_5

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeTags:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoExpungeTagsIsSet(Z)V

    goto/16 :goto_1

    :cond_5
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_5
    if-ne v1, v4, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateTags:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoUpdateTagsIsSet(Z)V

    goto/16 :goto_1

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_6
    if-ne v1, v4, :cond_7

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateTags:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoCreateTagsIsSet(Z)V

    goto/16 :goto_1

    :cond_7
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_7
    if-ne v1, v4, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToBusinessLibrary:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoPublishToBusinessLibraryIsSet(Z)V

    goto/16 :goto_1

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_8
    if-ne v1, v4, :cond_9

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToPublic:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoPublishToPublicIsSet(Z)V

    goto/16 :goto_1

    :cond_9
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_9
    if-ne v1, v4, :cond_a

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetNotebookStack:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoSetNotebookStackIsSet(Z)V

    goto/16 :goto_1

    :cond_a
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_a
    if-ne v1, v4, :cond_b

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetDefaultNotebook:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoSetDefaultNotebookIsSet(Z)V

    goto/16 :goto_1

    :cond_b
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_b
    if-ne v1, v4, :cond_c

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotebook:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoExpungeNotebookIsSet(Z)V

    goto/16 :goto_1

    :cond_c
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_c
    if-ne v1, v4, :cond_d

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotebook:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoUpdateNotebookIsSet(Z)V

    goto/16 :goto_1

    :cond_d
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_d
    if-ne v1, v4, :cond_e

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSendMessageToRecipients:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoSendMessageToRecipientsIsSet(Z)V

    goto/16 :goto_1

    :cond_e
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_e
    if-ne v1, v4, :cond_f

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noEmailNotes:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoEmailNotesIsSet(Z)V

    goto :goto_1

    :cond_f
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_f
    if-ne v1, v4, :cond_10

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noShareNotes:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoShareNotesIsSet(Z)V

    goto :goto_1

    :cond_10
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_10
    if-ne v1, v4, :cond_11

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotes:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoExpungeNotesIsSet(Z)V

    goto :goto_1

    :cond_11
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_11
    if-ne v1, v4, :cond_12

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotes:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoUpdateNotesIsSet(Z)V

    goto :goto_1

    :cond_12
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_12
    if-ne v1, v4, :cond_13

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateNotes:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoCreateNotesIsSet(Z)V

    goto :goto_1

    :cond_13
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_13
    if-ne v1, v4, :cond_14

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noReadNotes:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoReadNotesIsSet(Z)V

    goto :goto_1

    :cond_14
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method public setExpungeWhichSharedNotebookRestrictions(Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->expungeWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    return-void
.end method

.method public setExpungeWhichSharedNotebookRestrictionsIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->expungeWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    :cond_0
    return-void
.end method

.method public setNoCreateNotes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateNotes:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoCreateNotesIsSet(Z)V

    return-void
.end method

.method public setNoCreateNotesIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoCreateSharedNotebooks(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateSharedNotebooks:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoCreateSharedNotebooksIsSet(Z)V

    return-void
.end method

.method public setNoCreateSharedNotebooksIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0x11

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoCreateTags(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateTags:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoCreateTagsIsSet(Z)V

    return-void
.end method

.method public setNoCreateTagsIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xd

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoEmailNotes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noEmailNotes:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoEmailNotesIsSet(Z)V

    return-void
.end method

.method public setNoEmailNotesIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x5

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoExpungeNotebook(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotebook:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoExpungeNotebookIsSet(Z)V

    return-void
.end method

.method public setNoExpungeNotebookIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0x8

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoExpungeNotes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotes:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoExpungeNotesIsSet(Z)V

    return-void
.end method

.method public setNoExpungeNotesIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x3

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoExpungeTags(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeTags:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoExpungeTagsIsSet(Z)V

    return-void
.end method

.method public setNoExpungeTagsIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xf

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoPublishToBusinessLibrary(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToBusinessLibrary:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoPublishToBusinessLibraryIsSet(Z)V

    return-void
.end method

.method public setNoPublishToBusinessLibraryIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xc

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoPublishToPublic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToPublic:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoPublishToPublicIsSet(Z)V

    return-void
.end method

.method public setNoPublishToPublicIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xb

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoReadNotes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noReadNotes:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoReadNotesIsSet(Z)V

    return-void
.end method

.method public setNoReadNotesIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoSendMessageToRecipients(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSendMessageToRecipients:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoSendMessageToRecipientsIsSet(Z)V

    return-void
.end method

.method public setNoSendMessageToRecipientsIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x6

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoSetDefaultNotebook(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetDefaultNotebook:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoSetDefaultNotebookIsSet(Z)V

    return-void
.end method

.method public setNoSetDefaultNotebookIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0x9

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoSetNotebookStack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetNotebookStack:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoSetNotebookStackIsSet(Z)V

    return-void
.end method

.method public setNoSetNotebookStackIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xa

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoSetParentTag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetParentTag:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoSetParentTagIsSet(Z)V

    return-void
.end method

.method public setNoSetParentTagIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0x10

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoShareNotes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noShareNotes:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoShareNotesIsSet(Z)V

    return-void
.end method

.method public setNoShareNotesIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x4

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoUpdateNotebook(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotebook:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoUpdateNotebookIsSet(Z)V

    return-void
.end method

.method public setNoUpdateNotebookIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x7

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoUpdateNotes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotes:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoUpdateNotesIsSet(Z)V

    return-void
.end method

.method public setNoUpdateNotesIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoUpdateTags(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateTags:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NotebookRestrictions;->setNoUpdateTagsIsSet(Z)V

    return-void
.end method

.method public setNoUpdateTagsIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xe

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setUpdateWhichSharedNotebookRestrictions(Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->updateWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    return-void
.end method

.method public setUpdateWhichSharedNotebookRestrictionsIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->updateWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotebookRestrictions("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoReadNotes()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "noReadNotes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noReadNotes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateNotes()Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "noCreateNotes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateNotes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateNotes()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "noUpdateNotes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeNotes()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v1, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "noExpungeNotes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoShareNotes()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v1, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "noShareNotes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noShareNotes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoEmailNotes()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v1, :cond_9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, "noEmailNotes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noEmailNotes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSendMessageToRecipients()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v1, :cond_b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, "noSendMessageToRecipients:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSendMessageToRecipients:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateNotebook()Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v1, :cond_d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, "noUpdateNotebook:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotebook:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeNotebook()Z

    move-result v3

    if-eqz v3, :cond_10

    if-nez v1, :cond_f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v1, "noExpungeNotebook:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotebook:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetDefaultNotebook()Z

    move-result v3

    if-eqz v3, :cond_12

    if-nez v1, :cond_11

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v1, "noSetDefaultNotebook:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetDefaultNotebook:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetNotebookStack()Z

    move-result v3

    if-eqz v3, :cond_14

    if-nez v1, :cond_13

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string v1, "noSetNotebookStack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetNotebookStack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoPublishToPublic()Z

    move-result v3

    if-eqz v3, :cond_16

    if-nez v1, :cond_15

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string v1, "noPublishToPublic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToPublic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoPublishToBusinessLibrary()Z

    move-result v3

    if-eqz v3, :cond_18

    if-nez v1, :cond_17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const-string v1, "noPublishToBusinessLibrary:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToBusinessLibrary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateTags()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-nez v1, :cond_19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const-string v1, "noCreateTags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateTags:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateTags()Z

    move-result v3

    if-eqz v3, :cond_1c

    if-nez v1, :cond_1b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const-string v1, "noUpdateTags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateTags:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_1c
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeTags()Z

    move-result v3

    if-eqz v3, :cond_1e

    if-nez v1, :cond_1d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const-string v1, "noExpungeTags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeTags:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetParentTag()Z

    move-result v3

    if-eqz v3, :cond_20

    if-nez v1, :cond_1f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    const-string v1, "noSetParentTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetParentTag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_20
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateSharedNotebooks()Z

    move-result v3

    if-eqz v3, :cond_22

    if-nez v1, :cond_21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    const-string v1, "noCreateSharedNotebooks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateSharedNotebooks:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_22
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetUpdateWhichSharedNotebookRestrictions()Z

    move-result v3

    const-string v5, "null"

    if-eqz v3, :cond_25

    if-nez v1, :cond_23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const-string v1, "updateWhichSharedNotebookRestrictions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/NotebookRestrictions;->updateWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    if-nez v1, :cond_24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_25
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetExpungeWhichSharedNotebookRestrictions()Z

    move-result v1

    if-eqz v1, :cond_28

    if-nez v2, :cond_26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    const-string v1, "expungeWhichSharedNotebookRestrictions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->expungeWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    if-nez p0, :cond_27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_28
    :goto_2
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetExpungeWhichSharedNotebookRestrictions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->expungeWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    return-void
.end method

.method public unsetNoCreateNotes()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNoCreateSharedNotebooks()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0x11

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNoCreateTags()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xd

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNoEmailNotes()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNoExpungeNotebook()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNoExpungeNotes()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNoExpungeTags()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xf

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNoPublishToBusinessLibrary()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xc

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNoPublishToPublic()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xb

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNoReadNotes()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public unsetNoSendMessageToRecipients()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNoSetDefaultNotebook()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0x9

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNoSetNotebookStack()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xa

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNoSetParentTag()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0x10

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNoShareNotes()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNoUpdateNotebook()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNoUpdateNotes()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNoUpdateTags()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->__isset_vector:[Z

    const/16 v0, 0xe

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetUpdateWhichSharedNotebookRestrictions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->updateWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

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

    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->validate()V

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoReadNotes()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_READ_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noReadNotes:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateNotes()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_CREATE_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateNotes:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateNotes()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_UPDATE_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotes:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeNotes()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_EXPUNGE_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotes:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoShareNotes()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_SHARE_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noShareNotes:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoEmailNotes()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_EMAIL_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noEmailNotes:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSendMessageToRecipients()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_SEND_MESSAGE_TO_RECIPIENTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSendMessageToRecipients:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateNotebook()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_UPDATE_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateNotebook:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeNotebook()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_EXPUNGE_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeNotebook:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetDefaultNotebook()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_SET_DEFAULT_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetDefaultNotebook:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetNotebookStack()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_SET_NOTEBOOK_STACK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetNotebookStack:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoPublishToPublic()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_PUBLISH_TO_PUBLIC_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToPublic:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoPublishToBusinessLibrary()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_PUBLISH_TO_BUSINESS_LIBRARY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noPublishToBusinessLibrary:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateTags()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_CREATE_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateTags:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoUpdateTags()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_UPDATE_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noUpdateTags:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoExpungeTags()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_EXPUNGE_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noExpungeTags:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoSetParentTag()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_SET_PARENT_TAG_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noSetParentTag:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetNoCreateSharedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->NO_CREATE_SHARED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->noCreateSharedNotebooks:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_11
    iget-object v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->updateWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetUpdateWhichSharedNotebookRestrictions()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->UPDATE_WHICH_SHARED_NOTEBOOK_RESTRICTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->updateWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    invoke-virtual {v0}, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_12
    iget-object v0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->expungeWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isSetExpungeWhichSharedNotebookRestrictions()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/evernote/edam/type/NotebookRestrictions;->EXPUNGE_WHICH_SHARED_NOTEBOOK_RESTRICTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object p0, p0, Lcom/evernote/edam/type/NotebookRestrictions;->expungeWhichSharedNotebookRestrictions:Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;

    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookInstanceRestrictions;->getValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_13
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
