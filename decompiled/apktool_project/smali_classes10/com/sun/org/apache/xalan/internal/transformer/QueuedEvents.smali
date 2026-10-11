.class public abstract Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected m_attributes:Lcom/sun/org/apache/xml/internal/utils/MutableAttrListImpl;

.field protected m_docEnded:Z

.field public m_docPending:Z

.field public m_elemIsEnded:Z

.field public m_elemIsPending:Z

.field protected m_eventCount:I

.field protected m_localName:Ljava/lang/String;

.field protected m_name:Ljava/lang/String;

.field protected m_namespaces:Ljava/util/Vector;

.field protected m_nsDeclsHaveBeenAdded:Z

.field private m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

.field protected m_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_eventCount:I

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_docPending:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_docEnded:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_elemIsPending:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_elemIsEnded:Z

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/MutableAttrListImpl;

    invoke-direct {v1}, Lcom/sun/org/apache/xml/internal/utils/MutableAttrListImpl;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_attributes:Lcom/sun/org/apache/xml/internal/utils/MutableAttrListImpl;

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_nsDeclsHaveBeenAdded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_namespaces:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public getSerializer()Lcom/sun/org/apache/xml/internal/serializer/Serializer;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    return-object p0
.end method

.method public popEvent()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_elemIsPending:Z

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_attributes:Lcom/sun/org/apache/xml/internal/utils/MutableAttrListImpl;

    invoke-virtual {v1}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_nsDeclsHaveBeenAdded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_localName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_namespaces:Ljava/util/Vector;

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_eventCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_eventCount:I

    return-void
.end method

.method public pushDocumentEvent()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_docPending:Z

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_eventCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_eventCount:I

    return-void
.end method

.method public reInitEvents()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->pushDocumentEvent()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->reInitEvents()V

    return-void
.end method

.method public setSerializer(Lcom/sun/org/apache/xml/internal/serializer/Serializer;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/QueuedEvents;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    return-void
.end method
