package net.p110sf.saxon.event;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class NamespaceReducer extends ProxyReceiver implements NamespaceResolver {

    /* renamed from: e */
    public NamespaceBinding[] f99003e;

    /* renamed from: f */
    public int f99004f;

    /* renamed from: g */
    public int[] f99005g;

    /* renamed from: h */
    public int f99006h;

    /* renamed from: i */
    public boolean[] f99007i;

    /* renamed from: j */
    public NamespaceBinding[] f99008j;

    public NamespaceReducer(Receiver receiver) {
        super(receiver);
        this.f99003e = new NamespaceBinding[50];
        this.f99004f = 0;
        this.f99005g = new int[50];
        this.f99006h = 0;
        this.f99007i = new boolean[50];
        this.f99008j = null;
    }

    /* renamed from: c */
    public final void m62497c(NamespaceBinding namespaceBinding) {
        int i = this.f99004f;
        int i2 = i + 1;
        NamespaceBinding[] namespaceBindingArr = this.f99003e;
        if (i2 >= namespaceBindingArr.length) {
            this.f99003e = (NamespaceBinding[]) Arrays.copyOf(namespaceBindingArr, i * 2);
        }
        NamespaceBinding[] namespaceBindingArr2 = this.f99003e;
        int i3 = this.f99004f;
        this.f99004f = i3 + 1;
        namespaceBindingArr2[i3] = namespaceBinding;
    }

    /* renamed from: d */
    public final boolean m62498d(NamespaceBinding namespaceBinding) {
        if (namespaceBinding.isXmlNamespace()) {
            return false;
        }
        String prefix = namespaceBinding.getPrefix();
        if (this.f99008j != null) {
            int i = 0;
            while (true) {
                NamespaceBinding[] namespaceBindingArr = this.f99008j;
                if (i >= namespaceBindingArr.length) {
                    break;
                }
                NamespaceBinding namespaceBinding2 = namespaceBindingArr[i];
                if (namespaceBinding2 != null && prefix.equals(namespaceBinding2.getPrefix())) {
                    this.f99008j[i] = null;
                }
                i++;
            }
        }
        for (int i2 = this.f99004f - 1; i2 >= 0; i2--) {
            if (this.f99003e[i2].equals(namespaceBinding)) {
                return false;
            }
            if (this.f99003e[i2].getPrefix().equals(namespaceBinding.getPrefix())) {
                return true;
            }
        }
        return !namespaceBinding.isDefaultUndeclaration();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        int i = this.f99006h;
        int i2 = i - 1;
        this.f99006h = i2;
        if (i == 0) {
            throw new IllegalStateException("Attempt to output end tag with no matching start tag");
        }
        this.f99004f -= this.f99005g[i2];
        this.nextReceiver.endElement();
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public String getURIForPrefix(String str, boolean z) {
        if (str.isEmpty() && !z) {
            return "";
        }
        if ("xml".equals(str)) {
            return "http://www.w3.org/XML/1998/namespace";
        }
        for (int i = this.f99004f - 1; i >= 0; i--) {
            if (this.f99003e[i].getPrefix().equals(str)) {
                return this.f99003e[i].getURI();
            }
        }
        if (str.isEmpty()) {
            return "";
        }
        return null;
    }

    public boolean isDisinheritingNamespaces() {
        int i = this.f99006h;
        return i > 0 && this.f99007i[i - 1];
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public Iterator<String> iteratePrefixes() {
        ArrayList arrayList = new ArrayList(this.f99004f);
        for (int i = this.f99004f - 1; i >= 0; i--) {
            String prefix = this.f99003e[i].getPrefix();
            if (!arrayList.contains(prefix)) {
                arrayList.add(prefix);
            }
        }
        arrayList.add("xml");
        return arrayList.iterator();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
        if (ReceiverOption.contains(i, 65536)) {
            this.f99008j = (NamespaceBinding[]) Arrays.copyOf(this.f99003e, this.f99004f);
        } else {
            int i2 = this.f99006h;
            if (i2 <= 0 || !this.f99007i[i2 - 1]) {
                this.f99008j = null;
            } else {
                ArrayList arrayList = new ArrayList(this.f99004f);
                int i3 = this.f99004f;
                for (int i4 = this.f99006h - 1; i4 >= 0 && this.f99007i[i4]; i4--) {
                    for (int i5 = 0; i5 < this.f99005g[i4]; i5++) {
                        i3--;
                        arrayList.add(this.f99003e[i3]);
                    }
                }
                this.f99008j = (NamespaceBinding[]) arrayList.toArray(NamespaceBinding.EMPTY_ARRAY);
            }
        }
        int[] iArr = this.f99005g;
        int i6 = this.f99006h;
        iArr[i6] = 0;
        this.f99007i[i6] = ReceiverOption.contains(i, 128);
        int i7 = this.f99006h + 1;
        this.f99006h = i7;
        int[] iArr2 = this.f99005g;
        if (i7 >= iArr2.length) {
            this.f99005g = Arrays.copyOf(iArr2, i7 * 2);
            this.f99007i = Arrays.copyOf(this.f99007i, this.f99006h * 2);
        }
    }
}
