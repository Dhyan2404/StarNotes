.class public Lcom/evernote/edam/type/NoteAttributes;
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
        "Lcom/evernote/edam/type/NoteAttributes;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final ALTITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final APPLICATION_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final AUTHOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CLASSIFICATIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CONTENT_CLASS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CREATOR_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LAST_EDITED_BY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LAST_EDITOR_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LATITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LONGITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PLACE_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REMINDER_DONE_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REMINDER_ORDER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REMINDER_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SHARE_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SOURCE_APPLICATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SOURCE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SOURCE_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final SUBJECT_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __ALTITUDE_ISSET_ID:I = 0x3

.field private static final __CREATORID_ISSET_ID:I = 0x8

.field private static final __LASTEDITORID_ISSET_ID:I = 0x9

.field private static final __LATITUDE_ISSET_ID:I = 0x1

.field private static final __LONGITUDE_ISSET_ID:I = 0x2

.field private static final __REMINDERDONETIME_ISSET_ID:I = 0x6

.field private static final __REMINDERORDER_ISSET_ID:I = 0x5

.field private static final __REMINDERTIME_ISSET_ID:I = 0x7

.field private static final __SHAREDATE_ISSET_ID:I = 0x4

.field private static final __SUBJECTDATE_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private altitude:D

.field private applicationData:Lcom/evernote/edam/type/LazyMap;

.field private author:Ljava/lang/String;

.field private classifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentClass:Ljava/lang/String;

.field private creatorId:I

.field private lastEditedBy:Ljava/lang/String;

.field private lastEditorId:I

.field private latitude:D

.field private longitude:D

.field private placeName:Ljava/lang/String;

.field private reminderDoneTime:J

.field private reminderOrder:J

.field private reminderTime:J

.field private shareDate:J

.field private source:Ljava/lang/String;

.field private sourceApplication:Ljava/lang/String;

.field private sourceURL:Ljava/lang/String;

