package com.sun.org.apache.xerces.internal.dom;

import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import org.w3c.dom.DOMException;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes10.dex */
public abstract class CharacterDataImpl extends ChildNode {
    static final long serialVersionUID = 7931170150428474230L;
    private static transient NodeList singletonNodeList = new NodeList() { // from class: com.sun.org.apache.xerces.internal.dom.CharacterDataImpl.1
        @Override // org.w3c.dom.NodeList
        public int getLength() {
            return 0;
        }

        @Override // org.w3c.dom.NodeList
        public Node item(int i) {
            return null;
        }
    };
    protected String data;

    public CharacterDataImpl() {
    }

    public void appendData(String str) {
        if (isReadOnly()) {
            throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
        }
        if (str == null) {
            return;
        }
        if (needsSyncData()) {
            synchronizeData();
        }
        setNodeValue(this.data + str);
    }

    public void deleteData(int i, int i2) throws DOMException {
        internalDeleteData(i, i2, false);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public NodeList getChildNodes() {
        return singletonNodeList;
    }

    public String getData() {
        if (needsSyncData()) {
            synchronizeData();
        }
        return this.data;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.NodeList
    public int getLength() {
        if (needsSyncData()) {
            synchronizeData();
        }
        return this.data.length();
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public String getNodeValue() {
        if (needsSyncData()) {
            synchronizeData();
        }
        return this.data;
    }

    public void insertData(int i, String str) throws DOMException {
        internalInsertData(i, str, false);
    }

    void internalDeleteData(int i, int i2, boolean z) throws DOMException {
        String str;
        CoreDocumentImpl ownerDocument = ownerDocument();
        if (ownerDocument.errorChecking) {
            if (isReadOnly()) {
                throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
            }
            if (i2 < 0) {
                throw new DOMException((short) 1, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INDEX_SIZE_ERR", null));
            }
        }
        if (needsSyncData()) {
            synchronizeData();
        }
        int max = Math.max((this.data.length() - i2) - i, 0);
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(this.data.substring(0, i));
            if (max > 0) {
                int i3 = i + i2;
                str = this.data.substring(i3, max + i3);
            } else {
                str = "";
            }
            sb.append(str);
            setNodeValueInternal(sb.toString(), z);
            ownerDocument.deletedText(this, i, i2);
        } catch (StringIndexOutOfBoundsException unused) {
            throw new DOMException((short) 1, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INDEX_SIZE_ERR", null));
        }
    }

    void internalInsertData(int i, String str, boolean z) throws DOMException {
        CoreDocumentImpl ownerDocument = ownerDocument();
        if (ownerDocument.errorChecking && isReadOnly()) {
            throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
        }
        if (needsSyncData()) {
            synchronizeData();
        }
        try {
            setNodeValueInternal(new StringBuffer(this.data).insert(i, str).toString(), z);
            ownerDocument.insertedText(this, i, str.length());
        } catch (StringIndexOutOfBoundsException unused) {
            throw new DOMException((short) 1, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INDEX_SIZE_ERR", null));
        }
    }

    public void replaceData(int i, int i2, String str) throws DOMException {
        CoreDocumentImpl ownerDocument = ownerDocument();
        if (ownerDocument.errorChecking && isReadOnly()) {
            throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
        }
        if (needsSyncData()) {
            synchronizeData();
        }
        ownerDocument.replacingData(this);
        String str2 = this.data;
        internalDeleteData(i, i2, true);
        internalInsertData(i, str, true);
        ownerDocument.replacedCharacterData(this, str2, this.data);
    }

    public void setData(String str) throws DOMException {
        setNodeValue(str);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public void setNodeValue(String str) {
        setNodeValueInternal(str);
        ownerDocument().replacedText(this);
    }

    public void setNodeValueInternal(String str) {
        setNodeValueInternal(str, false);
    }

    public String substringData(int i, int i2) throws DOMException {
        if (needsSyncData()) {
            synchronizeData();
        }
        int length = this.data.length();
        if (i2 < 0 || i < 0 || i > length - 1) {
            throw new DOMException((short) 1, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INDEX_SIZE_ERR", null));
        }
        return this.data.substring(i, Math.min(i2 + i, length));
    }

    public CharacterDataImpl(CoreDocumentImpl coreDocumentImpl, String str) {
        super(coreDocumentImpl);
        this.data = str;
    }

    public void setNodeValueInternal(String str, boolean z) {
        CoreDocumentImpl ownerDocument = ownerDocument();
        if (ownerDocument.errorChecking && isReadOnly()) {
            throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
        }
        if (needsSyncData()) {
            synchronizeData();
        }
        String str2 = this.data;
        ownerDocument.modifyingCharacterData(this, z);
        this.data = str;
        ownerDocument.modifiedCharacterData(this, str2, str, z);
    }
}
