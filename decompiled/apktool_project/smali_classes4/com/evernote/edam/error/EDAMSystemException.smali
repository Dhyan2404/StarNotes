.class public Lcom/evernote/edam/error/EDAMSystemException;
.super Ljava/lang/Exception;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Exception;",
        "Lcom/evernote/thrift/TBase<",
        "Lcom/evernote/edam/error/EDAMSystemException;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final ERROR_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MESSAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RATE_LIMIT_DURATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __RATELIMITDURATION_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

.field private message:Ljava/lang/String;

.field private rateLimitDuration:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "EDAMSystemException"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/error/EDAMSystemException;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "errorCode"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/error/EDAMSystemException;->ERROR_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/16 v1, 0xb

    const/4 v2, 0x2

    const-string v4, "message"

    invoke-direct {v0, v4, v1, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/error/EDAMSystemException;->MESSAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "rateLimitDuration"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/error/EDAMSystemException;->RATE_LIMIT_DURATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/error/EDAMErrorCode;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/error/EDAMSystemException;)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 6
    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->__isset_vector:[Z

    .line 7
    iget-object v1, p1, Lcom/evernote/edam/error/EDAMSystemException;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMSystemException;->isSetErrorCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p1, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMSystemException;->isSetMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p1, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    .line 12
    :cond_1
    iget p1, p1, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    iput p1, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/error/EDAMSystemException;->setRateLimitDurationIsSet(Z)V

    iput v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/error/EDAMSystemException;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetErrorCode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMSystemException;->isSetErrorCode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetErrorCode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    iget-object v1, p1, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetMessage()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMSystemException;->isSetMessage()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetRateLimitDuration()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMSystemException;->isSetRateLimitDuration()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetRateLimitDuration()Z

    move-result v0

    if-eqz v0, :cond_6

    iget p0, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    iget p1, p1, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

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
    check-cast p1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->compareTo(Lcom/evernote/edam/error/EDAMSystemException;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, p0}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->deepCopy()Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/error/EDAMSystemException;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetErrorCode()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMSystemException;->isSetErrorCode()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_a

    if-nez v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    iget-object v2, p1, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetMessage()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMSystemException;->isSetMessage()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_a

    if-nez v2, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    iget-object v1, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetRateLimitDuration()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMSystemException;->isSetRateLimitDuration()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_a

    if-nez v2, :cond_8

    goto :goto_0

    .line 11
    :cond_8
    iget p0, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    iget p1, p1, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    if-eq p0, p1, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x1

    return p0

    :cond_a
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
    instance-of v1, p1, Lcom/evernote/edam/error/EDAMSystemException;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->equals(Lcom/evernote/edam/error/EDAMSystemException;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getErrorCode()Lcom/evernote/edam/error/EDAMErrorCode;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getRateLimitDuration()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSetErrorCode()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetMessage()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetRateLimitDuration()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/error/EDAMSystemException;->__isset_vector:[Z

    const/4 v0, 0x0

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

    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    invoke-virtual {p0, v3}, Lcom/evernote/edam/error/EDAMSystemException;->setRateLimitDurationIsSet(Z)V

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_3
    const/16 v0, 0xb

    if-ne v1, v0, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_5
    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    invoke-static {v0}, Lcom/evernote/edam/error/EDAMErrorCode;->findByValue(I)Lcom/evernote/edam/error/EDAMErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    goto :goto_1

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0
.end method

.method public setErrorCode(Lcom/evernote/edam/error/EDAMErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    return-void
.end method

.method public setErrorCodeIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    return-void
.end method

.method public setMessageIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setRateLimitDuration(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->setRateLimitDurationIsSet(Z)V

    return-void
.end method

.method public setRateLimitDurationIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/error/EDAMSystemException;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EDAMSystemException("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    const-string v2, "null"

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetMessage()Z

    move-result v1

    const-string v3, ", "

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetRateLimitDuration()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rateLimitDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetErrorCode()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    return-void
.end method

.method public unsetMessage()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    return-void
.end method

.method public unsetRateLimitDuration()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/error/EDAMSystemException;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetErrorCode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'errorCode\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->toString()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->validate()V

    sget-object v0, Lcom/evernote/edam/error/EDAMSystemException;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    iget-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/error/EDAMSystemException;->ERROR_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->errorCode:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v0}, Lcom/evernote/edam/error/EDAMErrorCode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/error/EDAMSystemException;->MESSAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/error/EDAMSystemException;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/error/EDAMSystemException;->isSetRateLimitDuration()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/error/EDAMSystemException;->RATE_LIMIT_DURATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget p0, p0, Lcom/evernote/edam/error/EDAMSystemException;->rateLimitDuration:I

    invoke-virtual {p1, p0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
