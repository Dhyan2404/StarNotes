.class public Lnet/sf/saxon/event/CheckSumFilter;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# static fields
.field public static final SIGMA:Ljava/lang/String; = "\u03a3"

.field public static final j:Z


# instance fields
.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    iput p1, p0, Lnet/sf/saxon/event/CheckSumFilter;->f:I

    iput-boolean p1, p0, Lnet/sf/saxon/event/CheckSumFilter;->g:Z

    iput-boolean p1, p0, Lnet/sf/saxon/event/CheckSumFilter;->h:Z

    iput-boolean p1, p0, Lnet/sf/saxon/event/CheckSumFilter;->i:Z

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/event/CheckSumFilter;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/sf/saxon/event/CheckSumFilter;->f:I

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/event/CheckSumFilter;->c(Ljava/lang/String;I)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After append: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/event/CheckSumFilter;->e(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/ProxyReceiver;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public final c(Ljava/lang/String;I)I
    .locals 1

    shl-int/lit8 p0, p2, 0x8

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    shl-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/2addr p0, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/event/CheckSumFilter;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/sf/saxon/event/CheckSumFilter;->f:I

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/event/CheckSumFilter;->c(Ljava/lang/String;I)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After characters "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/event/CheckSumFilter;->e(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/ProxyReceiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public final d(Lnet/sf/saxon/om/NodeName;I)I
    .locals 1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/event/CheckSumFilter;->c(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/event/CheckSumFilter;->c(Ljava/lang/String;I)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public endElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After endElement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/event/CheckSumFilter;->e(Ljava/lang/String;)V

    invoke-super {p0}, Lnet/sf/saxon/event/ProxyReceiver;->endElement()V

    return-void
.end method

.method public getChecksum()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    return p0
.end method

.method public isChecksumCorrect()Z
    .locals 1

    iget-boolean p0, p0, Lnet/sf/saxon/event/CheckSumFilter;->h:Z

    if-nez p0, :cond_1

    const-string p0, "saxon-checksum"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "skip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isChecksumFound()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/event/CheckSumFilter;->i:Z

    return p0
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "\u03a3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/CheckSumFilter;->i:Z

    iget-boolean v1, p0, Lnet/sf/saxon/event/CheckSumFilter;->g:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lnet/sf/saxon/event/CheckSumFilter;->h:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iput-boolean v1, p0, Lnet/sf/saxon/event/CheckSumFilter;->h:Z

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/ProxyReceiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public setCheckExistingChecksum(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/event/CheckSumFilter;->g:Z

    return-void
.end method

.method public startDocument(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "CHECKSUM - START DOC"

    invoke-static {v0}, Lnet/sf/saxon/event/CheckSumFilter;->e(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;->startDocument(I)V

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    iget v1, p0, Lnet/sf/saxon/event/CheckSumFilter;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/event/CheckSumFilter;->f:I

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/event/CheckSumFilter;->d(Lnet/sf/saxon/om/NodeName;I)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After startElement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/event/CheckSumFilter;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/CheckSumFilter;->h:Z

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    iget v2, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    iget v4, p0, Lnet/sf/saxon/event/CheckSumFilter;->f:I

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/event/CheckSumFilter;->d(Lnet/sf/saxon/om/NodeName;I)I

    move-result v3

    xor-int/2addr v2, v3

    iput v2, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lnet/sf/saxon/event/CheckSumFilter;->f:I

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/event/CheckSumFilter;->c(Ljava/lang/String;I)I

    move-result v1

    xor-int/2addr v1, v2

    iput v1, p0, Lnet/sf/saxon/event/CheckSumFilter;->e:I

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p6}, Lnet/sf/saxon/event/ProxyReceiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
