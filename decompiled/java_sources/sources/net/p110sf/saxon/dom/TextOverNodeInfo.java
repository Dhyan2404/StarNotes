package net.p110sf.saxon.dom;

import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.type.ComplexType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.Whitespace;
import org.w3c.dom.Comment;
import org.w3c.dom.DOMException;
import org.w3c.dom.Text;

/* loaded from: classes11.dex */
public class TextOverNodeInfo extends NodeOverNodeInfo implements Text, Comment {
    @Override // org.w3c.dom.CharacterData
    public void appendData(String str) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
    }

    @Override // org.w3c.dom.CharacterData
    public void deleteData(int i, int i2) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
    }

    @Override // org.w3c.dom.CharacterData
    public String getData() {
        return this.node.getStringValue();
    }

    @Override // org.w3c.dom.CharacterData
    public int getLength() {
        return this.node.getStringValue().length();
    }

    @Override // org.w3c.dom.Text
    public String getWholeText() {
        if (this.node.getNodeKind() == 3) {
            return this.node.getStringValue();
        }
        throw new UnsupportedOperationException("Method is defined only on text nodes");
    }

    @Override // org.w3c.dom.CharacterData
    public void insertData(int i, String str) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
    }

    public boolean isElementContentWhitespace() {
        NodeInfo parent;
        if (this.node.getNodeKind() != 3) {
            throw new UnsupportedOperationException("Method is defined only on text nodes");
        }
        if (!Whitespace.isAllWhite(this.node.getUnicodeStringValue()) || (parent = this.node.getParent()) == null) {
            return false;
        }
        SchemaType schemaType = parent.getSchemaType();
        return schemaType.isComplexType() && !((ComplexType) schemaType).isMixedContent();
    }

    @Override // org.w3c.dom.CharacterData
    public void replaceData(int i, int i2, String str) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
    }

    @Override // org.w3c.dom.Text
    public Text replaceWholeText(String str) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.CharacterData
    public void setData(String str) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
    }

    @Override // org.w3c.dom.Text
    public Text splitText(int i) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.CharacterData
    public String substringData(int i, int i2) throws DOMException {
        try {
            return this.node.getStringValue().substring(i, i2 + i);
        } catch (IndexOutOfBoundsException unused) {
            throw new DOMExceptionImpl((short) 1, "substringData: index out of bounds");
        }
    }
}
