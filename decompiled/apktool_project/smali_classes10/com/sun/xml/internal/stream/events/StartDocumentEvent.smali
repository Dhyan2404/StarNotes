.class public Lcom/sun/xml/internal/stream/events/StartDocumentEvent;
.super Lcom/sun/xml/internal/stream/events/DummyEvent;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/events/StartDocument;


# instance fields
.field protected fEncodingScheam:Ljava/lang/String;

.field private fEncodingSchemeSet:Z

.field protected fStandalone:Z

.field private fStandaloneSet:Z

.field protected fSystemId:Ljava/lang/String;

.field protected fVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "UTF-8"

    const-string v3, "1.0"

    .line 1
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "1.0"

    .line 2
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->init()V

    .line 7
    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fEncodingScheam:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fVersion:Ljava/lang/String;

    .line 9
    iput-boolean p3, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fStandalone:Z

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 11
    iput-boolean p1, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 12
    iput-object p4, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fLocation:Ljavax/xml/stream/Location;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fEncodingScheam:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fStandalone:Z

    const-string v0, "1.0"

    iput-object v0, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fVersion:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    return-void
.end method

.method public encodingSet()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    return p0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fEncodingScheam:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fLocation:Ljavax/xml/stream/Location;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fVersion:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setEventType(I)V

    return-void
.end method

.method public isStandalone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fStandalone:Z

    return p0
.end method

.method public isStartDocument()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setDeclaredEncoding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fEncodingScheam:Ljava/lang/String;

    return-void
.end method

.method public setStandalone(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    if-nez p1, :cond_0

    .line 4
    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fStandalone:Z

    return-void

    :cond_0
    const-string v1, "yes"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fStandalone:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fStandalone:Z

    :goto_0
    return-void
.end method

.method public setStandalone(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 2
    iput-boolean p1, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fStandalone:Z

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fVersion:Ljava/lang/String;

    return-void
.end method

.method public standaloneSet()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " encoding=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fEncodingScheam:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->fStandalone:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " standalone=\'yes\'?>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " standalone=\'no\'?>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
