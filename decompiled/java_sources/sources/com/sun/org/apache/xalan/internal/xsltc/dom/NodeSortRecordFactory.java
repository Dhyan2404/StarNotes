package com.sun.org.apache.xalan.internal.xsltc.dom;

import com.sun.org.apache.xalan.internal.xsltc.DOM;
import com.sun.org.apache.xalan.internal.xsltc.Translet;
import com.sun.org.apache.xalan.internal.xsltc.TransletException;
import java.text.Collator;

/* loaded from: classes10.dex */
public class NodeSortRecordFactory {
    private static int DESCENDING = 10;
    private static int NUMBER = 6;
    private Class _class;
    private final String _className;
    protected Collator _collator;
    private final DOM _dom;
    private SortSettings _sortSettings;

    public NodeSortRecordFactory(DOM dom, String str, Translet translet, String[] strArr, String[] strArr2) throws TransletException {
        this(dom, str, translet, strArr, strArr2, null, null);
    }

    private final void setLang(String[] strArr) {
    }

    public String getClassName() {
        return this._className;
    }

    public NodeSortRecord makeNodeSortRecord(int i, int i2) throws ExceptionInInitializerError, LinkageError, IllegalAccessException, InstantiationException, SecurityException, TransletException {
        NodeSortRecord nodeSortRecord = (NodeSortRecord) this._class.newInstance();
        nodeSortRecord.initialize(i, i2, this._dom, this._sortSettings);
        return nodeSortRecord;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0062 A[Catch: ClassNotFoundException -> 0x007f, LOOP:1: B:27:0x0060->B:28:0x0062, LOOP_END, TryCatch #0 {ClassNotFoundException -> 0x007f, blocks: (B:3:0x0003, B:5:0x0010, B:6:0x001a, B:8:0x0023, B:10:0x002d, B:11:0x002f, B:13:0x0039, B:15:0x003b, B:26:0x005b, B:28:0x0062, B:30:0x0073, B:35:0x0045, B:37:0x004b), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NodeSortRecordFactory(com.sun.org.apache.xalan.internal.xsltc.DOM r9, java.lang.String r10, com.sun.org.apache.xalan.internal.xsltc.Translet r11, java.lang.String[] r12, java.lang.String[] r13, java.lang.String[] r14, java.lang.String[] r15) throws com.sun.org.apache.xalan.internal.xsltc.TransletException {
        /*
            r8 = this;
            r8.<init>()
            r8._dom = r9     // Catch: java.lang.ClassNotFoundException -> L7f
            r8._className = r10     // Catch: java.lang.ClassNotFoundException -> L7f
            java.lang.Class r9 = r11.getAuxiliaryClass(r10)     // Catch: java.lang.ClassNotFoundException -> L7f
            r8._class = r9     // Catch: java.lang.ClassNotFoundException -> L7f
            r0 = 1
            if (r9 != 0) goto L1a
            java.lang.ClassLoader r9 = com.sun.org.apache.xalan.internal.xsltc.dom.ObjectFactory.findClassLoader()     // Catch: java.lang.ClassNotFoundException -> L7f
            java.lang.Class r9 = com.sun.org.apache.xalan.internal.xsltc.dom.ObjectFactory.findProviderClass(r10, r9, r0)     // Catch: java.lang.ClassNotFoundException -> L7f
            r8._class = r9     // Catch: java.lang.ClassNotFoundException -> L7f
        L1a:
            int r9 = r12.length     // Catch: java.lang.ClassNotFoundException -> L7f
            int[] r3 = new int[r9]     // Catch: java.lang.ClassNotFoundException -> L7f
            int[] r4 = new int[r9]     // Catch: java.lang.ClassNotFoundException -> L7f
            r10 = 0
            r1 = r10
        L21:
            if (r1 >= r9) goto L3e
            r2 = r12[r1]     // Catch: java.lang.ClassNotFoundException -> L7f
            int r2 = r2.length()     // Catch: java.lang.ClassNotFoundException -> L7f
            int r5 = com.sun.org.apache.xalan.internal.xsltc.dom.NodeSortRecordFactory.DESCENDING     // Catch: java.lang.ClassNotFoundException -> L7f
            if (r2 != r5) goto L2f
            r3[r1] = r0     // Catch: java.lang.ClassNotFoundException -> L7f
        L2f:
            r2 = r13[r1]     // Catch: java.lang.ClassNotFoundException -> L7f
            int r2 = r2.length()     // Catch: java.lang.ClassNotFoundException -> L7f
            int r5 = com.sun.org.apache.xalan.internal.xsltc.dom.NodeSortRecordFactory.NUMBER     // Catch: java.lang.ClassNotFoundException -> L7f
            if (r2 != r5) goto L3b
            r4[r1] = r0     // Catch: java.lang.ClassNotFoundException -> L7f
        L3b:
            int r1 = r1 + 1
            goto L21
        L3e:
            if (r14 == 0) goto L45
            if (r15 != 0) goto L43
            goto L45
        L43:
            r9 = 0
            goto L53
        L45:
            int r9 = r12.length     // Catch: java.lang.ClassNotFoundException -> L7f
            java.lang.String[] r12 = new java.lang.String[r9]     // Catch: java.lang.ClassNotFoundException -> L7f
            r13 = r10
        L49:
            if (r13 >= r9) goto L52
            java.lang.String r0 = ""
            r12[r13] = r0     // Catch: java.lang.ClassNotFoundException -> L7f
            int r13 = r13 + 1
            goto L49
        L52:
            r9 = r12
        L53:
            if (r14 != 0) goto L56
            r14 = r9
        L56:
            if (r15 != 0) goto L5a
            r7 = r9
            goto L5b
        L5a:
            r7 = r15
        L5b:
            int r9 = r14.length     // Catch: java.lang.ClassNotFoundException -> L7f
            java.util.Locale[] r5 = new java.util.Locale[r9]     // Catch: java.lang.ClassNotFoundException -> L7f
            java.text.Collator[] r6 = new java.text.Collator[r9]     // Catch: java.lang.ClassNotFoundException -> L7f
        L60:
            if (r10 >= r9) goto L73
            r12 = r14[r10]     // Catch: java.lang.ClassNotFoundException -> L7f
            java.util.Locale r12 = com.sun.org.apache.xml.internal.utils.LocaleUtility.langToLocale(r12)     // Catch: java.lang.ClassNotFoundException -> L7f
            r5[r10] = r12     // Catch: java.lang.ClassNotFoundException -> L7f
            java.text.Collator r12 = java.text.Collator.getInstance(r12)     // Catch: java.lang.ClassNotFoundException -> L7f
            r6[r10] = r12     // Catch: java.lang.ClassNotFoundException -> L7f
            int r10 = r10 + 1
            goto L60
        L73:
            com.sun.org.apache.xalan.internal.xsltc.dom.SortSettings r9 = new com.sun.org.apache.xalan.internal.xsltc.dom.SortSettings     // Catch: java.lang.ClassNotFoundException -> L7f
            r2 = r11
            com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet r2 = (com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet) r2     // Catch: java.lang.ClassNotFoundException -> L7f
            r1 = r9
            r1.<init>(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.ClassNotFoundException -> L7f
            r8._sortSettings = r9     // Catch: java.lang.ClassNotFoundException -> L7f
            return
        L7f:
            r8 = move-exception
            com.sun.org.apache.xalan.internal.xsltc.TransletException r9 = new com.sun.org.apache.xalan.internal.xsltc.TransletException
            r9.<init>(r8)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.xsltc.dom.NodeSortRecordFactory.<init>(com.sun.org.apache.xalan.internal.xsltc.DOM, java.lang.String, com.sun.org.apache.xalan.internal.xsltc.Translet, java.lang.String[], java.lang.String[], java.lang.String[], java.lang.String[]):void");
    }
}
