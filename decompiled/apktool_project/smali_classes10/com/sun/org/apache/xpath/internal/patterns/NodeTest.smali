.class public Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;
.super Lcom/sun/org/apache/xpath/internal/Expression;
.source "SourceFile"


# static fields
.field public static final SCORE_NODETEST:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

.field public static final SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

.field public static final SCORE_NSWILD:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

.field public static final SCORE_OTHER:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

.field public static final SCORE_QNAME:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

.field public static final SHOW_BYFUNCTION:I = 0x10000

.field public static final SUPPORTS_PRE_STRIPPING:Ljava/lang/String; = "http://xml.apache.org/xpath/features/whitespace-pre-stripping"

.field public static final WILD:Ljava/lang/String; = "*"

.field static final serialVersionUID:J = -0x4f9cee24b2b98886L


# instance fields
.field private m_isTotallyWild:Z

.field protected m_name:Ljava/lang/String;

.field m_namespace:Ljava/lang/String;

.field m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

.field protected m_whatToShow:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    const-wide/high16 v1, -0x4020000000000000L    # -0.5

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    sput-object v0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NODETEST:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    const-wide/high16 v1, -0x4030000000000000L    # -0.25

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    sput-object v0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NSWILD:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    sput-object v0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_QNAME:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    sput-object v0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_OTHER:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    sput-object v0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/Expression;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/Expression;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->initNodeTest(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/Expression;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static debugWhatToShow(I)V
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_0

    const-string v1, "SHOW_ATTRIBUTE"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_1

    const-string v1, "SHOW_NAMESPACE"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2

    const-string v1, "SHOW_CDATA_SECTION"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_3

    const-string v1, "SHOW_COMMENT"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_4

    const-string v1, "SHOW_DOCUMENT"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_5

    const-string v1, "SHOW_DOCUMENT_FRAGMENT"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_6

    const-string v1, "SHOW_DOCUMENT_TYPE"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    const-string v1, "SHOW_ELEMENT"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_8

    const-string v1, "SHOW_ENTITY"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_8
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_9

    const-string v1, "SHOW_ENTITY_REFERENCE"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_9
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_a

    const-string v1, "SHOW_NOTATION"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_a
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_b

    const-string v1, "SHOW_PROCESSING_INSTRUCTION"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_b
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_c

    const-string v1, "SHOW_TEXT"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_e

    if-lez v2, :cond_d

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_d
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_e
    if-nez v1, :cond_f

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty whatToShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_f
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public static getNodeTypeTest(I)I
    .locals 2

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_3

    const/16 p0, 0x9

    return p0

    :cond_3
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_4

    const/16 p0, 0xb

    return p0

    :cond_4
    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_5

    const/16 p0, 0xd

    return p0

    :cond_5
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x8

    if-eqz v0, :cond_6

    return v1

    :cond_6
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_7

    const/4 p0, 0x7

    return p0

    :cond_7
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_8

    const/16 p0, 0xa

    return p0

    :cond_8
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_9

    const/4 p0, 0x6

    return p0

    :cond_9
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_a

    const/4 p0, 0x5

    return p0

    :cond_a
    and-int/lit16 v0, p0, 0x800

    if-eqz v0, :cond_b

    const/16 p0, 0xc

    return p0

    :cond_b
    and-int/2addr p0, v1

    if-eqz p0, :cond_c

    const/4 p0, 0x4

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private static final subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    const-string v0, "*"

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static final subPartMatchNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eq p0, p1, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "*"

    if-eq p1, v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public calcScore()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    const-string v1, "*"

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-nez v2, :cond_0

    sget-object v2, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NODETEST:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-ne v2, v1, :cond_2

    sget-object v2, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NODETEST:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    goto :goto_0

    :cond_2
    if-eq v0, v1, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-ne v2, v1, :cond_3

    sget-object v2, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NSWILD:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_QNAME:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    :goto_0
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_isTotallyWild:Z

    return-void
.end method

.method public callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 0

    const/4 p1, 0x0

    const-string p2, "callVisitors should not be called for this object!!!"

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->isSameClass(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;

    iget-object v0, p1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-nez v2, :cond_4

    return v1

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_whatToShow:I

    iget v2, p1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_whatToShow:I

    if-eq v0, v2, :cond_7

    return v1

    :cond_7
    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_isTotallyWild:Z

    iget-boolean p1, p1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_isTotallyWild:Z

    if-eq p0, p1, :cond_8

    return v1

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p1

    .line 2
    invoke-interface {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v0

    .line 3
    iget v1, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_whatToShow:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    return-object p0

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    shl-int v0, v2, v0

    and-int/2addr v0, v1

    if-eq v0, v2, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x40

    if-eq v0, v1, :cond_5

    const/16 v1, 0x80

    if-eq v0, v1, :cond_4

    const/16 v1, 0x100

    if-eq v0, v1, :cond_3

    const/16 v1, 0x400

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_1

    .line 5
    sget-object p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    return-object p0

    .line 6
    :cond_1
    invoke-interface {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    :goto_0
    return-object p0

    .line 8
    :cond_3
    sget-object p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_OTHER:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    return-object p0

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    return-object p0

    .line 10
    :cond_5
    invoke-interface {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    :goto_1
    return-object p0

    .line 11
    :cond_7
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    return-object p0

    .line 12
    :cond_8
    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_isTotallyWild:Z

    if-nez v0, :cond_a

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->subPartMatchNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    sget-object p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    goto :goto_3

    :cond_a
    :goto_2
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    :goto_3
    return-object p0
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/dtm/DTM;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 13
    iget p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_whatToShow:I

    const/4 p4, -0x1

    if-ne p1, p4, :cond_0

    .line 14
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    return-object p0

    .line 15
    :cond_0
    invoke-interface {p3, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result p4

    const/4 v0, 0x1

    sub-int/2addr p4, v0

    shl-int p4, v0, p4

    and-int/2addr p1, p4

    if-eq p1, v0, :cond_8

    const/4 p4, 0x2

    if-eq p1, p4, :cond_8

    const/4 p4, 0x4

    if-eq p1, p4, :cond_7

    const/16 p4, 0x8

    if-eq p1, p4, :cond_7

    const/16 p4, 0x40

    if-eq p1, p4, :cond_5

    const/16 p4, 0x80

    if-eq p1, p4, :cond_4

    const/16 p4, 0x100

    if-eq p1, p4, :cond_3

    const/16 p4, 0x400

    if-eq p1, p4, :cond_3

    const/16 p4, 0x1000

    if-eq p1, p4, :cond_1

    .line 16
    sget-object p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    return-object p0

    .line 17
    :cond_1
    invoke-interface {p3, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    :goto_0
    return-object p0

    .line 19
    :cond_3
    sget-object p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_OTHER:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    return-object p0

    .line 20
    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    return-object p0

    .line 21
    :cond_5
    invoke-interface {p3, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    :goto_1
    return-object p0

    .line 22
    :cond_7
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    return-object p0

    .line 23
    :cond_8
    iget-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_isTotallyWild:Z

    if-nez p1, :cond_a

    invoke-interface {p3, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    invoke-static {p1, p4}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->subPartMatchNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p3, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    sget-object p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    goto :goto_3

    :cond_a
    :goto_2
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    :goto_3
    return-object p0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    return-void
.end method

.method public getDefaultScore()D
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;->num()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    return-object p0
.end method

.method public getStaticScore()Lcom/sun/org/apache/xpath/internal/objects/XNumber;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    return-object p0
.end method

.method public getWhatToShow()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_whatToShow:I

    return p0
.end method

.method public initNodeTest(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_whatToShow:I

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->calcScore()V

    return-void
.end method

.method public initNodeTest(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_whatToShow:I

    .line 4
    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->calcScore()V

    return-void
.end method

.method public setLocalName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    return-void
.end method

.method public setStaticScore(Lcom/sun/org/apache/xpath/internal/objects/XNumber;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    return-void
.end method

.method public setWhatToShow(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_whatToShow:I

    return-void
.end method
