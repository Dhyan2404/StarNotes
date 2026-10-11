package net.p110sf.saxon.type;

import net.p110sf.saxon.om.StructuredQName;

/* loaded from: classes11.dex */
public abstract class ExternalObjectType extends AnyExternalObjectType {
    public abstract String getName();

    public abstract String getTargetNamespace();

    public abstract StructuredQName getTypeName();

    @Override // net.p110sf.saxon.type.AnyExternalObjectType, net.p110sf.saxon.type.ItemType
    public final boolean isPlainType() {
        return false;
    }

    public String toString() {
        return getTypeName().toString();
    }
}
