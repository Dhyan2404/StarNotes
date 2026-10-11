package com.thegrizzlylabs.sardineandroid.model;

import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;

@Namespace(prefix = SardineUtil.DEFAULT_NAMESPACE_PREFIX, reference = SardineUtil.DEFAULT_NAMESPACE_URI)
@Root
/* loaded from: classes10.dex */
public class Supportedlock {

    @ElementList(inline = true, required = false)
    private List<Lockentry> lockentryList;

    public List<Lockentry> getLockentryList() {
        if (this.lockentryList == null) {
            this.lockentryList = new ArrayList();
        }
        return this.lockentryList;
    }
}
