.class public Lnet/sf/saxon/query/XQueryExpression$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/query/XQueryExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public final f:Lnet/sf/saxon/lib/ErrorReporter;

.field public final g:Lnet/sf/saxon/s9api/Location;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/lib/ErrorReporter;Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/query/XQueryExpression$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p2, p0, Lnet/sf/saxon/query/XQueryExpression$a;->f:Lnet/sf/saxon/lib/ErrorReporter;

    iput-object p3, p0, Lnet/sf/saxon/query/XQueryExpression$a;->g:Lnet/sf/saxon/s9api/Location;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryExpression$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryExpression$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/query/XQueryExpression$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/query/XQueryExpression$a;->g:Lnet/sf/saxon/s9api/Location;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    new-instance v2, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v2, v1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryExpression$a;->f:Lnet/sf/saxon/lib/ErrorReporter;

    invoke-interface {p0, v2}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    throw v0
.end method
