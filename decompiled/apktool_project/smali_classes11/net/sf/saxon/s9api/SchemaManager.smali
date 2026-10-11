.class public abstract Lnet/sf/saxon/s9api/SchemaManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract exportComponents(Lnet/sf/saxon/s9api/Destination;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public abstract getErrorListener()Ljavax/xml/transform/ErrorListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
.end method

.method public abstract getSchemaURIResolver()Lnet/sf/saxon/lib/SchemaURIResolver;
.end method

.method public abstract getXsdVersion()Ljava/lang/String;
.end method

.method public abstract importComponents(Ljavax/xml/transform/Source;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public abstract load(Ljavax/xml/transform/Source;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public abstract newSchemaValidator()Lnet/sf/saxon/s9api/SchemaValidator;
.end method

.method public abstract setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V
.end method

.method public abstract setSchemaURIResolver(Lnet/sf/saxon/lib/SchemaURIResolver;)V
.end method

.method public abstract setXsdVersion(Ljava/lang/String;)V
.end method
