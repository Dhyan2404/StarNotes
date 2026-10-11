package org.apache.xmlbeans.impl.schema;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaField;
import org.apache.xmlbeans.SchemaLocalElement;
import org.apache.xmlbeans.SchemaParticle;
import org.apache.xmlbeans.impl.values.TypeStoreVisitor;

/* loaded from: classes13.dex */
public class SchemaTypeVisitorImpl implements TypeStoreVisitor {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final boolean CHECK_VALIDITY = false;
    static final boolean PROBE_VALIDITY = true;
    private boolean _isValid;
    private SchemaParticle _matchedParticle;
    private VisitorState[] _rollback;
    private int _rollbackIndex;
    int _rollbackSize;
    private VisitorState[] _stack;
    int _stackSize;
    private VisitorState _top;

    /* loaded from: classes13.dex */
    public static class VisitorState {
        int _childCount;
        int _curCount;
        int _curMax;
        int _curMin;
        SchemaParticle _curPart;
        int _processedChildCount;
        boolean[] _seen;

        private VisitorState() {
        }

        public void copy(VisitorState visitorState) {
            this._curPart = visitorState._curPart;
            this._curCount = visitorState._curCount;
            this._curMin = visitorState._curMin;
            this._curMax = visitorState._curMax;
            this._processedChildCount = visitorState._processedChildCount;
            this._childCount = visitorState._childCount;
            boolean[] zArr = visitorState._seen;
            if (zArr != null) {
                boolean[] zArr2 = new boolean[zArr.length];
                this._seen = zArr2;
                boolean[] zArr3 = visitorState._seen;
                System.arraycopy(zArr3, 0, zArr2, 0, zArr3.length);
            }
        }

        public void init(SchemaParticle schemaParticle) {
            this._curPart = schemaParticle;
            this._curMin = schemaParticle.getIntMinOccurs();
            this._curMax = schemaParticle.getIntMaxOccurs();
            this._curCount = 0;
            this._processedChildCount = 0;
            this._childCount = schemaParticle.countOfParticleChild();
            this._seen = schemaParticle.getParticleType() == 1 ? new boolean[this._childCount] : null;
        }
    }

    public SchemaTypeVisitorImpl(SchemaParticle schemaParticle) {
        init(schemaParticle);
    }

    public void addParticle(SchemaParticle schemaParticle) {
        VisitorState[] visitorStateArr = this._stack;
        if (visitorStateArr.length == this._stackSize) {
            this._stack = expand(visitorStateArr);
        }
        this._stack[this._stackSize].init(schemaParticle);
        this._stackSize++;
    }

    public void commit() {
        this._top = null;
        this._rollbackIndex = this._stackSize;
        this._rollbackSize = 0;
    }

    public SchemaParticle currentParticle() {
        return this._matchedParticle;
    }

