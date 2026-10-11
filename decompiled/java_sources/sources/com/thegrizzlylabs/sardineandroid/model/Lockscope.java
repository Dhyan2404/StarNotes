package com.thegrizzlylabs.sardineandroid.model;

import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;

@Namespace(prefix = SardineUtil.DEFAULT_NAMESPACE_PREFIX, reference = SardineUtil.DEFAULT_NAMESPACE_URI)
@Root
/* loaded from: classes10.dex */
public class Lockscope {

    @Element(required = false)
    private Exclusive exclusive;

    @Element(required = false)
    private Shared shared;

    public Exclusive getExclusive() {
        return this.exclusive;
    }

    public Shared getShared() {
        return this.shared;
    }

    public void setExclusive(Exclusive exclusive) {
        this.exclusive = exclusive;
    }

    public void setShared(Shared shared) {
        this.shared = shared;
    }
}
