package com.thegrizzlylabs.sardineandroid.model;

import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;

@Namespace(prefix = SardineUtil.DEFAULT_NAMESPACE_PREFIX, reference = SardineUtil.DEFAULT_NAMESPACE_URI)
@Root(name = DevicePushAction.UNLOCK_DEVICE)
/* loaded from: classes10.dex */
public class Unlock implements SimplePrivilege {
}