.field private subjectDate:J


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "NoteAttributes"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "subjectDate"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->SUBJECT_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "latitude"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->LATITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "longitude"

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->LONGITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "altitude"

    const/16 v5, 0xc

    invoke-direct {v0, v1, v2, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->ALTITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "author"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->AUTHOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "source"

    const/16 v6, 0xe

    invoke-direct {v0, v1, v4, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->SOURCE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "sourceURL"

    const/16 v6, 0xf

    invoke-direct {v0, v1, v4, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->SOURCE_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "sourceApplication"

    const/16 v6, 0x10

    invoke-direct {v0, v1, v4, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->SOURCE_APPLICATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "shareDate"

    const/16 v6, 0x11

    invoke-direct {v0, v1, v3, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->SHARE_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "reminderOrder"

    const/16 v6, 0x12

    invoke-direct {v0, v1, v3, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->REMINDER_ORDER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "reminderDoneTime"

    const/16 v6, 0x13

    invoke-direct {v0, v1, v3, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->REMINDER_DONE_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "reminderTime"

    const/16 v6, 0x14

    invoke-direct {v0, v1, v3, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->REMINDER_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "placeName"

    const/16 v3, 0x15

    invoke-direct {v0, v1, v4, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->PLACE_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "contentClass"

    const/16 v3, 0x16

    invoke-direct {v0, v1, v4, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->CONTENT_CLASS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "applicationData"

    const/16 v3, 0x17

    invoke-direct {v0, v1, v5, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->APPLICATION_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "lastEditedBy"

    const/16 v3, 0x18

    invoke-direct {v0, v1, v4, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->LAST_EDITED_BY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "classifications"

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->CLASSIFICATIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/16 v1, 0x1b

    const-string v2, "creatorId"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->CREATOR_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "lastEditorId"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->LAST_EDITOR_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/NoteAttributes;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Z

    .line 4
    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    .line 5
    iget-object v1, p1, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-wide v0, p1, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    iput-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    .line 7
    iget-wide v0, p1, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    iput-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    .line 8
    iget-wide v0, p1, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    iput-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    .line 9
    iget-wide v0, p1, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    iput-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetAuthor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p1, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p1, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceURL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p1, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceApplication()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p1, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    .line 18
    :cond_3
    iget-wide v0, p1, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    iput-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    .line 19
    iget-wide v0, p1, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    iput-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    .line 20
    iget-wide v0, p1, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    iput-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    .line 21
    iget-wide v0, p1, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    iput-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    .line 22
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetPlaceName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    iget-object v0, p1, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    .line 24
    :cond_4
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetContentClass()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    iget-object v0, p1, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    .line 26
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetApplicationData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    new-instance v0, Lcom/evernote/edam/type/LazyMap;

    iget-object v1, p1, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/LazyMap;-><init>(Lcom/evernote/edam/type/LazyMap;)V

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    .line 28
    :cond_6
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditedBy()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    iget-object v0, p1, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    .line 30
    :cond_7
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetClassifications()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    iget-object v1, p1, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 35
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 36
    :cond_8
    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    .line 37
    :cond_9
    iget v0, p1, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    iput v0, p0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    .line 38
    iget p1, p1, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    iput p1, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setSubjectDateIsSet(Z)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setLatitudeIsSet(Z)V

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setLongitudeIsSet(Z)V

    iput-wide v3, p0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setAltitudeIsSet(Z)V

    iput-wide v3, p0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setShareDateIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setReminderOrderIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setReminderDoneTimeIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setReminderTimeIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    iput-object v3, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    iput-object v3, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setCreatorIdIsSet(Z)V

    iput v0, p0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setLastEditorIdIsSet(Z)V

    iput v0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/NoteAttributes;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSubjectDate()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSubjectDate()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSubjectDate()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    iget-wide v2, p1, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLatitude()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLatitude()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLatitude()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    iget-wide v2, p1, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(DD)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLongitude()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLongitude()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLongitude()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    iget-wide v2, p1, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(DD)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAltitude()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetAltitude()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAltitude()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    iget-wide v2, p1, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(DD)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAuthor()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetAuthor()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAuthor()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSource()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSource()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSource()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceURL()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceURL()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceURL()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceApplication()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceApplication()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 19
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceApplication()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    .line 20
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetShareDate()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetShareDate()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 21
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetShareDate()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    iget-wide v2, p1, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    .line 22
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderOrder()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderOrder()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    .line 23
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderOrder()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    iget-wide v2, p1, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    .line 24
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderDoneTime()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderDoneTime()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    .line 25
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderDoneTime()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    iget-wide v2, p1, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 26
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderTime()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderTime()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    .line 27
    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderTime()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    iget-wide v2, p1, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_18

    return v0

    .line 28
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetPlaceName()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetPlaceName()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_19

    return v0

    .line 29
    :cond_19
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetPlaceName()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    return v0

    .line 30
    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetContentClass()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetContentClass()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1b

    return v0

    .line 31
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetContentClass()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    return v0

    .line 32
    :cond_1c
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetApplicationData()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetApplicationData()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1d

    return v0

    .line 33
    :cond_1d
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetApplicationData()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    iget-object v1, p1, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_1e

    return v0

    .line 34
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditedBy()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditedBy()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1f

    return v0

    .line 35
    :cond_1f
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditedBy()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_20

    return v0

    .line 36
    :cond_20
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetClassifications()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetClassifications()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_21

    return v0

    .line 37
    :cond_21
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetClassifications()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    iget-object v1, p1, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_22

    return v0

    .line 38
    :cond_22
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetCreatorId()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetCreatorId()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_23

    return v0

    .line 39
    :cond_23
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetCreatorId()Z

    move-result v0

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    iget v1, p1, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_24

    return v0

    .line 40
    :cond_24
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditorId()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditorId()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_25

    return v0

    .line 41
    :cond_25
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditorId()Z

    move-result v0

    if-eqz v0, :cond_26

    iget p0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    iget p1, p1, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result p0

    if-eqz p0, :cond_26

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/type/NoteAttributes;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NoteAttributes;->compareTo(Lcom/evernote/edam/type/NoteAttributes;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/type/NoteAttributes;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/type/NoteAttributes;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/NoteAttributes;-><init>(Lcom/evernote/edam/type/NoteAttributes;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->deepCopy()Lcom/evernote/edam/type/NoteAttributes;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/type/NoteAttributes;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSubjectDate()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSubjectDate()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_3a

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-wide v1, p0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    iget-wide v3, p1, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLatitude()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLatitude()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_3a

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 8
    :cond_5
    iget-wide v1, p0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    iget-wide v3, p1, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLongitude()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLongitude()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_3a

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 11
    :cond_8
    iget-wide v1, p0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    iget-wide v3, p1, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_9

    return v0

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAltitude()Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetAltitude()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_3a

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 14
    :cond_b
    iget-wide v1, p0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    iget-wide v3, p1, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_c

    return v0

    .line 15
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAuthor()Z

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetAuthor()Z

    move-result v2

    if-nez v1, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-eqz v1, :cond_3a

    if-nez v2, :cond_e

    goto/16 :goto_0

    .line 17
    :cond_e
    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    .line 18
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSource()Z

    move-result v1

    .line 19
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSource()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_12

    :cond_10
    if-eqz v1, :cond_3a

    if-nez v2, :cond_11

    goto/16 :goto_0

    .line 20
    :cond_11
    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v0

    .line 21
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceURL()Z

    move-result v1

    .line 22
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceURL()Z

    move-result v2

    if-nez v1, :cond_13

    if-eqz v2, :cond_15

    :cond_13
    if-eqz v1, :cond_3a

    if-nez v2, :cond_14

    goto/16 :goto_0

    .line 23
    :cond_14
    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v0

    .line 24
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceApplication()Z

    move-result v1

    .line 25
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceApplication()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_18

    :cond_16
    if-eqz v1, :cond_3a

    if-nez v2, :cond_17

    goto/16 :goto_0

    .line 26
    :cond_17
    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v0

    .line 27
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetShareDate()Z

    move-result v1

    .line 28
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetShareDate()Z

    move-result v2

    if-nez v1, :cond_19

    if-eqz v2, :cond_1b

    :cond_19
    if-eqz v1, :cond_3a

    if-nez v2, :cond_1a

    goto/16 :goto_0

    .line 29
    :cond_1a
    iget-wide v1, p0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    iget-wide v3, p1, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1b

    return v0

    .line 30
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderOrder()Z

    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderOrder()Z

    move-result v2

    if-nez v1, :cond_1c

    if-eqz v2, :cond_1e

    :cond_1c
    if-eqz v1, :cond_3a

    if-nez v2, :cond_1d

    goto/16 :goto_0

    .line 32
    :cond_1d
    iget-wide v1, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    iget-wide v3, p1, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1e

    return v0

    .line 33
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderDoneTime()Z

    move-result v1

    .line 34
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderDoneTime()Z

    move-result v2

    if-nez v1, :cond_1f

    if-eqz v2, :cond_21

    :cond_1f
    if-eqz v1, :cond_3a

    if-nez v2, :cond_20

    goto/16 :goto_0

    .line 35
    :cond_20
    iget-wide v1, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    iget-wide v3, p1, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_21

    return v0

    .line 36
    :cond_21
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderTime()Z

    move-result v1

    .line 37
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderTime()Z

    move-result v2

    if-nez v1, :cond_22

    if-eqz v2, :cond_24

    :cond_22
    if-eqz v1, :cond_3a

    if-nez v2, :cond_23

    goto/16 :goto_0

    .line 38
    :cond_23
    iget-wide v1, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    iget-wide v3, p1, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_24

    return v0

    .line 39
    :cond_24
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetPlaceName()Z

    move-result v1

    .line 40
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetPlaceName()Z

    move-result v2

    if-nez v1, :cond_25

    if-eqz v2, :cond_27

    :cond_25
    if-eqz v1, :cond_3a

    if-nez v2, :cond_26

    goto/16 :goto_0

    .line 41
    :cond_26
    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v0

    .line 42
    :cond_27
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetContentClass()Z

    move-result v1

    .line 43
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetContentClass()Z

    move-result v2

    if-nez v1, :cond_28

    if-eqz v2, :cond_2a

    :cond_28
    if-eqz v1, :cond_3a

    if-nez v2, :cond_29

    goto/16 :goto_0

    .line 44
    :cond_29
    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v0

    .line 45
    :cond_2a
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetApplicationData()Z

    move-result v1

    .line 46
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetApplicationData()Z

    move-result v2

    if-nez v1, :cond_2b

    if-eqz v2, :cond_2d

    :cond_2b
    if-eqz v1, :cond_3a

    if-nez v2, :cond_2c

    goto/16 :goto_0

    .line 47
    :cond_2c
    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    iget-object v2, p1, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    invoke-virtual {v1, v2}, Lcom/evernote/edam/type/LazyMap;->equals(Lcom/evernote/edam/type/LazyMap;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v0

    .line 48
    :cond_2d
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditedBy()Z

    move-result v1

    .line 49
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditedBy()Z

    move-result v2

    if-nez v1, :cond_2e

    if-eqz v2, :cond_30

    :cond_2e
    if-eqz v1, :cond_3a

    if-nez v2, :cond_2f

    goto :goto_0

    .line 50
    :cond_2f
    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v0

    .line 51
    :cond_30
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetClassifications()Z

    move-result v1

    .line 52
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetClassifications()Z

    move-result v2

    if-nez v1, :cond_31

    if-eqz v2, :cond_33

    :cond_31
    if-eqz v1, :cond_3a

    if-nez v2, :cond_32

    goto :goto_0

    .line 53
    :cond_32
    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    iget-object v2, p1, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    return v0

    .line 54
    :cond_33
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetCreatorId()Z

    move-result v1

    .line 55
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetCreatorId()Z

    move-result v2

    if-nez v1, :cond_34

    if-eqz v2, :cond_36

    :cond_34
    if-eqz v1, :cond_3a

    if-nez v2, :cond_35

    goto :goto_0

    .line 56
    :cond_35
    iget v1, p0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    iget v2, p1, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    if-eq v1, v2, :cond_36

    return v0

    .line 57
    :cond_36
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditorId()Z

    move-result v1

    .line 58
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditorId()Z

    move-result v2

    if-nez v1, :cond_37

    if-eqz v2, :cond_39

    :cond_37
    if-eqz v1, :cond_3a

    if-nez v2, :cond_38

    goto :goto_0

    .line 59
    :cond_38
    iget p0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    iget p1, p1, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    if-eq p0, p1, :cond_39

    return v0

    :cond_39
    const/4 p0, 0x1

    return p0

    :cond_3a
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
    instance-of v1, p1, Lcom/evernote/edam/type/NoteAttributes;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/type/NoteAttributes;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NoteAttributes;->equals(Lcom/evernote/edam/type/NoteAttributes;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getAltitude()D
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    return-wide v0
.end method

.method public getApplicationData()Lcom/evernote/edam/type/LazyMap;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    return-object p0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    return-object p0
.end method

.method public getClassifications()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    return-object p0
.end method

.method public getClassificationsSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getContentClass()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    return-object p0
.end method

.method public getCreatorId()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    return p0
.end method

.method public getLastEditedBy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    return-object p0
.end method

.method public getLastEditorId()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    return p0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    return-wide v0
.end method

.method public getPlaceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    return-object p0
.end method

.method public getReminderDoneTime()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    return-wide v0
.end method

.method public getReminderOrder()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    return-wide v0
.end method

.method public getReminderTime()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    return-wide v0
.end method

.method public getShareDate()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    return-wide v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceApplication()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    return-object p0
.end method

.method public getSubjectDate()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSetAltitude()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetApplicationData()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetAuthor()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetClassifications()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetContentClass()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetCreatorId()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/16 v0, 0x8

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetLastEditedBy()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetLastEditorId()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/16 v0, 0x9

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetLatitude()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetLongitude()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetPlaceName()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetReminderDoneTime()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x6

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetReminderOrder()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x5

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetReminderTime()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x7

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetShareDate()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetSource()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetSourceApplication()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetSubjectDate()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public putToClassifications(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
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

    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-eq v0, v3, :cond_14

    const/4 v4, 0x4

    const/16 v5, 0xb

    packed-switch v0, :pswitch_data_0

    const/16 v2, 0x8

    packed-switch v0, :pswitch_data_1

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :pswitch_0
    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NoteAttributes;->setLastEditorIdIsSet(Z)V

    goto/16 :goto_2

    :cond_1
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :pswitch_1
    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NoteAttributes;->setCreatorIdIsSet(Z)V

    goto/16 :goto_2

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :pswitch_2
    const/16 v0, 0xd

    if-ne v1, v0, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readMapBegin()Lcom/evernote/thrift/protocol/TMap;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    iget v2, v0, Lcom/evernote/thrift/protocol/TMap;->size:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_1
    iget v2, v0, Lcom/evernote/thrift/protocol/TMap;->size:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readMapEnd()V

    goto/16 :goto_2

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :pswitch_3
    if-ne v1, v5, :cond_5

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :pswitch_4
    const/16 v0, 0xc

    if-ne v1, v0, :cond_6

    new-instance v0, Lcom/evernote/edam/type/LazyMap;

    invoke-direct {v0}, Lcom/evernote/edam/type/LazyMap;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/LazyMap;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_2

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :pswitch_5
    if-ne v1, v5, :cond_7

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :pswitch_6
    if-ne v1, v5, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :pswitch_7
    if-ne v1, v2, :cond_9

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NoteAttributes;->setReminderTimeIsSet(Z)V

    goto/16 :goto_2

    :cond_9
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :pswitch_8
    if-ne v1, v2, :cond_a

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NoteAttributes;->setReminderDoneTimeIsSet(Z)V

    goto/16 :goto_2

    :cond_a
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :pswitch_9
    if-ne v1, v2, :cond_b

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NoteAttributes;->setReminderOrderIsSet(Z)V

    goto/16 :goto_2

    :cond_b
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :pswitch_a
    if-ne v1, v2, :cond_c

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NoteAttributes;->setShareDateIsSet(Z)V

    goto/16 :goto_2

    :cond_c
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :pswitch_b
    if-ne v1, v5, :cond_d

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    goto/16 :goto_2

    :cond_d
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_2

    :pswitch_c
    if-ne v1, v5, :cond_e

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    goto :goto_2

    :cond_e
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_2

    :pswitch_d
    if-ne v1, v5, :cond_f

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    goto :goto_2

    :cond_f
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_2

    :pswitch_e
    if-ne v1, v5, :cond_10

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    goto :goto_2

    :cond_10
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_2

    :pswitch_f
    if-ne v1, v4, :cond_11

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NoteAttributes;->setAltitudeIsSet(Z)V

    goto :goto_2

    :cond_11
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_2

    :pswitch_10
    if-ne v1, v4, :cond_12

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NoteAttributes;->setLongitudeIsSet(Z)V

    goto :goto_2

    :cond_12
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_2

    :pswitch_11
    if-ne v1, v4, :cond_13

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NoteAttributes;->setLatitudeIsSet(Z)V

    goto :goto_2

    :cond_13
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_2

    :cond_14
    if-ne v1, v2, :cond_15

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/NoteAttributes;->setSubjectDateIsSet(Z)V

    goto :goto_2

    :cond_15
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAltitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NoteAttributes;->setAltitudeIsSet(Z)V

    return-void
.end method

.method public setAltitudeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x3

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setApplicationData(Lcom/evernote/edam/type/LazyMap;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    return-void
.end method

.method public setApplicationDataIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    :cond_0
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    return-void
.end method

.method public setAuthorIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setClassifications(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    return-void
.end method

.method public setClassificationsIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public setContentClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    return-void
.end method

.method public setContentClassIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setCreatorId(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NoteAttributes;->setCreatorIdIsSet(Z)V

    return-void
.end method

.method public setCreatorIdIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/16 v0, 0x8

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setLastEditedBy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    return-void
.end method

.method public setLastEditedByIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLastEditorId(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NoteAttributes;->setLastEditorIdIsSet(Z)V

    return-void
.end method

.method public setLastEditorIdIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/16 v0, 0x9

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NoteAttributes;->setLatitudeIsSet(Z)V

    return-void
.end method

.method public setLatitudeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NoteAttributes;->setLongitudeIsSet(Z)V

    return-void
.end method

.method public setLongitudeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setPlaceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    return-void
.end method

.method public setPlaceNameIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setReminderDoneTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NoteAttributes;->setReminderDoneTimeIsSet(Z)V

    return-void
.end method

.method public setReminderDoneTimeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x6

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setReminderOrder(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NoteAttributes;->setReminderOrderIsSet(Z)V

    return-void
.end method

.method public setReminderOrderIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x5

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setReminderTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NoteAttributes;->setReminderTimeIsSet(Z)V

    return-void
.end method

.method public setReminderTimeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x7

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setShareDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NoteAttributes;->setShareDateIsSet(Z)V

    return-void
.end method

.method public setShareDateIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x4

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    return-void
.end method

.method public setSourceApplication(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    return-void
.end method

.method public setSourceApplicationIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSourceIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSourceURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    return-void
.end method

.method public setSourceURLIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSubjectDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NoteAttributes;->setSubjectDateIsSet(Z)V

    return-void
.end method

.method public setSubjectDateIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NoteAttributes("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSubjectDate()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "subjectDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLatitude()Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "latitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLongitude()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "longitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAltitude()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v1, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "altitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAuthor()Z

    move-result v3

    const-string v5, "null"

    if-eqz v3, :cond_9

    if-nez v1, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "author:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    if-nez v1, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v1, v2

    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSource()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v1, :cond_a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v1, "source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    if-nez v1, :cond_b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v1, v2

    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceURL()Z

    move-result v3

    if-eqz v3, :cond_f

    if-nez v1, :cond_d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, "sourceURL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    if-nez v1, :cond_e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v1, v2

    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceApplication()Z

    move-result v3

    if-eqz v3, :cond_12

    if-nez v1, :cond_10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v1, "sourceApplication:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    if-nez v1, :cond_11

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v1, v2

    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetShareDate()Z

    move-result v3

    if-eqz v3, :cond_14

    if-nez v1, :cond_13

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string v1, "shareDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderOrder()Z

    move-result v3

    if-eqz v3, :cond_16

    if-nez v1, :cond_15

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string v1, "reminderOrder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderDoneTime()Z

    move-result v3

    if-eqz v3, :cond_18

    if-nez v1, :cond_17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const-string v1, "reminderDoneTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderTime()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-nez v1, :cond_19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const-string v1, "reminderTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetPlaceName()Z

    move-result v3

    if-eqz v3, :cond_1d

    if-nez v1, :cond_1b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const-string v1, "placeName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    if-nez v1, :cond_1c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move v1, v2

    :cond_1d
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetContentClass()Z

    move-result v3

    if-eqz v3, :cond_20

    if-nez v1, :cond_1e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const-string v1, "contentClass:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    if-nez v1, :cond_1f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    move v1, v2

    :cond_20
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetApplicationData()Z

    move-result v3

    if-eqz v3, :cond_23

    if-nez v1, :cond_21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    const-string v1, "applicationData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    if-nez v1, :cond_22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_7
    move v1, v2

    :cond_23
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditedBy()Z

    move-result v3

    if-eqz v3, :cond_26

    if-nez v1, :cond_24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    const-string v1, "lastEditedBy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    if-nez v1, :cond_25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    move v1, v2

    :cond_26
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetClassifications()Z

    move-result v3

    if-eqz v3, :cond_29

    if-nez v1, :cond_27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    const-string v1, "classifications:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    if-nez v1, :cond_28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_9
    move v1, v2

    :cond_29
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetCreatorId()Z

    move-result v3

    if-eqz v3, :cond_2b

    if-nez v1, :cond_2a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    const-string v1, "creatorId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_2b
    move v2, v1

    :goto_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditorId()Z

    move-result v1

    if-eqz v1, :cond_2d

    if-nez v2, :cond_2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    const-string v1, "lastEditorId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2d
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetAltitude()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetApplicationData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    return-void
.end method

.method public unsetAuthor()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    return-void
.end method

.method public unsetClassifications()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    return-void
.end method

.method public unsetContentClass()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    return-void
.end method

.method public unsetCreatorId()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetLastEditedBy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    return-void
.end method

.method public unsetLastEditorId()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/16 v0, 0x9

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetLatitude()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetLongitude()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetPlaceName()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    return-void
.end method

.method public unsetReminderDoneTime()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetReminderOrder()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetReminderTime()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetShareDate()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetSource()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    return-void
.end method

.method public unsetSourceApplication()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    return-void
.end method

.method public unsetSourceURL()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    return-void
.end method

.method public unsetSubjectDate()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->validate()V

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSubjectDate()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->SUBJECT_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLatitude()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->LATITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeDouble(D)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLongitude()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->LONGITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeDouble(D)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAltitude()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->ALTITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeDouble(D)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAuthor()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->AUTHOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSource()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->SOURCE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceURL()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->SOURCE_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_6
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceApplication()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->SOURCE_APPLICATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetShareDate()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->SHARE_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderOrder()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->REMINDER_ORDER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderDoneTime()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->REMINDER_DONE_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderTime()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->REMINDER_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_b
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetPlaceName()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->PLACE_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_c
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetContentClass()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->CONTENT_CLASS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_d
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetApplicationData()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->APPLICATION_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/LazyMap;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_e
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditedBy()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->LAST_EDITED_BY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_f
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetClassifications()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->CLASSIFICATIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TMap;

    iget-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, v2, v1}, Lcom/evernote/thrift/protocol/TMap;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeMapBegin(Lcom/evernote/thrift/protocol/TMap;)V

    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_10
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMapEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetCreatorId()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->CREATOR_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditorId()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/evernote/edam/type/NoteAttributes;->LAST_EDITOR_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget p0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    invoke-virtual {p1, p0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_13
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
