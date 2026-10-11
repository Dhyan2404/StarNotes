package com.thegrizzlylabs.sardineandroid.model;

import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;

@Namespace(prefix = SardineUtil.DEFAULT_NAMESPACE_PREFIX, reference = SardineUtil.DEFAULT_NAMESPACE_URI)
@Root
/* loaded from: classes10.dex */
public class Inherited {

    @Element
    private String href;

    public String getHref() {
        return this.href;
    }

    public void setHref(String str) {
        this.href = str;
    }
}
