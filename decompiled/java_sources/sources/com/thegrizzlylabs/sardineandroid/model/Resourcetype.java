package com.thegrizzlylabs.sardineandroid.model;

import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;
import org.w3c.dom.Element;

@Namespace(prefix = SardineUtil.DEFAULT_NAMESPACE_PREFIX, reference = SardineUtil.DEFAULT_NAMESPACE_URI)
@Root
/* loaded from: classes10.dex */
public class Resourcetype implements EntityWithAnyElement {
    private List<Element> any;

    @org.simpleframework.xml.Element(required = false)
    private Collection collection;
    private Principal principal;

    @Override // com.thegrizzlylabs.sardineandroid.model.EntityWithAnyElement
    public List<Element> getAny() {
        if (this.any == null) {
            this.any = new ArrayList();
        }
        return this.any;
    }

    public Collection getCollection() {
        return this.collection;
    }

    public Principal getPrincipal() {
        return this.principal;
    }

    public void setCollection(Collection collection) {
        this.collection = collection;
    }

    public void setPrincipal(Principal principal) {
        this.principal = principal;
    }
}
