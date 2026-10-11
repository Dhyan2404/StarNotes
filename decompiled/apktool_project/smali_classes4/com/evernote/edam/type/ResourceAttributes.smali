.class public Lcom/evernote/edam/type/ResourceAttributes;
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
        "Lcom/evernote/edam/type/ResourceAttributes;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final ALTITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final APPLICATION_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ATTACHMENT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CAMERA_MAKE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CAMERA_MODEL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CLIENT_WILL_INDEX_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final FILE_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LATITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LONGITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RECO_TYPE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SOURCE_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final TIMESTAMP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __ALTITUDE_ISSET_ID:I = 0x3

.field private static final __ATTACHMENT_ISSET_ID:I = 0x5

.field private static final __CLIENTWILLINDEX_ISSET_ID:I = 0x4

.field private static final __LATITUDE_ISSET_ID:I = 0x1

.field private static final __LONGITUDE_ISSET_ID:I = 0x2

.field private static final __TIMESTAMP_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private altitude:D

.field private applicationData:Lcom/evernote/edam/type/LazyMap;

.field private attachment:Z

.field private cameraMake:Ljava/lang/String;

.field private cameraModel:Ljava/lang/String;

.field private clientWillIndex:Z

.field private fileName:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private recoType:Ljava/lang/String;

