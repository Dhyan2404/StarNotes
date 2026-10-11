package org.apache.xmlbeans.impl.schema;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaAnnotation;
import org.apache.xmlbeans.SchemaComponent;
import org.apache.xmlbeans.SchemaModelGroup;
import org.apache.xmlbeans.SchemaTypeSystem;
import org.apache.xmlbeans.XmlObject;

/* loaded from: classes13.dex */
public class SchemaModelGroupImpl implements SchemaModelGroup {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private SchemaAnnotation _annotation;
    private String _attFormDefault;
    private boolean _chameleon;
    private SchemaContainer _container;
    private String _elemFormDefault;
    private String _filename;
    private QName _name;
    private XmlObject _parseObject;
    private String _parseTNS;
    private boolean _redefinition;
    private SchemaModelGroup.Ref _selfref = new SchemaModelGroup.Ref(this);
    private Object _userData;

    public SchemaModelGroupImpl(SchemaContainer schemaContainer) {
        this._container = schemaContainer;
    }

    @Override // org.apache.xmlbeans.SchemaAnnotated
    public SchemaAnnotation getAnnotation() {
        return this._annotation;
    }

    public String getAttFormDefault() {
        return this._attFormDefault;
    }

    public String getChameleonNamespace() {
        if (this._chameleon) {
            return this._parseTNS;
        }
        return null;
    }

    @Override // org.apache.xmlbeans.SchemaComponent
    public SchemaComponent.Ref getComponentRef() {
        return getRef();
    }

    @Override // org.apache.xmlbeans.SchemaModelGroup, org.apache.xmlbeans.SchemaComponent
    public int getComponentType() {
        return 6;
    }

    public SchemaContainer getContainer() {
        return this._container;
    }

    public String getElemFormDefault() {
        return this._elemFormDefault;
    }

    @Override // org.apache.xmlbeans.SchemaModelGroup, org.apache.xmlbeans.SchemaComponent
    public QName getName() {
        return this._name;
    }

    public XmlObject getParseObject() {
        return this._parseObject;
    }

    public SchemaModelGroup.Ref getRef() {
        return this._selfref;
    }

    @Override // org.apache.xmlbeans.SchemaComponent
    public String getSourceName() {
        return this._filename;
    }

    public String getTargetNamespace() {
        return this._parseTNS;
    }

    @Override // org.apache.xmlbeans.SchemaComponent
    public SchemaTypeSystem getTypeSystem() {
        return this._container.getTypeSystem();
    }

    @Override // org.apache.xmlbeans.SchemaModelGroup
    public Object getUserData() {
        return this._userData;
    }

    public void init(QName qName, String str, boolean z, String str2, String str3, boolean z2, XmlObject xmlObject, SchemaAnnotation schemaAnnotation, Object obj) {
        this._name = qName;
        this._parseTNS = str;
        this._chameleon = z;
        this._elemFormDefault = str2;
        this._attFormDefault = str3;
        this._redefinition = z2;
        this._parseObject = xmlObject;
        this._annotation = schemaAnnotation;
        this._userData = obj;
    }

    public boolean isRedefinition() {
        return this._redefinition;
    }

    public void setFilename(String str) {
        this._filename = str;
    }

    public SchemaModelGroupImpl(SchemaContainer schemaContainer, QName qName) {
        this._container = schemaContainer;
        this._name = qName;
    }
}
