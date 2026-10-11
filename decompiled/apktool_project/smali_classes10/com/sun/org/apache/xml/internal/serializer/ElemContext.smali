.class final Lcom/sun/org/apache/xml/internal/serializer/ElemContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final m_currentElemDepth:I

.field m_elementDesc:Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

.field m_elementLocalName:Ljava/lang/String;

.field m_elementName:Ljava/lang/String;

.field m_elementURI:Ljava/lang/String;

.field m_isCdataSection:Z

.field m_isRaw:Z

.field private m_next:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

.field final m_prev:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

.field m_startTagOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementDesc:Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_isRaw:Z

    .line 7
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    .line 8
    iput-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_prev:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    .line 9
    iput v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_currentElemDepth:I

    return-void
.end method

.method private constructor <init>(Lcom/sun/org/apache/xml/internal/serializer/ElemContext;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementDesc:Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    .line 12
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_isRaw:Z

    .line 16
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    .line 17
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_prev:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    .line 18
    iget p1, p1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_currentElemDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_currentElemDepth:I

    return-void
.end method


# virtual methods
.method public final pop()Lcom/sun/org/apache/xml/internal/serializer/ElemContext;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_prev:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    return-object p0
.end method

.method public final push()Lcom/sun/org/apache/xml/internal/serializer/ElemContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_next:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;-><init>(Lcom/sun/org/apache/xml/internal/serializer/ElemContext;)V

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_next:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    :cond_0
    const/4 p0, 0x1

    .line 4
    iput-boolean p0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    return-object v0
.end method

.method public final push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/ElemContext;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_next:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;-><init>(Lcom/sun/org/apache/xml/internal/serializer/ElemContext;)V

    .line 7
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_next:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    .line 8
    :cond_0
    iput-object p3, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    .line 9
    iput-object p2, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    .line 10
    iput-object p1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    const/4 p0, 0x0

    .line 11
    iput-boolean p0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_isCdataSection:Z

    const/4 p0, 0x1

    .line 12
    iput-boolean p0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    return-object v0
.end method
