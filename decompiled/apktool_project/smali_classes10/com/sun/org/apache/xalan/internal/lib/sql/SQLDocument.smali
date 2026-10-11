.class public Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;
.super Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;
.source "SourceFile"


# static fields
.field private static final S_CASESENSITIVE:Ljava/lang/String; = "case-sensitive"

.field private static final S_CATALOGUE_NAME:Ljava/lang/String; = "catalogue-name"

.field private static final S_COL:Ljava/lang/String; = "col"

.field private static final S_COLUMN_HEADER:Ljava/lang/String; = "column-header"

.field private static final S_COLUMN_LABEL:Ljava/lang/String; = "column-label"

.field private static final S_COLUMN_NAME:Ljava/lang/String; = "column-name"

.field private static final S_COLUMN_TYPE:Ljava/lang/String; = "column-type"

.field private static final S_COLUMN_TYPENAME:Ljava/lang/String; = "column-typename"

.field private static final S_DEFINITELYWRITABLE:Ljava/lang/String; = "definitely-writable"

.field private static final S_DISPLAY_SIZE:Ljava/lang/String; = "column-display-size"

.field private static final S_ISNULLABLE:Ljava/lang/String; = "nullable"

.field private static final S_ISSEARCHABLE:Ljava/lang/String; = "searchable"

.field private static final S_ISSIGNED:Ljava/lang/String; = "signed"

.field private static final S_ISWRITEABLE:Ljava/lang/String; = "writable"

.field private static final S_METADATA:Ljava/lang/String; = "metadata"

.field private static final S_NAMESPACE:Ljava/lang/String; = "http://xml.apache.org/xalan/SQLExtension"

.field private static final S_OUT_PARAMETERS:Ljava/lang/String; = "out-parameters"

.field private static final S_PRECISION:Ljava/lang/String; = "precision"

.field private static final S_ROW:Ljava/lang/String; = "row"

.field private static final S_ROW_SET:Ljava/lang/String; = "row-set"

.field private static final S_SCALE:Ljava/lang/String; = "scale"

.field private static final S_SCHEMA_NAME:Ljava/lang/String; = "schema-name"

.field private static final S_SQL:Ljava/lang/String; = "sql"

.field private static final S_TABLE_NAME:Ljava/lang/String; = "table-name"


# instance fields
.field private DEBUG:Z

.field private m_ColAttrib_CASESENSITIVE_TypeID:I

.field private m_ColAttrib_CATALOGUE_NAME_TypeID:I

.field private m_ColAttrib_COLUMN_LABEL_TypeID:I

.field private m_ColAttrib_COLUMN_NAME_TypeID:I

.field private m_ColAttrib_COLUMN_TYPENAME_TypeID:I

.field private m_ColAttrib_COLUMN_TYPE_TypeID:I

.field private m_ColAttrib_DEFINITELYWRITEABLE_TypeID:I

.field private m_ColAttrib_DISPLAY_SIZE_TypeID:I

.field private m_ColAttrib_ISNULLABLE_TypeID:I

.field private m_ColAttrib_ISSEARCHABLE_TypeID:I

.field private m_ColAttrib_ISSIGNED_TypeID:I

.field private m_ColAttrib_ISWRITEABLE_TypeID:I

.field private m_ColAttrib_PRECISION_TypeID:I

.field private m_ColAttrib_SCALE_TypeID:I

.field private m_ColAttrib_SCHEMA_NAME_TypeID:I

.field private m_ColAttrib_TABLE_NAME_TypeID:I

.field private m_ColCount:I

