.class public abstract Lnet/sf/saxon/s9api/SchemaValidator;
.super Lnet/sf/saxon/s9api/AbstractDestination;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/s9api/AbstractDestination;-><init>()V

    return-void
.end method


# virtual methods
.method public asSource(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/SchemaValidator$a;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/s9api/SchemaValidator$a;-><init>(Lnet/sf/saxon/s9api/SchemaValidator;Ljavax/xml/transform/Source;)V

    return-object v0
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public abstract getDestination()Lnet/sf/saxon/s9api/Destination;
.end method

.method public abstract getDocumentElementName()Lnet/sf/saxon/s9api/QName;
.end method

.method public abstract getDocumentElementType()Lnet/sf/saxon/type/SchemaType;
.end method

.method public abstract getDocumentElementTypeName()Lnet/sf/saxon/s9api/QName;
.end method

.method public abstract getErrorListener()Ljavax/xml/transform/ErrorListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getInvalidityHandler()Lnet/sf/saxon/lib/InvalidityHandler;
.end method

.method public abstract getParameter(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/XdmValue;
.end method

.method public abstract getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public abstract getValidationParameters()Lnet/sf/saxon/type/ValidationParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public abstract isCollectStatistics()Z
.end method

.method public abstract isExpandAttributeDefaults()Z
.end method

.method public abstract isLax()Z
.end method

.method public abstract isUseXsiSchemaLocation()Z
.end method

.method public abstract reportValidationStatistics(Lnet/sf/saxon/s9api/Destination;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public abstract setCollectStatistics(Z)V
.end method

.method public abstract setDestination(Lnet/sf/saxon/s9api/Destination;)V
.end method

.method public abstract setDocumentElementName(Lnet/sf/saxon/s9api/QName;)V
.end method

.method public abstract setDocumentElementTypeName(Lnet/sf/saxon/s9api/QName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public abstract setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setExpandAttributeDefaults(Z)V
.end method

.method public abstract setInvalidityHandler(Lnet/sf/saxon/lib/InvalidityHandler;)V
.end method

.method public abstract setLax(Z)V
.end method

.method public abstract setParameter(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V
.end method

.method public abstract setUseXsiSchemaLocation(Z)V
.end method

.method public abstract setValidityReporting(Lnet/sf/saxon/s9api/Destination;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public abstract validate(Ljavax/xml/transform/Source;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public abstract validateMultiple(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljavax/xml/transform/Source;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method
