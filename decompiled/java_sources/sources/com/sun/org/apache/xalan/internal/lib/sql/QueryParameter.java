package com.sun.org.apache.xalan.internal.lib.sql;

import java.util.Hashtable;

/* loaded from: classes10.dex */
public class QueryParameter {
    private static Hashtable m_Typetable;
    private String m_name;
    private boolean m_output;
    private int m_type;
    private String m_typeName;
    private String m_value;

    public QueryParameter() {
        this.m_type = -1;
        this.m_name = null;
        this.m_value = null;
        this.m_output = false;
        this.m_typeName = null;
    }

    private static int map_type(String str) {
        if (m_Typetable == null) {
            Hashtable hashtable = new Hashtable();
            m_Typetable = hashtable;
            hashtable.put("BIGINT", new Integer(-5));
            m_Typetable.put("BINARY", new Integer(-2));
            m_Typetable.put("BIT", new Integer(-7));
            m_Typetable.put("CHAR", new Integer(1));
            m_Typetable.put("DATE", new Integer(91));
            m_Typetable.put("DECIMAL", new Integer(3));
            m_Typetable.put("DOUBLE", new Integer(8));
            m_Typetable.put("FLOAT", new Integer(6));
            m_Typetable.put("INTEGER", new Integer(4));
            m_Typetable.put("LONGVARBINARY", new Integer(-4));
            m_Typetable.put("LONGVARCHAR", new Integer(-1));
            m_Typetable.put("NULL", new Integer(0));
            m_Typetable.put("NUMERIC", new Integer(2));
            m_Typetable.put("OTHER", new Integer(1111));
            m_Typetable.put("REAL", new Integer(7));
            m_Typetable.put("SMALLINT", new Integer(5));
            m_Typetable.put("TIME", new Integer(92));
            m_Typetable.put("TIMESTAMP", new Integer(93));
            m_Typetable.put("TINYINT", new Integer(-6));
            m_Typetable.put("VARBINARY", new Integer(-3));
            m_Typetable.put("VARCHAR", new Integer(12));
            m_Typetable.put("STRING", new Integer(12));
            m_Typetable.put("BIGDECIMAL", new Integer(2));
            m_Typetable.put("BOOLEAN", new Integer(-7));
            m_Typetable.put("BYTES", new Integer(-4));
            m_Typetable.put("LONG", new Integer(-5));
            m_Typetable.put("SHORT", new Integer(5));
        }
        Integer num = (Integer) m_Typetable.get(str.toUpperCase());
        if (num == null) {
            return 1111;
        }
        return num.intValue();
    }

    public String getName() {
        return this.m_name;
    }

    public int getType() {
        return this.m_type;
    }

    public String getTypeName() {
        return this.m_typeName;
    }

    public String getValue() {
        return this.m_value;
    }

    public boolean isOutput() {
        return this.m_output;
    }

    public void setIsOutput(boolean z) {
        this.m_output = z;
    }

    public void setName(String str) {
        this.m_name = str;
    }

    public void setTypeName(String str) {
        this.m_type = map_type(str);
        this.m_typeName = str;
    }

    public void setValue(String str) {
        this.m_value = str;
    }

    public QueryParameter(String str, String str2) {
        this.m_name = null;
        this.m_value = str;
        this.m_output = false;
        setTypeName(str2);
    }

    public QueryParameter(String str, String str2, String str3, boolean z) {
        this.m_name = str;
        this.m_value = str2;
        this.m_output = z;
        setTypeName(str3);
    }
}
