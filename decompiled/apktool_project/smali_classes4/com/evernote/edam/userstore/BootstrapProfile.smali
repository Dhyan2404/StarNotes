.class public Lcom/evernote/edam/userstore/BootstrapProfile;
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
        "Lcom/evernote/edam/userstore/BootstrapProfile;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SETTINGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private name:Ljava/lang/String;

.field private settings:Lcom/evernote/edam/userstore/BootstrapSettings;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "BootstrapProfile"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/BootstrapProfile;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/16 v1, 0xb

    const/4 v2, 0x1

    const-string v3, "name"

    invoke-direct {v0, v3, v1, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/BootstrapProfile;->NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/16 v1, 0xc

    const/4 v2, 0x2

    const-string v3, "settings"

    invoke-direct {v0, v3, v1, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/BootstrapProfile;->SETTINGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/BootstrapProfile;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapProfile;->isSetName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p1, Lcom/evernote/edam/userstore/BootstrapProfile;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->name:Ljava/lang/String;

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapProfile;->isSetSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lcom/evernote/edam/userstore/BootstrapSettings;

    iget-object p1, p1, Lcom/evernote/edam/userstore/BootstrapProfile;->settings:Lcom/evernote/edam/userstore/BootstrapSettings;

    invoke-direct {v0, p1}, Lcom/evernote/edam/userstore/BootstrapSettings;-><init>(Lcom/evernote/edam/userstore/BootstrapSettings;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->settings:Lcom/evernote/edam/userstore/BootstrapSettings;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/evernote/edam/userstore/BootstrapSettings;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/evernote/edam/userstore/BootstrapProfile;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->settings:Lcom/evernote/edam/userstore/BootstrapSettings;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->settings:Lcom/evernote/edam/userstore/BootstrapSettings;

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/BootstrapProfile;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapProfile;->isSetName()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapProfile;->isSetName()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapProfile;->isSetName()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/userstore/BootstrapProfile;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapProfile;->isSetSettings()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapProfile;->isSetSettings()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapProfile;->isSetSettings()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->settings:Lcom/evernote/edam/userstore/BootstrapSettings;

    iget-object p1, p1, Lcom/evernote/edam/userstore/BootstrapProfile;->settings:Lcom/evernote/edam/userstore/BootstrapSettings;

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    if-eqz p0, :cond_4

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/userstore/BootstrapProfile;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/BootstrapProfile;->compareTo(Lcom/evernote/edam/userstore/BootstrapProfile;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/BootstrapProfile;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/userstore/BootstrapProfile;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/BootstrapProfile;-><init>(Lcom/evernote/edam/userstore/BootstrapProfile;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapProfile;->deepCopy()Lcom/evernote/edam/userstore/BootstrapProfile;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/userstore/BootstrapProfile;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapProfile;->isSetName()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapProfile;->isSetName()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_7

    if-nez v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/userstore/BootstrapProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapProfile;->isSetSettings()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapProfile;->isSetSettings()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_7

    if-nez v2, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->settings:Lcom/evernote/edam/userstore/BootstrapSettings;

    iget-object p1, p1, Lcom/evernote/edam/userstore/BootstrapProfile;->settings:Lcom/evernote/edam/userstore/BootstrapSettings;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->equals(Lcom/evernote/edam/userstore/BootstrapSettings;)Z

    move-result p0

    if-nez p0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
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
    instance-of v1, p1, Lcom/evernote/edam/userstore/BootstrapProfile;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/userstore/BootstrapProfile;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/BootstrapProfile;->equals(Lcom/evernote/edam/userstore/BootstrapProfile;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSettings()Lcom/evernote/edam/userstore/BootstrapSettings;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->settings:Lcom/evernote/edam/userstore/BootstrapSettings;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSetName()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->name:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetSettings()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->settings:Lcom/evernote/edam/userstore/BootstrapSettings;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 3
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

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapProfile;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_1
    const/16 v0, 0xc

    if-ne v1, v0, :cond_2

    new-instance v0, Lcom/evernote/edam/userstore/BootstrapSettings;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/BootstrapSettings;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->settings:Lcom/evernote/edam/userstore/BootstrapSettings;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_3
    const/16 v0, 0xb

    if-ne v1, v0, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->name:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->name:Ljava/lang/String;

    return-void
.end method

.method public setNameIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSettings(Lcom/evernote/edam/userstore/BootstrapSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->settings:Lcom/evernote/edam/userstore/BootstrapSettings;

    return-void
.end method

.method public setSettingsIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->settings:Lcom/evernote/edam/userstore/BootstrapSettings;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootstrapProfile("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->name:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->settings:Lcom/evernote/edam/userstore/BootstrapSettings;

    if-nez p0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetName()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->name:Ljava/lang/String;

    return-void
.end method

.method public unsetSettings()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->settings:Lcom/evernote/edam/userstore/BootstrapSettings;

    return-void
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapProfile;->isSetName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapProfile;->isSetSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'settings\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapProfile;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'name\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapProfile;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapProfile;->validate()V

    sget-object v0, Lcom/evernote/edam/userstore/BootstrapProfile;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    iget-object v0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/userstore/BootstrapProfile;->NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->settings:Lcom/evernote/edam/userstore/BootstrapSettings;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/userstore/BootstrapProfile;->SETTINGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapProfile;->settings:Lcom/evernote/edam/userstore/BootstrapSettings;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
