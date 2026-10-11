.class public Lorg/apache/poi/sl/MetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private application:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private company:Ljava/lang/String;

.field private created:J

.field private description:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private keywords:Ljava/lang/String;

.field private modified:J

.field private subject:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplication()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/MetaData;->application:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/MetaData;->author:Ljava/lang/String;

    return-object p0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/MetaData;->category:Ljava/lang/String;

    return-object p0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/MetaData;->company:Ljava/lang/String;

    return-object p0
.end method

.method public getCreated()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/MetaData;->created:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/MetaData;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/MetaData;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/MetaData;->keywords:Ljava/lang/String;

    return-object p0
.end method

.method public getModified()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/MetaData;->modified:J

    return-wide v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/MetaData;->subject:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/MetaData;->title:Ljava/lang/String;

    return-object p0
.end method

.method public readProperties(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/apache/poi/POIDocument;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/apache/poi/POIDocument;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/MetaData;->readProperties(Lorg/apache/poi/POIDocument;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ooxml/POIXMLDocument;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lorg/apache/poi/ooxml/POIXMLDocument;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/MetaData;->readProperties(Lorg/apache/poi/ooxml/POIXMLDocument;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public readProperties(Lorg/apache/poi/POIDocument;)V
    .locals 3

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/sl/MetaData;->application:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getAuthor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/sl/MetaData;->author:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/sl/MetaData;->title:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getSubject()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/sl/MetaData;->subject:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getKeywords()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/sl/MetaData;->keywords:Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/sl/MetaData;->application:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getCreateDateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/poi/sl/MetaData;->created:J

    .line 14
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getEditTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/sl/MetaData;->modified:J

    .line 15
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/POIDocument;->getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/MetaData;->category:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getCompany()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/MetaData;->company:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public readProperties(Lorg/apache/poi/ooxml/POIXMLDocument;)V
    .locals 3

    .line 18
    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocument;->getProperties()Lorg/apache/poi/ooxml/POIXMLProperties;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLProperties;->getCoreProperties()Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->getCreator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/sl/MetaData;->author:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/sl/MetaData;->title:Ljava/lang/String;

    .line 22
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->getSubject()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/sl/MetaData;->subject:Ljava/lang/String;

    .line 23
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->getCategory()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/sl/MetaData;->category:Ljava/lang/String;

    .line 24
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->getKeywords()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/sl/MetaData;->keywords:Ljava/lang/String;

    .line 25
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/sl/MetaData;->description:Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/sl/MetaData;->identifier:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->getCreated()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/poi/sl/MetaData;->created:J

    .line 29
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->getModified()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/sl/MetaData;->modified:J

    .line 31
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLProperties;->getExtendedProperties()Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 32
    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;->getApplication()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/MetaData;->application:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;->getCompany()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/MetaData;->company:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setApplication(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/MetaData;->application:Ljava/lang/String;

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/MetaData;->author:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/MetaData;->category:Ljava/lang/String;

    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/MetaData;->company:Ljava/lang/String;

    return-void
.end method

.method public setCreated(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/MetaData;->created:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/MetaData;->description:Ljava/lang/String;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/MetaData;->identifier:Ljava/lang/String;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/MetaData;->keywords:Ljava/lang/String;

    return-void
.end method

.method public setModified(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/MetaData;->modified:J

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/MetaData;->subject:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/MetaData;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PPTMetaData{application=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/sl/MetaData;->application:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", author=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/sl/MetaData;->author:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/sl/MetaData;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subject=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/sl/MetaData;->subject:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", category=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/sl/MetaData;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", company=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/sl/MetaData;->company:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", keywords=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/sl/MetaData;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/sl/MetaData;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", identifier=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/sl/MetaData;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/sl/MetaData;->created:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", modified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/sl/MetaData;->modified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
