.class public Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/templates/TemplateList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TemplateWalker"
.end annotation


# instance fields
.field private curPattern:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

.field private hashIterator:Ljava/util/Enumeration;

.field private inPatterns:Z

.field private m_compilerCache:Ljava/util/Hashtable;

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;


# direct methods
.method private constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/TemplateList;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->this$0:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->m_compilerCache:Ljava/util/Hashtable;

    .line 4
    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->access$100(Lcom/sun/org/apache/xalan/internal/templates/TemplateList;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->inPatterns:Z

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->curPattern:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/TemplateList;Lcom/sun/org/apache/xalan/internal/templates/TemplateList$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;-><init>(Lcom/sun/org/apache/xalan/internal/templates/TemplateList;)V

    return-void
.end method


# virtual methods
.method public next()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 5

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->inPatterns:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->curPattern:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getNext()Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->curPattern:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->curPattern:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->curPattern:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->inPatterns:Z

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->this$0:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->access$200(Lcom/sun/org/apache/xalan/internal/templates/TemplateList;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    :cond_4
    :goto_0
    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->inPatterns:Z

    if-nez v2, :cond_6

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    goto :goto_1

    :cond_5
    return-object v0

    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->m_compilerCache:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getUid()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;->m_compilerCache:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getUid()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
