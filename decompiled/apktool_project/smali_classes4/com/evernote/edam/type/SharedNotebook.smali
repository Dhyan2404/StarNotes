.class public Lcom/evernote/edam/type/SharedNotebook;
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
        "Lcom/evernote/edam/type/SharedNotebook;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final ALLOW_PREVIEW_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTEBOOK_MODIFIABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PRIVILEGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RECIPIENT_SETTINGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REQUIRE_LOGIN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SERVICE_CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SERVICE_UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SHARE_KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final USER_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __ALLOWPREVIEW_ISSET_ID:I = 0x6

.field private static final __ID_ISSET_ID:I = 0x0

.field private static final __NOTEBOOKMODIFIABLE_ISSET_ID:I = 0x2

.field private static final __REQUIRELOGIN_ISSET_ID:I = 0x3

.field private static final __SERVICECREATED_ISSET_ID:I = 0x4

.field private static final __SERVICEUPDATED_ISSET_ID:I = 0x5

.field private static final __USERID_ISSET_ID:I = 0x1


# instance fields
.field private __isset_vector:[Z

.field private allowPreview:Z

.field private email:Ljava/lang/String;

.field private id:J

.field private notebookGuid:Ljava/lang/String;

.field private notebookModifiable:Z

.field private privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

.field private recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

.field private requireLogin:Z

.field private serviceCreated:J

.field private serviceUpdated:J

.field private shareKey:Ljava/lang/String;

.field private userId:I

.field private username:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "SharedNotebook"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "id"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userId"

    const/16 v2, 0x8

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->USER_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x3

    const-string v5, "notebookGuid"

    const/16 v6, 0xb

    invoke-direct {v0, v5, v6, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "email"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v6, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notebookModifiable"

    const/4 v5, 0x5

    invoke-direct {v0, v1, v4, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->NOTEBOOK_MODIFIABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "requireLogin"

    const/4 v5, 0x6

    invoke-direct {v0, v1, v4, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->REQUIRE_LOGIN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "serviceCreated"

    const/4 v5, 0x7

    invoke-direct {v0, v1, v3, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->SERVICE_CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "serviceUpdated"

    invoke-direct {v0, v1, v3, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->SERVICE_UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "shareKey"

    invoke-direct {v0, v1, v6, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->SHARE_KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "username"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v6, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "privilege"

    invoke-direct {v0, v1, v2, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->PRIVILEGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "allowPreview"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->ALLOW_PREVIEW_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "recipientSettings"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->RECIPIENT_SETTINGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/SharedNotebook;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [Z

    .line 4
    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    .line 5
    iget-object v1, p1, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-wide v0, p1, Lcom/evernote/edam/type/SharedNotebook;->id:J

    iput-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    .line 7
    iget v0, p1, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    iput v0, p0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    .line 8
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookGuid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p1, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetEmail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p1, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    .line 12
    :cond_1
    iget-boolean v0, p1, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    .line 13
    iget-boolean v0, p1, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    .line 14
    iget-wide v0, p1, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    iput-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    .line 15
    iget-wide v0, p1, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    iput-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    .line 16
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetShareKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p1, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetUsername()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p1, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetPrivilege()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p1, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    .line 22
    :cond_4
    iget-boolean v0, p1, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    .line 23
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetRecipientSettings()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    new-instance v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    iget-object p1, p1, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-direct {v0, p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;-><init>(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)V

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    :cond_5
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setIdIsSet(Z)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setUserIdIsSet(Z)V

    iput v0, p0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setNotebookModifiableIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setRequireLoginIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setServiceCreatedIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setServiceUpdatedIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    iput-object v3, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setAllowPreviewIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    iput-object v3, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/SharedNotebook;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetId()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetId()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetId()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    iget-wide v2, p1, Lcom/evernote/edam/type/SharedNotebook;->id:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUserId()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetUserId()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUserId()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    iget v1, p1, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookGuid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookGuid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookGuid()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetEmail()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetEmail()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetEmail()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookModifiable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookModifiable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookModifiable()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRequireLogin()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetRequireLogin()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRequireLogin()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceCreated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceCreated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceCreated()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    iget-wide v2, p1, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceUpdated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceUpdated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 19
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceUpdated()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    iget-wide v2, p1, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    .line 20
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetShareKey()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetShareKey()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 21
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetShareKey()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    .line 22
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUsername()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetUsername()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    .line 23
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUsername()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    .line 24
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetPrivilege()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetPrivilege()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    .line 25
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetPrivilege()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    iget-object v1, p1, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 26
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetAllowPreview()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetAllowPreview()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    .line 27
    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetAllowPreview()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_18

    return v0

    .line 28
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRecipientSettings()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetRecipientSettings()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_19

    return v0

    .line 29
    :cond_19
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRecipientSettings()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    iget-object p1, p1, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

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
    check-cast p1, Lcom/evernote/edam/type/SharedNotebook;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebook;->compareTo(Lcom/evernote/edam/type/SharedNotebook;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/type/SharedNotebook;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/type/SharedNotebook;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/SharedNotebook;-><init>(Lcom/evernote/edam/type/SharedNotebook;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->deepCopy()Lcom/evernote/edam/type/SharedNotebook;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/type/SharedNotebook;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetId()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetId()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_28

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-wide v1, p0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    iget-wide v3, p1, Lcom/evernote/edam/type/SharedNotebook;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUserId()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetUserId()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_28

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 8
    :cond_5
    iget v1, p0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    iget v2, p1, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    if-eq v1, v2, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookGuid()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookGuid()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_28

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 11
    :cond_8
    iget-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetEmail()Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetEmail()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_28

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 14
    :cond_b
    iget-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    .line 15
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookModifiable()Z

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookModifiable()Z

    move-result v2

    if-nez v1, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-eqz v1, :cond_28

    if-nez v2, :cond_e

    goto/16 :goto_0

    .line 17
    :cond_e
    iget-boolean v1, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    if-eq v1, v2, :cond_f

    return v0

    .line 18
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRequireLogin()Z

    move-result v1

    .line 19
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetRequireLogin()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_12

    :cond_10
    if-eqz v1, :cond_28

    if-nez v2, :cond_11

    goto/16 :goto_0

    .line 20
    :cond_11
    iget-boolean v1, p0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    if-eq v1, v2, :cond_12

    return v0

    .line 21
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceCreated()Z

    move-result v1

    .line 22
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceCreated()Z

    move-result v2

    if-nez v1, :cond_13

    if-eqz v2, :cond_15

    :cond_13
    if-eqz v1, :cond_28

    if-nez v2, :cond_14

    goto/16 :goto_0

    .line 23
    :cond_14
    iget-wide v1, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    iget-wide v3, p1, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_15

    return v0

    .line 24
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceUpdated()Z

    move-result v1

    .line 25
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceUpdated()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_18

    :cond_16
    if-eqz v1, :cond_28

    if-nez v2, :cond_17

    goto/16 :goto_0

    .line 26
    :cond_17
    iget-wide v1, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    iget-wide v3, p1, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_18

    return v0

    .line 27
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetShareKey()Z

    move-result v1

    .line 28
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetShareKey()Z

    move-result v2

    if-nez v1, :cond_19

    if-eqz v2, :cond_1b

    :cond_19
    if-eqz v1, :cond_28

    if-nez v2, :cond_1a

    goto/16 :goto_0

    .line 29
    :cond_1a
    iget-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v0

    .line 30
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUsername()Z

    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetUsername()Z

    move-result v2

    if-nez v1, :cond_1c

    if-eqz v2, :cond_1e

    :cond_1c
    if-eqz v1, :cond_28

    if-nez v2, :cond_1d

    goto :goto_0

    .line 32
    :cond_1d
    iget-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v0

    .line 33
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetPrivilege()Z

    move-result v1

    .line 34
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetPrivilege()Z

    move-result v2

    if-nez v1, :cond_1f

    if-eqz v2, :cond_21

    :cond_1f
    if-eqz v1, :cond_28

    if-nez v2, :cond_20

    goto :goto_0

    .line 35
    :cond_20
    iget-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    iget-object v2, p1, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v0

    .line 36
    :cond_21
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetAllowPreview()Z

    move-result v1

    .line 37
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetAllowPreview()Z

    move-result v2

    if-nez v1, :cond_22

    if-eqz v2, :cond_24

    :cond_22
    if-eqz v1, :cond_28

    if-nez v2, :cond_23

    goto :goto_0

    .line 38
    :cond_23
    iget-boolean v1, p0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    if-eq v1, v2, :cond_24

    return v0

    .line 39
    :cond_24
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRecipientSettings()Z

    move-result v1

    .line 40
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetRecipientSettings()Z

    move-result v2

    if-nez v1, :cond_25

    if-eqz v2, :cond_27

    :cond_25
    if-eqz v1, :cond_28

    if-nez v2, :cond_26

    goto :goto_0

    .line 41
    :cond_26
    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    iget-object p1, p1, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->equals(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)Z

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
    instance-of v1, p1, Lcom/evernote/edam/type/SharedNotebook;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/type/SharedNotebook;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebook;->equals(Lcom/evernote/edam/type/SharedNotebook;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    return-object p0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    return-wide v0
.end method

.method public getNotebookGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    return-object p0
.end method

.method public getPrivilege()Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    return-object p0
.end method

.method public getRecipientSettings()Lcom/evernote/edam/type/SharedNotebookRecipientSettings;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    return-object p0
.end method

.method public getServiceCreated()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    return-wide v0
.end method

.method public getServiceUpdated()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    return-wide v0
.end method

.method public getShareKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    return p0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAllowPreview()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    return p0
.end method

.method public isNotebookModifiable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    return p0
.end method

.method public isRequireLogin()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    return p0
.end method

.method public isSetAllowPreview()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x6

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetEmail()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetId()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNotebookGuid()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetNotebookModifiable()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetPrivilege()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetRecipientSettings()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetRequireLogin()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetServiceCreated()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetServiceUpdated()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x5

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetShareKey()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetUserId()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetUsername()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/16 v4, 0xa

    const/16 v5, 0xb

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_0
    const/16 v0, 0xc

    if-ne v1, v0, :cond_1

    new-instance v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-direct {v0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    :cond_1
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_1
    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    invoke-virtual {p0, v6}, Lcom/evernote/edam/type/SharedNotebook;->setAllowPreviewIsSet(Z)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_2
    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    invoke-static {v0}, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->findByValue(I)Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    goto/16 :goto_1

    :cond_3
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_3
    if-ne v1, v4, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    invoke-virtual {p0, v6}, Lcom/evernote/edam/type/SharedNotebook;->setServiceUpdatedIsSet(Z)V

    goto/16 :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_4
    if-ne v1, v5, :cond_5

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_5
    if-ne v1, v5, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_6
    if-ne v1, v4, :cond_7

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    invoke-virtual {p0, v6}, Lcom/evernote/edam/type/SharedNotebook;->setServiceCreatedIsSet(Z)V

    goto :goto_1

    :cond_7
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_7
    if-ne v1, v3, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    invoke-virtual {p0, v6}, Lcom/evernote/edam/type/SharedNotebook;->setRequireLoginIsSet(Z)V

    goto :goto_1

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_8
    if-ne v1, v3, :cond_9

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    invoke-virtual {p0, v6}, Lcom/evernote/edam/type/SharedNotebook;->setNotebookModifiableIsSet(Z)V

    goto :goto_1

    :cond_9
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_9
    if-ne v1, v5, :cond_a

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    goto :goto_1

    :cond_a
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_a
    if-ne v1, v5, :cond_b

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    goto :goto_1

    :cond_b
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_b
    if-ne v1, v2, :cond_c

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    invoke-virtual {p0, v6}, Lcom/evernote/edam/type/SharedNotebook;->setUserIdIsSet(Z)V

    goto :goto_1

    :cond_c
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_c
    if-ne v1, v4, :cond_d

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    invoke-virtual {p0, v6}, Lcom/evernote/edam/type/SharedNotebook;->setIdIsSet(Z)V

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

.method public setAllowPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebook;->setAllowPreviewIsSet(Z)V

    return-void
.end method

.method public setAllowPreviewIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x6

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    return-void
.end method

.method public setEmailIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebook;->setIdIsSet(Z)V

    return-void
.end method

.method public setIdIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNotebookGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    return-void
.end method

.method public setNotebookGuidIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setNotebookModifiable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebook;->setNotebookModifiableIsSet(Z)V

    return-void
.end method

.method public setNotebookModifiableIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setPrivilege(Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    return-void
.end method

.method public setPrivilegeIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    :cond_0
    return-void
.end method

.method public setRecipientSettings(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    return-void
.end method

.method public setRecipientSettingsIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    :cond_0
    return-void
.end method

.method public setRequireLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebook;->setRequireLoginIsSet(Z)V

    return-void
.end method

.method public setRequireLoginIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x3

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setServiceCreated(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebook;->setServiceCreatedIsSet(Z)V

    return-void
.end method

.method public setServiceCreatedIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x4

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setServiceUpdated(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebook;->setServiceUpdatedIsSet(Z)V

    return-void
.end method

.method public setServiceUpdatedIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x5

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setShareKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    return-void
.end method

.method public setShareKeyIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebook;->setUserIdIsSet(Z)V

    return-void
.end method

.method public setUserIdIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    return-void
.end method

.method public setUsernameIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SharedNotebook("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetId()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUserId()Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookGuid()Z

    move-result v3

    const-string v5, "null"

    if-eqz v3, :cond_5

    if-nez v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "notebookGuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v1, v2

    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetEmail()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v1, :cond_6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, "email:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    if-nez v1, :cond_7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v1, v2

    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookModifiable()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v1, :cond_9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, "notebookModifiable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRequireLogin()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v1, :cond_b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, "requireLogin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceCreated()Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v1, :cond_d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, "serviceCreated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceUpdated()Z

    move-result v3

    if-eqz v3, :cond_10

    if-nez v1, :cond_f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v1, "serviceUpdated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetShareKey()Z

    move-result v3

    if-eqz v3, :cond_13

    if-nez v1, :cond_11

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v1, "shareKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    if-nez v1, :cond_12

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v1, v2

    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUsername()Z

    move-result v3

    if-eqz v3, :cond_16

    if-nez v1, :cond_14

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string v1, "username:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    if-nez v1, :cond_15

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v1, v2

    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetPrivilege()Z

    move-result v3

    if-eqz v3, :cond_19

    if-nez v1, :cond_17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const-string v1, "privilege:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    if-nez v1, :cond_18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_5
    move v1, v2

    :cond_19
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetAllowPreview()Z

    move-result v3

    if-eqz v3, :cond_1b

    if-nez v1, :cond_1a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    const-string v1, "allowPreview:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_1b
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRecipientSettings()Z

    move-result v1

    if-eqz v1, :cond_1e

    if-nez v2, :cond_1c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    const-string v1, "recipientSettings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    if-nez p0, :cond_1d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_1d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1e
    :goto_7
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetAllowPreview()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetEmail()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    return-void
.end method

.method public unsetId()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public unsetNotebookGuid()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    return-void
.end method

.method public unsetNotebookModifiable()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetPrivilege()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    return-void
.end method

.method public unsetRecipientSettings()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    return-void
.end method

.method public unsetRequireLogin()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetServiceCreated()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetServiceUpdated()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetShareKey()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    return-void
.end method

.method public unsetUserId()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetUsername()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->validate()V

    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetId()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUserId()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->USER_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetEmail()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookModifiable()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->NOTEBOOK_MODIFIABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRequireLogin()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->REQUIRE_LOGIN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceCreated()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->SERVICE_CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_6
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetShareKey()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->SHARE_KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_7
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUsername()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceUpdated()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->SERVICE_UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_9
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetPrivilege()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->PRIVILEGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    invoke-virtual {v0}, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetAllowPreview()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->ALLOW_PREVIEW_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_b
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRecipientSettings()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->RECIPIENT_SETTINGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object p0, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_c
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
