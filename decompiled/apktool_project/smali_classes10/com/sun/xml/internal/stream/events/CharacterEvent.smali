.class public Lcom/sun/xml/internal/stream/events/CharacterEvent;
.super Lcom/sun/xml/internal/stream/events/DummyEvent;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/events/Characters;


# instance fields
.field private fCheckIfSpaceNeeded:Z

.field private fData:Ljava/lang/String;

.field private fIsCData:Z

.field private fIsIgnorableWhitespace:Z

.field private fIsSpace:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fIsSpace:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    .line 4
    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fIsCData:Z

    .line 5
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/CharacterEvent;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fIsSpace:Z

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    .line 9
    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fIsCData:Z

    .line 10
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/CharacterEvent;->init()V

    .line 11
    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fIsSpace:Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    .line 15
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/CharacterEvent;->init()V

    .line 16
    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    .line 17
    iput-boolean p2, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fIsCData:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fIsSpace:Z

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    .line 21
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/CharacterEvent;->init()V

    .line 22
    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    .line 23
    iput-boolean p2, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fIsCData:Z

    .line 24
    iput-boolean p3, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fIsIgnorableWhitespace:Z

    return-void
.end method

.method private checkWhiteSpace()V
    .locals 3

    iget-object v0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fIsSpace:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSpace(I)Z

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fIsSpace:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setEventType(I)V

    return-void
.end method

.method public isCData()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fIsCData:Z

    return p0
.end method

.method public isIgnorableWhiteSpace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fIsIgnorableWhitespace:Z

    return p0
.end method

.method public isWhiteSpace()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/xml/internal/stream/events/CharacterEvent;->checkWhiteSpace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    :cond_0
    iget-boolean p0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fIsSpace:Z

    return p0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fIsCData:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/CharacterEvent;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]]>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    return-object p0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    return-void
.end method
