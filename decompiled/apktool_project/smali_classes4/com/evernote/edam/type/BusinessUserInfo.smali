.class public Lcom/evernote/edam/type/BusinessUserInfo;
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
        "Lcom/evernote/edam/type/BusinessUserInfo;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final BUSINESS_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final BUSINESS_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __BUSINESSID_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private businessId:I

.field private businessName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private role:Lcom/evernote/edam/type/BusinessUserRole;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "BusinessUserInfo"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "businessId"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->BUSINESS_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x2

    const-string v2, "businessName"

    const/16 v4, 0xb

    invoke-direct {v0, v2, v4, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->BUSINESS_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "role"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "email"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/BusinessUserInfo;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 4
    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->__isset_vector:[Z

    .line 5
    iget-object v1, p1, Lcom/evernote/edam/type/BusinessUserInfo;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget v0, p1, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    iput v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p1, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetRole()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p1, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetEmail()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object p1, p1, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    iput-object p1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/BusinessUserInfo;->setBusinessIdIsSet(Z)V

    iput v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/BusinessUserInfo;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessId()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessId()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessId()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    iget v1, p1, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessName()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessName()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessName()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetRole()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetRole()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetRole()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    iget-object v1, p1, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetEmail()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetEmail()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetEmail()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    iget-object p1, p1, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_8

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/type/BusinessUserInfo;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/BusinessUserInfo;->compareTo(Lcom/evernote/edam/type/BusinessUserInfo;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/type/BusinessUserInfo;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/type/BusinessUserInfo;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/BusinessUserInfo;-><init>(Lcom/evernote/edam/type/BusinessUserInfo;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->deepCopy()Lcom/evernote/edam/type/BusinessUserInfo;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/type/BusinessUserInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessId()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessId()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_d

    if-nez v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget v1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    iget v2, p1, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    if-eq v1, v2, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessName()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessName()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_d

    if-nez v2, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    iget-object v1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetRole()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetRole()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_d

    if-nez v2, :cond_8

    goto :goto_0

    .line 11
    :cond_8
    iget-object v1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    iget-object v2, p1, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetEmail()Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetEmail()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_d

    if-nez v2, :cond_b

    goto :goto_0

    .line 14
    :cond_b
    iget-object p0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    iget-object p1, p1, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v0

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_d
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
    instance-of v1, p1, Lcom/evernote/edam/type/BusinessUserInfo;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/type/BusinessUserInfo;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/BusinessUserInfo;->equals(Lcom/evernote/edam/type/BusinessUserInfo;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getBusinessId()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    return p0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    return-object p0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    return-object p0
.end method

.method public getRole()Lcom/evernote/edam/type/BusinessUserRole;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSetBusinessId()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetBusinessName()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetEmail()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetRole()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

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

    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v3, 0x2

    const/16 v4, 0xb

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    invoke-static {v0}, Lcom/evernote/edam/type/BusinessUserRole;->findByValue(I)Lcom/evernote/edam/type/BusinessUserRole;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    goto :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_5
    if-ne v1, v4, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_7
    if-ne v1, v2, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/BusinessUserInfo;->setBusinessIdIsSet(Z)V

    goto :goto_1

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0
.end method

.method public setBusinessId(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/BusinessUserInfo;->setBusinessIdIsSet(Z)V

    return-void
.end method

.method public setBusinessIdIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setBusinessName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    return-void
.end method

.method public setBusinessNameIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public setEmailIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setRole(Lcom/evernote/edam/type/BusinessUserRole;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    return-void
.end method

.method public setRoleIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BusinessUserInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessId()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "businessId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessName()Z

    move-result v3

    const-string v4, "null"

    const-string v5, ", "

    if-eqz v3, :cond_3

    if-nez v1, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "businessName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v1, v2

    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetRole()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v1, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    if-nez v1, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetEmail()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v2, :cond_7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "email:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    if-nez p0, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_3
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetBusinessId()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public unsetBusinessName()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    return-void
.end method

.method public unsetEmail()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public unsetRole()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

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

    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->validate()V

    sget-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessId()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->BUSINESS_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessId:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetBusinessName()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->BUSINESS_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->businessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetRole()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->role:Lcom/evernote/edam/type/BusinessUserRole;

    invoke-virtual {v0}, Lcom/evernote/edam/type/BusinessUserRole;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/evernote/edam/type/BusinessUserInfo;->isSetEmail()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/type/BusinessUserInfo;->EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object p0, p0, Lcom/evernote/edam/type/BusinessUserInfo;->email:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
