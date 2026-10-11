package org.apache.xerces.dom;

import java.util.Vector;
import org.apache.xerces.dom3.as.ASAttributeDeclaration;
import org.apache.xerces.dom3.as.ASContentModel;
import org.apache.xerces.dom3.as.ASElementDeclaration;
import org.apache.xerces.dom3.as.ASEntityDeclaration;
import org.apache.xerces.dom3.as.ASModel;
import org.apache.xerces.dom3.as.ASNamedObjectMap;
import org.apache.xerces.dom3.as.ASNotationDeclaration;
import org.apache.xerces.dom3.as.ASObject;
import org.apache.xerces.dom3.as.ASObjectList;
import org.apache.xerces.dom3.as.DOMASException;
import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.w3c.dom.DOMException;

/* loaded from: classes13.dex */
public class ASModelImpl implements ASModel {

    /* renamed from: a */
    public boolean f111846a;
    protected Vector fASModels;
    protected SchemaGrammar fGrammar;

    public ASModelImpl() {
        this.f111846a = true;
        this.fGrammar = null;
        this.fASModels = new Vector();
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public void addASModel(ASModel aSModel) {
        this.fASModels.addElement(aSModel);
    }

    @Override // org.apache.xerces.dom3.as.ASObject
    public ASObject cloneASObject(boolean z) {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public ASAttributeDeclaration createASAttributeDeclaration(String str, String str2) throws DOMException {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public ASContentModel createASContentModel(int i, int i2, short s) throws DOMASException {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public ASElementDeclaration createASElementDeclaration(String str, String str2) throws DOMException {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public ASEntityDeclaration createASEntityDeclaration(String str) throws DOMException {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public ASNotationDeclaration createASNotationDeclaration(String str, String str2, String str3, String str4) throws DOMException {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public ASObjectList getASModels() {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public String getAsHint() {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public String getAsLocation() {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASObject
    public short getAsNodeType() {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public ASNamedObjectMap getAttributeDeclarations() {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    public boolean getContainer() {
        return this.fGrammar != null;
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public ASNamedObjectMap getContentModelDeclarations() {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public ASNamedObjectMap getElementDeclarations() {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public ASNamedObjectMap getEntityDeclarations() {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    public SchemaGrammar getGrammar() {
        return this.fGrammar;
    }

    public Vector getInternalASModels() {
        return this.fASModels;
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public boolean getIsNamespaceAware() {
        return this.f111846a;
    }

    @Override // org.apache.xerces.dom3.as.ASObject
    public String getLocalName() {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASObject
    public String getNamespaceURI() {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASObject
    public String getNodeName() {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public ASNamedObjectMap getNotationDeclarations() {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASObject
    public ASModel getOwnerASModel() {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASObject
    public String getPrefix() {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public short getUsageLocation() {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    public void importASObject(ASObject aSObject) {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    public void insertASObject(ASObject aSObject) {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public void removeAS(ASModel aSModel) {
        this.fASModels.removeElement(aSModel);
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public void setAsHint(String str) {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public void setAsLocation(String str) {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    public void setGrammar(SchemaGrammar schemaGrammar) {
        this.fGrammar = schemaGrammar;
    }

    @Override // org.apache.xerces.dom3.as.ASObject
    public void setLocalName(String str) {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASObject
    public void setNamespaceURI(String str) {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASObject
    public void setNodeName(String str) {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASObject
    public void setOwnerASModel(ASModel aSModel) {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASObject
    public void setPrefix(String str) {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom3.as.ASModel
    public boolean validate() {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    public ASModelImpl(boolean z) {
        this.f111846a = true;
        this.fGrammar = null;
        this.fASModels = new Vector();
        this.f111846a = z;
    }
}
