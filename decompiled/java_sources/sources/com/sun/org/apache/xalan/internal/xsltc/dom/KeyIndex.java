package com.sun.org.apache.xalan.internal.xsltc.dom;

import com.sun.org.apache.xalan.internal.xsltc.DOM;
import com.sun.org.apache.xalan.internal.xsltc.DOMEnhancedForDTM;
import com.sun.org.apache.xalan.internal.xsltc.runtime.Hashtable;
import com.sun.org.apache.xalan.internal.xsltc.util.IntegerArray;
import com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
import com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase;
import java.util.StringTokenizer;

/* loaded from: classes10.dex */
public class KeyIndex extends DTMAxisIteratorBase {
    private DOM _dom;
    private DOMEnhancedForDTM _enhancedDOM;
    private Hashtable _index = new Hashtable();
    private IntegerArray _nodes = null;
    private int _markedPosition = 0;

    public KeyIndex(int i) {
    }

    public void add(Object obj, int i) {
        IntegerArray integerArray = (IntegerArray) this._index.get(obj);
        if (integerArray == null) {
            integerArray = new IntegerArray();
            this._index.put(obj, integerArray);
        }
        integerArray.add(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
    public DTMAxisIterator cloneIterator() {
        KeyIndex keyIndex = new KeyIndex(0);
        keyIndex._index = this._index;
        keyIndex._nodes = this._nodes;
        keyIndex._position = this._position;
        return keyIndex;
    }

    public int containsID(int i, Object obj) {
        DOMEnhancedForDTM dOMEnhancedForDTM;
        DOMEnhancedForDTM dOMEnhancedForDTM2;
        String str = (String) obj;
        if (str.indexOf(32) <= -1) {
            IntegerArray integerArray = (IntegerArray) this._index.get(obj);
            if (integerArray == null && (dOMEnhancedForDTM = this._enhancedDOM) != null && dOMEnhancedForDTM.hasDOMSource()) {
                integerArray = getDOMNodeById(str);
            }
            return (integerArray == null || integerArray.indexOf(i) < 0) ? 0 : 1;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        while (stringTokenizer.hasMoreElements()) {
            String str2 = (String) stringTokenizer.nextElement();
            IntegerArray integerArray2 = (IntegerArray) this._index.get(str2);
            if (integerArray2 == null && (dOMEnhancedForDTM2 = this._enhancedDOM) != null && dOMEnhancedForDTM2.hasDOMSource()) {
                integerArray2 = getDOMNodeById(str2);
            }
            if (integerArray2 != null && integerArray2.indexOf(i) >= 0) {
                return 1;
            }
        }
        return 0;
    }

    public int containsKey(int i, Object obj) {
        IntegerArray integerArray = (IntegerArray) this._index.get(obj);
        return (integerArray == null || integerArray.indexOf(i) < 0) ? 0 : 1;
    }

    public IntegerArray getDOMNodeById(String str) {
        int elementById;
        DOMEnhancedForDTM dOMEnhancedForDTM = this._enhancedDOM;
        if (dOMEnhancedForDTM == null || (elementById = dOMEnhancedForDTM.getElementById(str)) == -1) {
            return null;
        }
        IntegerArray integerArray = new IntegerArray();
        this._index.put(str, integerArray);
        integerArray.add(elementById);
        return integerArray;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
    public int getLast() {
        IntegerArray integerArray = this._nodes;
        if (integerArray == null) {
            return 0;
        }
        return integerArray.cardinality();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
    public int getPosition() {
        return this._position;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
    public int getStartNode() {
        return 0;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
    public void gotoMark() {
        this._position = this._markedPosition;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
    public boolean isReverse() {
        return false;
    }

    public void lookupId(Object obj) {
        DOMEnhancedForDTM dOMEnhancedForDTM;
        this._nodes = null;
        StringTokenizer stringTokenizer = new StringTokenizer((String) obj);
        while (stringTokenizer.hasMoreElements()) {
            String str = (String) stringTokenizer.nextElement();
            IntegerArray integerArray = (IntegerArray) this._index.get(str);
            if (integerArray == null && (dOMEnhancedForDTM = this._enhancedDOM) != null && dOMEnhancedForDTM.hasDOMSource()) {
                integerArray = getDOMNodeById(str);
            }
            if (integerArray != null) {
                IntegerArray integerArray2 = this._nodes;
                if (integerArray2 == null) {
                    this._nodes = (IntegerArray) integerArray.clone();
                } else {
                    integerArray2.merge(integerArray);
                }
            }
        }
    }

    public void lookupKey(Object obj) {
        IntegerArray integerArray = (IntegerArray) this._index.get(obj);
        this._nodes = integerArray != null ? (IntegerArray) integerArray.clone() : null;
        this._position = 0;
    }

    public void merge(KeyIndex keyIndex) {
        IntegerArray integerArray;
        if (keyIndex == null || (integerArray = keyIndex._nodes) == null) {
            return;
        }
        IntegerArray integerArray2 = this._nodes;
        if (integerArray2 == null) {
            this._nodes = (IntegerArray) integerArray.clone();
        } else {
            integerArray2.merge(integerArray);
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
    public int next() {
        IntegerArray integerArray = this._nodes;
        if (integerArray == null || this._position >= integerArray.cardinality()) {
            return -1;
        }
        DOM dom = this._dom;
        IntegerArray integerArray2 = this._nodes;
        int i = this._position;
        this._position = i + 1;
        return dom.getNodeHandle(integerArray2.m52897at(i));
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
    public DTMAxisIterator reset() {
        this._position = 0;
        return this;
    }

    public void setDom(DOM dom) {
        this._dom = dom;
        if (dom instanceof DOMEnhancedForDTM) {
            this._enhancedDOM = (DOMEnhancedForDTM) dom;
        } else if (dom instanceof DOMAdapter) {
            DOM dOMImpl = ((DOMAdapter) dom).getDOMImpl();
            if (dOMImpl instanceof DOMEnhancedForDTM) {
                this._enhancedDOM = (DOMEnhancedForDTM) dOMImpl;
            }
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
    public void setMark() {
        this._markedPosition = this._position;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
    public void setRestartable(boolean z) {
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
    public DTMAxisIterator setStartNode(int i) {
        if (i == -1) {
            this._nodes = null;
        } else if (this._nodes != null) {
            this._position = 0;
        }
        return this;
    }
}
