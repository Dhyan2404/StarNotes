package com.sun.org.apache.xalan.internal.lib.sql;

import com.sun.org.apache.xalan.internal.extensions.ExpressionContext;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMManager;
import com.sun.org.apache.xml.internal.dtm.ref.DTMManagerDefault;
import com.sun.org.apache.xml.internal.dtm.ref.DTMNodeIterator;
import com.sun.org.apache.xml.internal.dtm.ref.DTMNodeProxy;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XBooleanStatic;
import com.sun.org.apache.xpath.internal.objects.XNodeSet;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.SQLWarning;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.TransformerException;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes10.dex */
public class XConnection {
    private static final boolean DEBUG = false;
    private ConnectionPool m_ConnectionPool = null;
    private Connection m_Connection = null;
    private boolean m_DefaultPoolingEnabled = false;
    private Vector m_OpenSQLDocuments = new Vector();
    private ConnectionPoolManager m_PoolMgr = new ConnectionPoolManager();
    private Vector m_ParameterList = new Vector();
    private Exception m_Error = null;
    private SQLDocument m_LastSQLDocumentWithError = null;
    private boolean m_FullErrors = false;
    private SQLQueryParser m_QueryParser = new SQLQueryParser();
    private boolean m_IsDefaultPool = false;
    private boolean m_IsStreamingEnabled = true;
    private boolean m_InlineVariables = false;
    private boolean m_IsMultipleResultsEnabled = false;
    private boolean m_IsStatementCachingEnabled = false;

    public XConnection() {
    }

    private void addParameters(Element element) {
        Node firstChild = element.getFirstChild();
        if (firstChild == null) {
            return;
        }
        do {
            if (firstChild.getNodeType() == 1) {
                Node namedItem = firstChild.getAttributes().getNamedItem("type");
                String nodeValue = namedItem == null ? "string" : namedItem.getNodeValue();
                Node firstChild2 = firstChild.getFirstChild();
                if (firstChild2 != null) {
                    String nodeValue2 = firstChild2.getNodeValue();
                    if (nodeValue2 == null) {
                        nodeValue2 = "";
                    }
                    this.m_ParameterList.addElement(new QueryParameter(nodeValue2, nodeValue));
                }
            }
            firstChild = firstChild.getNextSibling();
        } while (firstChild != null);
    }

    private void addTypeToData(String str) {
        if (str == null || this.m_ParameterList == null) {
            return;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            QueryParameter queryParameter = (QueryParameter) this.m_ParameterList.elementAt(i);
            if (queryParameter != null) {
                queryParameter.setTypeName(nextToken);
            }
            i++;
        }
    }

    private SQLErrorDocument buildErrorDocument() {
        SQLDocument sQLDocument = this.m_LastSQLDocumentWithError;
        if (sQLDocument == null) {
            return null;
        }
        ExpressionContext expressionContext = sQLDocument.getExpressionContext();
        SQLWarning checkWarnings = this.m_LastSQLDocumentWithError.checkWarnings();
        try {
            DTMManager dTMManager = ((XPathContext.XPathExpressionContext) expressionContext).getDTMManager();
            DTMManagerDefault dTMManagerDefault = (DTMManagerDefault) dTMManager;
            int firstFreeDTMID = dTMManagerDefault.getFirstFreeDTMID();
            SQLErrorDocument sQLErrorDocument = new SQLErrorDocument(dTMManager, firstFreeDTMID << 16, this.m_Error, checkWarnings, this.m_FullErrors);
            dTMManagerDefault.addDTM(sQLErrorDocument, firstFreeDTMID);
            this.m_Error = null;
            this.m_LastSQLDocumentWithError = null;
            return sQLErrorDocument;
        } catch (Exception unused) {
            return null;
        }
    }

