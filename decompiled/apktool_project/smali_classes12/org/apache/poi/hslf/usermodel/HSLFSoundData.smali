.class public final Lorg/apache/poi/hslf/usermodel/HSLFSoundData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _container:Lorg/apache/poi/hslf/record/Sound;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/record/Sound;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSoundData;->_container:Lorg/apache/poi/hslf/record/Sound;

    return-void
.end method

.method public static find(Lorg/apache/poi/hslf/record/Document;)[Lorg/apache/poi/hslf/usermodel/HSLFSoundData;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/RecordContainer;->getChildRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v5

    sget-object v7, Lorg/apache/poi/hslf/record/RecordTypes;->SoundCollection:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v7, v7, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    check-cast v4, Lorg/apache/poi/hslf/record/RecordContainer;

    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/RecordContainer;->getChildRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    instance-of v8, v7, Lorg/apache/poi/hslf/record/Sound;

    if-eqz v8, :cond_0

    new-instance v8, Lorg/apache/poi/hslf/usermodel/HSLFSoundData;

    check-cast v7, Lorg/apache/poi/hslf/record/Sound;

    invoke-direct {v8, v7}, Lorg/apache/poi/hslf/usermodel/HSLFSoundData;-><init>(Lorg/apache/poi/hslf/record/Sound;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v2, [Lorg/apache/poi/hslf/usermodel/HSLFSoundData;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hslf/usermodel/HSLFSoundData;

    return-object p0
.end method


# virtual methods
.method public getData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSoundData;->_container:Lorg/apache/poi/hslf/record/Sound;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Sound;->getSoundData()[B

    move-result-object p0

    return-object p0
.end method

.method public getSoundName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSoundData;->_container:Lorg/apache/poi/hslf/record/Sound;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Sound;->getSoundName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSoundType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSoundData;->_container:Lorg/apache/poi/hslf/record/Sound;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Sound;->getSoundType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
