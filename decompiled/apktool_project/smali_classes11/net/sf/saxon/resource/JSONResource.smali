.class public Lnet/sf/saxon/resource/JSONResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/Resource;


# static fields
.field public static final FACTORY:Lnet/sf/saxon/lib/ResourceFactory;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lnet/sf/saxon/om/Item;

.field public final d:Lnet/sf/saxon/expr/XPathContext;

.field public e:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/fri;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/fri;-><init>()V

    sput-object v0, Lnet/sf/saxon/resource/JSONResource;->FACTORY:Lnet/sf/saxon/lib/ResourceFactory;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/resource/JSONResource;->a:Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/resource/JSONResource;->d:Lnet/sf/saxon/expr/XPathContext;

    iget-object p1, p2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->encoding:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "UTF-8"

    iput-object p1, p2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->encoding:Ljava/lang/String;

    :cond_0
    iput-object p2, p0, Lnet/sf/saxon/resource/JSONResource;->e:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/resource/JSONResource;->b(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/resource/JSONResource;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/resource/JSONResource;-><init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)V

    return-object v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 0

    const-string p0, "application/json"

    return-object p0
.end method

.method public getItem()Lnet/sf/saxon/om/Item;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/resource/JSONResource;->c:Lnet/sf/saxon/om/Item;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/resource/JSONResource;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/resource/JSONResource;->e:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    invoke-virtual {v0}, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->obtainCharacterContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/resource/JSONResource;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    const-string v2, "liberal"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "use-first"

    invoke-static {v2}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object v2

    const-string v3, "duplicates"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "escape"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lnet/sf/saxon/resource/JSONResource;->b:Ljava/lang/String;

    iget-object v2, p0, Lnet/sf/saxon/resource/JSONResource;->d:Lnet/sf/saxon/expr/XPathContext;

    invoke-static {v1, v0, v2}, Lnet/sf/saxon/ma/json/ParseJsonFn;->parse(Ljava/lang/String;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/resource/JSONResource;->c:Lnet/sf/saxon/om/Item;

    return-object v0
.end method

.method public getResourceURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/resource/JSONResource;->a:Ljava/lang/String;

    return-object p0
.end method
