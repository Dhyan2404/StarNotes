.class public Lnet/sf/saxon/trans/packages/PackageInspector;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# instance fields
.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 1

    new-instance v0, Lnet/sf/saxon/event/Sink;

    invoke-direct {v0, p1}, Lnet/sf/saxon/event/Sink;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-direct {p0, v0}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const-string p1, "1"

    iput-object p1, p0, Lnet/sf/saxon/trans/packages/PackageInspector;->g:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/trans/packages/PackageInspector;->h:I

    return-void
.end method


# virtual methods
.method public final c()Lnet/sf/saxon/trans/packages/VersionedPackageName;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/trans/packages/PackageInspector;->f:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Lnet/sf/saxon/trans/packages/VersionedPackageName;

    iget-object p0, p0, Lnet/sf/saxon/trans/packages/PackageInspector;->g:Ljava/lang/String;

    invoke-direct {v2, v0, p0}, Lnet/sf/saxon/trans/packages/VersionedPackageName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object v1
.end method

.method public getDiagnostics()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/packages/PackageInspector;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageDetails(Ljava/io/File;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/packages/PackageDetails;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    new-instance p2, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {p2}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    invoke-virtual {p2, v0}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    new-instance p2, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {p2, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    new-instance v0, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    invoke-static {p2, p0, v0}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#start#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/trans/packages/PackageInspector;->c()Lnet/sf/saxon/trans/packages/VersionedPackageName;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/packages/PackageDetails;

    invoke-direct {v0}, Lnet/sf/saxon/trans/packages/PackageDetails;-><init>()V

    iput-object p2, v0, Lnet/sf/saxon/trans/packages/PackageDetails;->nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    iget-boolean p0, p0, Lnet/sf/saxon/trans/packages/PackageInspector;->e:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {p0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    iput-object p0, v0, Lnet/sf/saxon/trans/packages/PackageDetails;->exportLocation:Ljavax/xml/transform/Source;

    goto :goto_1

    :cond_1
    new-instance p0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {p0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    iput-object p0, v0, Lnet/sf/saxon/trans/packages/PackageDetails;->sourceLocation:Ljavax/xml/transform/Source;

    :goto_1
    return-object v0

    :cond_2
    throw p2
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget p2, p0, Lnet/sf/saxon/trans/packages/PackageInspector;->h:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p0, Lnet/sf/saxon/trans/packages/PackageInspector;->h:I

    const/4 p4, 0x1

    if-ge p2, p4, :cond_5

    const-string p2, "http://ns.saxonica.com/xslt/export"

    invoke-interface {p1, p2}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lnet/sf/saxon/trans/packages/PackageInspector;->e:Z

    const-string p2, ""

    const-string p4, "name"

    invoke-interface {p3, p2, p4}, Lnet/sf/saxon/om/AttributeMap;->get(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p5

    if-nez p5, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Top level element "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has no @name attribute"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/packages/PackageInspector;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-interface {p3, p2, p4}, Lnet/sf/saxon/om/AttributeMap;->get(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/packages/PackageInspector;->f:Ljava/lang/String;

    :goto_0
    const-string p1, "package-version"

    invoke-interface {p3, p2, p1}, Lnet/sf/saxon/om/AttributeMap;->get(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-interface {p3, p2, p1}, Lnet/sf/saxon/om/AttributeMap;->get(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/packages/PackageInspector;->g:Ljava/lang/String;

    :cond_1
    const-string p1, "packageVersion"

    invoke-interface {p3, p2, p1}, Lnet/sf/saxon/om/AttributeMap;->get(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-interface {p3, p2, p1}, Lnet/sf/saxon/om/AttributeMap;->get(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/packages/PackageInspector;->g:Ljava/lang/String;

    :cond_2
    const-string p0, "saxonVersion"

    invoke-interface {p3, p2, p0}, Lnet/sf/saxon/om/AttributeMap;->get(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "9"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Saxon "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/sf/saxon/Version;->getProductVersion()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " cannot load a SEF file created using version "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "#start#"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
