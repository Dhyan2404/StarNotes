package com.onyx.android.sdk.note.common.data.link;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.replicator.note.p035db.model.LinkModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\"\u0010\u0007\u001a\u00020\u00002\u001a\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u0002J\u001a\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u0002R*\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0011\u0010\r\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/link/LinkBean;", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;", "", "", Constant.MAP_TAG, "setLinkListMap", "getLinkListMap", "a", "Ljava/util/Map;", "linkListMap", "", "isEmpty", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LinkBean {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public Map<LinkModel, ? extends Set<String>> linkListMap;

    @Nullable
    public final Map<LinkModel, Set<String>> getLinkListMap() {
        return this.linkListMap;
    }

    public final boolean isEmpty() {
        Map<LinkModel, ? extends Set<String>> map = this.linkListMap;
        return map == null || map.isEmpty();
    }

    @NotNull
    public final LinkBean setLinkListMap(@Nullable Map<LinkModel, ? extends Set<String>> map) {
        this.linkListMap = map;
        return this;
    }
}