    private void init(String str, String str2, Properties properties) throws SQLException {
        String property = properties.getProperty("user");
        if (property == null) {
            property = "";
        }
        String property2 = properties.getProperty("password");
        String str3 = str + str2 + property + (property2 != null ? property2 : "");
        ConnectionPool pool = this.m_PoolMgr.getPool(str3);
        if (pool == null) {
            DefaultConnectionPool defaultConnectionPool = new DefaultConnectionPool();
            defaultConnectionPool.setDriver(str);
            defaultConnectionPool.setURL(str2);
            defaultConnectionPool.setProtocol(properties);
            if (this.m_DefaultPoolingEnabled) {
                defaultConnectionPool.setPoolEnabled(true);
            }
            this.m_PoolMgr.registerPool(str3, defaultConnectionPool);
            this.m_ConnectionPool = defaultConnectionPool;
        } else {
            this.m_ConnectionPool = pool;
        }
        this.m_IsDefaultPool = true;
        Connection connection = this.m_ConnectionPool.getConnection();
        if (connection != null) {
            this.m_ConnectionPool.releaseConnection(connection);
        }
    }

    private void initFromElement(Element element) throws SQLException {
        Node namedItem;
        Properties properties = new Properties();
        Node firstChild = element.getFirstChild();
        if (firstChild == null) {
            return;
        }
        String str = "";
        String str2 = str;
        do {
            String nodeName = firstChild.getNodeName();
            if (nodeName.equalsIgnoreCase("dbdriver")) {
                Node firstChild2 = firstChild.getFirstChild();
                str = firstChild2 != null ? firstChild2.getNodeValue() : "";
            }
            if (nodeName.equalsIgnoreCase("dburl")) {
                Node firstChild3 = firstChild.getFirstChild();
                str2 = firstChild3 != null ? firstChild3.getNodeValue() : "";
            }
            if (nodeName.equalsIgnoreCase("password")) {
                Node firstChild4 = firstChild.getFirstChild();
                properties.put("password", firstChild4 != null ? firstChild4.getNodeValue() : "");
            }
            if (nodeName.equalsIgnoreCase("user")) {
                Node firstChild5 = firstChild.getFirstChild();
                properties.put("user", firstChild5 != null ? firstChild5.getNodeValue() : "");
            }
            if (nodeName.equalsIgnoreCase("protocol") && (namedItem = firstChild.getAttributes().getNamedItem("name")) != null) {
                String nodeValue = namedItem.getNodeValue();
                Node firstChild6 = firstChild.getFirstChild();
                properties.put(nodeValue, firstChild6 != null ? firstChild6.getNodeValue() : "");
            }
            firstChild = firstChild.getNextSibling();
        } while (firstChild != null);
        init(str, str2, properties);
    }

    private SQLDocument locateSQLDocument(ExpressionContext expressionContext, Object obj) {
        try {
            if (!(obj instanceof DTMNodeIterator)) {
                setError(new Exception("SQL Extension:close - Can Not Identify SQLDocument"), expressionContext);
                return null;
            }
            DTMNodeIterator dTMNodeIterator = (DTMNodeIterator) obj;
            try {
                return (SQLDocument) ((DTMNodeProxy) dTMNodeIterator.getRoot()).getDTM();
            } catch (Exception unused) {
                XNodeSet xNodeSet = (XNodeSet) dTMNodeIterator.getDTMIterator();
                return (SQLDocument) xNodeSet.getContainedIter().getDTM(xNodeSet.nextNode());
            }
        } catch (Exception e) {
            setError(e, expressionContext);
            return null;
        }
    }

    public void addParameter(String str) {
        addParameterWithType(str, null);
    }

    public void addParameterFromElement(Element element) {
        Node namedItem = element.getAttributes().getNamedItem("type");
        Node firstChild = element.getFirstChild();
        if (firstChild != null) {
            String nodeValue = firstChild.getNodeValue();
            if (nodeValue == null) {
                nodeValue = "";
            }
            this.m_ParameterList.addElement(new QueryParameter(nodeValue, namedItem.getNodeValue()));
        }
    }

    public void addParameterWithType(String str, String str2) {
        this.m_ParameterList.addElement(new QueryParameter(str, str2));
    }

    public void clearParameters() {
        this.m_ParameterList.removeAllElements();
    }

    public void close() throws SQLException {
        while (this.m_OpenSQLDocuments.size() != 0) {
            try {
                ((SQLDocument) this.m_OpenSQLDocuments.elementAt(0)).close(this.m_IsDefaultPool);
            } catch (Exception unused) {
            }
            this.m_OpenSQLDocuments.removeElementAt(0);
        }
        Connection connection = this.m_Connection;
        if (connection != null) {
            this.m_ConnectionPool.releaseConnection(connection);
            this.m_Connection = null;
        }
    }

