package org.apache.xmlbeans.impl.store;

import org.w3c.dom.Comment;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes13.dex */
class CommentXobj extends NodeXobj implements Comment {
    public CommentXobj(Locale locale) {
        super(locale, 4, 8);
    }

    @Override // org.w3c.dom.CharacterData
    public void appendData(String str) {
        DomImpl._characterData_appendData(this, str);
    }

    @Override // org.w3c.dom.CharacterData
    public void deleteData(int i, int i2) {
        DomImpl._characterData_deleteData(this, i, i2);
    }

    @Override // org.apache.xmlbeans.impl.store.NodeXobj, org.w3c.dom.Node
    public NodeList getChildNodes() {
        return DomImpl._emptyNodeList;
    }

    @Override // org.w3c.dom.CharacterData
    public String getData() {
        return DomImpl._characterData_getData(this);
    }

    @Override // org.apache.xmlbeans.impl.store.NodeXobj, org.w3c.dom.Node
    public Node getFirstChild() {
        return null;
    }

    @Override // org.apache.xmlbeans.impl.store.NodeXobj, org.w3c.dom.NodeList
    public int getLength() {
        return DomImpl._characterData_getLength(this);
    }

    @Override // org.w3c.dom.CharacterData
    public void insertData(int i, String str) {
        DomImpl._characterData_insertData(this, i, str);
    }

    @Override // org.apache.xmlbeans.impl.store.Xobj
    public Xobj newNode(Locale locale) {
        return new CommentXobj(locale);
    }

    @Override // org.w3c.dom.CharacterData
    public void replaceData(int i, int i2, String str) {
        DomImpl._characterData_replaceData(this, i, i2, str);
    }

    @Override // org.w3c.dom.CharacterData
    public void setData(String str) {
        DomImpl._characterData_setData(this, str);
    }

    @Override // org.w3c.dom.CharacterData
    public String substringData(int i, int i2) {
        return DomImpl._characterData_substringData(this, i, i2);
    }
}
