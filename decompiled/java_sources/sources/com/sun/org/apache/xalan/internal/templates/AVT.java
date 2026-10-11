package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xml.internal.utils.FastStringBuffer;
import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xpath.internal.XPathContext;
import java.io.Serializable;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class AVT implements Serializable, XSLTVisitable {
    private static final int INIT_BUFFER_CHUNK_BITS = 8;
    private static final boolean USE_OBJECT_POOL = false;
    static final long serialVersionUID = 5167607155517042691L;
    private transient FastStringBuffer m_cachedBuf;
    private String m_name;
    private Vector m_parts;
    private String m_rawName;
    private String m_simpleString;
    private String m_uri;

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0167, code lost:
    
        r18.warn("WG_ATTR_TEMPLATE", new java.lang.Object[]{r10});
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x017a A[LOOP:0: B:14:0x0044->B:30:0x017a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0167 A[EDGE_INSN: B:31:0x0167->B:32:0x0167 BREAK  A[LOOP:0: B:14:0x0044->B:30:0x017a], EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.sun.org.apache.xml.internal.utils.FastStringBuffer] */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v14, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v21 */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v29 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r12v8, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v19, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v1, types: [com.sun.org.apache.xml.internal.utils.FastStringBuffer] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AVT(com.sun.org.apache.xalan.internal.processor.StylesheetHandler r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, java.lang.String r22, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement r23) throws javax.xml.transform.TransformerException {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.templates.AVT.<init>(com.sun.org.apache.xalan.internal.processor.StylesheetHandler, java.lang.String, java.lang.String, java.lang.String, java.lang.String, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement):void");
    }

    private final FastStringBuffer getBuffer() {
        FastStringBuffer fastStringBuffer = this.m_cachedBuf;
        if (fastStringBuffer != null) {
            return fastStringBuffer.length() != 0 ? new FastStringBuffer(8) : this.m_cachedBuf;
        }
        FastStringBuffer fastStringBuffer2 = new FastStringBuffer(8);
        this.m_cachedBuf = fastStringBuffer2;
        return fastStringBuffer2;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.XSLTVisitable
    public void callVisitors(XSLTVisitor xSLTVisitor) {
        Vector vector;
        if (!xSLTVisitor.visitAVT(this) || (vector = this.m_parts) == null) {
            return;
        }
        int size = vector.size();
        for (int i = 0; i < size; i++) {
            ((AVTPart) this.m_parts.elementAt(i)).callVisitors(xSLTVisitor);
        }
    }

    public boolean canTraverseOutsideSubtree() {
        Vector vector = this.m_parts;
        if (vector != null) {
            int size = vector.size();
            for (int i = 0; i < size; i++) {
                if (((AVTPart) this.m_parts.elementAt(i)).canTraverseOutsideSubtree()) {
                    return true;
                }
            }
        }
        return false;
    }

    public String evaluate(XPathContext xPathContext, int i, PrefixResolver prefixResolver) throws TransformerException {
        String str = this.m_simpleString;
        if (str != null) {
            return str;
        }
        if (this.m_parts == null) {
            return "";
        }
        FastStringBuffer buffer = getBuffer();
        int size = this.m_parts.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                ((AVTPart) this.m_parts.elementAt(i2)).evaluate(xPathContext, buffer, i, prefixResolver);
            } finally {
                buffer.setLength(0);
            }
        }
        return buffer.toString();
    }

    public void fixupVariables(Vector vector, int i) {
        Vector vector2 = this.m_parts;
        if (vector2 != null) {
            int size = vector2.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((AVTPart) this.m_parts.elementAt(i2)).fixupVariables(vector, i);
            }
        }
    }

    public String getName() {
        return this.m_name;
    }

    public String getRawName() {
        return this.m_rawName;
    }

    public String getSimpleString() {
        String str = this.m_simpleString;
        if (str != null) {
            return str;
        }
        if (this.m_parts == null) {
            return "";
        }
        FastStringBuffer buffer = getBuffer();
        int size = this.m_parts.size();
        for (int i = 0; i < size; i++) {
            try {
                buffer.append(((AVTPart) this.m_parts.elementAt(i)).getSimpleString());
            } finally {
                buffer.setLength(0);
            }
        }
        return buffer.toString();
    }

    public String getURI() {
        return this.m_uri;
    }

    public boolean isContextInsensitive() {
        return this.m_simpleString != null;
    }

    public boolean isSimple() {
        return this.m_simpleString != null;
    }

    public void setName(String str) {
        this.m_name = str;
    }

    public void setRawName(String str) {
        this.m_rawName = str;
    }

    public void setURI(String str) {
        this.m_uri = str;
    }
}
