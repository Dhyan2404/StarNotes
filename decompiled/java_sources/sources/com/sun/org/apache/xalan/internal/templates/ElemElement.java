package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.templates.StylesheetRoot;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import com.sun.org.apache.xml.internal.utils.QName;
import java.util.Vector;
import javax.xml.transform.TransformerException;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ElemElement extends ElemUse {
    static final long serialVersionUID = -324619535592435183L;
    protected AVT m_name_avt = null;
    protected AVT m_namespace_avt = null;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void callChildVisitors(XSLTVisitor xSLTVisitor, boolean z) {
        if (z) {
            AVT avt = this.m_name_avt;
            if (avt != null) {
                avt.callVisitors(xSLTVisitor);
            }
            AVT avt2 = this.m_namespace_avt;
            if (avt2 != null) {
                avt2.callVisitors(xSLTVisitor);
            }
        }
        super.callChildVisitors(xSLTVisitor, z);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        super.compose(stylesheetRoot);
        StylesheetRoot.ComposeState composeState = stylesheetRoot.getComposeState();
        Vector variableNames = composeState.getVariableNames();
        AVT avt = this.m_name_avt;
        if (avt != null) {
            avt.fixupVariables(variableNames, composeState.getGlobalsSize());
        }
        AVT avt2 = this.m_namespace_avt;
        if (avt2 != null) {
            avt2.fixupVariables(variableNames, composeState.getGlobalsSize());
        }
    }

    public void constructNode(String str, String str2, String str3, TransformerImpl transformerImpl) throws TransformerException {
        boolean z;
        try {
            SerializationHandler resultTreeHandler = transformerImpl.getResultTreeHandler();
            if (str == null) {
                z = false;
            } else {
                z = true;
                if (str2 != null) {
                    resultTreeHandler.startPrefixMapping(str2, str3, true);
                }
                resultTreeHandler.startElement(str3, QName.getLocalPart(str), str);
                super.execute(transformerImpl);
            }
            transformerImpl.executeChildTemplates(this, z);
            if (str != null) {
                resultTreeHandler.endElement(str3, QName.getLocalPart(str), str);
                if (str2 != null) {
                    resultTreeHandler.endPrefixMapping(str2);
                }
            }
        } catch (SAXException e) {
            throw new TransformerException(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    @Override // com.sun.org.apache.xalan.internal.templates.ElemUse, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void execute(com.sun.org.apache.xalan.internal.transformer.TransformerImpl r10) throws javax.xml.transform.TransformerException {
        /*
            r9 = this;
            java.lang.String r0 = "WG_COULD_NOT_RESOLVE_PREFIX"
            boolean r1 = r10.getDebug()
            if (r1 == 0) goto Lf
            com.sun.org.apache.xalan.internal.trace.TraceManager r1 = r10.getTraceManager()
            r1.fireTraceEvent(r9)
        Lf:
            com.sun.org.apache.xml.internal.serializer.SerializationHandler r1 = r10.getSerializationHandler()
            com.sun.org.apache.xpath.internal.XPathContext r2 = r10.getXPathContext()
            int r3 = r2.getCurrentNode()
            com.sun.org.apache.xalan.internal.templates.AVT r4 = r9.m_name_avt
            r5 = 0
            if (r4 != 0) goto L22
            r4 = r5
            goto L26
        L22:
            java.lang.String r4 = r4.evaluate(r2, r3, r9)
        L26:
            java.lang.String r6 = ""
            if (r4 == 0) goto L4a
            com.sun.org.apache.xalan.internal.templates.AVT r7 = r9.m_name_avt
            boolean r7 = r7.isSimple()
            if (r7 != 0) goto L4a
            boolean r7 = com.sun.org.apache.xml.internal.utils.XML11Char.isXML11ValidQName(r4)
            if (r7 != 0) goto L4a
            com.sun.org.apache.xalan.internal.transformer.MsgMgr r0 = r10.getMsgMgr()
            java.lang.String r1 = "name"
            java.lang.Object[] r1 = new java.lang.Object[]{r1, r4}
            java.lang.String r2 = "WG_ILLEGAL_ATTRIBUTE_VALUE"
            r0.warn(r9, r2, r1)
            r7 = r5
            goto Ld2
        L4a:
            if (r4 == 0) goto Ld0
            java.lang.String r7 = com.sun.org.apache.xml.internal.utils.QName.getPrefixPart(r4)
            com.sun.org.apache.xalan.internal.templates.AVT r8 = r9.m_namespace_avt
            if (r8 == 0) goto La4
            java.lang.String r0 = r8.evaluate(r2, r3, r9)
            if (r0 == 0) goto L99
            if (r7 == 0) goto L69
            int r2 = r7.length()
            if (r2 <= 0) goto L69
            int r2 = r0.length()
            if (r2 != 0) goto L69
            goto L99
        L69:
            java.lang.String r1 = r9.resolvePrefix(r1, r7, r0)
            if (r1 != 0) goto L71
            r5 = r6
            goto L72
        L71:
            r5 = r1
        L72:
            int r1 = r5.length()
            if (r1 <= 0) goto L91
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r5)
            java.lang.String r2 = ":"
            r1.append(r2)
            java.lang.String r2 = com.sun.org.apache.xml.internal.utils.QName.getLocalPart(r4)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            goto L95
        L91:
            java.lang.String r1 = com.sun.org.apache.xml.internal.utils.QName.getLocalPart(r4)
        L95:
            r6 = r0
            r7 = r5
            r5 = r1
            goto Ld2
        L99:
            com.sun.org.apache.xalan.internal.transformer.MsgMgr r1 = r10.getMsgMgr()
            java.lang.String r2 = "ER_NULL_URI_NAMESPACE"
            r1.error(r9, r2)
            r6 = r0
            goto Ld1
        La4:
            java.lang.String r1 = r9.getNamespaceForPrefix(r7)     // Catch: java.lang.Exception -> Lc4
            if (r1 != 0) goto Lb3
            int r2 = r7.length()     // Catch: java.lang.Exception -> Lb1
            if (r2 != 0) goto Lb3
            goto Ld1
        Lb1:
            r6 = r1
            goto Lc4
        Lb3:
            if (r1 != 0) goto Lc2
            com.sun.org.apache.xalan.internal.transformer.MsgMgr r2 = r10.getMsgMgr()     // Catch: java.lang.Exception -> Lb1
            java.lang.Object[] r3 = new java.lang.Object[]{r7}     // Catch: java.lang.Exception -> Lb1
            r2.warn(r9, r0, r3)     // Catch: java.lang.Exception -> Lb1
            r6 = r1
            goto Ld2
        Lc2:
            r6 = r1
            goto Ld1
        Lc4:
            com.sun.org.apache.xalan.internal.transformer.MsgMgr r1 = r10.getMsgMgr()
            java.lang.Object[] r2 = new java.lang.Object[]{r7}
            r1.warn(r9, r0, r2)
            goto Ld2
        Ld0:
            r7 = r5
        Ld1:
            r5 = r4
        Ld2:
            r9.constructNode(r5, r7, r6, r10)
            boolean r0 = r10.getDebug()
            if (r0 == 0) goto Le2
            com.sun.org.apache.xalan.internal.trace.TraceManager r10 = r10.getTraceManager()
            r10.fireTraceEndEvent(r9)
        Le2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.templates.ElemElement.execute(com.sun.org.apache.xalan.internal.transformer.TransformerImpl):void");
    }

    public AVT getName() {
        return this.m_name_avt;
    }

    public AVT getNamespace() {
        return this.m_namespace_avt;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return "element";
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 46;
    }

    public String resolvePrefix(SerializationHandler serializationHandler, String str, String str2) throws TransformerException {
        return str;
    }

    public void setName(AVT avt) {
        this.m_name_avt = avt;
    }

    public void setNamespace(AVT avt) {
        this.m_namespace_avt = avt;
    }
}
