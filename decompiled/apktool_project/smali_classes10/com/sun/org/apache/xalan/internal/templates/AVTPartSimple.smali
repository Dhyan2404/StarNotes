.class public Lcom/sun/org/apache/xalan/internal/templates/AVTPartSimple;
.super Lcom/sun/org/apache/xalan/internal/templates/AVTPart;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x33f8c32d8f0120e9L


# instance fields
.field private m_val:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/AVTPart;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/AVTPartSimple;->m_val:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public callVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V
    .locals 0

    return-void
.end method

.method public evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVTPartSimple;->m_val:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    return-void
.end method

.method public getSimpleString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVTPartSimple;->m_val:Ljava/lang/String;

    return-object p0
.end method
