.class public final Lcom/sun/org/apache/xerces/internal/util/XMLInputSourceAdaptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/Source;


# instance fields
.field public final fSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLInputSourceAdaptor;->fSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    return-void
.end method


# virtual methods
.method public getSystemId()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLInputSourceAdaptor;->fSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLInputSourceAdaptor;->fSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLInputSourceAdaptor;->fSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLInputSourceAdaptor;->fSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setSystemId(Ljava/lang/String;)V

    return-void
.end method
