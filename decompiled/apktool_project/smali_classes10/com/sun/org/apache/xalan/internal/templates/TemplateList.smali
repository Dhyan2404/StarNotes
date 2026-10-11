.class public Lcom/sun/org/apache/xalan/internal/templates/TemplateList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final serialVersionUID:J = 0x508acbed134bd097L


# instance fields
.field private m_commentPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

.field private m_docPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

.field private m_namedTemplates:Ljava/util/Hashtable;

.field private m_patternTable:Ljava/util/Hashtable;

.field private m_textPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

.field private m_wildCardPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x59

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_wildCardPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_textPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_docPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_commentPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    return-void
.end method

.method public static synthetic access$100(Lcom/sun/org/apache/xalan/internal/templates/TemplateList;)Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/sun/org/apache/xalan/internal/templates/TemplateList;)Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    return-object p0
.end method

.method private addObjectIfNotFound(Ljava/lang/Object;Ljava/util/Vector;)V
    .locals 3

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private checkConflicts(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 0

    return-void
.end method

.method private getHead(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    return-object p0
.end method

.method private getNamedTemplates()Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    return-object p0
.end method

.method private getPriorityOrScore(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;)D
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getPriority()D

    move-result-wide v0

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double p0, v0, v2

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getStepPattern()Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    move-result-object p0

    instance-of p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->getDefaultScore()D

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method private insertAssociationIntoList(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;Z)Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;
    .locals 11

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->getPriorityOrScore(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;)D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v2

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    move-result v3

    move-object v4, p1

    :goto_0
    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getNext()Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v5}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->getPriorityOrScore(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;)D

    move-result-wide v6

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v8

    if-le v2, v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v8

    if-ge v2, v8, :cond_2

    goto/16 :goto_6

    :cond_2
    cmpl-double v8, v0, v6

    if-lez v8, :cond_3

    goto :goto_1

    :cond_3
    cmpg-double v6, v0, v6

    if-gez v6, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    move-result v6

    if-lt v3, v6, :cond_10

    :goto_1
    const/4 v6, 0x0

    if-eqz v5, :cond_5

    if-ne v4, p1, :cond_a

    :cond_5
    invoke-direct {p0, v4}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->getPriorityOrScore(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;)D

    move-result-wide v7

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v9

    const/4 v10, 0x1

    if-le v2, v9, :cond_6

    :goto_2
    move v6, v10

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v9

    if-ge v2, v9, :cond_7

    goto :goto_3

    :cond_7
    cmpl-double v2, v0, v7

    if-lez v2, :cond_8

    goto :goto_2

    :cond_8
    cmpg-double v0, v0, v7

    if-gez v0, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    move-result v0

    if-lt v3, v0, :cond_a

    goto :goto_2

    :cond_a
    :goto_3
    if-eqz p3, :cond_c

    if-eqz v6, :cond_b

    invoke-virtual {p2, v4}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->setNext(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;)V

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->setTargetString(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->putHead(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;)V

    return-object p2

    :cond_b
    invoke-virtual {p2, v5}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->setNext(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;)V

    invoke-virtual {v4, p2}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->setNext(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;)V

    return-object p1

    :cond_c
    if-eqz v6, :cond_f

    invoke-virtual {p2, v4}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->setNext(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;)V

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->isWild()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->isWild()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->putHead(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;)V

    goto :goto_5

    :cond_e
    :goto_4
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_wildCardPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    :goto_5
    return-object p2

    :cond_f
    invoke-virtual {p2, v5}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->setNext(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;)V

    invoke-virtual {v4, p2}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->setNext(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;)V

    return-object p1

    :cond_10
    :goto_6
    move-object v4, v5

    goto/16 :goto_0
.end method

.method private insertPatternInTable(Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->getTargetString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getMatch()Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    invoke-direct {v2, p2, p1, v1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;-><init>(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->isWild()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_wildCardPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->getHead(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_wildCardPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->putHead(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-direct {p0, p2, v2, p1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->insertAssociationIntoList(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;Z)Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    :cond_3
    :goto_1
    return-void
.end method

.method private putHead(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;)V
    .locals 1

    const-string v0, "#text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_textPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_docPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :cond_1
    const-string v0, "#comment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_commentPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setNamedTemplates(Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 4

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_wildCardPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_wildCardPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    :goto_0
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->insertAssociationIntoList(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;Z)Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getNext()Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dumpAssociationTables()V
    .locals 9

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    const-string v2, ")"

    const-string v3, ", "

    const-string v4, "("

    const-string v5, "\n....."

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    :goto_1
    if-eqz v1, :cond_0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getNext()Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    move-result-object v1

    goto :goto_1

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_wildCardPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "wild card list: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    if-eqz p0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getNext()Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    move-result-object p0

    goto :goto_2

    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getHead(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;
    .locals 0

    .line 1
    invoke-interface {p3, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p3, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_docPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_commentPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    goto :goto_0

    .line 5
    :pswitch_3
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p3, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    goto :goto_0

    .line 6
    :pswitch_4
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p3, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    goto :goto_0

    .line 7
    :pswitch_5
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_textPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    goto :goto_0

    .line 8
    :pswitch_6
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p3, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    :goto_0
    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_wildCardPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    :cond_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTemplate(Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    return-object p0
.end method

.method public getTemplate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;IIZLcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2, p7}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->getHead(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    move-result-object p7

    const/4 v0, 0x0

    if-eqz p7, :cond_5

    .line 18
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushNamespaceContextNull()V

    .line 19
    invoke-virtual {p1, p2, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNodeAndExpression(II)V

    :cond_0
    const/4 v1, -0x1

    if-le p4, v1, :cond_1

    .line 20
    :try_start_0
    invoke-virtual {p7}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v1

    if-le v1, p4, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p7}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int v2, p4, p5

    if-gt v1, v2, :cond_2

    .line 22
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V

    .line 23
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    return-object v0

    .line 24
    :cond_2
    :try_start_1
    invoke-virtual {p7}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v1

    .line 25
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setNamespaceContext(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    .line 26
    iget-object v2, p7, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_stepPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v2

    sget-object v3, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    if-eq v2, v3, :cond_4

    invoke-virtual {p7, p3}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->matchMode(Lcom/sun/org/apache/xml/internal/utils/QName;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p6, :cond_3

    .line 27
    invoke-direct {p0, p7, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->checkConflicts(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :cond_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V

    .line 29
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    return-object v1

    .line 30
    :cond_4
    :goto_0
    :try_start_2
    invoke-virtual {p7}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getNext()Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    move-result-object p7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p7, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V

    .line 32
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 33
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V

    .line 34
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    .line 35
    throw p0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public getTemplate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;ZLcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p5}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->getHead(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    move-result-object p5

    if-eqz p5, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushNamespaceContextNull()V

    .line 4
    invoke-virtual {p1, p2, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNodeAndExpression(II)V

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p5}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setNamespaceContext(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    .line 7
    iget-object v1, p5, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_stepPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    if-eq v1, v2, :cond_2

    invoke-virtual {p5, p3}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->matchMode(Lcom/sun/org/apache/xml/internal/utils/QName;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_1

    .line 8
    invoke-direct {p0, p5, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->checkConflicts(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V

    .line 10
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    return-object v0

    .line 11
    :cond_2
    :try_start_1
    invoke-virtual {p5}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getNext()Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    move-result-object p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p5, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V

    .line 13
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 14
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V

    .line 15
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    .line 16
    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTemplateFast(Lcom/sun/org/apache/xpath/internal/XPathContext;IILcom/sun/org/apache/xml/internal/utils/QName;IZLcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-interface {p7, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p7, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_docPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_commentPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p7, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p7, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_textPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p7, p3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLocalNameFromExpandedNameID(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_wildCardPatterns:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushNamespaceContextNull()V

    :cond_1
    const/4 v2, -0x1

    if-le p5, v2, :cond_2

    :try_start_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v2

    if-le v2, p5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setNamespaceContext(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_stepPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    invoke-virtual {v3, p1, p2, p7, p3}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/dtm/DTM;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v3

    sget-object v4, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    if-eq v3, v4, :cond_4

    invoke-virtual {v0, p4}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->matchMode(Lcom/sun/org/apache/xml/internal/utils/QName;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p6, :cond_3

    invoke-direct {p0, v0, p1, p2, p4}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->checkConflicts(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    return-object v2

    :cond_4
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->getNext()Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getWalker()Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList$TemplateWalker;-><init>(Lcom/sun/org/apache/xalan/internal/templates/TemplateList;Lcom/sun/org/apache/xalan/internal/templates/TemplateList$1;)V

    return-object v0
.end method

.method public setTemplate(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getMatch()Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const-string v1, "xsl:template"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ER_NEED_NAME_OR_MATCH_ATTRIB"

    invoke-virtual {p1, v2, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getStylesheetComposed()Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getStylesheetComposed()Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v2

    if-le v2, v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-ne v2, v1, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ER_DUPLICATE_NAMED_TEMPLATE"

    invoke-virtual {p1, v2, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->insertPatternInTable(Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;)V

    goto :goto_2

    :cond_4
    instance-of v1, v0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->getPatterns()[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    invoke-direct {p0, v3, p1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->insertPatternInTable(Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method
