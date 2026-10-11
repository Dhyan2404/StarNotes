package com.thegrizzlylabs.sardineandroid.model;

import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;

@Namespace(prefix = SardineUtil.DEFAULT_NAMESPACE_PREFIX, reference = SardineUtil.DEFAULT_NAMESPACE_URI)
@Root
/* loaded from: classes10.dex */
public class Acl {

    @ElementList(inline = true, required = false)
    private List<Ace> ace;

    public List<Ace> getAce() {
        return this.ace;
    }

    public void setAce(List<Ace> list) {
        this.ace = list;
    }
}
