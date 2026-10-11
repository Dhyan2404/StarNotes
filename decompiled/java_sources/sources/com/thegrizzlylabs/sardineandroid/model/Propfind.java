package com.thegrizzlylabs.sardineandroid.model;

import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;

@Namespace(prefix = SardineUtil.DEFAULT_NAMESPACE_PREFIX, reference = SardineUtil.DEFAULT_NAMESPACE_URI)
@Root
/* loaded from: classes10.dex */
public class Propfind {

    @Element(required = false)
    private Allprop allprop;

    @Element(required = false)
    private Prop prop;

    @Element(required = false)
    private Propname propname;

    public Allprop getAllprop() {
        return this.allprop;
    }

    public Prop getProp() {
        return this.prop;
    }

    public Propname getPropname() {
        return this.propname;
    }

    public void setAllprop(Allprop allprop) {
        this.allprop = allprop;
    }

    public void setProp(Prop prop) {
        this.prop = prop;
    }

    public void setPropname(Propname propname) {
        this.propname = propname;
    }
}