    public XBooleanStatic connect(ExpressionContext expressionContext, String str) {
        try {
            ConnectionPool pool = this.m_PoolMgr.getPool(str);
            this.m_ConnectionPool = pool;
            if (pool == null) {
                JNDIConnectionPool jNDIConnectionPool = new JNDIConnectionPool(str);
                if (jNDIConnectionPool.testConnection()) {
                    this.m_PoolMgr.registerPool(str, jNDIConnectionPool);
                    this.m_ConnectionPool = jNDIConnectionPool;
                    this.m_IsDefaultPool = false;
                    return new XBooleanStatic(true);
                }
                throw new IllegalArgumentException("Invalid ConnectionPool name or JNDI Datasource path: " + str);
            }
            this.m_IsDefaultPool = false;
            return new XBooleanStatic(true);
        } catch (Exception e) {
            setError(e, expressionContext);
            return new XBooleanStatic(false);
        }
    }

    public void disableDefaultConnectionPool() {
        this.m_DefaultPoolingEnabled = false;
        ConnectionPool connectionPool = this.m_ConnectionPool;
        if (connectionPool != null && this.m_IsDefaultPool) {
            connectionPool.setPoolEnabled(false);
        }
    }

    public void disableStreamingMode() {
        this.m_IsStreamingEnabled = false;
    }

    public void enableDefaultConnectionPool() {
        this.m_DefaultPoolingEnabled = true;
        ConnectionPool connectionPool = this.m_ConnectionPool;
        if (connectionPool == null || this.m_IsDefaultPool) {
            return;
        }
        connectionPool.setPoolEnabled(true);
    }

    public void enableStreamingMode() {
        this.m_IsStreamingEnabled = true;
    }

    public void finalize() {
        try {
            close();
        } catch (Exception unused) {
        }
    }

    public ConnectionPool getConnectionPool() {
        return this.m_ConnectionPool;
    }

    public DTM getError() {
        if (this.m_FullErrors) {
            for (int i = 0; i < this.m_OpenSQLDocuments.size(); i++) {
                SQLDocument sQLDocument = (SQLDocument) this.m_OpenSQLDocuments.elementAt(i);
                SQLWarning checkWarnings = sQLDocument.checkWarnings();
                if (checkWarnings != null) {
                    setError(null, sQLDocument, checkWarnings);
                }
            }
        }
        return buildErrorDocument();
    }

    public String getFeature(String str) {
        if ("streaming".equalsIgnoreCase(str)) {
            if (this.m_IsStreamingEnabled) {
                return "true";
            }
        } else if ("inline-variables".equalsIgnoreCase(str)) {
            if (this.m_InlineVariables) {
                return "true";
            }
        } else if ("multiple-results".equalsIgnoreCase(str)) {
            if (this.m_IsMultipleResultsEnabled) {
                return "true";
            }
        } else if ("cache-statements".equalsIgnoreCase(str)) {
            if (this.m_IsStatementCachingEnabled) {
                return "true";
            }
        } else if ("default-pool-enabled".equalsIgnoreCase(str)) {
            if (this.m_DefaultPoolingEnabled) {
                return "true";
            }
        } else {
            if (!"full-errors".equalsIgnoreCase(str)) {
                return null;
            }
            if (this.m_FullErrors) {
                return "true";
            }
        }
        return "false";
    }

    public DTM pquery(ExpressionContext expressionContext, String str) {
        return pquery(expressionContext, str, null);
    }

    public DTM query(ExpressionContext expressionContext, String str) {
        SQLDocument sQLDocument;
        SQLDocument sQLDocument2 = null;
        try {
            if (this.m_ConnectionPool == null) {
                return null;
            }
            SQLQueryParser parse = this.m_QueryParser.parse(this, str, 1);
            sQLDocument = SQLDocument.getNewDocument(expressionContext);
            try {
                sQLDocument.execute(this, parse);
                this.m_OpenSQLDocuments.addElement(sQLDocument);
                return sQLDocument;
            } catch (Exception e) {
                e = e;
                if (sQLDocument != null) {
                    if (sQLDocument.hasErrors()) {
                        setError(e, sQLDocument, sQLDocument.checkWarnings());
                    }
                    sQLDocument.close(this.m_IsDefaultPool);
                } else {
                    sQLDocument2 = sQLDocument;
                }
                return sQLDocument2;
            }
        } catch (Exception e2) {
            e = e2;
            sQLDocument = null;
        }
    }

