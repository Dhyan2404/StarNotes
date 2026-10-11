.class public Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;
.super Lcom/thegrizzlylabs/sardineandroid/report/SardineReport;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$Result;,
        Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/thegrizzlylabs/sardineandroid/report/SardineReport<",
        "Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/logging/Logger;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/thegrizzlylabs/sardineandroid/report/SardineReport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;Ljava/util/Set;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/thegrizzlylabs/sardineandroid/report/SardineReport;-><init>()V

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->b:Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

    iput-object p3, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->c:Ljava/util/Set;

    iput-object p4, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->d:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public fromMultistatus(Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;)Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$Result;
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;->getResponse()Ljava/util/List;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thegrizzlylabs/sardineandroid/model/Response;

    .line 5
    :try_start_0
    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-direct {v2, v1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;-><init>(Lcom/thegrizzlylabs/sardineandroid/model/Response;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    sget-object v2, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->e:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getHref()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Ignore resource with invalid URI %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$Result;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;->getSyncToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$Result;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic fromMultistatus(Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->fromMultistatus(Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;)Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$Result;

    move-result-object p0

    return-object p0
.end method

.method public toJaxb()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;-><init>()V

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getAny()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/namespace/QName;

    invoke-static {v3}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->createElement(Ljavax/xml/namespace/QName;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/SyncCollection;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/SyncCollection;-><init>()V

    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->a:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/SyncCollection;->setSyncToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->b:Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/SyncCollection;->setSyncLevel(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/thegrizzlylabs/sardineandroid/model/SyncCollection;->setProp(Lcom/thegrizzlylabs/sardineandroid/model/Prop;)V

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Limit;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Limit;-><init>()V

    iget-object p0, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->d:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/thegrizzlylabs/sardineandroid/model/Limit;->setNresults(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v0}, Lcom/thegrizzlylabs/sardineandroid/model/SyncCollection;->setLimit(Lcom/thegrizzlylabs/sardineandroid/model/Limit;)V

    :cond_2
    return-object v1
.end method
