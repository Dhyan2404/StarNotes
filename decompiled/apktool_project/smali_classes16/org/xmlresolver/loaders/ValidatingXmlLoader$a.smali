.class public Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xmlresolver/loaders/ValidatingXmlLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Lorg/xmlresolver/ResolverConfiguration;

.field public final f:Lorg/xmlresolver/logging/ResolverLogger;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;->g:Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;->h:Ljava/lang/String;

    iput-object p1, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;->e:Lorg/xmlresolver/ResolverConfiguration;

    sget-object v0, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p1, v0}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object p1, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;->f:Lorg/xmlresolver/logging/ResolverLogger;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;->h:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;->g:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;->f:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error"

    invoke-interface {p0, v1, p1, v0}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;->g:Ljava/lang/String;

    iget-object p0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;->f:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error"

    invoke-interface {p0, v1, p1, v0}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;->h:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;->f:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "warning"

    invoke-interface {p0, v1, p1, v0}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
