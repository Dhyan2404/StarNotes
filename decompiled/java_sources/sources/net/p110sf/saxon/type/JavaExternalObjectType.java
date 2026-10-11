package net.p110sf.saxon.type;

import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.value.ObjectValue;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class JavaExternalObjectType extends ExternalObjectType {
    protected Class<?> javaClass;

    public JavaExternalObjectType(Class<?> cls) {
        this.javaClass = cls;
    }

    public static String classNameToLocalName(String str) {
        return str.replace('$', '-').replace(IteratorUtils.f104923a, "_-");
    }

    public static StructuredQName classNameToQName(String str) {
        return new StructuredQName("jt", NamespaceConstant.JAVA_TYPE, classNameToLocalName(str));
    }

    public static String localNameToClassName(String str) {
        int i;
        StringBuilder sb = new StringBuilder(str.length());
        boolean z = true;
        int i2 = 0;
        while (i2 < str.length()) {
            char charAt = str.charAt(i2);
            if (!z) {
                if (charAt == '-') {
                    charAt = '$';
                }
                sb.append(charAt);
            } else if (charAt == '_' && (i = i2 + 1) < str.length() && str.charAt(i) == '-') {
                sb.append('[');
                i2 = i;
            } else {
                if (charAt == '-') {
                    charAt = '$';
                }
                sb.append(charAt);
                z = false;
            }
            i2++;
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        return (obj instanceof JavaExternalObjectType) && this.javaClass == ((JavaExternalObjectType) obj).javaClass;
    }

    public String getDisplayName() {
        return "java-type:" + this.javaClass.getName();
    }

    public Class<?> getJavaClass() {
        return this.javaClass;
    }

    @Override // net.p110sf.saxon.type.ExternalObjectType
    public String getName() {
        return this.javaClass.getName();
    }

    @Override // net.p110sf.saxon.type.AnyExternalObjectType, net.p110sf.saxon.type.ItemType
    public ItemType getPrimitiveItemType() {
        return new JavaExternalObjectType(Object.class);
    }

    public Affinity getRelationship(JavaExternalObjectType javaExternalObjectType) {
        Class<?> cls = javaExternalObjectType.javaClass;
        return this.javaClass.equals(cls) ? Affinity.SAME_TYPE : this.javaClass.isAssignableFrom(cls) ? Affinity.SUBSUMES : cls.isAssignableFrom(this.javaClass) ? Affinity.SUBSUMED_BY : (this.javaClass.isInterface() || cls.isInterface()) ? Affinity.OVERLAPS : Affinity.DISJOINT;
    }

    @Override // net.p110sf.saxon.type.ExternalObjectType
    public String getTargetNamespace() {
        return NamespaceConstant.JAVA_TYPE;
    }

    @Override // net.p110sf.saxon.type.ExternalObjectType
    public StructuredQName getTypeName() {
        return classNameToQName(this.javaClass.getName());
    }

    public int hashCode() {
        return this.javaClass.hashCode();
    }

    @Override // net.p110sf.saxon.type.AnyExternalObjectType, net.p110sf.saxon.type.ItemType
    public boolean matches(Item item, TypeHierarchy typeHierarchy) {
        if (item.getGenre() != Genre.EXTERNAL) {
            return false;
        }
        return this.javaClass.isAssignableFrom(((ObjectValue) item).getObject().getClass());
    }

    @Override // net.p110sf.saxon.type.ExternalObjectType
    public String toString() {
        return classNameToQName(this.javaClass.getName()).getEQName();
    }
}