    public void setError(Exception exc, ExpressionContext expressionContext) {
        try {
            ErrorListener errorListener = expressionContext.getErrorListener();
            if (errorListener == null || exc == null) {
                return;
            }
            errorListener.warning(new TransformerException(exc.toString(), expressionContext.getXPathContext().getSAXLocator(), exc));
        } catch (Exception unused) {
        }
    }

    public void setFeature(String str, String str2) {
        boolean equalsIgnoreCase = "true".equalsIgnoreCase(str2);
        if ("streaming".equalsIgnoreCase(str)) {
            this.m_IsStreamingEnabled = equalsIgnoreCase;
            return;
        }
        if ("inline-variables".equalsIgnoreCase(str)) {
            this.m_InlineVariables = equalsIgnoreCase;
            return;
        }
        if ("multiple-results".equalsIgnoreCase(str)) {
            this.m_IsMultipleResultsEnabled = equalsIgnoreCase;
            return;
        }
        if ("cache-statements".equalsIgnoreCase(str)) {
            this.m_IsStatementCachingEnabled = equalsIgnoreCase;
            return;
        }
        if (!"default-pool-enabled".equalsIgnoreCase(str)) {
            if ("full-errors".equalsIgnoreCase(str)) {
                this.m_FullErrors = equalsIgnoreCase;
            }
        } else {
            this.m_DefaultPoolingEnabled = equalsIgnoreCase;
            ConnectionPool connectionPool = this.m_ConnectionPool;
            if (connectionPool == null || this.m_IsDefaultPool) {
                return;
            }
            connectionPool.setPoolEnabled(equalsIgnoreCase);
        }
    }

    public void skipRec(ExpressionContext expressionContext, Object obj, int i) {
        SQLDocument locateSQLDocument = locateSQLDocument(expressionContext, obj);
        if (locateSQLDocument != null) {
            locateSQLDocument.skip(i);
        }
    }

    public DTM pquery(ExpressionContext expressionContext, String str, String str2) {
        SQLDocument sQLDocument;
        SQLDocument sQLDocument2 = null;
        try {
            if (this.m_ConnectionPool == null) {
                return null;
            }
            SQLQueryParser parse = this.m_QueryParser.parse(this, str, 0);
            if (!this.m_InlineVariables) {
                addTypeToData(str2);
                parse.setParameters(this.m_ParameterList);
            }
            SQLDocument newDocument = SQLDocument.getNewDocument(expressionContext);
            try {
                newDocument.execute(this, parse);
                this.m_OpenSQLDocuments.addElement(newDocument);
                return newDocument;
            } catch (Exception e) {
                sQLDocument = newDocument;
                e = e;
                if (sQLDocument != null) {
                    if (sQLDocument.hasErrors()) {
                        setError(e, sQLDocument, sQLDocument.checkWarnings());
                    }
                    sQLDocument.close(this.m_IsDefaultPool);
                } else {
                    sQLDocument2 = sQLDocument;
                }
                return sQLDocument2;
            }
        } catch (Exception e2) {
            e = e2;
            sQLDocument = null;
        }
    }

    public void setError(Exception exc, SQLDocument sQLDocument, SQLWarning sQLWarning) {
        ExpressionContext expressionContext = sQLDocument.getExpressionContext();
        this.m_LastSQLDocumentWithError = sQLDocument;
        try {
            ErrorListener errorListener = expressionContext.getErrorListener();
            if (errorListener != null && exc != null) {
                errorListener.warning(new TransformerException(exc.toString(), expressionContext.getXPathContext().getSAXLocator(), exc));
            }
            if (errorListener != null && sQLWarning != null) {
                errorListener.warning(new TransformerException(sQLWarning.toString(), expressionContext.getXPathContext().getSAXLocator(), sQLWarning));
            }
            if (exc != null) {
                this.m_Error = exc;
            }
            if (sQLWarning != null) {
                SQLWarning sQLWarning2 = new SQLWarning(sQLWarning.getMessage(), sQLWarning.getSQLState(), sQLWarning.getErrorCode());
                for (SQLWarning nextWarning = sQLWarning.getNextWarning(); nextWarning != null; nextWarning = nextWarning.getNextWarning()) {
                    sQLWarning2.setNextWarning(new SQLWarning(nextWarning.getMessage(), nextWarning.getSQLState(), nextWarning.getErrorCode()));
                }
                sQLWarning2.setNextWarning(new SQLWarning(sQLWarning.getMessage(), sQLWarning.getSQLState(), sQLWarning.getErrorCode()));
            }
        } catch (Exception unused) {
        }
    }

