.class public Lnet/sf/saxon/lib/ErrorReporterToListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ErrorReporter;


# instance fields
.field public final e:Ljavax/xml/transform/ErrorListener;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/ErrorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljavax/xml/transform/ErrorListener;

    iput-object p1, p0, Lnet/sf/saxon/lib/ErrorReporterToListener;->e:Ljavax/xml/transform/ErrorListener;

    return-void
.end method


# virtual methods
.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ErrorReporterToListener;->e:Ljavax/xml/transform/ErrorListener;

    return-object p0
.end method

.method public report(Lnet/sf/saxon/s9api/XmlProcessingError;)V
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->isAlreadyReported()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p1}, Lnet/sf/saxon/trans/XPathException;->fromXmlProcessingError(Lnet/sf/saxon/s9api/XmlProcessingError;)Lnet/sf/saxon/trans/XPathException;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->isWarning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/lib/ErrorReporterToListener;->e:Ljavax/xml/transform/ErrorListener;

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/lib/ErrorReporterToListener;->e:Ljavax/xml/transform/ErrorListener;

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :goto_0
    const/4 p0, 0x1

    invoke-interface {p1, p0}, Lnet/sf/saxon/s9api/XmlProcessingError;->setAlreadyReported(Z)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/sf/saxon/s9api/XmlProcessingError;->setTerminationMessage(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
