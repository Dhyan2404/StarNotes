.class public Lnet/sf/saxon/resource/AbstractResourceCollection$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ErrorReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/resource/AbstractResourceCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/lib/ErrorReporter;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$b;->e:Lnet/sf/saxon/lib/ErrorReporter;

    return-void
.end method


# virtual methods
.method public report(Lnet/sf/saxon/s9api/XmlProcessingError;)V
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->isWarning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$b;->e:Lnet/sf/saxon/lib/ErrorReporter;

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$b;->e:Lnet/sf/saxon/lib/ErrorReporter;

    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->asWarning()Lnet/sf/saxon/s9api/XmlProcessingError;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    const-string v1, "The document will be excluded from the collection"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XmlProcessingIncident;->asWarning()Lnet/sf/saxon/trans/XmlProcessingIncident;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingIncident;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    iget-object p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$b;->e:Lnet/sf/saxon/lib/ErrorReporter;

    invoke-interface {p0, v0}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    :goto_0
    return-void
.end method