    public void addParameterFromElement(NodeList nodeList) {
        int length = nodeList.getLength();
        for (int i = 0; i < length; i++) {
            addParameters((Element) nodeList.item(i));
        }
    }

    public void close(ExpressionContext expressionContext, Object obj) throws SQLException {
        SQLDocument locateSQLDocument = locateSQLDocument(expressionContext, obj);
        if (locateSQLDocument != null) {
            locateSQLDocument.close(this.m_IsDefaultPool);
            this.m_OpenSQLDocuments.remove(locateSQLDocument);
        }
    }

    public XBooleanStatic connect(ExpressionContext expressionContext, String str, String str2) {
        try {
            init(str, str2, new Properties());
            return new XBooleanStatic(true);
        } catch (SQLException e) {
            setError(e, expressionContext);
            return new XBooleanStatic(false);
        } catch (Exception e2) {
            setError(e2, expressionContext);
            return new XBooleanStatic(false);
        }
    }

    public XConnection(ExpressionContext expressionContext, String str) {
        connect(expressionContext, str);
    }

    public XBooleanStatic connect(ExpressionContext expressionContext, Element element) {
        try {
            initFromElement(element);
            return new XBooleanStatic(true);
        } catch (SQLException e) {
            setError(e, expressionContext);
            return new XBooleanStatic(false);
        } catch (Exception e2) {
            setError(e2, expressionContext);
            return new XBooleanStatic(false);
        }
    }

    public XBooleanStatic connect(ExpressionContext expressionContext, NodeList nodeList) {
        try {
            initFromElement((Element) nodeList.item(0));
            return new XBooleanStatic(true);
        } catch (SQLException e) {
            setError(e, expressionContext);
            return new XBooleanStatic(false);
        } catch (Exception e2) {
            setError(e2, expressionContext);
            return new XBooleanStatic(false);
        }
    }

    public XBooleanStatic connect(ExpressionContext expressionContext, String str, String str2, String str3, String str4) {
        try {
            Properties properties = new Properties();
            properties.put("user", str3);
            properties.put("password", str4);
            init(str, str2, properties);
            return new XBooleanStatic(true);
        } catch (SQLException e) {
            setError(e, expressionContext);
            return new XBooleanStatic(false);
        } catch (Exception e2) {
            setError(e2, expressionContext);
            return new XBooleanStatic(false);
        }
    }

    public XConnection(ExpressionContext expressionContext, String str, String str2) {
        connect(expressionContext, str, str2);
    }

    public XBooleanStatic connect(ExpressionContext expressionContext, String str, String str2, Element element) {
        try {
            Properties properties = new Properties();
            NamedNodeMap attributes = element.getAttributes();
            for (int i = 0; i < attributes.getLength(); i++) {
                properties.put(attributes.item(i).getNodeName(), attributes.item(i).getNodeValue());
            }
            init(str, str2, properties);
            return new XBooleanStatic(true);
        } catch (SQLException e) {
            setError(e, expressionContext);
            return new XBooleanStatic(false);
        } catch (Exception e2) {
            setError(e2, expressionContext);
            return new XBooleanStatic(false);
        }
    }

    public XConnection(ExpressionContext expressionContext, NodeList nodeList) {
        connect(expressionContext, nodeList);
    }

    public XConnection(ExpressionContext expressionContext, String str, String str2, String str3, String str4) {
        connect(expressionContext, str, str2, str3, str4);
    }

    public XConnection(ExpressionContext expressionContext, String str, String str2, Element element) {
        connect(expressionContext, str, str2, element);
    }
}
