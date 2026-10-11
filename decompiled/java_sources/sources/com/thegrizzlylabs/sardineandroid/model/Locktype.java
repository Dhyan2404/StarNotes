package com.thegrizzlylabs.sardineandroid.model;

import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;

@Namespace(prefix = SardineUtil.DEFAULT_NAMESPACE_PREFIX, reference = SardineUtil.DEFAULT_NAMESPACE_URI)
@Root
/* loaded from: classes10.dex */
public class Locktype {

    @Element(required = false)
    private Write write;

    public Write getWrite() {
        return this.write;
    }

    public void setWrite(Write write) {
        this.write = write;
    }
}
