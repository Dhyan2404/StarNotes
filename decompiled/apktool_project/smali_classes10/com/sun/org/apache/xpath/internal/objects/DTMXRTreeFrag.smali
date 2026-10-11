.class public final Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

.field private m_dtmIdentity:I

.field private m_xctxt:Lcom/sun/org/apache/xpath/internal/XPathContext;


# direct methods
.method public constructor <init>(ILcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->m_xctxt:Lcom/sun/org/apache/xpath/internal/XPathContext;

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    return-void
.end method


# virtual methods
.method public final destruct()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->m_xctxt:Lcom/sun/org/apache/xpath/internal/XPathContext;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    check-cast p1, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->getDTMIdentity()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    return-object p0
.end method

.method public final getDTMIdentity()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    return p0
.end method

.method public final getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->m_xctxt:Lcom/sun/org/apache/xpath/internal/XPathContext;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    return p0
.end method
