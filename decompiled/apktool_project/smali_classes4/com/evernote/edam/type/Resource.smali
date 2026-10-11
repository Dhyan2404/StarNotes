.class public Lcom/evernote/edam/type/Resource;
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
        "Lcom/evernote/edam/type/Resource;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final ACTIVE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DURATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final HEIGHT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final WIDTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __ACTIVE_ISSET_ID:I = 0x3

.field private static final __DURATION_ISSET_ID:I = 0x2

.field private static final __HEIGHT_ISSET_ID:I = 0x1

.field private static final __UPDATESEQUENCENUM_ISSET_ID:I = 0x4

.field private static final __WIDTH_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private active:Z

.field private alternateData:Lcom/evernote/edam/type/Data;

.field private attributes:Lcom/evernote/edam/type/ResourceAttributes;

.field private data:Lcom/evernote/edam/type/Data;

.field private duration:S

.field private guid:Ljava/lang/String;

.field private height:S

.field private mime:Ljava/lang/String;

.field private noteGuid:Ljava/lang/String;

.field private recognition:Lcom/evernote/edam/type/Data;

.field private updateSequenceNum:I

.field private width:S


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "Resource"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "guid"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noteGuid"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x3

    const-string v4, "data"

    const/16 v5, 0xc

    invoke-direct {v0, v4, v5, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "mime"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x5

    const-string v4, "width"

    const/4 v6, 0x6

    invoke-direct {v0, v4, v6, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->WIDTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "height"

    invoke-direct {v0, v1, v6, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->HEIGHT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "duration"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v6, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->DURATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "active"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->ACTIVE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "recognition"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "attributes"

    invoke-direct {v0, v1, v5, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "updateSequenceNum"

    invoke-direct {v0, v1, v4, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "alternateData"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/Resource;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Z

    .line 4
    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    .line 5
    iget-object v1, p1, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p1, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetNoteGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p1, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    new-instance v0, Lcom/evernote/edam/type/Data;

    iget-object v1, p1, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Data;-><init>(Lcom/evernote/edam/type/Data;)V

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetMime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p1, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    .line 14
    :cond_3
    iget-short v0, p1, Lcom/evernote/edam/type/Resource;->width:S

    iput-short v0, p0, Lcom/evernote/edam/type/Resource;->width:S

    .line 15
    iget-short v0, p1, Lcom/evernote/edam/type/Resource;->height:S

    iput-short v0, p0, Lcom/evernote/edam/type/Resource;->height:S

    .line 16
    iget-short v0, p1, Lcom/evernote/edam/type/Resource;->duration:S

    iput-short v0, p0, Lcom/evernote/edam/type/Resource;->duration:S

    .line 17
    iget-boolean v0, p1, Lcom/evernote/edam/type/Resource;->active:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/Resource;->active:Z

    .line 18
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetRecognition()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    new-instance v0, Lcom/evernote/edam/type/Data;

    iget-object v1, p1, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Data;-><init>(Lcom/evernote/edam/type/Data;)V

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetAttributes()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    new-instance v0, Lcom/evernote/edam/type/ResourceAttributes;

    iget-object v1, p1, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/ResourceAttributes;-><init>(Lcom/evernote/edam/type/ResourceAttributes;)V

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    .line 22
    :cond_5
    iget v0, p1, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    iput v0, p0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    .line 23
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetAlternateData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    new-instance v0, Lcom/evernote/edam/type/Data;

    iget-object p1, p1, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    invoke-direct {v0, p1}, Lcom/evernote/edam/type/Data;-><init>(Lcom/evernote/edam/type/Data;)V

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    :cond_6
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/Resource;->setWidthIsSet(Z)V

    iput-short v1, p0, Lcom/evernote/edam/type/Resource;->width:S

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/Resource;->setHeightIsSet(Z)V

    iput-short v1, p0, Lcom/evernote/edam/type/Resource;->height:S

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/Resource;->setDurationIsSet(Z)V

    iput-short v1, p0, Lcom/evernote/edam/type/Resource;->duration:S

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/Resource;->setActiveIsSet(Z)V

    iput-boolean v1, p0, Lcom/evernote/edam/type/Resource;->active:Z

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/Resource;->setUpdateSequenceNumIsSet(Z)V

    iput v1, p0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/Resource;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetGuid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetGuid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetNoteGuid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetNoteGuid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetNoteGuid()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetData()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetData()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetData()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    iget-object v1, p1, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetMime()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetMime()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetMime()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetWidth()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetWidth()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetWidth()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-short v0, p0, Lcom/evernote/edam/type/Resource;->width:S

    iget-short v1, p1, Lcom/evernote/edam/type/Resource;->width:S

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(SS)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetHeight()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetHeight()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetHeight()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-short v0, p0, Lcom/evernote/edam/type/Resource;->height:S

    iget-short v1, p1, Lcom/evernote/edam/type/Resource;->height:S

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(SS)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetDuration()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetDuration()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetDuration()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-short v0, p0, Lcom/evernote/edam/type/Resource;->duration:S

    iget-short v1, p1, Lcom/evernote/edam/type/Resource;->duration:S

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(SS)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetActive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetActive()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 19
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetActive()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/evernote/edam/type/Resource;->active:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/Resource;->active:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    .line 20
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetRecognition()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetRecognition()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 21
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetRecognition()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    iget-object v1, p1, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    .line 22
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAttributes()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetAttributes()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    .line 23
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAttributes()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    iget-object v1, p1, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    .line 24
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetUpdateSequenceNum()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetUpdateSequenceNum()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    .line 25
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetUpdateSequenceNum()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    iget v1, p1, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 26
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAlternateData()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetAlternateData()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    .line 27
    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAlternateData()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    iget-object p1, p1, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    if-eqz p0, :cond_18

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/type/Resource;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Resource;->compareTo(Lcom/evernote/edam/type/Resource;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/type/Resource;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/type/Resource;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/Resource;-><init>(Lcom/evernote/edam/type/Resource;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->deepCopy()Lcom/evernote/edam/type/Resource;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/type/Resource;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetGuid()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetGuid()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_25

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetNoteGuid()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetNoteGuid()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_25

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 8
    :cond_5
    iget-object v1, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetData()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetData()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_25

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 11
    :cond_8
    iget-object v1, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    iget-object v2, p1, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    invoke-virtual {v1, v2}, Lcom/evernote/edam/type/Data;->equals(Lcom/evernote/edam/type/Data;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetMime()Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetMime()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_25

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 14
    :cond_b
    iget-object v1, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    .line 15
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetWidth()Z

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetWidth()Z

    move-result v2

    if-nez v1, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-eqz v1, :cond_25

    if-nez v2, :cond_e

    goto/16 :goto_0

    .line 17
    :cond_e
    iget-short v1, p0, Lcom/evernote/edam/type/Resource;->width:S

    iget-short v2, p1, Lcom/evernote/edam/type/Resource;->width:S

    if-eq v1, v2, :cond_f

    return v0

    .line 18
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetHeight()Z

    move-result v1

    .line 19
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetHeight()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_12

    :cond_10
    if-eqz v1, :cond_25

    if-nez v2, :cond_11

    goto/16 :goto_0

    .line 20
    :cond_11
    iget-short v1, p0, Lcom/evernote/edam/type/Resource;->height:S

    iget-short v2, p1, Lcom/evernote/edam/type/Resource;->height:S

    if-eq v1, v2, :cond_12

    return v0

    .line 21
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetDuration()Z

    move-result v1

    .line 22
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetDuration()Z

    move-result v2

    if-nez v1, :cond_13

    if-eqz v2, :cond_15

    :cond_13
    if-eqz v1, :cond_25

    if-nez v2, :cond_14

    goto/16 :goto_0

    .line 23
    :cond_14
    iget-short v1, p0, Lcom/evernote/edam/type/Resource;->duration:S

    iget-short v2, p1, Lcom/evernote/edam/type/Resource;->duration:S

    if-eq v1, v2, :cond_15

    return v0

    .line 24
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetActive()Z

    move-result v1

    .line 25
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetActive()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_18

    :cond_16
    if-eqz v1, :cond_25

    if-nez v2, :cond_17

    goto/16 :goto_0

    .line 26
    :cond_17
    iget-boolean v1, p0, Lcom/evernote/edam/type/Resource;->active:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/Resource;->active:Z

    if-eq v1, v2, :cond_18

    return v0

    .line 27
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetRecognition()Z

    move-result v1

    .line 28
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetRecognition()Z

    move-result v2

    if-nez v1, :cond_19

    if-eqz v2, :cond_1b

    :cond_19
    if-eqz v1, :cond_25

    if-nez v2, :cond_1a

    goto :goto_0

    .line 29
    :cond_1a
    iget-object v1, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    iget-object v2, p1, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    invoke-virtual {v1, v2}, Lcom/evernote/edam/type/Data;->equals(Lcom/evernote/edam/type/Data;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v0

    .line 30
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAttributes()Z

    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetAttributes()Z

    move-result v2

    if-nez v1, :cond_1c

    if-eqz v2, :cond_1e

    :cond_1c
    if-eqz v1, :cond_25

    if-nez v2, :cond_1d

    goto :goto_0

    .line 32
    :cond_1d
    iget-object v1, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    iget-object v2, p1, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    invoke-virtual {v1, v2}, Lcom/evernote/edam/type/ResourceAttributes;->equals(Lcom/evernote/edam/type/ResourceAttributes;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v0

    .line 33
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetUpdateSequenceNum()Z

    move-result v1

    .line 34
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetUpdateSequenceNum()Z

    move-result v2

    if-nez v1, :cond_1f

    if-eqz v2, :cond_21

    :cond_1f
    if-eqz v1, :cond_25

    if-nez v2, :cond_20

    goto :goto_0

    .line 35
    :cond_20
    iget v1, p0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    iget v2, p1, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    if-eq v1, v2, :cond_21

    return v0

    .line 36
    :cond_21
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAlternateData()Z

    move-result v1

    .line 37
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetAlternateData()Z

    move-result v2

    if-nez v1, :cond_22

    if-eqz v2, :cond_24

    :cond_22
    if-eqz v1, :cond_25

    if-nez v2, :cond_23

    goto :goto_0

    .line 38
    :cond_23
    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    iget-object p1, p1, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Data;->equals(Lcom/evernote/edam/type/Data;)Z

    move-result p0

    if-nez p0, :cond_24

    return v0

    :cond_24
    const/4 p0, 0x1

    return p0

    :cond_25
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
    instance-of v1, p1, Lcom/evernote/edam/type/Resource;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/type/Resource;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Resource;->equals(Lcom/evernote/edam/type/Resource;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getAlternateData()Lcom/evernote/edam/type/Data;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    return-object p0
.end method

.method public getAttributes()Lcom/evernote/edam/type/ResourceAttributes;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    return-object p0
.end method

.method public getData()Lcom/evernote/edam/type/Data;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    return-object p0
.end method

.method public getDuration()S
    .locals 0

    iget-short p0, p0, Lcom/evernote/edam/type/Resource;->duration:S

    return p0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()S
    .locals 0

    iget-short p0, p0, Lcom/evernote/edam/type/Resource;->height:S

    return p0
.end method

.method public getMime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    return-object p0
.end method

.method public getNoteGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    return-object p0
.end method

.method public getRecognition()Lcom/evernote/edam/type/Data;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    return-object p0
.end method

.method public getUpdateSequenceNum()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    return p0
.end method

.method public getWidth()S
    .locals 0

    iget-short p0, p0, Lcom/evernote/edam/type/Resource;->width:S

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/Resource;->active:Z

    return p0
.end method

.method public isSetActive()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetAlternateData()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetAttributes()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetData()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetDuration()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetGuid()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetHeight()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetMime()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetNoteGuid()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetRecognition()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

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

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetWidth()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 6
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

    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/4 v2, 0x6

    const/16 v3, 0xb

    const/16 v4, 0xc

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_1
    if-ne v1, v4, :cond_1

    new-instance v0, Lcom/evernote/edam/type/Data;

    invoke-direct {v0}, Lcom/evernote/edam/type/Data;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Data;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    :cond_1
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_2
    const/16 v0, 0x8

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Resource;->setUpdateSequenceNumIsSet(Z)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_3
    if-ne v1, v4, :cond_3

    new-instance v0, Lcom/evernote/edam/type/ResourceAttributes;

    invoke-direct {v0}, Lcom/evernote/edam/type/ResourceAttributes;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/ResourceAttributes;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    :cond_3
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_4
    if-ne v1, v4, :cond_4

    new-instance v0, Lcom/evernote/edam/type/Data;

    invoke-direct {v0}, Lcom/evernote/edam/type/Data;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Data;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_5
    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/Resource;->active:Z

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Resource;->setActiveIsSet(Z)V

    goto/16 :goto_1

    :cond_5
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_6
    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI16()S

    move-result v0

    iput-short v0, p0, Lcom/evernote/edam/type/Resource;->duration:S

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Resource;->setDurationIsSet(Z)V

    goto :goto_1

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_7
    if-ne v1, v2, :cond_7

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI16()S

    move-result v0

    iput-short v0, p0, Lcom/evernote/edam/type/Resource;->height:S

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Resource;->setHeightIsSet(Z)V

    goto :goto_1

    :cond_7
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_8
    if-ne v1, v2, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI16()S

    move-result v0

    iput-short v0, p0, Lcom/evernote/edam/type/Resource;->width:S

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Resource;->setWidthIsSet(Z)V

    goto :goto_1

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_9
    if-ne v1, v3, :cond_9

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    goto :goto_1

    :cond_9
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_a
    if-ne v1, v4, :cond_a

    new-instance v0, Lcom/evernote/edam/type/Data;

    invoke-direct {v0}, Lcom/evernote/edam/type/Data;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Data;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    :cond_a
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_b
    if-ne v1, v3, :cond_b

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    goto :goto_1

    :cond_b
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_c
    if-ne v1, v3, :cond_c

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    goto :goto_1

    :cond_c
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
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/Resource;->active:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Resource;->setActiveIsSet(Z)V

    return-void
.end method

.method public setActiveIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v0, 0x3

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setAlternateData(Lcom/evernote/edam/type/Data;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    return-void
.end method

.method public setAlternateDataIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    :cond_0
    return-void
.end method

.method public setAttributes(Lcom/evernote/edam/type/ResourceAttributes;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    return-void
.end method

.method public setAttributesIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    :cond_0
    return-void
.end method

.method public setData(Lcom/evernote/edam/type/Data;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    return-void
.end method

.method public setDataIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    :cond_0
    return-void
.end method

.method public setDuration(S)V
    .locals 0

    iput-short p1, p0, Lcom/evernote/edam/type/Resource;->duration:S

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Resource;->setDurationIsSet(Z)V

    return-void
.end method

.method public setDurationIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    return-void
.end method

.method public setGuidIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setHeight(S)V
    .locals 0

    iput-short p1, p0, Lcom/evernote/edam/type/Resource;->height:S

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Resource;->setHeightIsSet(Z)V

    return-void
.end method

.method public setHeightIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setMime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    return-void
.end method

.method public setMimeIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setNoteGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    return-void
.end method

.method public setNoteGuidIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setRecognition(Lcom/evernote/edam/type/Data;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    return-void
.end method

.method public setRecognitionIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    :cond_0
    return-void
.end method

.method public setUpdateSequenceNum(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Resource;->setUpdateSequenceNumIsSet(Z)V

    return-void
.end method

.method public setUpdateSequenceNumIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v0, 0x4

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setWidth(S)V
    .locals 0

    iput-short p1, p0, Lcom/evernote/edam/type/Resource;->width:S

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Resource;->setWidthIsSet(Z)V

    return-void
.end method

.method public setWidthIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resource("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetGuid()Z

    move-result v1

    const-string v2, "null"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "guid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetNoteGuid()Z

    move-result v4

    const-string v5, ", "

    if-eqz v4, :cond_4

    if-nez v1, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "noteGuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v1, v3

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetData()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v1, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    if-nez v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    move v1, v3

    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetMime()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v1, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "mime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    if-nez v1, :cond_9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v1, v3

    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetWidth()Z

    move-result v4

    if-eqz v4, :cond_c

    if-nez v1, :cond_b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, "width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/evernote/edam/type/Resource;->width:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetHeight()Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez v1, :cond_d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, "height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/evernote/edam/type/Resource;->height:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetDuration()Z

    move-result v4

    if-eqz v4, :cond_10

    if-nez v1, :cond_f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v1, "duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/evernote/edam/type/Resource;->duration:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetActive()Z

    move-result v4

    if-eqz v4, :cond_12

    if-nez v1, :cond_11

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v1, "active:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/Resource;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetRecognition()Z

    move-result v4

    if-eqz v4, :cond_15

    if-nez v1, :cond_13

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string v1, "recognition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    if-nez v1, :cond_14

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_5
    move v1, v3

    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAttributes()Z

    move-result v4

    if-eqz v4, :cond_18

    if-nez v1, :cond_16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    const-string v1, "attributes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    if-nez v1, :cond_17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_6
    move v1, v3

    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetUpdateSequenceNum()Z

    move-result v4

    if-eqz v4, :cond_1a

    if-nez v1, :cond_19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const-string v1, "updateSequenceNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_1a
    move v3, v1

    :goto_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAlternateData()Z

    move-result v1

    if-eqz v1, :cond_1d

    if-nez v3, :cond_1b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const-string v1, "alternateData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    if-nez p0, :cond_1c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1d
    :goto_8
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetActive()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetAlternateData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    return-void
.end method

.method public unsetAttributes()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    return-void
.end method

.method public unsetData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    return-void
.end method

.method public unsetDuration()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetGuid()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    return-void
.end method

.method public unsetHeight()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetMime()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    return-void
.end method

.method public unsetNoteGuid()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    return-void
.end method

.method public unsetRecognition()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    return-void
.end method

.method public unsetUpdateSequenceNum()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetWidth()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->validate()V

    sget-object v0, Lcom/evernote/edam/type/Resource;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/type/Resource;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetNoteGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/type/Resource;->NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetData()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/type/Resource;->DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Data;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetMime()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/type/Resource;->MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetWidth()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/evernote/edam/type/Resource;->WIDTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-short v0, p0, Lcom/evernote/edam/type/Resource;->width:S

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI16(S)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetHeight()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/evernote/edam/type/Resource;->HEIGHT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-short v0, p0, Lcom/evernote/edam/type/Resource;->height:S

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI16(S)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetDuration()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/evernote/edam/type/Resource;->DURATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-short v0, p0, Lcom/evernote/edam/type/Resource;->duration:S

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI16(S)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetActive()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/evernote/edam/type/Resource;->ACTIVE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/Resource;->active:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_7
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetRecognition()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/evernote/edam/type/Resource;->RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Data;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_8
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAttributes()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/evernote/edam/type/Resource;->ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/ResourceAttributes;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetUpdateSequenceNum()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/evernote/edam/type/Resource;->UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_a
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAlternateData()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/evernote/edam/type/Resource;->ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object p0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Data;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_b
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