.field private sourceURL:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "ResourceAttributes"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/ResourceAttributes;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "sourceURL"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/ResourceAttributes;->SOURCE_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "timestamp"

    const/16 v2, 0xa

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/ResourceAttributes;->TIMESTAMP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x3

    const-string v5, "latitude"

    const/4 v6, 0x4

    invoke-direct {v0, v5, v6, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/ResourceAttributes;->LATITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "longitude"

    invoke-direct {v0, v1, v6, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/ResourceAttributes;->LONGITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "altitude"

    const/4 v5, 0x5

    invoke-direct {v0, v1, v6, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/ResourceAttributes;->ALTITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "cameraMake"

    const/4 v5, 0x6

    invoke-direct {v0, v1, v3, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/ResourceAttributes;->CAMERA_MAKE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "cameraModel"

    const/4 v5, 0x7

    invoke-direct {v0, v1, v3, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/ResourceAttributes;->CAMERA_MODEL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "clientWillIndex"

    const/16 v5, 0x8

    invoke-direct {v0, v1, v4, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/ResourceAttributes;->CLIENT_WILL_INDEX_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "recoType"

    const/16 v5, 0x9

    invoke-direct {v0, v1, v3, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/ResourceAttributes;->RECO_TYPE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "fileName"

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/ResourceAttributes;->FILE_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "attachment"

    invoke-direct {v0, v1, v4, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/ResourceAttributes;->ATTACHMENT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "applicationData"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/ResourceAttributes;->APPLICATION_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/ResourceAttributes;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Z

    .line 4
    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    .line 5
    iget-object v1, p1, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetSourceURL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p1, Lcom/evernote/edam/type/ResourceAttributes;->sourceURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->sourceURL:Ljava/lang/String;

    .line 8
    :cond_0
    iget-wide v0, p1, Lcom/evernote/edam/type/ResourceAttributes;->timestamp:J

    iput-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->timestamp:J

    .line 9
    iget-wide v0, p1, Lcom/evernote/edam/type/ResourceAttributes;->latitude:D

    iput-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->latitude:D

    .line 10
    iget-wide v0, p1, Lcom/evernote/edam/type/ResourceAttributes;->longitude:D

    iput-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->longitude:D

    .line 11
    iget-wide v0, p1, Lcom/evernote/edam/type/ResourceAttributes;->altitude:D

    iput-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->altitude:D

    .line 12
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetCameraMake()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p1, Lcom/evernote/edam/type/ResourceAttributes;->cameraMake:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraMake:Ljava/lang/String;

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetCameraModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p1, Lcom/evernote/edam/type/ResourceAttributes;->cameraModel:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraModel:Ljava/lang/String;

    .line 16
    :cond_2
    iget-boolean v0, p1, Lcom/evernote/edam/type/ResourceAttributes;->clientWillIndex:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->clientWillIndex:Z

    .line 17
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetRecoType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p1, Lcom/evernote/edam/type/ResourceAttributes;->recoType:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->recoType:Ljava/lang/String;

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetFileName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    iget-object v0, p1, Lcom/evernote/edam/type/ResourceAttributes;->fileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->fileName:Ljava/lang/String;

    .line 21
    :cond_4
    iget-boolean v0, p1, Lcom/evernote/edam/type/ResourceAttributes;->attachment:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->attachment:Z

    .line 22
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetApplicationData()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    new-instance v0, Lcom/evernote/edam/type/LazyMap;

    iget-object p1, p1, Lcom/evernote/edam/type/ResourceAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    invoke-direct {v0, p1}, Lcom/evernote/edam/type/LazyMap;-><init>(Lcom/evernote/edam/type/LazyMap;)V

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    :cond_5
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->sourceURL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/ResourceAttributes;->setTimestampIsSet(Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/evernote/edam/type/ResourceAttributes;->timestamp:J

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/ResourceAttributes;->setLatitudeIsSet(Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/evernote/edam/type/ResourceAttributes;->latitude:D

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/ResourceAttributes;->setLongitudeIsSet(Z)V

    iput-wide v2, p0, Lcom/evernote/edam/type/ResourceAttributes;->longitude:D

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/ResourceAttributes;->setAltitudeIsSet(Z)V

    iput-wide v2, p0, Lcom/evernote/edam/type/ResourceAttributes;->altitude:D

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraMake:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraModel:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/ResourceAttributes;->setClientWillIndexIsSet(Z)V

    iput-boolean v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->clientWillIndex:Z

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->recoType:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/ResourceAttributes;->setAttachmentIsSet(Z)V

    iput-boolean v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->attachment:Z

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/ResourceAttributes;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetSourceURL()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetSourceURL()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetSourceURL()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->sourceURL:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/ResourceAttributes;->sourceURL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetTimestamp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetTimestamp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetTimestamp()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->timestamp:J

    iget-wide v2, p1, Lcom/evernote/edam/type/ResourceAttributes;->timestamp:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetLatitude()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetLatitude()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetLatitude()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->latitude:D

    iget-wide v2, p1, Lcom/evernote/edam/type/ResourceAttributes;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(DD)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetLongitude()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetLongitude()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetLongitude()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->longitude:D

    iget-wide v2, p1, Lcom/evernote/edam/type/ResourceAttributes;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(DD)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetAltitude()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetAltitude()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetAltitude()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->altitude:D

    iget-wide v2, p1, Lcom/evernote/edam/type/ResourceAttributes;->altitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(DD)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetCameraMake()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetCameraMake()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetCameraMake()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraMake:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/ResourceAttributes;->cameraMake:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetCameraModel()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetCameraModel()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetCameraModel()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraModel:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/ResourceAttributes;->cameraModel:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetClientWillIndex()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetClientWillIndex()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 19
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetClientWillIndex()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->clientWillIndex:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/ResourceAttributes;->clientWillIndex:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    .line 20
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetRecoType()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetRecoType()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 21
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetRecoType()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->recoType:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/ResourceAttributes;->recoType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    .line 22
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetFileName()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetFileName()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    .line 23
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetFileName()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->fileName:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/ResourceAttributes;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    .line 24
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetAttachment()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetAttachment()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    .line 25
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetAttachment()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->attachment:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/ResourceAttributes;->attachment:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 26
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetApplicationData()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetApplicationData()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    .line 27
    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetApplicationData()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    iget-object p1, p1, Lcom/evernote/edam/type/ResourceAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

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
    check-cast p1, Lcom/evernote/edam/type/ResourceAttributes;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/ResourceAttributes;->compareTo(Lcom/evernote/edam/type/ResourceAttributes;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/type/ResourceAttributes;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/type/ResourceAttributes;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/ResourceAttributes;-><init>(Lcom/evernote/edam/type/ResourceAttributes;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->deepCopy()Lcom/evernote/edam/type/ResourceAttributes;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/type/ResourceAttributes;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetSourceURL()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetSourceURL()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_25

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->sourceURL:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/ResourceAttributes;->sourceURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetTimestamp()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetTimestamp()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_25

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 8
    :cond_5
    iget-wide v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->timestamp:J

    iget-wide v3, p1, Lcom/evernote/edam/type/ResourceAttributes;->timestamp:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetLatitude()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetLatitude()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_25

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 11
    :cond_8
    iget-wide v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->latitude:D

    iget-wide v3, p1, Lcom/evernote/edam/type/ResourceAttributes;->latitude:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_9

    return v0

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetLongitude()Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetLongitude()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_25

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 14
    :cond_b
    iget-wide v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->longitude:D

    iget-wide v3, p1, Lcom/evernote/edam/type/ResourceAttributes;->longitude:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_c

    return v0

    .line 15
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetAltitude()Z

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetAltitude()Z

    move-result v2

    if-nez v1, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-eqz v1, :cond_25

    if-nez v2, :cond_e

    goto/16 :goto_0

    .line 17
    :cond_e
    iget-wide v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->altitude:D

    iget-wide v3, p1, Lcom/evernote/edam/type/ResourceAttributes;->altitude:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_f

    return v0

    .line 18
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetCameraMake()Z

    move-result v1

    .line 19
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetCameraMake()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_12

    :cond_10
    if-eqz v1, :cond_25

    if-nez v2, :cond_11

    goto/16 :goto_0

    .line 20
    :cond_11
    iget-object v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraMake:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/ResourceAttributes;->cameraMake:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v0

    .line 21
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetCameraModel()Z

    move-result v1

    .line 22
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetCameraModel()Z

    move-result v2

    if-nez v1, :cond_13

    if-eqz v2, :cond_15

    :cond_13
    if-eqz v1, :cond_25

    if-nez v2, :cond_14

    goto/16 :goto_0

    .line 23
    :cond_14
    iget-object v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraModel:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/ResourceAttributes;->cameraModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v0

    .line 24
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetClientWillIndex()Z

    move-result v1

    .line 25
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetClientWillIndex()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_18

    :cond_16
    if-eqz v1, :cond_25

    if-nez v2, :cond_17

    goto/16 :goto_0

    .line 26
    :cond_17
    iget-boolean v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->clientWillIndex:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/ResourceAttributes;->clientWillIndex:Z

    if-eq v1, v2, :cond_18

    return v0

    .line 27
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetRecoType()Z

    move-result v1

    .line 28
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetRecoType()Z

    move-result v2

    if-nez v1, :cond_19

    if-eqz v2, :cond_1b

    :cond_19
    if-eqz v1, :cond_25

    if-nez v2, :cond_1a

    goto :goto_0

    .line 29
    :cond_1a
    iget-object v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->recoType:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/ResourceAttributes;->recoType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v0

    .line 30
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetFileName()Z

    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetFileName()Z

    move-result v2

    if-nez v1, :cond_1c

    if-eqz v2, :cond_1e

    :cond_1c
    if-eqz v1, :cond_25

    if-nez v2, :cond_1d

    goto :goto_0

    .line 32
    :cond_1d
    iget-object v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->fileName:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/ResourceAttributes;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v0

    .line 33
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetAttachment()Z

    move-result v1

    .line 34
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetAttachment()Z

    move-result v2

    if-nez v1, :cond_1f

    if-eqz v2, :cond_21

    :cond_1f
    if-eqz v1, :cond_25

    if-nez v2, :cond_20

    goto :goto_0

    .line 35
    :cond_20
    iget-boolean v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->attachment:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/ResourceAttributes;->attachment:Z

    if-eq v1, v2, :cond_21

    return v0

    .line 36
    :cond_21
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetApplicationData()Z

    move-result v1

    .line 37
    invoke-virtual {p1}, Lcom/evernote/edam/type/ResourceAttributes;->isSetApplicationData()Z

    move-result v2

    if-nez v1, :cond_22

    if-eqz v2, :cond_24

    :cond_22
    if-eqz v1, :cond_25

    if-nez v2, :cond_23

    goto :goto_0

    .line 38
    :cond_23
    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    iget-object p1, p1, Lcom/evernote/edam/type/ResourceAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/LazyMap;->equals(Lcom/evernote/edam/type/LazyMap;)Z

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
    instance-of v1, p1, Lcom/evernote/edam/type/ResourceAttributes;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/type/ResourceAttributes;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/ResourceAttributes;->equals(Lcom/evernote/edam/type/ResourceAttributes;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getAltitude()D
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->altitude:D

    return-wide v0
.end method

.method public getApplicationData()Lcom/evernote/edam/type/LazyMap;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    return-object p0
.end method

.method public getCameraMake()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraMake:Ljava/lang/String;

    return-object p0
.end method

.method public getCameraModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraModel:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->longitude:D

    return-wide v0
.end method

.method public getRecoType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->recoType:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->sourceURL:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAttachment()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->attachment:Z

    return p0
.end method

.method public isClientWillIndex()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->clientWillIndex:Z

    return p0
.end method

.method public isSetAltitude()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetApplicationData()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetAttachment()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    const/4 v0, 0x5

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetCameraMake()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraMake:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetCameraModel()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraModel:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetClientWillIndex()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetFileName()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->fileName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetLatitude()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetLongitude()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetRecoType()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->recoType:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetSourceURL()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->sourceURL:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetTimestamp()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

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

    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/16 v4, 0xb

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_0
    const/16 v0, 0xc

    if-ne v1, v0, :cond_1

    new-instance v0, Lcom/evernote/edam/type/LazyMap;

    invoke-direct {v0}, Lcom/evernote/edam/type/LazyMap;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/LazyMap;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    :cond_1
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_1
    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->attachment:Z

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/ResourceAttributes;->setAttachmentIsSet(Z)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_2
    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->fileName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_3
    if-ne v1, v4, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->recoType:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_4
    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->clientWillIndex:Z

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/ResourceAttributes;->setClientWillIndexIsSet(Z)V

    goto/16 :goto_1

    :cond_5
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_5
    if-ne v1, v4, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraModel:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_6
    if-ne v1, v4, :cond_7

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraMake:Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_7
    if-ne v1, v3, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->altitude:D

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/ResourceAttributes;->setAltitudeIsSet(Z)V

    goto :goto_1

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_8
    if-ne v1, v3, :cond_9

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->longitude:D

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/ResourceAttributes;->setLongitudeIsSet(Z)V

    goto :goto_1

    :cond_9
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_9
    if-ne v1, v3, :cond_a

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->latitude:D

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/ResourceAttributes;->setLatitudeIsSet(Z)V

    goto :goto_1

    :cond_a
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_a
    const/16 v0, 0xa

    if-ne v1, v0, :cond_b

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->timestamp:J

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/ResourceAttributes;->setTimestampIsSet(Z)V

    goto :goto_1

    :cond_b
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_b
    if-ne v1, v4, :cond_c

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->sourceURL:Ljava/lang/String;

    goto :goto_1

    :cond_c
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public setAltitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->altitude:D

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/ResourceAttributes;->setAltitudeIsSet(Z)V

    return-void
.end method

.method public setAltitudeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    const/4 v0, 0x3

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setApplicationData(Lcom/evernote/edam/type/LazyMap;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    return-void
.end method

.method public setApplicationDataIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    :cond_0
    return-void
.end method

.method public setAttachment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->attachment:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/ResourceAttributes;->setAttachmentIsSet(Z)V

    return-void
.end method

.method public setAttachmentIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    const/4 v0, 0x5

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setCameraMake(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraMake:Ljava/lang/String;

    return-void
.end method

.method public setCameraMakeIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraMake:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setCameraModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraModel:Ljava/lang/String;

    return-void
.end method

.method public setCameraModelIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraModel:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setClientWillIndex(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->clientWillIndex:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/ResourceAttributes;->setClientWillIndexIsSet(Z)V

    return-void
.end method

.method public setClientWillIndexIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    const/4 v0, 0x4

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileNameIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->fileName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->latitude:D

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/ResourceAttributes;->setLatitudeIsSet(Z)V

    return-void
.end method

.method public setLatitudeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->longitude:D

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/ResourceAttributes;->setLongitudeIsSet(Z)V

    return-void
.end method

.method public setLongitudeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setRecoType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->recoType:Ljava/lang/String;

    return-void
.end method

.method public setRecoTypeIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->recoType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSourceURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->sourceURL:Ljava/lang/String;

    return-void
.end method

.method public setSourceURLIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->sourceURL:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/ResourceAttributes;->timestamp:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/ResourceAttributes;->setTimestampIsSet(Z)V

    return-void
.end method

.method public setTimestampIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResourceAttributes("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetSourceURL()Z

    move-result v1

    const-string v2, "null"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "sourceURL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->sourceURL:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetTimestamp()Z

    move-result v4

    const-string v5, ", "

    if-eqz v4, :cond_3

    if-nez v1, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/ResourceAttributes;->timestamp:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetLatitude()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v1, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "latitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/ResourceAttributes;->latitude:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetLongitude()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v1, :cond_6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, "longitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/ResourceAttributes;->longitude:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetAltitude()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v1, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "altitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/ResourceAttributes;->altitude:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetCameraMake()Z

    move-result v4

    if-eqz v4, :cond_c

    if-nez v1, :cond_a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v1, "cameraMake:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraMake:Ljava/lang/String;

    if-nez v1, :cond_b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v1, v3

    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetCameraModel()Z

    move-result v4

    if-eqz v4, :cond_f

    if-nez v1, :cond_d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, "cameraModel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraModel:Ljava/lang/String;

    if-nez v1, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v1, v3

    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetClientWillIndex()Z

    move-result v4

    if-eqz v4, :cond_11

    if-nez v1, :cond_10

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v1, "clientWillIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->clientWillIndex:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetRecoType()Z

    move-result v4

    if-eqz v4, :cond_14

    if-nez v1, :cond_12

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const-string v1, "recoType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->recoType:Ljava/lang/String;

    if-nez v1, :cond_13

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v1, v3

    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetFileName()Z

    move-result v4

    if-eqz v4, :cond_17

    if-nez v1, :cond_15

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string v1, "fileName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->fileName:Ljava/lang/String;

    if-nez v1, :cond_16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move v1, v3

    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetAttachment()Z

    move-result v4

    if-eqz v4, :cond_19

    if-nez v1, :cond_18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    const-string v1, "attachment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/ResourceAttributes;->attachment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_19
    move v3, v1

    :goto_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetApplicationData()Z

    move-result v1

    if-eqz v1, :cond_1c

    if-nez v3, :cond_1a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    const-string v1, "applicationData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    if-nez p0, :cond_1b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_1b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1c
    :goto_7
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetAltitude()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetApplicationData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    return-void
.end method

.method public unsetAttachment()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetCameraMake()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraMake:Ljava/lang/String;

    return-void
.end method

.method public unsetCameraModel()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraModel:Ljava/lang/String;

    return-void
.end method

.method public unsetClientWillIndex()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetFileName()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->fileName:Ljava/lang/String;

    return-void
.end method

.method public unsetLatitude()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetLongitude()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetRecoType()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->recoType:Ljava/lang/String;

    return-void
.end method

.method public unsetSourceURL()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->sourceURL:Ljava/lang/String;

    return-void
.end method

.method public unsetTimestamp()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->__isset_vector:[Z

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->validate()V

    sget-object v0, Lcom/evernote/edam/type/ResourceAttributes;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    iget-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->sourceURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetSourceURL()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/type/ResourceAttributes;->SOURCE_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->sourceURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/type/ResourceAttributes;->TIMESTAMP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->timestamp:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetLatitude()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/type/ResourceAttributes;->LATITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->latitude:D

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeDouble(D)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetLongitude()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/type/ResourceAttributes;->LONGITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->longitude:D

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeDouble(D)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetAltitude()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/evernote/edam/type/ResourceAttributes;->ALTITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->altitude:D

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeDouble(D)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraMake:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetCameraMake()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/evernote/edam/type/ResourceAttributes;->CAMERA_MAKE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraMake:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraModel:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetCameraModel()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/evernote/edam/type/ResourceAttributes;->CAMERA_MODEL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->cameraModel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetClientWillIndex()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/evernote/edam/type/ResourceAttributes;->CLIENT_WILL_INDEX_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->clientWillIndex:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_7
    iget-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->recoType:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetRecoType()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/evernote/edam/type/ResourceAttributes;->RECO_TYPE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->recoType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_8
    iget-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetFileName()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/evernote/edam/type/ResourceAttributes;->FILE_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetAttachment()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/evernote/edam/type/ResourceAttributes;->ATTACHMENT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->attachment:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_a
    iget-object v0, p0, Lcom/evernote/edam/type/ResourceAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/evernote/edam/type/ResourceAttributes;->isSetApplicationData()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/evernote/edam/type/ResourceAttributes;->APPLICATION_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object p0, p0, Lcom/evernote/edam/type/ResourceAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/LazyMap;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_b
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
