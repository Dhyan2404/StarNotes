.class Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$MyPrefixResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPrefixResolver"
.end annotation


# instance fields
.field dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

.field handle:I

.field handleNullPrefix:Z

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/dtm/DTM;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$MyPrefixResolver;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$MyPrefixResolver;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iput p4, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$MyPrefixResolver;->handle:I

    iput-boolean p5, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$MyPrefixResolver;->handleNullPrefix:Z

    return-void
.end method


# virtual methods
.method public getBaseIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$MyPrefixResolver;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getBaseIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$MyPrefixResolver;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$MyPrefixResolver;->handle:I

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$MyPrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlesNullPrefixes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber$MyPrefixResolver;->handleNullPrefix:Z

    return p0
.end method
