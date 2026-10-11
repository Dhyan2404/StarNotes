package com.sun.org.apache.xalan.internal.lib.sql;

import com.sun.org.apache.xalan.internal.extensions.ExpressionContext;
import com.sun.org.apache.xml.internal.dtm.DTMManager;
import com.sun.org.apache.xml.internal.dtm.ref.DTMManagerDefault;
import com.sun.org.apache.xpath.internal.XPathContext;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.SQLWarning;
import java.sql.Statement;
import java.util.Vector;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public class SQLDocument extends DTMDocument {
    private static final String S_CASESENSITIVE = "case-sensitive";
    private static final String S_CATALOGUE_NAME = "catalogue-name";
    private static final String S_COL = "col";
    private static final String S_COLUMN_HEADER = "column-header";
    private static final String S_COLUMN_LABEL = "column-label";
    private static final String S_COLUMN_NAME = "column-name";
    private static final String S_COLUMN_TYPE = "column-type";
    private static final String S_COLUMN_TYPENAME = "column-typename";
    private static final String S_DEFINITELYWRITABLE = "definitely-writable";
    private static final String S_DISPLAY_SIZE = "column-display-size";
    private static final String S_ISNULLABLE = "nullable";
    private static final String S_ISSEARCHABLE = "searchable";
    private static final String S_ISSIGNED = "signed";
    private static final String S_ISWRITEABLE = "writable";
    private static final String S_METADATA = "metadata";
    private static final String S_NAMESPACE = "http://xml.apache.org/xalan/SQLExtension";
    private static final String S_OUT_PARAMETERS = "out-parameters";
    private static final String S_PRECISION = "precision";
    private static final String S_ROW = "row";
    private static final String S_ROW_SET = "row-set";
    private static final String S_SCALE = "scale";
    private static final String S_SCHEMA_NAME = "schema-name";
    private static final String S_SQL = "sql";
    private static final String S_TABLE_NAME = "table-name";
    private boolean DEBUG;
    private int m_ColAttrib_CASESENSITIVE_TypeID;
    private int m_ColAttrib_CATALOGUE_NAME_TypeID;
    private int m_ColAttrib_COLUMN_LABEL_TypeID;
    private int m_ColAttrib_COLUMN_NAME_TypeID;
    private int m_ColAttrib_COLUMN_TYPENAME_TypeID;
    private int m_ColAttrib_COLUMN_TYPE_TypeID;
    private int m_ColAttrib_DEFINITELYWRITEABLE_TypeID;
    private int m_ColAttrib_DISPLAY_SIZE_TypeID;
    private int m_ColAttrib_ISNULLABLE_TypeID;
    private int m_ColAttrib_ISSEARCHABLE_TypeID;
    private int m_ColAttrib_ISSIGNED_TypeID;
    private int m_ColAttrib_ISWRITEABLE_TypeID;
    private int m_ColAttrib_PRECISION_TypeID;
    private int m_ColAttrib_SCALE_TypeID;
    private int m_ColAttrib_SCHEMA_NAME_TypeID;
    private int m_ColAttrib_TABLE_NAME_TypeID;
    private int m_ColCount;
    private int[] m_ColHeadersIdx;
    private int m_Col_TypeID;
    private int m_ColumnHeader_TypeID;
    private ConnectionPool m_ConnectionPool;
    private ExpressionContext m_ExpressionContext;
    private int m_FirstRowIdx;
    private boolean m_HasErrors;
    private boolean m_IsStatementCachingEnabled;
    private int m_LastRowIdx;
    private int m_MetaDataIdx;
    private int m_MetaData_TypeID;
    private boolean m_MultipleResults;
    private int m_OutParameter_TypeID;
    private SQLQueryParser m_QueryParser;
    private ResultSet m_ResultSet;
    private int m_RowSetIdx;
    private int m_RowSet_TypeID;
    private int m_Row_TypeID;
    private int m_SQLIdx;
    private int m_SQL_TypeID;
    private Statement m_Statement;
    private boolean m_StreamingMode;
    private XConnection m_XConnection;

    public SQLDocument(DTMManager dTMManager, int i) {
        super(dTMManager, i);
        this.DEBUG = false;
        this.m_SQL_TypeID = 0;
        this.m_MetaData_TypeID = 0;
        this.m_ColumnHeader_TypeID = 0;
        this.m_RowSet_TypeID = 0;
        this.m_Row_TypeID = 0;
        this.m_Col_TypeID = 0;
        this.m_OutParameter_TypeID = 0;
        this.m_ColAttrib_CATALOGUE_NAME_TypeID = 0;
        this.m_ColAttrib_DISPLAY_SIZE_TypeID = 0;
        this.m_ColAttrib_COLUMN_LABEL_TypeID = 0;
        this.m_ColAttrib_COLUMN_NAME_TypeID = 0;
        this.m_ColAttrib_COLUMN_TYPE_TypeID = 0;
        this.m_ColAttrib_COLUMN_TYPENAME_TypeID = 0;
        this.m_ColAttrib_PRECISION_TypeID = 0;
        this.m_ColAttrib_SCALE_TypeID = 0;
        this.m_ColAttrib_SCHEMA_NAME_TypeID = 0;
        this.m_ColAttrib_TABLE_NAME_TypeID = 0;
        this.m_ColAttrib_CASESENSITIVE_TypeID = 0;
        this.m_ColAttrib_DEFINITELYWRITEABLE_TypeID = 0;
        this.m_ColAttrib_ISNULLABLE_TypeID = 0;
        this.m_ColAttrib_ISSIGNED_TypeID = 0;
        this.m_ColAttrib_ISWRITEABLE_TypeID = 0;
        this.m_ColAttrib_ISSEARCHABLE_TypeID = 0;
        this.m_Statement = null;
        this.m_ExpressionContext = null;
        this.m_ConnectionPool = null;
        this.m_ResultSet = null;
        this.m_QueryParser = null;
        this.m_MetaDataIdx = -1;
        this.m_RowSetIdx = -1;
        this.m_SQLIdx = -1;
        this.m_FirstRowIdx = -1;
        this.m_LastRowIdx = -1;
        this.m_StreamingMode = true;
        this.m_MultipleResults = false;
        this.m_HasErrors = false;
        this.m_IsStatementCachingEnabled = false;
        this.m_XConnection = null;
    }

    private boolean addRowToDTMFromResultSet() {
        int i;
        try {
            if (this.m_FirstRowIdx == -1) {
                this.m_RowSetIdx = addElement(1, this.m_RowSet_TypeID, this.m_SQLIdx, this.m_MultipleResults ? this.m_RowSetIdx : this.m_MetaDataIdx);
                if (this.m_MultipleResults) {
                    extractSQLMetaData(this.m_ResultSet.getMetaData());
                }
            }
        } catch (Exception e) {
            if (this.DEBUG) {
                System.out.println("SQL Error Fetching next row [" + e.getLocalizedMessage() + IteratorUtils.f104924b);
            }
            this.m_XConnection.setError(e, this, checkWarnings());
            this.m_HasErrors = true;
        }
        if (this.m_ResultSet.next()) {
            if (this.m_FirstRowIdx == -1) {
                int addElement = addElement(2, this.m_Row_TypeID, this.m_RowSetIdx, this.m_MultipleResults ? this.m_MetaDataIdx : -1);
                this.m_FirstRowIdx = addElement;
                this.m_LastRowIdx = addElement;
                if (this.m_StreamingMode) {
                    this.m_nextsib.setElementAt(addElement, addElement);
                }
            } else if (!this.m_StreamingMode) {
                this.m_LastRowIdx = addElement(2, this.m_Row_TypeID, this.m_RowSetIdx, this.m_LastRowIdx);
            }
            int _firstch = _firstch(this.m_LastRowIdx);
            int i2 = -1;
            for (int i3 = 1; i3 <= this.m_ColCount; i3++) {
                Object object = this.m_ResultSet.getObject(i3);
                if (_firstch == -1) {
                    i2 = addElementWithData(object, 3, this.m_Col_TypeID, this.m_LastRowIdx, i2);
                    cloneAttributeFromNode(i2, this.m_ColHeadersIdx[i3 - 1]);
                } else {
                    int _firstch2 = _firstch(_firstch);
                    if (_firstch2 == -1) {
                        error("Streaming Mode, Data Error");
                    } else {
                        this.m_ObjectArray.setAt(_firstch2, object);
                    }
                }
                if (_firstch != -1) {
                    _firstch = _nextsib(_firstch);
                }
            }
            return true;
        }
        if (this.m_StreamingMode && (i = this.m_LastRowIdx) != -1) {
            this.m_nextsib.setElementAt(-1, i);
        }
        this.m_ResultSet.close();
        if (this.m_MultipleResults) {
            while (!this.m_Statement.getMoreResults() && this.m_Statement.getUpdateCount() >= 0) {
            }
            this.m_ResultSet = this.m_Statement.getResultSet();
        } else {
            this.m_ResultSet = null;
        }
        if (this.m_ResultSet != null) {
            this.m_FirstRowIdx = -1;
            addRowToDTMFromResultSet();
        } else {
            Vector parameters = this.m_QueryParser.getParameters();
            if (parameters != null) {
                int addElement2 = addElement(1, this.m_OutParameter_TypeID, this.m_SQLIdx, this.m_RowSetIdx);
                int i4 = -1;
                for (int i5 = 0; i5 < parameters.size(); i5++) {
                    QueryParameter queryParameter = (QueryParameter) parameters.elementAt(i5);
                    if (queryParameter.isOutput()) {
                        int addElementWithData = addElementWithData(((CallableStatement) this.m_Statement).getObject(i5 + 1), 2, this.m_Col_TypeID, addElement2, i4);
                        addAttributeToNode(queryParameter.getName(), this.m_ColAttrib_COLUMN_NAME_TypeID, addElementWithData);
                        addAttributeToNode(queryParameter.getName(), this.m_ColAttrib_COLUMN_LABEL_TypeID, addElementWithData);
                        addAttributeToNode(new Integer(queryParameter.getType()), this.m_ColAttrib_COLUMN_TYPE_TypeID, addElementWithData);
                        addAttributeToNode(queryParameter.getTypeName(), this.m_ColAttrib_COLUMN_TYPENAME_TypeID, addElementWithData);
                        i4 = addElementWithData;
                    }
                }
            }
            SQLWarning checkWarnings = checkWarnings();
            if (checkWarnings != null) {
                this.m_XConnection.setError(null, null, checkWarnings);
            }
        }
        return false;
    }

    private void executeSQLStatement() throws SQLException {
        ConnectionPool connectionPool = this.m_XConnection.getConnectionPool();
        this.m_ConnectionPool = connectionPool;
        Connection connection = connectionPool.getConnection();
        if (!this.m_QueryParser.hasParameters()) {
            Statement createStatement = connection.createStatement();
            this.m_Statement = createStatement;
            this.m_ResultSet = createStatement.executeQuery(this.m_QueryParser.getSQLQuery());
        } else {
            if (!this.m_QueryParser.isCallable()) {
                PreparedStatement prepareStatement = connection.prepareStatement(this.m_QueryParser.getSQLQuery());
                this.m_QueryParser.populateStatement(prepareStatement, this.m_ExpressionContext);
                this.m_Statement = prepareStatement;
                this.m_ResultSet = prepareStatement.executeQuery();
                return;
            }
            CallableStatement prepareCall = connection.prepareCall(this.m_QueryParser.getSQLQuery());
            this.m_QueryParser.registerOutputParameters(prepareCall);
            this.m_QueryParser.populateStatement(prepareCall, this.m_ExpressionContext);
            this.m_Statement = prepareCall;
            if (!prepareCall.execute()) {
                throw new SQLException("Error in Callable Statement");
            }
            this.m_ResultSet = this.m_Statement.getResultSet();
        }
    }

    private void extractSQLMetaData(ResultSetMetaData resultSetMetaData) {
        int i = -1;
        this.m_MetaDataIdx = addElement(1, this.m_MetaData_TypeID, this.m_MultipleResults ? this.m_RowSetIdx : this.m_SQLIdx, -1);
        try {
            int columnCount = resultSetMetaData.getColumnCount();
            this.m_ColCount = columnCount;
            this.m_ColHeadersIdx = new int[columnCount];
        } catch (Exception e) {
            this.m_XConnection.setError(e, this, checkWarnings());
        }
        for (int i2 = 1; i2 <= this.m_ColCount; i2++) {
            int i3 = i2 - 1;
            this.m_ColHeadersIdx[i3] = addElement(2, this.m_ColumnHeader_TypeID, this.m_MetaDataIdx, i);
            i = this.m_ColHeadersIdx[i3];
            try {
                addAttributeToNode(resultSetMetaData.getColumnName(i2), this.m_ColAttrib_COLUMN_NAME_TypeID, i);
            } catch (Exception unused) {
                addAttributeToNode("Not Supported", this.m_ColAttrib_COLUMN_NAME_TypeID, i);
            }
            try {
                addAttributeToNode(resultSetMetaData.getColumnLabel(i2), this.m_ColAttrib_COLUMN_LABEL_TypeID, i);
            } catch (Exception unused2) {
                addAttributeToNode("Not Supported", this.m_ColAttrib_COLUMN_LABEL_TypeID, i);
            }
            try {
                addAttributeToNode(resultSetMetaData.getCatalogName(i2), this.m_ColAttrib_CATALOGUE_NAME_TypeID, i);
            } catch (Exception unused3) {
                addAttributeToNode("Not Supported", this.m_ColAttrib_CATALOGUE_NAME_TypeID, i);
            }
            try {
                addAttributeToNode(new Integer(resultSetMetaData.getColumnDisplaySize(i2)), this.m_ColAttrib_DISPLAY_SIZE_TypeID, i);
            } catch (Exception unused4) {
                addAttributeToNode("Not Supported", this.m_ColAttrib_DISPLAY_SIZE_TypeID, i);
            }
            try {
                addAttributeToNode(new Integer(resultSetMetaData.getColumnType(i2)), this.m_ColAttrib_COLUMN_TYPE_TypeID, i);
            } catch (Exception unused5) {
                addAttributeToNode("Not Supported", this.m_ColAttrib_COLUMN_TYPE_TypeID, i);
            }
            try {
                addAttributeToNode(resultSetMetaData.getColumnTypeName(i2), this.m_ColAttrib_COLUMN_TYPENAME_TypeID, i);
            } catch (Exception unused6) {
                addAttributeToNode("Not Supported", this.m_ColAttrib_COLUMN_TYPENAME_TypeID, i);
            }
            try {
                addAttributeToNode(new Integer(resultSetMetaData.getPrecision(i2)), this.m_ColAttrib_PRECISION_TypeID, i);
            } catch (Exception unused7) {
                addAttributeToNode("Not Supported", this.m_ColAttrib_PRECISION_TypeID, i);
            }
            try {
                addAttributeToNode(new Integer(resultSetMetaData.getScale(i2)), this.m_ColAttrib_SCALE_TypeID, i);
            } catch (Exception unused8) {
                addAttributeToNode("Not Supported", this.m_ColAttrib_SCALE_TypeID, i);
            }
            try {
                addAttributeToNode(resultSetMetaData.getSchemaName(i2), this.m_ColAttrib_SCHEMA_NAME_TypeID, i);
            } catch (Exception unused9) {
                addAttributeToNode("Not Supported", this.m_ColAttrib_SCHEMA_NAME_TypeID, i);
            }
            try {
                addAttributeToNode(resultSetMetaData.getTableName(i2), this.m_ColAttrib_TABLE_NAME_TypeID, i);
            } catch (Exception unused10) {
                addAttributeToNode("Not Supported", this.m_ColAttrib_TABLE_NAME_TypeID, i);
            }
            try {
                addAttributeToNode(resultSetMetaData.isCaseSensitive(i2) ? "true" : "false", this.m_ColAttrib_CASESENSITIVE_TypeID, i);
            } catch (Exception unused11) {
                addAttributeToNode("Not Supported", this.m_ColAttrib_CASESENSITIVE_TypeID, i);
            }
            try {
                addAttributeToNode(resultSetMetaData.isDefinitelyWritable(i2) ? "true" : "false", this.m_ColAttrib_DEFINITELYWRITEABLE_TypeID, i);
            } catch (Exception unused12) {
                addAttributeToNode("Not Supported", this.m_ColAttrib_DEFINITELYWRITEABLE_TypeID, i);
            }
            try {
                addAttributeToNode(resultSetMetaData.isNullable(i2) != 0 ? "true" : "false", this.m_ColAttrib_ISNULLABLE_TypeID, i);
            } catch (Exception unused13) {
                addAttributeToNode("Not Supported", this.m_ColAttrib_ISNULLABLE_TypeID, i);
            }
            try {
                addAttributeToNode(resultSetMetaData.isSigned(i2) ? "true" : "false", this.m_ColAttrib_ISSIGNED_TypeID, i);
            } catch (Exception unused14) {
                addAttributeToNode("Not Supported", this.m_ColAttrib_ISSIGNED_TypeID, i);
            }
            try {
                addAttributeToNode(resultSetMetaData.isWritable(i2) ? "true" : "false", this.m_ColAttrib_ISWRITEABLE_TypeID, i);
            } catch (Exception unused15) {
                addAttributeToNode("Not Supported", this.m_ColAttrib_ISWRITEABLE_TypeID, i);
            }
            try {
                addAttributeToNode(resultSetMetaData.isSearchable(i2) ? "true" : "false", this.m_ColAttrib_ISSEARCHABLE_TypeID, i);
            } catch (Exception unused16) {
                addAttributeToNode("Not Supported", this.m_ColAttrib_ISSEARCHABLE_TypeID, i);
            }
        }
    }

    public static SQLDocument getNewDocument(ExpressionContext expressionContext) {
        DTMManager dTMManager = ((XPathContext.XPathExpressionContext) expressionContext).getDTMManager();
        DTMManagerDefault dTMManagerDefault = (DTMManagerDefault) dTMManager;
        int firstFreeDTMID = dTMManagerDefault.getFirstFreeDTMID();
        SQLDocument sQLDocument = new SQLDocument(dTMManager, firstFreeDTMID << 16);
        dTMManagerDefault.addDTM(sQLDocument, firstFreeDTMID);
        sQLDocument.setExpressionContext(expressionContext);
        return sQLDocument;
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.DTMDocument, com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public int _nextsib(int i) {
        if (this.m_ResultSet != null) {
            int _exptype = _exptype(i);
            if (this.m_FirstRowIdx == -1) {
                addRowToDTMFromResultSet();
            }
            if (_exptype == this.m_Row_TypeID && i >= this.m_LastRowIdx) {
                if (this.DEBUG) {
                    System.out.println("reading from the ResultSet");
                }
                addRowToDTMFromResultSet();
            } else if (this.m_MultipleResults && i == this.m_RowSetIdx) {
                if (this.DEBUG) {
                    System.out.println("reading for next ResultSet");
                }
                int i2 = this.m_RowSetIdx;
                while (i2 == this.m_RowSetIdx && this.m_ResultSet != null) {
                    addRowToDTMFromResultSet();
                }
            }
        }
        return super._nextsib(i);
    }

    public SQLWarning checkWarnings() {
        Statement statement = this.m_Statement;
        SQLWarning sQLWarning = null;
        if (statement == null) {
            return null;
        }
        try {
            sQLWarning = statement.getWarnings();
            this.m_Statement.clearWarnings();
            return sQLWarning;
        } catch (SQLException unused) {
            return sQLWarning;
        }
    }

    public void close(boolean z) {
        Connection connection = null;
        try {
            SQLWarning checkWarnings = checkWarnings();
            if (checkWarnings != null) {
                this.m_XConnection.setError(null, null, checkWarnings);
            }
        } catch (Exception unused) {
        }
        try {
            ResultSet resultSet = this.m_ResultSet;
            if (resultSet != null) {
                resultSet.close();
                this.m_ResultSet = null;
            }
        } catch (Exception unused2) {
        }
        try {
            Statement statement = this.m_Statement;
            if (statement != null) {
                Connection connection2 = statement.getConnection();
                try {
                    this.m_Statement.close();
                    this.m_Statement = null;
                } catch (Exception unused3) {
                }
                connection = connection2;
            }
        } catch (Exception unused4) {
        }
        if (connection != null) {
            try {
                if (this.m_HasErrors) {
                    this.m_ConnectionPool.releaseConnectionOnError(connection);
                } else {
                    this.m_ConnectionPool.releaseConnection(connection);
                }
            } catch (Exception unused5) {
            }
        }
        getManager().release(this, true);
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.DTMDocument
    public void createExpandedNameTable() {
        super.createExpandedNameTable();
        this.m_SQL_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_SQL, 1);
        this.m_MetaData_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, "metadata", 1);
        this.m_ColumnHeader_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_COLUMN_HEADER, 1);
        this.m_RowSet_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_ROW_SET, 1);
        this.m_Row_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_ROW, 1);
        this.m_Col_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_COL, 1);
        this.m_OutParameter_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_OUT_PARAMETERS, 1);
        this.m_ColAttrib_CATALOGUE_NAME_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_CATALOGUE_NAME, 2);
        this.m_ColAttrib_DISPLAY_SIZE_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_DISPLAY_SIZE, 2);
        this.m_ColAttrib_COLUMN_LABEL_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_COLUMN_LABEL, 2);
        this.m_ColAttrib_COLUMN_NAME_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_COLUMN_NAME, 2);
        this.m_ColAttrib_COLUMN_TYPE_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_COLUMN_TYPE, 2);
        this.m_ColAttrib_COLUMN_TYPENAME_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_COLUMN_TYPENAME, 2);
        this.m_ColAttrib_PRECISION_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_PRECISION, 2);
        this.m_ColAttrib_SCALE_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, "scale", 2);
        this.m_ColAttrib_SCHEMA_NAME_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_SCHEMA_NAME, 2);
        this.m_ColAttrib_TABLE_NAME_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_TABLE_NAME, 2);
        this.m_ColAttrib_CASESENSITIVE_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_CASESENSITIVE, 2);
        this.m_ColAttrib_DEFINITELYWRITEABLE_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_DEFINITELYWRITABLE, 2);
        this.m_ColAttrib_ISNULLABLE_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_ISNULLABLE, 2);
        this.m_ColAttrib_ISSIGNED_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_ISSIGNED, 2);
        this.m_ColAttrib_ISWRITEABLE_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_ISWRITEABLE, 2);
        this.m_ColAttrib_ISSEARCHABLE_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_ISSEARCHABLE, 2);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public void documentRegistration() {
        if (this.DEBUG) {
            System.out.println("Document Registration");
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public void documentRelease() {
        if (this.DEBUG) {
            System.out.println("Document Release");
        }
    }

    public void execute(XConnection xConnection, SQLQueryParser sQLQueryParser) throws SQLException {
        try {
            this.m_StreamingMode = "true".equals(xConnection.getFeature("streaming"));
            this.m_MultipleResults = "true".equals(xConnection.getFeature("multiple-results"));
            this.m_IsStatementCachingEnabled = "true".equals(xConnection.getFeature("cache-statements"));
            this.m_XConnection = xConnection;
            this.m_QueryParser = sQLQueryParser;
            executeSQLStatement();
            createExpandedNameTable();
            int addElement = addElement(0, this.m_Document_TypeID, -1, -1);
            this.m_DocumentIdx = addElement;
            this.m_SQLIdx = addElement(1, this.m_SQL_TypeID, addElement, -1);
            if (this.m_MultipleResults) {
                return;
            }
            extractSQLMetaData(this.m_ResultSet.getMetaData());
        } catch (SQLException e) {
            this.m_HasErrors = true;
            throw e;
        }
    }

    public ExpressionContext getExpressionContext() {
        return this.m_ExpressionContext;
    }

    public boolean hasErrors() {
        return this.m_HasErrors;
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.DTMDocument, com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public boolean nextNode() {
        if (!this.DEBUG) {
            return false;
        }
        System.out.println("nextNode()");
        return false;
    }

    public void setExpressionContext(ExpressionContext expressionContext) {
        this.m_ExpressionContext = expressionContext;
    }

    public void skip(int i) {
        try {
            ResultSet resultSet = this.m_ResultSet;
            if (resultSet != null) {
                resultSet.relative(i);
            }
        } catch (Exception e) {
            for (int i2 = 0; i2 < i; i2++) {
                try {
                    if (!this.m_ResultSet.next()) {
                        return;
                    }
                } catch (Exception e2) {
                    this.m_XConnection.setError(e, this, checkWarnings());
                    this.m_XConnection.setError(e2, this, checkWarnings());
                    return;
                }
            }
        }
    }
}
