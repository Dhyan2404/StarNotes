package net.p110sf.saxon.dom;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.type.AnyType;
import net.p110sf.saxon.type.SchemaType;
import org.w3c.dom.TypeInfo;

/* loaded from: classes11.dex */
public class TypeInfoImpl implements TypeInfo {

    /* renamed from: e */
    public final Configuration f98920e;

    /* renamed from: f */
    public final SchemaType f98921f;

    public TypeInfoImpl(Configuration configuration, SchemaType schemaType) {
        this.f98920e = configuration;
        this.f98921f = schemaType;
    }

    @Override // org.w3c.dom.TypeInfo
    public String getTypeName() {
        return this.f98921f.getStructuredQName().getLocalPart();
    }

    @Override // org.w3c.dom.TypeInfo
    public String getTypeNamespace() {
        return this.f98921f.getStructuredQName().getURI();
    }

    @Override // org.w3c.dom.TypeInfo
    public boolean isDerivedFrom(String str, String str2, int i) throws IllegalStateException {
        SchemaType baseType = this.f98921f.getBaseType();
        int allocateFingerprint = this.f98920e.getNamePool().allocateFingerprint(str, str2);
        if (i != 0 && (this.f98921f.getDerivationMethod() & i) == 0) {
            return false;
        }
        if (baseType.getFingerprint() == allocateFingerprint) {
            return true;
        }
        if (baseType instanceof AnyType) {
            return false;
        }
        return new TypeInfoImpl(this.f98920e, baseType).isDerivedFrom(str, str2, i);
    }
}
