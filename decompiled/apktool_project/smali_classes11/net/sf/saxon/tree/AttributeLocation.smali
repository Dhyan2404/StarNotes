.class public Lnet/sf/saxon/tree/AttributeLocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/Location;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I

.field public final h:Lnet/sf/saxon/om/StructuredQName;

.field public final i:Lnet/sf/saxon/om/StructuredQName;

.field public j:Lnet/sf/saxon/om/NodeInfo;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/StructuredQName;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/AttributeLocation;->e:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLineNumber()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/tree/AttributeLocation;->f:I

    .line 4
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/tree/AttributeLocation;->g:I

    .line 5
    invoke-static {p1}, Lnet/sf/saxon/tree/util/Navigator;->getNodeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/AttributeLocation;->h:Lnet/sf/saxon/om/StructuredQName;

    .line 6
    iput-object p2, p0, Lnet/sf/saxon/tree/AttributeLocation;->i:Lnet/sf/saxon/om/StructuredQName;

    .line 7
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    sget-object v0, Lnet/sf/saxon/lib/Feature;->RETAIN_NODE_FOR_DIAGNOSTICS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p2, v0}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    iput-object p1, p0, Lnet/sf/saxon/tree/AttributeLocation;->j:Lnet/sf/saxon/om/NodeInfo;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/s9api/Location;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-interface {p3}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/AttributeLocation;->e:Ljava/lang/String;

    .line 11
    invoke-interface {p3}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/tree/AttributeLocation;->f:I

    .line 12
    invoke-interface {p3}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result p3

    iput p3, p0, Lnet/sf/saxon/tree/AttributeLocation;->g:I

    .line 13
    iput-object p1, p0, Lnet/sf/saxon/tree/AttributeLocation;->h:Lnet/sf/saxon/om/StructuredQName;

    .line 14
    iput-object p2, p0, Lnet/sf/saxon/tree/AttributeLocation;->i:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method


# virtual methods
.method public getAttributeName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/AttributeLocation;->i:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/AttributeLocation;->g:I

    return p0
.end method

.method public getElementName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/AttributeLocation;->h:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getElementNode()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/AttributeLocation;->j:Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/AttributeLocation;->f:I

    return p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/AttributeLocation;->e:Ljava/lang/String;

    return-object p0
.end method

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public setElementNode(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/AttributeLocation;->j:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method
