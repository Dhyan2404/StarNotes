.class public Lnet/sf/saxon/s9api/SchemaValidator$a;
.super Lnet/sf/saxon/event/EventSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/s9api/SchemaValidator;->asSource(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Ljavax/xml/transform/Source;

.field public final synthetic g:Lnet/sf/saxon/s9api/SchemaValidator;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/SchemaValidator;Ljavax/xml/transform/Source;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/SchemaValidator$a;->g:Lnet/sf/saxon/s9api/SchemaValidator;

    iput-object p2, p0, Lnet/sf/saxon/s9api/SchemaValidator$a;->f:Ljavax/xml/transform/Source;

    invoke-direct {p0}, Lnet/sf/saxon/event/EventSource;-><init>()V

    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/EventSource;->setSystemId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/s9api/SchemaValidator$a;->g:Lnet/sf/saxon/s9api/SchemaValidator;

    new-instance v0, Lnet/sf/saxon/jaxp/ReceivingDestination;

    invoke-direct {v0, p1}, Lnet/sf/saxon/jaxp/ReceivingDestination;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {p2, v0}, Lnet/sf/saxon/s9api/SchemaValidator;->setDestination(Lnet/sf/saxon/s9api/Destination;)V

    :try_start_0
    iget-object p1, p0, Lnet/sf/saxon/s9api/SchemaValidator$a;->g:Lnet/sf/saxon/s9api/SchemaValidator;

    iget-object p0, p0, Lnet/sf/saxon/s9api/SchemaValidator$a;->f:Ljavax/xml/transform/Source;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/s9api/SchemaValidator;->validate(Ljavax/xml/transform/Source;)V
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method