    public VisitorState[] expand(VisitorState[] visitorStateArr) {
        int length = visitorStateArr == null ? 4 : visitorStateArr.length * 2;
        VisitorState[] visitorStateArr2 = new VisitorState[length];
        if (visitorStateArr != null) {
            System.arraycopy(visitorStateArr, 0, visitorStateArr2, 0, visitorStateArr.length);
        }
        for (int length2 = visitorStateArr != null ? visitorStateArr.length : 0; length2 < length; length2++) {
            visitorStateArr2[length2] = new VisitorState();
        }
        return visitorStateArr2;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreVisitor
    public String get_default_text() {
        if (currentParticle() == null || currentParticle().getParticleType() != 4) {
            return null;
        }
        return ((SchemaLocalElement) currentParticle()).getDefaultText();
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreVisitor
    public int get_elementflags() {
        if (currentParticle() == null || currentParticle().getParticleType() != 4) {
            return 0;
        }
        SchemaLocalElement schemaLocalElement = (SchemaLocalElement) currentParticle();
        return (schemaLocalElement.isNillable() ? 1 : 0) | (schemaLocalElement.isDefault() ? 2 : 0) | (schemaLocalElement.isFixed() ? 4 : 0);
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreVisitor
    public SchemaField get_schema_field() {
        if (currentParticle() instanceof SchemaField) {
            return (SchemaField) currentParticle();
        }
        return null;
    }

    public void init(SchemaParticle schemaParticle) {
        if (this._stack == null) {
            this._stack = expand(null);
        }
        if (this._rollback == null) {
            this._rollback = expand(null);
        }
        this._stackSize = 0;
        this._rollbackSize = 0;
        if (schemaParticle != null) {
            push(schemaParticle);
            this._rollbackIndex = 1;
        }
    }

    public boolean isAllValid() {
        return this._isValid;
    }

    public boolean notValid() {
        this._isValid = false;
        this._matchedParticle = null;
        rollback();
        return false;
    }

    /* renamed from: ok */
    public boolean m70759ok(SchemaParticle schemaParticle, boolean z) {
        if (z) {
            rollback();
            return true;
        }
        this._matchedParticle = schemaParticle;
        commit();
        return true;
    }

    public boolean pop() {
        int i = this._stackSize - 1;
        this._stackSize = i;
        if (i <= this._rollbackIndex) {
            return prepare();
        }
        this._top = topRef();
        return true;
    }

    public boolean prepare() {
        if (this._rollbackIndex == 0) {
            this._top = null;
            return false;
        }
        VisitorState visitorState = topRef();
        this._top = visitorState;
        saveCopy(visitorState);
        this._rollbackIndex = this._stackSize - 1;
        return true;
    }

    public void push(SchemaParticle schemaParticle) {
        addParticle(schemaParticle);
        this._top = topRef();
    }

    public void rollback() {
        while (true) {
            int i = this._rollbackSize;
            if (i <= 0) {
                this._stackSize = this._rollbackIndex;
                this._top = null;
                return;
            }
            int i2 = i - 1;
            this._rollbackSize = i2;
            VisitorState[] visitorStateArr = this._stack;
            int i3 = this._rollbackIndex;
            VisitorState visitorState = visitorStateArr[i3];
            VisitorState[] visitorStateArr2 = this._rollback;
            visitorStateArr[i3] = visitorStateArr2[i2];
            visitorStateArr2[i2] = visitorState;
            this._rollbackIndex = i3 + 1;
        }
    }

    public void saveCopy(VisitorState visitorState) {
        VisitorState[] visitorStateArr = this._rollback;
        if (visitorStateArr.length == this._rollbackSize) {
            this._rollback = expand(visitorStateArr);
        }
        this._rollback[this._rollbackSize].copy(visitorState);
        this._rollbackSize++;
    }

    public boolean testValid(QName qName) {
        return visit(qName, true);
    }

    public VisitorState topRef() {
        return this._stack[this._stackSize - 1];
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreVisitor
    public boolean visit(QName qName) {
        return visit(qName, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x00ca, code lost:
    
        return notValid();
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x00a9, code lost:
    
        r8._top._processedChildCount = r2 + 1;
        push(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x00ce, code lost:
    
        r5._curCount++;
        r5._processedChildCount = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0046, code lost:
    
        if (r2 == 4) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0051, code lost:
    
        if (r8._top._curPart.canStartWithElement(r9) != false) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0053, code lost:
    
        r2 = r8._top;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0059, code lost:
    
        if (r2._curCount >= r2._curMin) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x005f, code lost:
    
        return notValid();
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0060, code lost:
    
        r9 = r8._top;
        r9._curCount++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x006d, code lost:
    
        return m70759ok(r9._curPart, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0076, code lost:
    
        if (r8._top._curPart.canStartWithElement(r9) != false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0078, code lost:
    
        r2 = r8._top;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x007e, code lost:
    
        if (r2._curCount >= r2._curMin) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0084, code lost:
    
        return notValid();
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0085, code lost:
    
        r9 = r8._top;
        r9._curCount++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0092, code lost:
    
        return m70759ok(r9._curPart, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0157, code lost:
    
        if (r9 != null) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x015e, code lost:
    
        return m70759ok(null, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0163, code lost:
    
        return notValid();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0035, code lost:
    
        r2 = r2._curPart.getParticleType();
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x003d, code lost:
    
        if (r2 == 1) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x010b, code lost:
    
        r2 = r8._top._processedChildCount;
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0110, code lost:
    
        r6 = r8._top;
        r7 = r6._childCount;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0114, code lost:
    
        if (r5 >= r7) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x011a, code lost:
    
        if (r6._seen[r5] == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x011d, code lost:
    
        r6 = r6._curPart.getParticleChild(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0127, code lost:
    
        if (r6.canStartWithElement(r9) == false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x013d, code lost:
    
        if (r6.isSkippable() == false) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x013f, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0141, code lost:
    
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0129, code lost:
    
        r2 = r8._top;
        r2._processedChildCount++;
        r2._seen[r5] = true;
        push(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0144, code lost:
    
        if (r2 >= r7) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0164, code lost:
    
        r6._curCount++;
        r6._processedChildCount = 0;
        java.util.Arrays.fill(r6._seen, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x014a, code lost:
    
        if (r6._curCount >= r6._curMin) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0155, code lost:
    
        if (pop() != false) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0150, code lost:
    
        return notValid();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0040, code lost:
    
        if (r2 == 2) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00d7, code lost:
    
        r2 = r8._top;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00db, code lost:
    
        if (r3 >= r2._childCount) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00dd, code lost:
    
        r2 = r2._curPart.getParticleChild(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00e7, code lost:
    
        if (r2.canStartWithElement(r9) == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00f5, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00e9, code lost:
    
        r8._top._curCount++;
        push(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00fc, code lost:
    
        if (r2._curCount >= r2._curMin) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0104, code lost:
    
        if (r2._curPart.isSkippable() != false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x010a, code lost:
    
        return notValid();
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0043, code lost:
    
        if (r2 == 3) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0093, code lost:
    
        r2 = r8._top._processedChildCount;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0097, code lost:
    
        r5 = r8._top;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x009b, code lost:
    
        if (r2 >= r5._childCount) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x009d, code lost:
    
        r5 = r5._curPart.getParticleChild(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x00a7, code lost:
    
        if (r5.canStartWithElement(r9) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x00b8, code lost:
    
        if (r5.isSkippable() != false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x00cb, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00ba, code lost:
    
        r2 = r8._top;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x00be, code lost:
    
        if (r2._processedChildCount != 0) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x00c4, code lost:
    
        if (r2._curCount >= r2._curMin) goto L90;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean visit(javax.xml.namespace.QName r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.SchemaTypeVisitorImpl.visit(javax.xml.namespace.QName, boolean):boolean");
    }

    public SchemaTypeVisitorImpl() {
    }
}
