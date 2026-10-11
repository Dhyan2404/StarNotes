package com.sun.org.apache.xerces.internal.p056xs;

/* loaded from: classes10.dex */
public interface XSModel {
    XSObjectList getAnnotations();

    XSAttributeDeclaration getAttributeDeclaration(String str, String str2);

    XSAttributeGroupDefinition getAttributeGroup(String str, String str2);

    XSNamedMap getComponents(short s);

    XSNamedMap getComponentsByNamespace(short s, String str);

    XSElementDeclaration getElementDeclaration(String str, String str2);

    XSModelGroupDefinition getModelGroupDefinition(String str, String str2);

    XSNamespaceItemList getNamespaceItems();

    StringList getNamespaces();

    XSNotationDeclaration getNotationDeclaration(String str, String str2);

    XSTypeDefinition getTypeDefinition(String str, String str2);
}
