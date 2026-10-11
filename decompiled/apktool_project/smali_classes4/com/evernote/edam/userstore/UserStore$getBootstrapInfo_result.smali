.class Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;
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
    name = "getBootstrapInfo_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase<",
        "Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;


# instance fields
.field private success:Lcom/evernote/edam/userstore/BootstrapInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getBootstrapInfo_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const-string v3, "success"

    invoke-direct {v0, v3, v1, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/evernote/edam/userstore/BootstrapInfo;

    iget-object p1, p1, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    invoke-direct {v0, p1}, Lcom/evernote/edam/userstore/BootstrapInfo;-><init>(Lcom/evernote/edam/userstore/BootstrapInfo;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    :cond_0
    return-void
.end method

.method public static synthetic access$100(Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;)Lcom/evernote/edam/userstore/BootstrapInfo;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->isSetSuccess()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->isSetSuccess()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    iget-object p1, p1, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    if-eqz p0, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->compareTo(Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;-><init>(Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->deepCopy()Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;

    move-result-object p0

    return-object p0
.end method

.method public isSetSuccess()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 2
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

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    if-eqz v0, :cond_1

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_1
    const/16 v0, 0xc

    if-ne v1, v0, :cond_2

    new-instance v0, Lcom/evernote/edam/userstore/BootstrapInfo;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/BootstrapInfo;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/BootstrapInfo;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0
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

    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object p0, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/BootstrapInfo;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
