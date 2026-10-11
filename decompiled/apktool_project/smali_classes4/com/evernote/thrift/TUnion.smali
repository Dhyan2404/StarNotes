.class public abstract Lcom/evernote/thrift/TUnion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TReflectionBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/evernote/thrift/TUnion;",
        "F::",
        "Lcom/evernote/thrift/TFieldIdEnum;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TReflectionBase<",
        "TT;TF;>;"
    }
.end annotation


# instance fields
.field protected setField_:Lcom/evernote/thrift/TFieldIdEnum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field protected value_:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/evernote/thrift/TUnion;->setField_:Lcom/evernote/thrift/TFieldIdEnum;

    .line 3
    iput-object v0, p0, Lcom/evernote/thrift/TUnion;->value_:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/evernote/thrift/TFieldIdEnum;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/evernote/thrift/TUnion;->setFieldValue(Lcom/evernote/thrift/TFieldIdEnum;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/evernote/thrift/TUnion;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/thrift/TUnion<",
            "TT;TF;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p1, Lcom/evernote/thrift/TUnion;->setField_:Lcom/evernote/thrift/TFieldIdEnum;

    iput-object v0, p0, Lcom/evernote/thrift/TUnion;->setField_:Lcom/evernote/thrift/TFieldIdEnum;

    .line 9
    iget-object p1, p1, Lcom/evernote/thrift/TUnion;->value_:Ljava/lang/Object;

    invoke-static {p1}, Lcom/evernote/thrift/TUnion;->deepCopyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/evernote/thrift/TUnion;->value_:Ljava/lang/Object;

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method private static bytesToStr([B)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/16 v2, 0x80

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    if-eqz v3, :cond_0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    array-length p0, p0

    if-le p0, v2, :cond_3

    const-string p0, " ..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static deepCopyList(Ljava/util/List;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/evernote/thrift/TUnion;->deepCopyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static deepCopyMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/evernote/thrift/TUnion;->deepCopyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/evernote/thrift/TUnion;->deepCopyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static deepCopyObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, Lcom/evernote/thrift/TBase;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/evernote/thrift/TBase;

    invoke-interface {p0}, Lcom/evernote/thrift/TBase;->deepCopy()Lcom/evernote/thrift/TBase;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/evernote/thrift/TUnion;->deepCopyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lcom/evernote/thrift/TUnion;->deepCopySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/evernote/thrift/TUnion;->deepCopyMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private static deepCopySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/evernote/thrift/TUnion;->deepCopyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract checkType(Lcom/evernote/thrift/TFieldIdEnum;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/thrift/TUnion;->setField_:Lcom/evernote/thrift/TFieldIdEnum;

    iput-object v0, p0, Lcom/evernote/thrift/TUnion;->value_:Ljava/lang/Object;

    return-void
.end method

.method public abstract enumForId(S)Lcom/evernote/thrift/TFieldIdEnum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)TF;"
        }
    .end annotation
.end method

.method public abstract getFieldDesc(Lcom/evernote/thrift/TFieldIdEnum;)Lcom/evernote/thrift/protocol/TField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lcom/evernote/thrift/protocol/TField;"
        }
    .end annotation
.end method

.method public getFieldValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/evernote/thrift/TUnion;->value_:Ljava/lang/Object;

    return-object p0
.end method

