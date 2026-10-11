package com.sun.org.apache.xalan.internal.lib.sql;

import com.sun.org.apache.xalan.internal.extensions.ExpressionContext;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xpath.internal.objects.XObject;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Vector;

/* loaded from: classes10.dex */
public class SQLQueryParser {
    public static final int INLINE_PARSER = 2;
    public static final int NO_INLINE_PARSER = 1;
    public static final int NO_OVERRIDE = 0;
    private boolean m_HasParameters;
    private boolean m_InlineVariables;
    private boolean m_IsCallable;
    private String m_OrigQuery;
    private Vector m_Parameters;
    private StringBuffer m_ParsedQuery;
    private boolean m_hasOutput;

    public SQLQueryParser() {
        this.m_InlineVariables = false;
        this.m_IsCallable = false;
        this.m_OrigQuery = null;
        this.m_ParsedQuery = null;
        this.m_Parameters = null;
        this.m_hasOutput = false;
        init();
    }

    private void init() {
    }

    public Vector getParameters() {
        return this.m_Parameters;
    }

    public String getSQLQuery() {
        return this.m_InlineVariables ? this.m_ParsedQuery.toString() : this.m_OrigQuery;
    }

    public boolean hasParameters() {
        return this.m_HasParameters;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x003d. Please report as an issue. */
    public void inlineParser() {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.m_Parameters == null) {
            this.m_Parameters = new Vector();
        }
        if (this.m_ParsedQuery == null) {
            this.m_ParsedQuery = new StringBuffer();
        }
        QueryParameter queryParameter = null;
        char c = 0;
        boolean z = true;
        for (int i = 0; i < this.m_OrigQuery.length(); i++) {
            char charAt = this.m_OrigQuery.charAt(i);
            switch (c) {
                case 0:
                    if (charAt == '\'') {
                        c = 1;
                    } else if (charAt == '?') {
                        c = 4;
                    } else if (z && (Character.isLetterOrDigit(charAt) || charAt == '#')) {
                        stringBuffer.append(charAt);
                        c = 3;
                    }
                    this.m_ParsedQuery.append(charAt);
                    break;
                case 1:
                    if (charAt == '\'') {
                        c = 0;
                    } else if (charAt == '\\') {
                        c = 2;
                    }
                    this.m_ParsedQuery.append(charAt);
                    break;
                case 2:
                    this.m_ParsedQuery.append(charAt);
                    c = 1;
                    break;
                case 3:
                    if (Character.isLetterOrDigit(charAt) || charAt == '#' || charAt == '_') {
                        stringBuffer.append(charAt);
                    } else {
                        if (stringBuffer.toString().equalsIgnoreCase("call")) {
                            this.m_IsCallable = true;
                            if (queryParameter != null) {
                                queryParameter.setIsOutput(true);
                            }
                        }
                        stringBuffer = new StringBuffer();
                        if (charAt == '\'') {
                            z = false;
                            c = 1;
                        } else if (charAt == '?') {
                            z = false;
                            c = 4;
                        } else {
                            c = 0;
                            z = false;
                        }
                    }
                    this.m_ParsedQuery.append(charAt);
                    break;
                case 4:
                    if (charAt == '[') {
                        c = 5;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (!Character.isWhitespace(charAt) && charAt != '=') {
                        stringBuffer.append(Character.toUpperCase(charAt));
                        break;
                    } else if (stringBuffer.length() > 0) {
                        this.m_HasParameters = true;
                        queryParameter = new QueryParameter();
                        queryParameter.setTypeName(stringBuffer.toString());
                        this.m_Parameters.addElement(queryParameter);
                        stringBuffer = new StringBuffer();
                        if (charAt != '=') {
                            c = 6;
                            break;
                        }
                        c = 7;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (charAt != '=') {
                        break;
                    }
                    c = 7;
                    break;
                case 7:
                    if (!Character.isWhitespace(charAt) && charAt != ']') {
                        stringBuffer.append(charAt);
                        break;
                    } else if (stringBuffer.length() > 0) {
                        queryParameter.setName(stringBuffer.toString());
                        stringBuffer = new StringBuffer();
                        if (charAt != ']') {
                            c = '\b';
                            break;
                        }
                        c = 0;
                        break;
                    } else {
                        break;
                    }
                case '\b':
                    if (!Character.isWhitespace(charAt) && charAt != ']') {
                        stringBuffer.append(charAt);
                        break;
                    } else if (stringBuffer.length() > 0) {
                        stringBuffer.setLength(3);
                        if (stringBuffer.toString().equalsIgnoreCase("OUT")) {
                            queryParameter.setIsOutput(true);
                            this.m_hasOutput = true;
                        }
                        stringBuffer = new StringBuffer();
                        if (charAt != ']') {
                            break;
                        }
                        c = 0;
                        break;
                    } else {
                        break;
                    }
            }
        }
        if (this.m_IsCallable) {
            this.m_ParsedQuery.insert(0, '{');
            this.m_ParsedQuery.append('}');
        }
    }

    public boolean isCallable() {
        return this.m_IsCallable;
    }

    public SQLQueryParser parse(XConnection xConnection, String str, int i) {
        SQLQueryParser sQLQueryParser = new SQLQueryParser(str);
        sQLQueryParser.parse(xConnection, i);
        return sQLQueryParser;
    }

    public void populateStatement(PreparedStatement preparedStatement, ExpressionContext expressionContext) {
        for (int i = 0; i < this.m_Parameters.size(); i++) {
            QueryParameter queryParameter = (QueryParameter) this.m_Parameters.elementAt(i);
            try {
                if (this.m_InlineVariables) {
                    XObject variableOrParam = expressionContext.getVariableOrParam(new QName(queryParameter.getName()));
                    if (variableOrParam != null) {
                        preparedStatement.setObject(i + 1, variableOrParam.object(), queryParameter.getType(), 4);
                    } else {
                        preparedStatement.setNull(i + 1, queryParameter.getType());
                    }
                } else {
                    String value = queryParameter.getValue();
                    if (value != null) {
                        preparedStatement.setObject(i + 1, value, queryParameter.getType(), 4);
                    } else {
                        preparedStatement.setNull(i + 1, queryParameter.getType());
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public void registerOutputParameters(CallableStatement callableStatement) throws SQLException {
        if (this.m_IsCallable && this.m_hasOutput) {
            for (int i = 0; i < this.m_Parameters.size(); i++) {
                QueryParameter queryParameter = (QueryParameter) this.m_Parameters.elementAt(i);
                if (queryParameter.isOutput()) {
                    callableStatement.registerOutParameter(i + 1, queryParameter.getType());
                }
            }
        }
    }

    public void setParameters(Vector vector) {
        this.m_HasParameters = true;
        this.m_Parameters = vector;
    }

    private void parse(XConnection xConnection, int i) {
        this.m_InlineVariables = "true".equals(xConnection.getFeature("inline-variables"));
        if (i == 1) {
            this.m_InlineVariables = false;
        } else if (i == 2) {
            this.m_InlineVariables = true;
        }
        if (this.m_InlineVariables) {
            inlineParser();
        }
    }

    private SQLQueryParser(String str) {
        this.m_InlineVariables = false;
        this.m_IsCallable = false;
        this.m_ParsedQuery = null;
        this.m_Parameters = null;
        this.m_hasOutput = false;
        this.m_OrigQuery = str;
    }
}
