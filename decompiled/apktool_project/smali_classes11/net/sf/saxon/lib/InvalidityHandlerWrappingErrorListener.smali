.class public Lnet/sf/saxon/lib/InvalidityHandlerWrappingErrorListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/InvalidityHandler;


# instance fields
.field public final e:Ljavax/xml/transform/ErrorListener;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/ErrorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/lib/InvalidityHandlerWrappingErrorListener;->e:Ljavax/xml/transform/ErrorListener;

    return-void
.end method


# virtual methods
.method public endReporting()Lnet/sf/saxon/om/Sequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/InvalidityHandlerWrappingErrorListener;->e:Ljavax/xml/transform/ErrorListener;

    return-object p0
.end method

.method public reportInvalidity(Lnet/sf/saxon/lib/Invalidity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/lib/InvalidityHandlerWrappingErrorListener;->e:Ljavax/xml/transform/ErrorListener;

    check-cast p1, Lnet/sf/saxon/type/ValidationFailure;

    invoke-virtual {p1}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p1

    invoke-interface {p0, p1}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
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
