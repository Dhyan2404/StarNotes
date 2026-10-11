package com.sun.org.apache.xalan.internal.lib.sql;

import com.sun.org.apache.xml.internal.dtm.DTMManager;
import java.sql.SQLException;

/* loaded from: classes10.dex */
public class SQLErrorDocument extends DTMDocument {
    private static final String S_CODE = "code";
    private static final String S_EXT_ERROR = "ext-error";
    private static final String S_MESSAGE = "message";
    private static final String S_SQL_ERROR = "sql-error";
    private static final String S_SQL_WARNING = "sql-warning";
    private static final String S_STATE = "state";
    private int m_Code_TypeID;
    private int m_ErrorExt_TypeID;
    private int m_MainMessageID;
    private int m_Message_TypeID;
    private int m_SQLError_TypeID;
    private int m_SQLWarning_TypeID;
    private int m_State_TypeID;
    private int m_extErrorID;
    private int m_rootID;

    public SQLErrorDocument(DTMManager dTMManager, int i, SQLException sQLException) {
        super(dTMManager, i);
        this.m_ErrorExt_TypeID = -1;
        this.m_Message_TypeID = -1;
        this.m_Code_TypeID = -1;
        this.m_State_TypeID = -1;
        this.m_SQLWarning_TypeID = -1;
        this.m_SQLError_TypeID = -1;
        this.m_rootID = -1;
        this.m_extErrorID = -1;
        this.m_MainMessageID = -1;
        createExpandedNameTable();
        buildBasicStructure(sQLException);
        int addElement = addElement(2, this.m_SQLError_TypeID, this.m_extErrorID, this.m_MainMessageID);
        addElementWithData(sQLException.getLocalizedMessage(), 3, this.m_Message_TypeID, addElement, addElementWithData(new Integer(sQLException.getErrorCode()), 3, this.m_Code_TypeID, addElement, -1));
    }

    private void buildBasicStructure(Exception exc) {
        int addElement = addElement(0, this.m_Document_TypeID, -1, -1);
        this.m_rootID = addElement;
        this.m_extErrorID = addElement(1, this.m_ErrorExt_TypeID, addElement, -1);
        this.m_MainMessageID = addElementWithData(exc != null ? exc.getLocalizedMessage() : "SQLWarning", 2, this.m_Message_TypeID, this.m_extErrorID, -1);
    }

    @Override // com.sun.org.apache.xalan.internal.lib.sql.DTMDocument
    public void createExpandedNameTable() {
        super.createExpandedNameTable();
        this.m_ErrorExt_TypeID = this.m_expandedNameTable.getExpandedTypeID("http://xml.apache.org/xalan/SQLExtension", S_EXT_ERROR, 1);
        this.m_SQLError_TypeID = this.m_expandedNameTable.getExpandedTypeID("http://xml.apache.org/xalan/SQLExtension", S_SQL_ERROR, 1);
        this.m_Message_TypeID = this.m_expandedNameTable.getExpandedTypeID("http://xml.apache.org/xalan/SQLExtension", "message", 1);
        this.m_Code_TypeID = this.m_expandedNameTable.getExpandedTypeID("http://xml.apache.org/xalan/SQLExtension", "code", 1);
        this.m_State_TypeID = this.m_expandedNameTable.getExpandedTypeID("http://xml.apache.org/xalan/SQLExtension", "state", 1);
        this.m_SQLWarning_TypeID = this.m_expandedNameTable.getExpandedTypeID("http://xml.apache.org/xalan/SQLExtension", S_SQL_WARNING, 1);
    }

    public SQLErrorDocument(DTMManager dTMManager, int i, Exception exc) {
        super(dTMManager, i);
        this.m_ErrorExt_TypeID = -1;
        this.m_Message_TypeID = -1;
        this.m_Code_TypeID = -1;
        this.m_State_TypeID = -1;
        this.m_SQLWarning_TypeID = -1;
        this.m_SQLError_TypeID = -1;
        this.m_rootID = -1;
        this.m_extErrorID = -1;
        this.m_MainMessageID = -1;
        createExpandedNameTable();
        buildBasicStructure(exc);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0033  */
    /* JADX WARN: Type inference failed for: r13v7, types: [java.sql.SQLException] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0030 -> B:6:0x0031). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SQLErrorDocument(com.sun.org.apache.xml.internal.dtm.DTMManager r10, int r11, java.lang.Exception r12, java.sql.SQLWarning r13, boolean r14) {
        /*
            r9 = this;
            r9.<init>(r10, r11)
            r10 = -1
            r9.m_ErrorExt_TypeID = r10
            r9.m_Message_TypeID = r10
            r9.m_Code_TypeID = r10
            r9.m_State_TypeID = r10
            r9.m_SQLWarning_TypeID = r10
            r9.m_SQLError_TypeID = r10
            r9.m_rootID = r10
            r9.m_extErrorID = r10
            r9.m_MainMessageID = r10
            r9.createExpandedNameTable()
            r9.buildBasicStructure(r12)
            int r10 = r9.m_MainMessageID
            r11 = 0
            r0 = 0
            if (r12 == 0) goto L2a
            boolean r1 = r12 instanceof java.sql.SQLException
            if (r1 == 0) goto L2a
            r13 = r12
            java.sql.SQLException r13 = (java.sql.SQLException) r13
            goto L31
        L2a:
            if (r14 == 0) goto L30
            if (r13 == 0) goto L30
            r0 = 1
            goto L31
        L30:
            r13 = r11
        L31:
            if (r13 == 0) goto L83
            if (r0 == 0) goto L38
            int r12 = r9.m_SQLWarning_TypeID
            goto L3a
        L38:
            int r12 = r9.m_SQLError_TypeID
        L3a:
            int r1 = r9.m_extErrorID
            r2 = 2
            int r10 = r9.addElement(r2, r12, r1, r10)
            r8 = -1
            java.lang.Integer r4 = new java.lang.Integer
            int r12 = r13.getErrorCode()
            r4.<init>(r12)
            r5 = 3
            int r6 = r9.m_Code_TypeID
            r3 = r9
            r7 = r10
            int r8 = r3.addElementWithData(r4, r5, r6, r7, r8)
            java.lang.String r4 = r13.getLocalizedMessage()
            int r6 = r9.m_Message_TypeID
            int r8 = r3.addElementWithData(r4, r5, r6, r7, r8)
            if (r14 == 0) goto L30
            java.lang.String r4 = r13.getSQLState()
            if (r4 == 0) goto L74
            int r12 = r4.length()
            if (r12 <= 0) goto L74
            r5 = 3
            int r6 = r9.m_State_TypeID
            r3 = r9
            r7 = r10
            r3.addElementWithData(r4, r5, r6, r7, r8)
        L74:
            if (r0 == 0) goto L7d
            java.sql.SQLWarning r13 = (java.sql.SQLWarning) r13
            java.sql.SQLWarning r12 = r13.getNextWarning()
            goto L81
        L7d:
            java.sql.SQLException r12 = r13.getNextException()
        L81:
            r13 = r12
            goto L31
        L83:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.lib.sql.SQLErrorDocument.<init>(com.sun.org.apache.xml.internal.dtm.DTMManager, int, java.lang.Exception, java.sql.SQLWarning, boolean):void");
    }
}
