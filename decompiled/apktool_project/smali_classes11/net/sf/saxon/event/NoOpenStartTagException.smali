.class public Lnet/sf/saxon/event/NoOpenStartTagException;
.super Lnet/sf/saxon/trans/XPathException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static makeNoOpenStartTagException(ILjava/lang/String;Lnet/sf/saxon/s9api/HostLanguage;ZLnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/event/NoOpenStartTagException;
    .locals 2

    const-string v0, " node ("

    const/4 v1, 0x2

    if-eqz p3, :cond_2

    if-ne p0, v1, :cond_0

    const-string p0, "an attribute"

    goto :goto_0

    :cond_0
    const-string p0, "a namespace"

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") whose parent is a document node"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne p2, p1, :cond_1

    const-string p1, "XTDE0420"

    goto :goto_2

    :cond_1
    const-string p1, "XPTY0004"

    goto :goto_2

    :cond_2
    if-ne p0, v1, :cond_3

    const-string p0, "An attribute"

    goto :goto_1

    :cond_3
    const-string p0, "A namespace"

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") cannot be created after a child of the containing element"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne p2, p1, :cond_4

    const-string p1, "XTDE0410"

    goto :goto_2

    :cond_4
    const-string p1, "XQTY0024"

    :goto_2
    if-eqz p4, :cond_5

    invoke-interface {p4}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Most recent element start tag was output at line "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of module "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lnet/sf/saxon/lib/StandardDiagnostics;

    invoke-direct {p0}, Lnet/sf/saxon/lib/StandardDiagnostics;-><init>()V

    invoke-interface {p4}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lnet/sf/saxon/lib/StandardDiagnostics;->abbreviateLocationURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    new-instance p2, Lnet/sf/saxon/event/NoOpenStartTagException;

    invoke-direct {p2, p0}, Lnet/sf/saxon/event/NoOpenStartTagException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    return-object p2
.end method
