.class public Lcom/evernote/edam/type/User;
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
        "Lcom/evernote/edam/type/User;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final ACCOUNTING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ACTIVE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final BUSINESS_USER_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PRIVILEGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SHARD_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final TIMEZONE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __ACTIVE_ISSET_ID:I = 0x4

.field private static final __CREATED_ISSET_ID:I = 0x1

.field private static final __DELETED_ISSET_ID:I = 0x3

.field private static final __ID_ISSET_ID:I = 0x0

.field private static final __UPDATED_ISSET_ID:I = 0x2


# instance fields
.field private __isset_vector:[Z

.field private accounting:Lcom/evernote/edam/type/Accounting;

.field private active:Z

.field private attributes:Lcom/evernote/edam/type/UserAttributes;

.field private businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

.field private created:J

.field private deleted:J

.field private email:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

.field private privilege:Lcom/evernote/edam/type/PrivilegeLevel;

.field private shardId:Ljava/lang/String;

.field private timezone:Ljava/lang/String;

.field private updated:J

.field private username:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "User"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/User;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "id"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "username"

    const/16 v2, 0xb

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "email"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v2, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "name"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v2, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "timezone"

    const/4 v5, 0x6

    invoke-direct {v0, v1, v2, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->TIMEZONE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "privilege"

    const/4 v5, 0x7

    invoke-direct {v0, v1, v3, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->PRIVILEGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/16 v1, 0x9

    const-string v3, "created"

    const/16 v5, 0xa

    invoke-direct {v0, v3, v5, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "updated"

    invoke-direct {v0, v1, v5, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "deleted"

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "active"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v4, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->ACTIVE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "shardId"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->SHARD_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/16 v1, 0xf

    const-string v2, "attributes"

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "accounting"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->ACCOUNTING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumInfo"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->PREMIUM_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "businessUserInfo"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/User;->BUSINESS_USER_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/User;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Z

    .line 4
    iput-object v0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    .line 5
    iget-object v1, p1, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget v0, p1, Lcom/evernote/edam/type/User;->id:I

    iput v0, p0, Lcom/evernote/edam/type/User;->id:I

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetUsername()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p1, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetEmail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p1, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p1, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetTimezone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p1, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetPrivilege()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p1, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    iput-object v0, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    .line 17
    :cond_4
    iget-wide v0, p1, Lcom/evernote/edam/type/User;->created:J

    iput-wide v0, p0, Lcom/evernote/edam/type/User;->created:J

    .line 18
    iget-wide v0, p1, Lcom/evernote/edam/type/User;->updated:J

    iput-wide v0, p0, Lcom/evernote/edam/type/User;->updated:J

    .line 19
    iget-wide v0, p1, Lcom/evernote/edam/type/User;->deleted:J

    iput-wide v0, p0, Lcom/evernote/edam/type/User;->deleted:J

    .line 20
    iget-boolean v0, p1, Lcom/evernote/edam/type/User;->active:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/User;->active:Z

    .line 21
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetShardId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p1, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    .line 23
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetAttributes()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    new-instance v0, Lcom/evernote/edam/type/UserAttributes;

    iget-object v1, p1, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/UserAttributes;-><init>(Lcom/evernote/edam/type/UserAttributes;)V

    iput-object v0, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    .line 25
    :cond_6
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetAccounting()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    new-instance v0, Lcom/evernote/edam/type/Accounting;

    iget-object v1, p1, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Accounting;-><init>(Lcom/evernote/edam/type/Accounting;)V

    iput-object v0, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    .line 27
    :cond_7
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetPremiumInfo()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    new-instance v0, Lcom/evernote/edam/type/PremiumInfo;

    iget-object v1, p1, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/PremiumInfo;-><init>(Lcom/evernote/edam/type/PremiumInfo;)V

    iput-object v0, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    .line 29
    :cond_8
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetBusinessUserInfo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    new-instance v0, Lcom/evernote/edam/type/BusinessUserInfo;

    iget-object p1, p1, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    invoke-direct {v0, p1}, Lcom/evernote/edam/type/BusinessUserInfo;-><init>(Lcom/evernote/edam/type/BusinessUserInfo;)V

    iput-object v0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    :cond_9
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/User;->setIdIsSet(Z)V

    iput v0, p0, Lcom/evernote/edam/type/User;->id:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    iput-object v1, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    iput-object v1, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    iput-object v1, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/User;->setCreatedIsSet(Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/evernote/edam/type/User;->created:J

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/User;->setUpdatedIsSet(Z)V

    iput-wide v2, p0, Lcom/evernote/edam/type/User;->updated:J

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/User;->setDeletedIsSet(Z)V

    iput-wide v2, p0, Lcom/evernote/edam/type/User;->deleted:J

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/User;->setActiveIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/User;->active:Z

    iput-object v1, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    iput-object v1, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    iput-object v1, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    iput-object v1, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    iput-object v1, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/User;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetId()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetId()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetId()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/evernote/edam/type/User;->id:I

    iget v1, p1, Lcom/evernote/edam/type/User;->id:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUsername()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetUsername()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUsername()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetEmail()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetEmail()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetEmail()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetName()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetName()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetName()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetTimezone()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetTimezone()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetTimezone()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPrivilege()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetPrivilege()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPrivilege()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    iget-object v1, p1, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetCreated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetCreated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetCreated()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/evernote/edam/type/User;->created:J

    iget-wide v2, p1, Lcom/evernote/edam/type/User;->created:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUpdated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetUpdated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 19
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUpdated()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/evernote/edam/type/User;->updated:J

    iget-wide v2, p1, Lcom/evernote/edam/type/User;->updated:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    .line 20
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetDeleted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetDeleted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 21
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetDeleted()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lcom/evernote/edam/type/User;->deleted:J

    iget-wide v2, p1, Lcom/evernote/edam/type/User;->deleted:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    .line 22
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetActive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetActive()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    .line 23
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetActive()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/evernote/edam/type/User;->active:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/User;->active:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    .line 24
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetShardId()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetShardId()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    .line 25
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetShardId()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 26
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAttributes()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetAttributes()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    .line 27
    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAttributes()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    iget-object v1, p1, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_18

    return v0

    .line 28
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAccounting()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetAccounting()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_19

    return v0

    .line 29
    :cond_19
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAccounting()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    iget-object v1, p1, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_1a

    return v0

    .line 30
    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPremiumInfo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetPremiumInfo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1b

    return v0

    .line 31
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPremiumInfo()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    iget-object v1, p1, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_1c

    return v0

    .line 32
    :cond_1c
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetBusinessUserInfo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetBusinessUserInfo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1d

    return v0

    .line 33
    :cond_1d
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetBusinessUserInfo()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    iget-object p1, p1, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    if-eqz p0, :cond_1e

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/type/User;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/User;->compareTo(Lcom/evernote/edam/type/User;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/type/User;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/type/User;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/User;-><init>(Lcom/evernote/edam/type/User;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->deepCopy()Lcom/evernote/edam/type/User;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/type/User;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetId()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetId()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_2e

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    iget v1, p0, Lcom/evernote/edam/type/User;->id:I

    iget v2, p1, Lcom/evernote/edam/type/User;->id:I

    if-eq v1, v2, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUsername()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetUsername()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_2e

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 8
    :cond_5
    iget-object v1, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetEmail()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetEmail()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_2e

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 11
    :cond_8
    iget-object v1, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetName()Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetName()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_2e

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 14
    :cond_b
    iget-object v1, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    .line 15
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetTimezone()Z

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetTimezone()Z

    move-result v2

    if-nez v1, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-eqz v1, :cond_2e

    if-nez v2, :cond_e

    goto/16 :goto_0

    .line 17
    :cond_e
    iget-object v1, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    .line 18
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPrivilege()Z

    move-result v1

    .line 19
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetPrivilege()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_12

    :cond_10
    if-eqz v1, :cond_2e

    if-nez v2, :cond_11

    goto/16 :goto_0

    .line 20
    :cond_11
    iget-object v1, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    iget-object v2, p1, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v0

    .line 21
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetCreated()Z

    move-result v1

    .line 22
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetCreated()Z

    move-result v2

    if-nez v1, :cond_13

    if-eqz v2, :cond_15

    :cond_13
    if-eqz v1, :cond_2e

    if-nez v2, :cond_14

    goto/16 :goto_0

    .line 23
    :cond_14
    iget-wide v1, p0, Lcom/evernote/edam/type/User;->created:J

    iget-wide v3, p1, Lcom/evernote/edam/type/User;->created:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_15

    return v0

    .line 24
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUpdated()Z

    move-result v1

    .line 25
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetUpdated()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_18

    :cond_16
    if-eqz v1, :cond_2e

    if-nez v2, :cond_17

    goto/16 :goto_0

    .line 26
    :cond_17
    iget-wide v1, p0, Lcom/evernote/edam/type/User;->updated:J

    iget-wide v3, p1, Lcom/evernote/edam/type/User;->updated:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_18

    return v0

    .line 27
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetDeleted()Z

    move-result v1

    .line 28
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetDeleted()Z

    move-result v2

    if-nez v1, :cond_19

    if-eqz v2, :cond_1b

    :cond_19
    if-eqz v1, :cond_2e

    if-nez v2, :cond_1a

    goto/16 :goto_0

    .line 29
    :cond_1a
    iget-wide v1, p0, Lcom/evernote/edam/type/User;->deleted:J

    iget-wide v3, p1, Lcom/evernote/edam/type/User;->deleted:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1b

    return v0

    .line 30
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetActive()Z

    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetActive()Z

    move-result v2

    if-nez v1, :cond_1c

    if-eqz v2, :cond_1e

    :cond_1c
    if-eqz v1, :cond_2e

    if-nez v2, :cond_1d

    goto/16 :goto_0

    .line 32
    :cond_1d
    iget-boolean v1, p0, Lcom/evernote/edam/type/User;->active:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/User;->active:Z

    if-eq v1, v2, :cond_1e

    return v0

    .line 33
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetShardId()Z

    move-result v1

    .line 34
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetShardId()Z

    move-result v2

    if-nez v1, :cond_1f

    if-eqz v2, :cond_21

    :cond_1f
    if-eqz v1, :cond_2e

    if-nez v2, :cond_20

    goto/16 :goto_0

    .line 35
    :cond_20
    iget-object v1, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v0

    .line 36
    :cond_21
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAttributes()Z

    move-result v1

    .line 37
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetAttributes()Z

    move-result v2

    if-nez v1, :cond_22

    if-eqz v2, :cond_24

    :cond_22
    if-eqz v1, :cond_2e

    if-nez v2, :cond_23

    goto :goto_0

    .line 38
    :cond_23
    iget-object v1, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    iget-object v2, p1, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    invoke-virtual {v1, v2}, Lcom/evernote/edam/type/UserAttributes;->equals(Lcom/evernote/edam/type/UserAttributes;)Z

    move-result v1

    if-nez v1, :cond_24

    return v0

    .line 39
    :cond_24
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAccounting()Z

    move-result v1

    .line 40
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetAccounting()Z

    move-result v2

    if-nez v1, :cond_25

    if-eqz v2, :cond_27

    :cond_25
    if-eqz v1, :cond_2e

    if-nez v2, :cond_26

    goto :goto_0

    .line 41
    :cond_26
    iget-object v1, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    iget-object v2, p1, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    invoke-virtual {v1, v2}, Lcom/evernote/edam/type/Accounting;->equals(Lcom/evernote/edam/type/Accounting;)Z

    move-result v1

    if-nez v1, :cond_27

    return v0

    .line 42
    :cond_27
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPremiumInfo()Z

    move-result v1

    .line 43
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetPremiumInfo()Z

    move-result v2

    if-nez v1, :cond_28

    if-eqz v2, :cond_2a

    :cond_28
    if-eqz v1, :cond_2e

    if-nez v2, :cond_29

    goto :goto_0

    .line 44
    :cond_29
    iget-object v1, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    iget-object v2, p1, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    invoke-virtual {v1, v2}, Lcom/evernote/edam/type/PremiumInfo;->equals(Lcom/evernote/edam/type/PremiumInfo;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v0

    .line 45
    :cond_2a
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetBusinessUserInfo()Z

    move-result v1

    .line 46
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->isSetBusinessUserInfo()Z

    move-result v2

    if-nez v1, :cond_2b

    if-eqz v2, :cond_2d

    :cond_2b
    if-eqz v1, :cond_2e

    if-nez v2, :cond_2c

    goto :goto_0

    .line 47
    :cond_2c
    iget-object p0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    iget-object p1, p1, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/BusinessUserInfo;->equals(Lcom/evernote/edam/type/BusinessUserInfo;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v0

    :cond_2d
    const/4 p0, 0x1

    return p0

    :cond_2e
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
    instance-of v1, p1, Lcom/evernote/edam/type/User;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/type/User;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/User;->equals(Lcom/evernote/edam/type/User;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getAccounting()Lcom/evernote/edam/type/Accounting;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    return-object p0
.end method

.method public getAttributes()Lcom/evernote/edam/type/UserAttributes;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    return-object p0
.end method

.method public getBusinessUserInfo()Lcom/evernote/edam/type/BusinessUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    return-object p0
.end method

.method public getCreated()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/User;->created:J

    return-wide v0
.end method

.method public getDeleted()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/User;->deleted:J

    return-wide v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/User;->id:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPremiumInfo()Lcom/evernote/edam/type/PremiumInfo;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    return-object p0
.end method

.method public getPrivilege()Lcom/evernote/edam/type/PrivilegeLevel;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    return-object p0
.end method

.method public getShardId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    return-object p0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdated()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/User;->updated:J

    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/User;->active:Z

    return p0
.end method

.method public isSetAccounting()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetActive()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetAttributes()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetBusinessUserInfo()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetCreated()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetDeleted()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetEmail()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetName()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetPremiumInfo()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetPrivilege()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetShardId()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetTimezone()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetUpdated()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetUsername()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/16 v2, 0x8

    const/16 v3, 0xa

    const/16 v4, 0xc

    const/4 v5, 0x1

    const/16 v6, 0xb

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_1
    if-ne v1, v4, :cond_1

    new-instance v0, Lcom/evernote/edam/type/BusinessUserInfo;

    invoke-direct {v0}, Lcom/evernote/edam/type/BusinessUserInfo;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/BusinessUserInfo;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    :cond_1
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_2
    if-ne v1, v4, :cond_2

    new-instance v0, Lcom/evernote/edam/type/PremiumInfo;

    invoke-direct {v0}, Lcom/evernote/edam/type/PremiumInfo;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/PremiumInfo;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_3
    if-ne v1, v4, :cond_3

    new-instance v0, Lcom/evernote/edam/type/Accounting;

    invoke-direct {v0}, Lcom/evernote/edam/type/Accounting;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Accounting;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    :cond_3
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_4
    if-ne v1, v4, :cond_4

    new-instance v0, Lcom/evernote/edam/type/UserAttributes;

    invoke-direct {v0}, Lcom/evernote/edam/type/UserAttributes;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/UserAttributes;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_5
    if-ne v1, v6, :cond_5

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_6
    const/4 v0, 0x2

    if-ne v1, v0, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/User;->active:Z

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/User;->setActiveIsSet(Z)V

    goto/16 :goto_1

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_7
    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/User;->deleted:J

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/User;->setDeletedIsSet(Z)V

    goto/16 :goto_1

    :cond_7
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_8
    if-ne v1, v3, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/User;->updated:J

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/User;->setUpdatedIsSet(Z)V

    goto/16 :goto_1

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_9
    if-ne v1, v3, :cond_9

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/User;->created:J

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/User;->setCreatedIsSet(Z)V

    goto :goto_1

    :cond_9
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_a
    if-ne v1, v2, :cond_a

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    invoke-static {v0}, Lcom/evernote/edam/type/PrivilegeLevel;->findByValue(I)Lcom/evernote/edam/type/PrivilegeLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    goto :goto_1

    :cond_a
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_b
    if-ne v1, v6, :cond_b

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    goto :goto_1

    :cond_b
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_c
    if-ne v1, v6, :cond_c

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    goto :goto_1

    :cond_c
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_d
    if-ne v1, v6, :cond_d

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    goto :goto_1

    :cond_d
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_e
    if-ne v1, v6, :cond_e

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    goto :goto_1

    :cond_e
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_f
    if-ne v1, v2, :cond_f

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/type/User;->id:I

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/User;->setIdIsSet(Z)V

    goto :goto_1

    :cond_f
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAccounting(Lcom/evernote/edam/type/Accounting;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    return-void
.end method

.method public setAccountingIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/User;->active:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/User;->setActiveIsSet(Z)V

    return-void
.end method

.method public setActiveIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v0, 0x4

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setAttributes(Lcom/evernote/edam/type/UserAttributes;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    return-void
.end method

.method public setAttributesIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    :cond_0
    return-void
.end method

.method public setBusinessUserInfo(Lcom/evernote/edam/type/BusinessUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    return-void
.end method

.method public setBusinessUserInfoIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    :cond_0
    return-void
.end method

.method public setCreated(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/User;->created:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/User;->setCreatedIsSet(Z)V

    return-void
.end method

.method public setCreatedIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setDeleted(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/User;->deleted:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/User;->setDeletedIsSet(Z)V

    return-void
.end method

.method public setDeletedIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v0, 0x3

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    return-void
.end method

.method public setEmailIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/type/User;->id:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/User;->setIdIsSet(Z)V

    return-void
.end method

.method public setIdIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    return-void
.end method

.method public setNameIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setPremiumInfo(Lcom/evernote/edam/type/PremiumInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    return-void
.end method

.method public setPremiumInfoIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    :cond_0
    return-void
.end method

.method public setPrivilege(Lcom/evernote/edam/type/PrivilegeLevel;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    return-void
.end method

.method public setPrivilegeIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    :cond_0
    return-void
.end method

.method public setShardId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    return-void
.end method

.method public setShardIdIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    return-void
.end method

.method public setTimezoneIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setUpdated(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/User;->updated:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/User;->setUpdatedIsSet(Z)V

    return-void
.end method

.method public setUpdatedIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    return-void
.end method

.method public setUsernameIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetId()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/type/User;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUsername()Z

    move-result v3

    const-string v4, "null"

    const-string v5, ", "

    if-eqz v3, :cond_3

    if-nez v1, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "username:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v1, v2

    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetEmail()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v1, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "email:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    if-nez v1, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v1, v2

    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetName()Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v1, :cond_7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    if-nez v1, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v1, v2

    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetTimezone()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v1, :cond_a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v1, "timezone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    if-nez v1, :cond_b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v1, v2

    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPrivilege()Z

    move-result v3

    if-eqz v3, :cond_f

    if-nez v1, :cond_d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, "privilege:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    if-nez v1, :cond_e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_5
    move v1, v2

    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetCreated()Z

    move-result v3

    if-eqz v3, :cond_11

    if-nez v1, :cond_10

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v1, "created:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/User;->created:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUpdated()Z

    move-result v3

    if-eqz v3, :cond_13

    if-nez v1, :cond_12

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const-string v1, "updated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/User;->updated:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetDeleted()Z

    move-result v3

    if-eqz v3, :cond_15

    if-nez v1, :cond_14

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string v1, "deleted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/User;->deleted:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetActive()Z

    move-result v3

    if-eqz v3, :cond_17

    if-nez v1, :cond_16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    const-string v1, "active:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/User;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetShardId()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-nez v1, :cond_18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    const-string v1, "shardId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    if-nez v1, :cond_19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    move v1, v2

    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAttributes()Z

    move-result v3

    if-eqz v3, :cond_1d

    if-nez v1, :cond_1b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const-string v1, "attributes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    if-nez v1, :cond_1c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_7
    move v1, v2

    :cond_1d
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAccounting()Z

    move-result v3

    if-eqz v3, :cond_20

    if-nez v1, :cond_1e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const-string v1, "accounting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    if-nez v1, :cond_1f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_8
    move v1, v2

    :cond_20
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPremiumInfo()Z

    move-result v3

    if-eqz v3, :cond_23

    if-nez v1, :cond_21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    const-string v1, "premiumInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    if-nez v1, :cond_22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_23
    move v2, v1

    :goto_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetBusinessUserInfo()Z

    move-result v1

    if-eqz v1, :cond_26

    if-nez v2, :cond_24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    const-string v1, "businessUserInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    if-nez p0, :cond_25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_26
    :goto_a
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetAccounting()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    return-void
.end method

.method public unsetActive()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetAttributes()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    return-void
.end method

.method public unsetBusinessUserInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    return-void
.end method

.method public unsetCreated()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetDeleted()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetEmail()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    return-void
.end method

.method public unsetId()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public unsetName()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    return-void
.end method

.method public unsetPremiumInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    return-void
.end method

.method public unsetPrivilege()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    return-void
.end method

.method public unsetShardId()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    return-void
.end method

.method public unsetTimezone()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    return-void
.end method

.method public unsetUpdated()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/User;->__isset_vector:[Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetUsername()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->validate()V

    sget-object v0, Lcom/evernote/edam/type/User;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetId()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/type/User;->ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/type/User;->id:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUsername()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/type/User;->USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/User;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetEmail()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/type/User;->EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/User;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetName()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/type/User;->NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/User;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    iget-object v0, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetTimezone()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/evernote/edam/type/User;->TIMEZONE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/User;->timezone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPrivilege()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/evernote/edam/type/User;->PRIVILEGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/User;->privilege:Lcom/evernote/edam/type/PrivilegeLevel;

    invoke-virtual {v0}, Lcom/evernote/edam/type/PrivilegeLevel;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetCreated()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/evernote/edam/type/User;->CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/User;->created:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetUpdated()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/evernote/edam/type/User;->UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/User;->updated:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetDeleted()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/evernote/edam/type/User;->DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/User;->deleted:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetActive()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/evernote/edam/type/User;->ACTIVE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/User;->active:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_9
    iget-object v0, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetShardId()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/evernote/edam/type/User;->SHARD_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/User;->shardId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_a
    iget-object v0, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAttributes()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/evernote/edam/type/User;->ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/User;->attributes:Lcom/evernote/edam/type/UserAttributes;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/UserAttributes;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_b
    iget-object v0, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetAccounting()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/evernote/edam/type/User;->ACCOUNTING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/User;->accounting:Lcom/evernote/edam/type/Accounting;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Accounting;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_c
    iget-object v0, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetPremiumInfo()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/evernote/edam/type/User;->PREMIUM_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/User;->premiumInfo:Lcom/evernote/edam/type/PremiumInfo;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/PremiumInfo;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_d
    iget-object v0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/evernote/edam/type/User;->isSetBusinessUserInfo()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/evernote/edam/type/User;->BUSINESS_USER_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object p0, p0, Lcom/evernote/edam/type/User;->businessUserInfo:Lcom/evernote/edam/type/BusinessUserInfo;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/BusinessUserInfo;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_e
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
