package com.thegrizzlylabs.sardineandroid.model;

import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;

@Namespace(prefix = SardineUtil.DEFAULT_NAMESPACE_PREFIX, reference = SardineUtil.DEFAULT_NAMESPACE_URI)
@Root
/* loaded from: classes10.dex */
public class Propertyupdate {

    @ElementListUnion({@ElementList(entry = SyncConstant.SYNC_ACTION_REMOVE, inline = true, type = Remove.class), @ElementList(entry = ExtensionNamespaceContext.EXSLT_SET_PREFIX, inline = true, type = Set.class)})
    private List<Object> removeOrSet;

    public List<Object> getRemoveOrSet() {
        if (this.removeOrSet == null) {
            this.removeOrSet = new ArrayList();
        }
        return this.removeOrSet;
    }
}