.field private m_ColHeadersIdx:[I

.field private m_Col_TypeID:I

.field private m_ColumnHeader_TypeID:I

.field private m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

.field private m_ExpressionContext:Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;

.field private m_FirstRowIdx:I

.field private m_HasErrors:Z

.field private m_IsStatementCachingEnabled:Z

.field private m_LastRowIdx:I

.field private m_MetaDataIdx:I

.field private m_MetaData_TypeID:I

.field private m_MultipleResults:Z

.field private m_OutParameter_TypeID:I

.field private m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

.field private m_ResultSet:Ljava/sql/ResultSet;

.field private m_RowSetIdx:I

.field private m_RowSet_TypeID:I

.field private m_Row_TypeID:I

.field private m_SQLIdx:I

.field private m_SQL_TypeID:I

.field private m_Statement:Ljava/sql/Statement;

.field private m_StreamingMode:Z

.field private m_XConnection:Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->DEBUG:Z

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_SQL_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_MetaData_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColumnHeader_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_RowSet_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Row_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Col_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_OutParameter_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_CATALOGUE_NAME_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_DISPLAY_SIZE_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_LABEL_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_NAME_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_TYPE_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_TYPENAME_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_PRECISION_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_SCALE_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_SCHEMA_NAME_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_TABLE_NAME_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_CASESENSITIVE_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_DEFINITELYWRITEABLE_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_ISNULLABLE_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_ISSIGNED_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_ISWRITEABLE_TypeID:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_ISSEARCHABLE_TypeID:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Statement:Ljava/sql/Statement;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ExpressionContext:Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_MetaDataIdx:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_RowSetIdx:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_SQLIdx:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_FirstRowIdx:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_LastRowIdx:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_StreamingMode:Z

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_MultipleResults:Z

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_HasErrors:Z

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_IsStatementCachingEnabled:Z

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_XConnection:Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;

    return-void
.end method

.method private addRowToDTMFromResultSet()Z
    .locals 14

    const/4 v0, 0x1

    :try_start_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_FirstRowIdx:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_RowSet_TypeID:I

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_SQLIdx:I

    iget-boolean v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_MultipleResults:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_RowSetIdx:I

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_MetaDataIdx:I

    :goto_0
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElement(IIII)I

    move-result v1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_RowSetIdx:I

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_MultipleResults:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;

    invoke-interface {v1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->extractSQLMetaData(Ljava/sql/ResultSetMetaData;)V

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;

    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_StreamingMode:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_LastRowIdx:I

    if-eq v1, v2, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v3, v2, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;

    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_MultipleResults:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Statement:Ljava/sql/Statement;

    invoke-interface {v1}, Ljava/sql/Statement;->getMoreResults()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Statement:Ljava/sql/Statement;

    invoke-interface {v1}, Ljava/sql/Statement;->getUpdateCount()I

    move-result v1

    if-ltz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Statement:Ljava/sql/Statement;

    invoke-interface {v1}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;

    goto :goto_2

    :cond_4
    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;

    :goto_2
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_FirstRowIdx:I

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->addRowToDTMFromResultSet()Z

    goto/16 :goto_4

    :cond_5
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->getParameters()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_7

    iget v5, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_OutParameter_TypeID:I

    iget v6, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_SQLIdx:I

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_RowSetIdx:I

    invoke-virtual {p0, v0, v5, v6, v7}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElement(IIII)I

    move-result v5

    move v13, v2

    move v2, v4

    :goto_3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->isOutput()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Statement:Ljava/sql/Statement;

    check-cast v7, Ljava/sql/CallableStatement;

    add-int/lit8 v8, v2, 0x1

    invoke-interface {v7, v8}, Ljava/sql/CallableStatement;->getObject(I)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x2

    iget v11, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Col_TypeID:I

    move-object v8, p0

    move v12, v5

    invoke-virtual/range {v8 .. v13}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElementWithData(Ljava/lang/Object;IIII)I

    move-result v7

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->getName()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_NAME_TypeID:I

    invoke-virtual {p0, v8, v9, v7}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->getName()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_LABEL_TypeID:I

    invoke-virtual {p0, v8, v9, v7}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->getType()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    iget v9, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_TYPE_TypeID:I

    invoke-virtual {p0, v8, v9, v7}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->getTypeName()Ljava/lang/String;

    move-result-object v6

    iget v8, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_TYPENAME_TypeID:I

    invoke-virtual {p0, v6, v8, v7}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    move v13, v7

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->checkWarnings()Ljava/sql/SQLWarning;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_XConnection:Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;

    invoke-virtual {v2, v3, v3, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;Ljava/sql/SQLWarning;)V

    :cond_8
    :goto_4
    return v4

    :cond_9
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_FirstRowIdx:I

    const/4 v3, 0x2

    if-ne v1, v2, :cond_b

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Row_TypeID:I

    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_RowSetIdx:I

    iget-boolean v5, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_MultipleResults:Z

    if-eqz v5, :cond_a

    iget v5, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_MetaDataIdx:I

    goto :goto_5

    :cond_a
    move v5, v2

    :goto_5
    invoke-virtual {p0, v3, v1, v4, v5}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElement(IIII)I

    move-result v1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_FirstRowIdx:I

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_LastRowIdx:I

    iget-boolean v3, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_StreamingMode:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v3, v1, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    goto :goto_6

    :cond_b
    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_StreamingMode:Z

    if-nez v1, :cond_c

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Row_TypeID:I

    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_RowSetIdx:I

    iget v5, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_LastRowIdx:I

    invoke-virtual {p0, v3, v1, v4, v5}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElement(IIII)I

    move-result v1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_LastRowIdx:I

    :cond_c
    :goto_6
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_LastRowIdx:I

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->_firstch(I)I

    move-result v1

    move v3, v0

    move v9, v2

    :goto_7
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColCount:I

    if-gt v3, v4, :cond_11

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;

    invoke-interface {v4, v3}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v1, v2, :cond_d

    const/4 v6, 0x3

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Col_TypeID:I

    iget v8, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_LastRowIdx:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElementWithData(Ljava/lang/Object;IIII)I

    move-result v9

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColHeadersIdx:[I

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    invoke-virtual {p0, v9, v4}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->cloneAttributeFromNode(II)V

    goto :goto_8

    :cond_d
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->_firstch(I)I

    move-result v4

    if-ne v4, v2, :cond_e

    const-string v4, "Streaming Mode, Data Error"

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->error(Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->m_ObjectArray:Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;

    invoke-virtual {v6, v4, v5}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->setAt(ILjava/lang/Object;)V

    :goto_8
    if-eq v1, v2, :cond_f

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->_nextsib(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catch_0
    move-exception v1

    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->DEBUG:Z

    if-eqz v2, :cond_10

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQL Error Fetching next row ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_XConnection:Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->checkWarnings()Ljava/sql/SQLWarning;

    move-result-object v3

    invoke-virtual {v2, v1, p0, v3}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;Ljava/sql/SQLWarning;)V

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_HasErrors:Z

    :cond_11
    return v0
.end method

.method private executeSQLStatement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_XConnection:Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->getConnectionPool()Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    invoke-interface {v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->hasParameters()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Statement:Ljava/sql/Statement;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->getSQLQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->isCallable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->getSQLQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->registerOutputParameters(Ljava/sql/CallableStatement;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ExpressionContext:Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->populateStatement(Ljava/sql/PreparedStatement;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/sql/SQLException;

    const-string v0, "Error in Callable Statement"

    invoke-direct {p0, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->getSQLQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ExpressionContext:Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->populateStatement(Ljava/sql/PreparedStatement;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Statement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;

    :goto_0
    return-void
.end method

.method private extractSQLMetaData(Ljava/sql/ResultSetMetaData;)V
    .locals 11

    const-string v0, "true"

    const-string v1, "false"

    const-string v2, "Not Supported"

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_MetaData_TypeID:I

    iget-boolean v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_MultipleResults:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_RowSetIdx:I

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_SQLIdx:I

    :goto_0
    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual {p0, v5, v3, v4, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElement(IIII)I

    move-result v3

    iput v3, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_MetaDataIdx:I

    :try_start_0
    invoke-interface {p1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v3

    iput v3, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColHeadersIdx:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_XConnection:Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->checkWarnings()Ljava/sql/SQLWarning;

    move-result-object v7

    invoke-virtual {v4, v3, p0, v7}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;Ljava/sql/SQLWarning;)V

    :goto_1
    move v3, v5

    :goto_2
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColCount:I

    if-gt v3, v4, :cond_7

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColHeadersIdx:[I

    add-int/lit8 v7, v3, -0x1

    iget v8, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColumnHeader_TypeID:I

    iget v9, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_MetaDataIdx:I

    const/4 v10, 0x2

    invoke-virtual {p0, v10, v8, v9, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElement(IIII)I

    move-result v6

    aput v6, v4, v7

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColHeadersIdx:[I

    aget v6, v4, v7

    :try_start_1
    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_NAME_TypeID:I

    invoke-virtual {p0, v4, v7, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_NAME_TypeID:I

    invoke-virtual {p0, v2, v4, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    :goto_3
    :try_start_2
    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v4

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_LABEL_TypeID:I

    invoke-virtual {p0, v4, v7, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_LABEL_TypeID:I

    invoke-virtual {p0, v2, v4, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    :goto_4
    :try_start_3
    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->getCatalogName(I)Ljava/lang/String;

    move-result-object v4

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_CATALOGUE_NAME_TypeID:I

    invoke-virtual {p0, v4, v7, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_CATALOGUE_NAME_TypeID:I

    invoke-virtual {p0, v2, v4, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    :goto_5
    :try_start_4
    new-instance v4, Ljava/lang/Integer;

    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->getColumnDisplaySize(I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_DISPLAY_SIZE_TypeID:I

    invoke-virtual {p0, v4, v7, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_DISPLAY_SIZE_TypeID:I

    invoke-virtual {p0, v2, v4, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    :goto_6
    :try_start_5
    new-instance v4, Ljava/lang/Integer;

    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_TYPE_TypeID:I

    invoke-virtual {p0, v4, v7, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_TYPE_TypeID:I

    invoke-virtual {p0, v2, v4, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    :goto_7
    :try_start_6
    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->getColumnTypeName(I)Ljava/lang/String;

    move-result-object v4

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_TYPENAME_TypeID:I

    invoke-virtual {p0, v4, v7, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_8

    :catch_6
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_TYPENAME_TypeID:I

    invoke-virtual {p0, v2, v4, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    :goto_8
    :try_start_7
    new-instance v4, Ljava/lang/Integer;

    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->getPrecision(I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_PRECISION_TypeID:I

    invoke-virtual {p0, v4, v7, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_9

    :catch_7
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_PRECISION_TypeID:I

    invoke-virtual {p0, v2, v4, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    :goto_9
    :try_start_8
    new-instance v4, Ljava/lang/Integer;

    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->getScale(I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_SCALE_TypeID:I

    invoke-virtual {p0, v4, v7, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_a

    :catch_8
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_SCALE_TypeID:I

    invoke-virtual {p0, v2, v4, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    :goto_a
    :try_start_9
    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->getSchemaName(I)Ljava/lang/String;

    move-result-object v4

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_SCHEMA_NAME_TypeID:I

    invoke-virtual {p0, v4, v7, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_b

    :catch_9
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_SCHEMA_NAME_TypeID:I

    invoke-virtual {p0, v2, v4, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    :goto_b
    :try_start_a
    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->getTableName(I)Ljava/lang/String;

    move-result-object v4

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_TABLE_NAME_TypeID:I

    invoke-virtual {p0, v4, v7, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_c

    :catch_a
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_TABLE_NAME_TypeID:I

    invoke-virtual {p0, v2, v4, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    :goto_c
    :try_start_b
    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->isCaseSensitive(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    goto :goto_d

    :cond_1
    move-object v4, v1

    :goto_d
    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_CASESENSITIVE_TypeID:I

    invoke-virtual {p0, v4, v7, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_e

    :catch_b
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_CASESENSITIVE_TypeID:I

    invoke-virtual {p0, v2, v4, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    :goto_e
    :try_start_c
    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->isDefinitelyWritable(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    goto :goto_f

    :cond_2
    move-object v4, v1

    :goto_f
    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_DEFINITELYWRITEABLE_TypeID:I

    invoke-virtual {p0, v4, v7, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_10

    :catch_c
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_DEFINITELYWRITEABLE_TypeID:I

    invoke-virtual {p0, v2, v4, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    :goto_10
    :try_start_d
    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->isNullable(I)I

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v0

    goto :goto_11

    :cond_3
    move-object v4, v1

    :goto_11
    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_ISNULLABLE_TypeID:I

    invoke-virtual {p0, v4, v7, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_12

    :catch_d
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_ISNULLABLE_TypeID:I

    invoke-virtual {p0, v2, v4, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    :goto_12
    :try_start_e
    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->isSigned(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    goto :goto_13

    :cond_4
    move-object v4, v1

    :goto_13
    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_ISSIGNED_TypeID:I

    invoke-virtual {p0, v4, v7, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_14

    :catch_e
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_ISSIGNED_TypeID:I

    invoke-virtual {p0, v2, v4, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    :goto_14
    :try_start_f
    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->isWritable(I)Z

    move-result v4

    if-ne v4, v5, :cond_5

    move-object v4, v0

    goto :goto_15

    :cond_5
    move-object v4, v1

    :goto_15
    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_ISWRITEABLE_TypeID:I

    invoke-virtual {p0, v4, v7, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_16

    :catch_f
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_ISWRITEABLE_TypeID:I

    invoke-virtual {p0, v2, v4, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    :goto_16
    :try_start_10
    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->isSearchable(I)Z

    move-result v4

    if-ne v4, v5, :cond_6

    move-object v4, v0

    goto :goto_17

    :cond_6
    move-object v4, v1

    :goto_17
    iget v7, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_ISSEARCHABLE_TypeID:I

    invoke-virtual {p0, v4, v7, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_18

    :catch_10
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_ISSEARCHABLE_TypeID:I

    invoke-virtual {p0, v2, v4, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addAttributeToNode(Ljava/lang/Object;II)I

    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_7
    return-void
.end method

.method public static getNewDocument(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;
    .locals 5

    move-object v0, p0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v2

    new-instance v3, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

    shl-int/lit8 v4, v2, 0x10

    invoke-direct {v3, v0, v4}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;I)V

    invoke-virtual {v1, v3, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->addDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;I)V

    invoke-virtual {v3, p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->setExpressionContext(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    return-object v3
.end method


# virtual methods
.method public _nextsib(I)I
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->_exptype(I)I

    move-result v0

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_FirstRowIdx:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->addRowToDTMFromResultSet()Z

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Row_TypeID:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_LastRowIdx:I

    if-lt p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "reading from the ResultSet"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->addRowToDTMFromResultSet()Z

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_MultipleResults:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_RowSetIdx:I

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "reading for next ResultSet"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_RowSetIdx:I

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_RowSetIdx:I

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->addRowToDTMFromResultSet()Z

    goto :goto_0

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->_nextsib(I)I

    move-result p0

    return p0
.end method

.method public checkWarnings()Ljava/sql/SQLWarning;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Statement:Ljava/sql/Statement;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/sql/Statement;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Statement:Ljava/sql/Statement;

    invoke-interface {p0}, Ljava/sql/Statement;->clearWarnings()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public close(Z)V
    .locals 2

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->checkWarnings()Ljava/sql/SQLWarning;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_XConnection:Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;

    invoke-virtual {v1, p1, p1, v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;Ljava/sql/SQLWarning;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Statement:Ljava/sql/Statement;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/sql/Statement;->getConnection()Ljava/sql/Connection;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Statement:Ljava/sql/Statement;

    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Statement:Ljava/sql/Statement;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-object p1, v0

    :catch_3
    :cond_2
    if-eqz p1, :cond_4

    :try_start_4
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_HasErrors:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;->releaseConnectionOnError(Ljava/sql/Connection;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;->releaseConnection(Ljava/sql/Connection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->release(Lcom/sun/org/apache/xml/internal/dtm/DTM;Z)Z

    return-void
.end method

.method public createExpandedNameTable()V
    .locals 4

    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->createExpandedNameTable()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v1, "http://xml.apache.org/xalan/SQLExtension"

    const-string v2, "sql"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_SQL_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "metadata"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_MetaData_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "column-header"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColumnHeader_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "row-set"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_RowSet_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "row"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Row_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "col"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_Col_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "out-parameters"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_OutParameter_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "catalogue-name"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_CATALOGUE_NAME_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "column-display-size"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_DISPLAY_SIZE_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "column-label"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_LABEL_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "column-name"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_NAME_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "column-type"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_TYPE_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "column-typename"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_COLUMN_TYPENAME_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "precision"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_PRECISION_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "scale"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_SCALE_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "schema-name"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_SCHEMA_NAME_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "table-name"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_TABLE_NAME_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "case-sensitive"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_CASESENSITIVE_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "definitely-writable"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_DEFINITELYWRITEABLE_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "nullable"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_ISNULLABLE_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "signed"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_ISSIGNED_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "writable"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_ISWRITEABLE_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "searchable"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ColAttrib_ISSEARCHABLE_TypeID:I

    return-void
.end method

.method public documentRegistration()V
    .locals 1

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Document Registration"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public documentRelease()V
    .locals 1

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Document Release"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public execute(Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "true"

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "streaming"

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->getFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_StreamingMode:Z

    const-string v2, "multiple-results"

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->getFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_MultipleResults:Z

    const-string v2, "cache-statements"

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->getFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_IsStatementCachingEnabled:Z

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_XConnection:Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->executeSQLStatement()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->createExpandedNameTable()V

    iget p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->m_Document_TypeID:I

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElement(IIII)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->m_DocumentIdx:I

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_SQL_TypeID:I

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElement(IIII)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_SQLIdx:I

    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_MultipleResults:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;

    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->extractSQLMetaData(Ljava/sql/ResultSetMetaData;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_HasErrors:Z

    throw p1
.end method

.method public getExpressionContext()Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ExpressionContext:Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;

    return-object p0
.end method

.method public hasErrors()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_HasErrors:Z

    return p0
.end method

.method public nextNode()Z
    .locals 1

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "nextNode()"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setExpressionContext(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ExpressionContext:Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;

    return-void
.end method

.method public skip(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->relative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_ResultSet:Ljava/sql/ResultSet;

    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    move-exception p1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_XConnection:Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->checkWarnings()Ljava/sql/SQLWarning;

    move-result-object v2

    invoke-virtual {v1, v0, p0, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;Ljava/sql/SQLWarning;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->m_XConnection:Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->checkWarnings()Ljava/sql/SQLWarning;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;Ljava/sql/SQLWarning;)V

    :cond_1
    :goto_1
    return-void
.end method
