package net.p110sf.saxon.trans;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.style.ComponentDeclaration;
import net.p110sf.saxon.style.XSLItemType;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class TypeAliasManager {

    /* renamed from: a */
    public final Map<StructuredQName, ComponentDeclaration> f102361a = new HashMap();

    /* renamed from: b */
    public final Map<StructuredQName, ItemType> f102362b = new HashMap();

    public ItemType getItemType(StructuredQName structuredQName) {
        return this.f102362b.get(structuredQName);
    }

    public void processAllDeclarations(List<ComponentDeclaration> list) throws XPathException {
        for (ComponentDeclaration componentDeclaration : list) {
            if (componentDeclaration.getSourceElement() instanceof XSLItemType) {
                processDeclaration(componentDeclaration);
            }
        }
        int size = this.f102361a.size();
        while (size > 0) {
            Iterator it2 = new HashSet(this.f102361a.values()).iterator();
            while (it2.hasNext()) {
                processDeclaration((ComponentDeclaration) it2.next());
            }
            if (this.f102361a.size() >= size) {
                StringBuilder sb = new StringBuilder(256);
                sb.append("Cannot resolve all type aliases, because of missing or circular definitions. Unresolved names: ");
                Iterator<StructuredQName> it3 = this.f102361a.keySet().iterator();
                while (it3.hasNext()) {
                    sb.append(it3.next().getDisplayName());
                    sb.append(' ');
                }
                throw new XPathException(sb.toString(), SaxonErrorCode.SXTA0001);
            }
            size = this.f102361a.size();
        }
    }

    public void processDeclaration(ComponentDeclaration componentDeclaration) throws XPathException {
        XSLItemType xSLItemType = (XSLItemType) componentDeclaration.getSourceElement();
        ItemType tryToResolve = xSLItemType.tryToResolve();
        if (tryToResolve != null) {
            registerTypeAlias(xSLItemType.getObjectName(), tryToResolve);
        } else {
            this.f102361a.put(xSLItemType.getObjectName(), componentDeclaration);
        }
    }

    public void registerTypeAlias(StructuredQName structuredQName, ItemType itemType) {
        this.f102362b.put(structuredQName, itemType);
        this.f102361a.remove(structuredQName);
    }
}
