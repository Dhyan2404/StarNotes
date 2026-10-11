.class public Lnet/sf/saxon/lib/InvalidityHandlerWrappingErrorReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/InvalidityHandler;


# instance fields
.field public final e:Lnet/sf/saxon/lib/ErrorReporter;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/lib/InvalidityHandlerWrappingErrorReporter;->e:Lnet/sf/saxon/lib/ErrorReporter;

    return-void
.end method


# virtual methods
.method public endReporting()Lnet/sf/saxon/om/Sequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/InvalidityHandlerWrappingErrorReporter;->e:Lnet/sf/saxon/lib/ErrorReporter;

    return-object p0
.end method

.method public reportInvalidity(Lnet/sf/saxon/lib/Invalidity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/lib/InvalidityHandlerWrappingErrorReporter;->e:Lnet/sf/saxon/lib/ErrorReporter;

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    check-cast p1, Lnet/sf/saxon/type/ValidationFailure;

    invoke-virtual {p1}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {p0, v0}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-void
.end method

.method public startReporting(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method