.method public getFieldValue(I)Ljava/lang/Object;
    .locals 0

    int-to-short p1, p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/evernote/thrift/TUnion;->enumForId(S)Lcom/evernote/thrift/TFieldIdEnum;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/evernote/thrift/TUnion;->getFieldValue(Lcom/evernote/thrift/TFieldIdEnum;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getFieldValue(Lcom/evernote/thrift/TFieldIdEnum;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/evernote/thrift/TUnion;->setField_:Lcom/evernote/thrift/TFieldIdEnum;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/evernote/thrift/TUnion;->getFieldValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get the value of field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " because union\'s set field is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/evernote/thrift/TUnion;->setField_:Lcom/evernote/thrift/TFieldIdEnum;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSetField()Lcom/evernote/thrift/TFieldIdEnum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/thrift/TUnion;->setField_:Lcom/evernote/thrift/TFieldIdEnum;

    return-object p0
.end method

.method public abstract getStructDesc()Lcom/evernote/thrift/protocol/TStruct;
.end method

.method public isSet()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/evernote/thrift/TUnion;->setField_:Lcom/evernote/thrift/TFieldIdEnum;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSet(I)Z
    .locals 0

    int-to-short p1, p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/evernote/thrift/TUnion;->enumForId(S)Lcom/evernote/thrift/TFieldIdEnum;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/evernote/thrift/TUnion;->isSet(Lcom/evernote/thrift/TFieldIdEnum;)Z

    move-result p0

    return p0
.end method

.method public isSet(Lcom/evernote/thrift/TFieldIdEnum;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/evernote/thrift/TUnion;->setField_:Lcom/evernote/thrift/TFieldIdEnum;

    if-ne p0, p1, :cond_0

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

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/thrift/TUnion;->setField_:Lcom/evernote/thrift/TFieldIdEnum;

    iput-object v0, p0, Lcom/evernote/thrift/TUnion;->value_:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/evernote/thrift/TUnion;->readValue(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TField;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/thrift/TUnion;->value_:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/TUnion;->enumForId(S)Lcom/evernote/thrift/TFieldIdEnum;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/thrift/TUnion;->setField_:Lcom/evernote/thrift/TFieldIdEnum;

    :cond_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    return-void
.end method

.method public abstract readValue(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TField;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public setFieldValue(ILjava/lang/Object;)V
    .locals 0

    int-to-short p1, p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/evernote/thrift/TUnion;->enumForId(S)Lcom/evernote/thrift/TFieldIdEnum;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/evernote/thrift/TUnion;->setFieldValue(Lcom/evernote/thrift/TFieldIdEnum;Ljava/lang/Object;)V

    return-void
.end method

.method public setFieldValue(Lcom/evernote/thrift/TFieldIdEnum;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/evernote/thrift/TUnion;->checkType(Lcom/evernote/thrift/TFieldIdEnum;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/evernote/thrift/TUnion;->setField_:Lcom/evernote/thrift/TFieldIdEnum;

    .line 3
    iput-object p2, p0, Lcom/evernote/thrift/TUnion;->value_:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/thrift/TUnion;->getSetField()Lcom/evernote/thrift/TFieldIdEnum;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/evernote/thrift/TUnion;->getFieldValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [B

    if-eqz v2, :cond_0

    check-cast v1, [B

    invoke-static {v1}, Lcom/evernote/thrift/TUnion;->bytesToStr([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/thrift/TUnion;->getSetField()Lcom/evernote/thrift/TFieldIdEnum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/TUnion;->getFieldDesc(Lcom/evernote/thrift/TFieldIdEnum;)Lcom/evernote/thrift/protocol/TField;

    move-result-object p0

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TField;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/thrift/TUnion;->getSetField()Lcom/evernote/thrift/TFieldIdEnum;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/thrift/TUnion;->getFieldValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/thrift/TUnion;->getStructDesc()Lcom/evernote/thrift/protocol/TStruct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    iget-object v0, p0, Lcom/evernote/thrift/TUnion;->setField_:Lcom/evernote/thrift/TFieldIdEnum;

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/TUnion;->getFieldDesc(Lcom/evernote/thrift/TFieldIdEnum;)Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    invoke-virtual {p0, p1}, Lcom/evernote/thrift/TUnion;->writeValue(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void

    :cond_0
    new-instance p0, Lcom/evernote/thrift/protocol/TProtocolException;

    const-string p1, "Cannot write a TUnion with no set value!"

    invoke-direct {p0, p1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract writeValue(Lcom/evernote/thrift/protocol/TProtocol;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method
