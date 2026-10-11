package com.thegrizzlylabs.sardineandroid.model;

import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;

@Namespace(prefix = SardineUtil.DEFAULT_NAMESPACE_PREFIX, reference = SardineUtil.DEFAULT_NAMESPACE_URI)
@Root
/* loaded from: classes10.dex */
public class Propertybehavior {
    private Keepalive keepalive;
    private Omit omit;

    public Keepalive getKeepalive() {
        return this.keepalive;
    }

    public Omit getOmit() {
        return this.omit;
    }

    public void setKeepalive(Keepalive keepalive) {
        this.keepalive = keepalive;
    }

    public void setOmit(Omit omit) {
        this.omit = omit;
    }
}
