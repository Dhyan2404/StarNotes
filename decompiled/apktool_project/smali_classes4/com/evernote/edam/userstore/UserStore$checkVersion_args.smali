.class Lcom/evernote/edam/userstore/UserStore$checkVersion_args;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/userstore/UserStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "checkVersion_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase<",
        "Lcom/evernote/edam/userstore/UserStore$checkVersion_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final CLIENT_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EDAM_VERSION_MAJOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EDAM_VERSION_MINOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __EDAMVERSIONMAJOR_ISSET_ID:I = 0x0

.field private static final __EDAMVERSIONMINOR_ISSET_ID:I = 0x1


# instance fields
.field private __isset_vector:[Z

.field private clientName:Ljava/lang/String;

.field private edamVersionMajor:S

.field private edamVersionMinor:S


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "checkVersion_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/16 v1, 0xb

    const/4 v2, 0x1

    const-string v3, "clientName"

    invoke-direct {v0, v3, v1, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->CLIENT_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x2

    const-string v2, "edamVersionMajor"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->EDAM_VERSION_MAJOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "edamVersionMinor"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->EDAM_VERSION_MINOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->__isset_vector:[Z

    const/4 v0, 0x1

    .line 3
    iput-short v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    const/16 v0, 0x19

    .line 4
    iput-short v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$checkVersion_args;)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 6
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->__isset_vector:[Z

    .line 7
    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetClientName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    .line 10
    :cond_0
    iget-short v0, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    iput-short v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    .line 11
    iget-short p1, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    iput-short p1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    const/16 v0, 0x19

    iput-short v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$checkVersion_args;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetClientName()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetClientName()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetClientName()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetEdamVersionMajor()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetEdamVersionMajor()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetEdamVersionMajor()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-short v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    iget-short v1, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(SS)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetEdamVersionMinor()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetEdamVersionMinor()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetEdamVersionMinor()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-short p0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    iget-short p1, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(SS)I

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
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->compareTo(Lcom/evernote/edam/userstore/UserStore$checkVersion_args;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$checkVersion_args;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;-><init>(Lcom/evernote/edam/userstore/UserStore$checkVersion_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->deepCopy()Lcom/evernote/edam/userstore/UserStore$checkVersion_args;

    move-result-object p0

    return-object p0
.end method

.method public isSetClientName()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetEdamVersionMajor()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetEdamVersionMinor()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->__isset_vector:[Z

    const/4 v0, 0x1

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

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x6

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI16()S

    move-result v0

    iput-short v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    invoke-virtual {p0, v2}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->setEdamVersionMinorIsSet(Z)V

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_3
    if-ne v1, v4, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI16()S

    move-result v0

    iput-short v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    invoke-virtual {p0, v2}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->setEdamVersionMajorIsSet(Z)V

    goto :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_5
    const/16 v0, 0xb

    if-ne v1, v0, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0
.end method

.method public setClientName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    return-void
.end method

.method public setEdamVersionMajor(S)V
    .locals 0

    iput-short p1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->setEdamVersionMajorIsSet(Z)V

    return-void
.end method

.method public setEdamVersionMajorIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setEdamVersionMinor(S)V
    .locals 0

    iput-short p1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->setEdamVersionMinorIsSet(Z)V

    return-void
.end method

.method public setEdamVersionMinorIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

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

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->validate()V

    sget-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->CLIENT_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->EDAM_VERSION_MAJOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-short v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI16(S)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    sget-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->EDAM_VERSION_MINOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-short p0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    invoke-virtual {p1, p0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI16(S)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
