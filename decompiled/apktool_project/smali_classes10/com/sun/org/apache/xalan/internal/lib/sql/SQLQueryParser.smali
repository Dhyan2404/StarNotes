.class public Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INLINE_PARSER:I = 0x2

.field public static final NO_INLINE_PARSER:I = 0x1

.field public static final NO_OVERRIDE:I


# instance fields
.field private m_HasParameters:Z

.field private m_InlineVariables:Z

.field private m_IsCallable:Z

.field private m_OrigQuery:Ljava/lang/String;

.field private m_Parameters:Ljava/util/Vector;

.field private m_ParsedQuery:Ljava/lang/StringBuffer;

.field private m_hasOutput:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_InlineVariables:Z

    .line 3
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_IsCallable:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_OrigQuery:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_ParsedQuery:Ljava/lang/StringBuffer;

    .line 6
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_Parameters:Ljava/util/Vector;

    .line 7
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_hasOutput:Z

    .line 8
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->init()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_InlineVariables:Z

    .line 11
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_IsCallable:Z

    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_ParsedQuery:Ljava/lang/StringBuffer;

    .line 13
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_Parameters:Ljava/util/Vector;

    .line 14
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_hasOutput:Z

    .line 15
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_OrigQuery:Ljava/lang/String;

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method

.method private parse(Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;I)V
    .locals 1

    const-string v0, "inline-variables"

    .line 3
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->getFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_InlineVariables:Z

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_InlineVariables:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 5
    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_InlineVariables:Z

    .line 6
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_InlineVariables:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->inlineParser()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getParameters()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_Parameters:Ljava/util/Vector;

    return-object p0
.end method

.method public getSQLQuery()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_InlineVariables:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_ParsedQuery:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_OrigQuery:Ljava/lang/String;

    return-object p0
.end method

.method public hasParameters()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_HasParameters:Z

    return p0
.end method

.method public inlineParser()V
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_Parameters:Ljava/util/Vector;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_Parameters:Ljava/util/Vector;

    :cond_0
    iget-object v2, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_ParsedQuery:Ljava/lang/StringBuffer;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_ParsedQuery:Ljava/lang/StringBuffer;

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v5

    move v7, v4

    :goto_0
    iget-object v8, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_OrigQuery:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_14

    iget-object v8, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_OrigQuery:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x3

    const/4 v11, 0x7

    const/16 v12, 0x23

    const/16 v13, 0x3f

    const/16 v14, 0x3d

    const/16 v15, 0x27

    const/16 v10, 0x5d

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-nez v11, :cond_2

    if-eq v8, v10, :cond_2

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lez v11, :cond_13

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "OUT"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->setIsOutput(Z)V

    iput-boolean v4, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_hasOutput:Z

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-ne v8, v10, :cond_13

    goto :goto_1

    :pswitch_1
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_4

    if-eq v8, v10, :cond_4

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_13

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->setName(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-ne v8, v10, :cond_5

    :goto_1
    move v6, v3

    goto/16 :goto_7

    :cond_5
    const/16 v6, 0x8

    goto/16 :goto_7

    :pswitch_2
    if-ne v8, v14, :cond_13

    :goto_2
    move v6, v11

    goto/16 :goto_7

    :pswitch_3
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_6

    if-eq v8, v14, :cond_6

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_13

    iput-boolean v4, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_HasParameters:Z

    new-instance v2, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;

    invoke-direct {v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->setTypeName(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_Parameters:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-ne v8, v14, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x6

    goto/16 :goto_7

    :pswitch_4
    const/16 v9, 0x5b

    if-ne v8, v9, :cond_13

    const/4 v6, 0x5

    goto/16 :goto_7

    :pswitch_5
    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v9

    if-nez v9, :cond_c

    if-eq v8, v12, :cond_c

    const/16 v9, 0x5f

    if-ne v8, v9, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "call"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iput-boolean v4, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_IsCallable:Z

    if-eqz v2, :cond_9

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->setIsOutput(Z)V

    :cond_9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-ne v8, v15, :cond_a

    move v7, v3

    move v6, v4

    goto :goto_4

    :cond_a
    if-ne v8, v13, :cond_b

    move v7, v3

    const/4 v6, 0x4

    goto :goto_4

    :cond_b
    move v6, v3

    move v7, v6

    goto :goto_4

    :cond_c
    :goto_3
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    iget-object v9, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_ParsedQuery:Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :pswitch_6
    iget-object v6, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_ParsedQuery:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v6, v4

    goto :goto_7

    :pswitch_7
    if-ne v8, v15, :cond_d

    move v6, v3

    goto :goto_5

    :cond_d
    const/16 v9, 0x5c

    if-ne v8, v9, :cond_e

    const/4 v6, 0x2

    :cond_e
    :goto_5
    iget-object v9, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_ParsedQuery:Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :pswitch_8
    if-ne v8, v15, :cond_f

    move v6, v4

    goto :goto_6

    :cond_f
    if-ne v8, v13, :cond_10

    const/4 v6, 0x4

    goto :goto_6

    :cond_10
    if-eqz v7, :cond_12

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v10

    if-nez v10, :cond_11

    if-ne v8, v12, :cond_12

    :cond_11
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v6, v9

    :cond_12
    :goto_6
    iget-object v9, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_ParsedQuery:Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_13
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_14
    iget-boolean v1, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_IsCallable:Z

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_ParsedQuery:Ljava/lang/StringBuffer;

    const/16 v2, 0x7b

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_ParsedQuery:Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isCallable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_IsCallable:Z

    return p0
.end method

.method public parse(Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;Ljava/lang/String;I)Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;
    .locals 0

    .line 1
    new-instance p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->parse(Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;I)V

    return-object p0
.end method

.method public populateStatement(Ljava/sql/PreparedStatement;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_Parameters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_Parameters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;

    :try_start_0
    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_InlineVariables:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;->getVariableOrParam(Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->getType()I

    move-result v1

    invoke-interface {p1, v4, v2, v1, v3}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;II)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->getType()I

    move-result v1

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setNull(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->getType()I

    move-result v1

    invoke-interface {p1, v4, v2, v1, v3}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->getType()I

    move-result v1

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setNull(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public registerOutputParameters(Ljava/sql/CallableStatement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_IsCallable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_hasOutput:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_Parameters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_Parameters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->isOutput()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->getType()I

    move-result v1

    invoke-interface {p1, v2, v1}, Ljava/sql/CallableStatement;->registerOutParameter(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setParameters(Ljava/util/Vector;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_HasParameters:Z

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->m_Parameters:Ljava/util/Vector;

    return-void
.end method
