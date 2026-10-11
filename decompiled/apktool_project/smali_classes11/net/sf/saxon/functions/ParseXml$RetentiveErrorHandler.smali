.class public Lnet/sf/saxon/functions/ParseXml$RetentiveErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/ParseXml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetentiveErrorHandler"
.end annotation


# instance fields
.field public errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xml/sax/SAXParseException;",
            ">;"
        }
    .end annotation
.end field

.field public failed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/functions/ParseXml$RetentiveErrorHandler;->errors:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/functions/ParseXml$RetentiveErrorHandler;->failed:Z

    return-void
.end method


# virtual methods
.method public captureRetainedErrors(Lnet/sf/saxon/trans/XPathException;)V
    .locals 3

    iget-object p0, p0, Lnet/sf/saxon/functions/ParseXml$RetentiveErrorHandler;->errors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/SAXParseException;

    new-instance v2, Lnet/sf/saxon/value/ObjectValue;

    invoke-direct {v2, v1}, Lnet/sf/saxon/value/ObjectValue;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnet/sf/saxon/value/SequenceExtent;->makeSequenceExtent(Ljava/util/List;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorObject(Lnet/sf/saxon/om/Sequence;)V

    :cond_1
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/ParseXml$RetentiveErrorHandler;->errors:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/functions/ParseXml$RetentiveErrorHandler;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/functions/ParseXml$RetentiveErrorHandler;->failed:Z

    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    return-void
.end method
