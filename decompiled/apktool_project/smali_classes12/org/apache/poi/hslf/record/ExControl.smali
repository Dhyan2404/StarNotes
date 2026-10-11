.class public final Lorg/apache/poi/hslf/record/ExControl;
.super Lorg/apache/poi/hslf/record/ExEmbed;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/record/ExControlAtom;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/ExControlAtom;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/record/ExEmbed;-><init>(Lorg/apache/poi/hslf/record/RecordAtom;)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hslf/record/ExEmbed;-><init>([BII)V

    return-void
.end method


# virtual methods
.method public getExControlAtom()Lorg/apache/poi/hslf/record/ExControlAtom;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lorg/apache/poi/hslf/record/ExControlAtom;

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->ExControl:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method
