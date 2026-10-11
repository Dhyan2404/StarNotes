package org.apache.xmlbeans.impl.store;

import javax.xml.namespace.QName;
import javax.xml.stream.Location;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.impl.common.ValidatorListener;

/* loaded from: classes13.dex */
final class Validate implements ValidatorListener.Event {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Cur _cur;
    private boolean _hasText;
    private boolean _oneChunk;
    private ValidatorListener _sink;
    private Cur _textCur;
    private StringBuffer _textSb;

    /* JADX WARN: Multi-variable type inference failed */
    public Validate(Cur cur, ValidatorListener validatorListener) {
        if (!cur.isUserNode()) {
            throw new IllegalStateException("Inappropriate location to validate");
        }
        this._sink = validatorListener;
        this._cur = cur;
        this._textCur = cur.tempCur();
        this._hasText = false;
        this._cur.push();
        try {
            process();
        } finally {
            this._cur.pop();
            this._cur = null;
            this._sink = null;
            this._textCur.release();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002c, code lost:
    
        r2._cur.toParent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
    
        r2._sink.nextEvent(5, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0006, code lost:
    
        if (r2._cur.toFirstAttr() != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
    
        if (r2._cur.isNormalAttr() == false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001c, code lost:
    
        if (r2._cur.getUri().equals("http://www.w3.org/2001/XMLSchema-instance") != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        r2._sink.nextEvent(4, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002a, code lost:
    
        if (r2._cur.toNextAttr() != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void doAttrs() {
        /*
            r2 = this;
            org.apache.xmlbeans.impl.store.Cur r0 = r2._cur
            boolean r0 = r0.toFirstAttr()
            if (r0 == 0) goto L31
        L8:
            org.apache.xmlbeans.impl.store.Cur r0 = r2._cur
            boolean r0 = r0.isNormalAttr()
            if (r0 == 0) goto L24
            org.apache.xmlbeans.impl.store.Cur r0 = r2._cur
            java.lang.String r0 = r0.getUri()
            java.lang.String r1 = "http://www.w3.org/2001/XMLSchema-instance"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L24
            org.apache.xmlbeans.impl.common.ValidatorListener r0 = r2._sink
            r1 = 4
            r0.nextEvent(r1, r2)
        L24:
            org.apache.xmlbeans.impl.store.Cur r0 = r2._cur
            boolean r0 = r0.toNextAttr()
            if (r0 != 0) goto L8
            org.apache.xmlbeans.impl.store.Cur r0 = r2._cur
            r0.toParent()
        L31:
            org.apache.xmlbeans.impl.common.ValidatorListener r0 = r2._sink
            r1 = 5
            r0.nextEvent(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Validate.doAttrs():void");
    }

    private void emitEvent(int i) {
        if (this._hasText) {
            this._sink.nextEvent(3, this);
            this._hasText = false;
        }
        this._sink.nextEvent(i, this);
    }

    private void emitText() {
        if (!this._hasText) {
            this._hasText = true;
            this._oneChunk = true;
            this._textCur.moveToCur(this._cur);
            return;
        }
        if (this._oneChunk) {
            StringBuffer stringBuffer = this._textSb;
            if (stringBuffer == null) {
                this._textSb = new StringBuffer();
            } else {
                stringBuffer.delete(0, stringBuffer.length());
            }
            StringBuffer stringBuffer2 = this._textSb;
            Object chars = this._textCur.getChars(-1);
            Cur cur = this._textCur;
            CharUtil.getString(stringBuffer2, chars, cur._offSrc, cur._cchSrc);
            this._oneChunk = false;
        }
        StringBuffer stringBuffer3 = this._textSb;
        Object chars2 = this._cur.getChars(-1);
        Cur cur2 = this._cur;
        CharUtil.getString(stringBuffer3, chars2, cur2._offSrc, cur2._cchSrc);
    }

    private void process() {
        emitEvent(1);
        if (!this._cur.isAttr()) {
            doAttrs();
            while (true) {
                this._cur.next();
                if (this._cur.isAtEndOfLastPush()) {
                    break;
                }
                int kind = this._cur.kind();
                if (kind == -2) {
                    emitEvent(2);
                } else if (kind == 0) {
                    emitText();
                } else if (kind == 2) {
                    emitEvent(1);
                    doAttrs();
                } else {
                    if (kind != 4 && kind != 5) {
                        throw new RuntimeException("Unexpected kind: " + this._cur.kind());
                    }
                    this._cur.toEnd();
                }
            }
        } else {
            this._cur.next();
            if (this._cur.isText()) {
                emitText();
            }
        }
        emitEvent(2);
    }

    @Override // org.apache.xmlbeans.impl.common.ValidatorListener.Event
    public Location getLocation() {
        return null;
    }

    @Override // org.apache.xmlbeans.impl.common.ValidatorListener.Event
    public XmlCursor getLocationAsCursor() {
        return new Cursor(this._cur);
    }

    @Override // org.apache.xmlbeans.impl.common.ValidatorListener.Event
    public QName getName() {
        if (this._cur.isAtLastPush()) {
            return null;
        }
        return this._cur.getName();
    }

    @Override // org.apache.xmlbeans.impl.common.PrefixResolver
    public String getNamespaceForPrefix(String str) {
        return this._cur.namespaceForPrefix(str, true);
    }

    @Override // org.apache.xmlbeans.impl.common.ValidatorListener.Event
    public String getText() {
        if (this._cur.isAttr()) {
            return this._cur.getValueAsString();
        }
        return this._oneChunk ? this._textCur.getCharsAsString() : this._textSb.toString();
    }

    @Override // org.apache.xmlbeans.impl.common.ValidatorListener.Event
    public String getXsiLoc() {
        return this._cur.getAttrValue(Locale._xsiLoc);
    }

    @Override // org.apache.xmlbeans.impl.common.ValidatorListener.Event
    public String getXsiNil() {
        return this._cur.getAttrValue(Locale._xsiNil);
    }

    @Override // org.apache.xmlbeans.impl.common.ValidatorListener.Event
    public String getXsiNoLoc() {
        return this._cur.getAttrValue(Locale._xsiNoLoc);
    }

    @Override // org.apache.xmlbeans.impl.common.ValidatorListener.Event
    public String getXsiType() {
        return this._cur.getAttrValue(Locale._xsiType);
    }

    @Override // org.apache.xmlbeans.impl.common.ValidatorListener.Event
    public boolean textIsWhitespace() {
        if (this._cur.isAttr()) {
            CharUtil charUtil = this._cur._locale.getCharUtil();
            Object firstChars = this._cur.getFirstChars();
            Cur cur = this._cur;
            return charUtil.isWhiteSpace(firstChars, cur._offSrc, cur._cchSrc);
        }
        if (!this._oneChunk) {
            String stringBuffer = this._textSb.toString();
            return this._cur._locale.getCharUtil().isWhiteSpace(stringBuffer, 0, stringBuffer.length());
        }
        CharUtil charUtil2 = this._cur._locale.getCharUtil();
        Object chars = this._textCur.getChars(-1);
        Cur cur2 = this._textCur;
        return charUtil2.isWhiteSpace(chars, cur2._offSrc, cur2._cchSrc);
    }

    @Override // org.apache.xmlbeans.impl.common.ValidatorListener.Event
    public String getText(int i) {
        if (this._cur.isAttr()) {
            return this._cur.getValueAsString(i);
        }
        if (this._oneChunk) {
            return this._textCur.getCharsAsString(i);
        }
        return Locale.applyWhiteSpaceRule(this._textSb.toString(), i);
    }
}
