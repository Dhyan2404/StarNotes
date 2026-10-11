package net.p110sf.saxon.om;

import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;

/* loaded from: classes11.dex */
public interface MutableNodeInfo extends NodeInfo {
    void addAttribute(NodeName nodeName, SimpleType simpleType, String str, int i, boolean z);

    default void addNamespace(String str, String str2) {
    }

    void addNamespace(NamespaceBinding namespaceBinding, boolean z);

    void delete();

    void insertChildren(NodeInfo[] nodeInfoArr, boolean z, boolean z2);

    void insertSiblings(NodeInfo[] nodeInfoArr, boolean z, boolean z2);

    boolean isDeleted();

    Builder newBuilder();

    void removeAttribute(NodeInfo nodeInfo);

    default void removeNamespace(String str) {
    }

    void removeTypeAnnotation();

    void rename(NodeName nodeName, boolean z);

    void replace(NodeInfo[] nodeInfoArr, boolean z);

    void replaceStringValue(UnicodeString unicodeString);

    void setAttributes(AttributeMap attributeMap);

    void setTypeAnnotation(SchemaType schemaType);
}
