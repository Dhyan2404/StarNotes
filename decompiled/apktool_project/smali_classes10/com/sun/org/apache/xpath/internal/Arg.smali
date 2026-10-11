.class public Lcom/sun/org/apache/xpath/internal/Arg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m_expression:Ljava/lang/String;

.field private m_isFromWithParam:Z

.field private m_isVisible:Z

.field private m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

.field private m_val:Lcom/sun/org/apache/xpath/internal/objects/XObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/QName;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_val:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_expression:Ljava/lang/String;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_isVisible:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_isFromWithParam:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    .line 15
    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_val:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_isVisible:Z

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_isFromWithParam:Z

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_expression:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xpath/internal/objects/XObject;Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    .line 21
    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_val:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    .line 22
    iput-boolean p3, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_isFromWithParam:Z

    xor-int/lit8 p1, p3, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_isVisible:Z

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_expression:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/utils/QName;Ljava/lang/String;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_val:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    .line 10
    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_expression:Ljava/lang/String;

    .line 11
    iput-boolean p3, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_isFromWithParam:Z

    xor-int/lit8 p1, p3, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_isVisible:Z

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_val:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->allowDetachToRelease(Z)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_val:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/sun/org/apache/xml/internal/utils/QName;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getExpression()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_expression:Ljava/lang/String;

    return-object p0
.end method

.method public final getQName()Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-object p0
.end method

.method public final getVal()Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_val:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    return-object p0
.end method

.method public isFromWithParam()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_isFromWithParam:Z

    return p0
.end method

.method public isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_isVisible:Z

    return p0
.end method

.method public setExpression(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_expression:Ljava/lang/String;

    return-void
.end method

.method public setIsVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_isVisible:Z

    return-void
.end method

.method public final setQName(Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-void
.end method

.method public final setVal(Lcom/sun/org/apache/xpath/internal/objects/XObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/Arg;->m_val:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    return-void
.end method
