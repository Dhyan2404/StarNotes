package com.onyx.android.sdk.data.cluster.model;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.cluster.ClusterUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006J \u0010\u000f\u001a\u00020\r2\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u0005H\u0007J\u0006\u0010\u0012\u001a\u00020\rJ\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0016J\u0006\u0010\u0017\u001a\u00020\u0018J\n\u0010\u0019\u001a\u0004\u0018\u00010\u0006H\u0007J\u0006\u0010\u001a\u001a\u00020\u0013J\u0006\u0010\u001b\u001a\u00020\u0013J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001d\u001a\u00020\u0005H\u0007J\u0006\u0010\u001e\u001a\u00020\rJ\u001a\u0010\u001f\u001a\u00020\r2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060 J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/model/ClusterList;", "", "()V", "clusterMap", "", "", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "curClusterId", "getCurClusterId", "()Ljava/lang/String;", "setCurClusterId", "(Ljava/lang/String;)V", "addCluster", "", "clusterInfo", "addClusterList", "list", "", Constants.CLEAR_ATTRIBUTES, "", "checkCurClusterId", "getClusterMap", "", "getClusterMapSize", "", "getFirstClusterInfo", "isEmptyList", "isNotBlank", "loadClusterInfo", "clusterId", "printLog", "setClusterMap", "Ljava/util/LinkedHashMap;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nClusterList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClusterList.kt\ncom/onyx/android/sdk/data/cluster/model/ClusterList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n1855#2,2:115\n*S KotlinDebug\n*F\n+ 1 ClusterList.kt\ncom/onyx/android/sdk/data/cluster/model/ClusterList\n*L\n33#1:115,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ClusterList {

    @NotNull
    private Map<String, ClusterInfo> clusterMap = new LinkedHashMap();

    @Nullable
    private String curClusterId;

    public final void addCluster(@NotNull ClusterInfo clusterInfo) {
        Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
        this.clusterMap.put(clusterInfo.getClusterId(), clusterInfo);
    }

    public final void addClusterList(@Nullable Collection<ClusterInfo> list, boolean clear) {
        if (clear) {
            clear();
        }
        if (CollectionKt.isNullOrEmpty(list)) {
            return;
        }
        for (ClusterInfo clusterInfo : list) {
            if (clusterInfo != null) {
                addCluster(clusterInfo);
            }
        }
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean checkCurClusterId(@NotNull String curClusterId) {
        Intrinsics.checkNotNullParameter(curClusterId, "curClusterId");
        ClusterUtils clusterUtils = ClusterUtils.INSTANCE;
        clusterUtils.m32943i(ClusterList.class, "checkCurClusterId src: " + curClusterId);
        if (StringUtils.isBlank(curClusterId) || clusterUtils.isTestCluster(curClusterId) || clusterUtils.isCBTestCluster(curClusterId) || this.clusterMap.containsKey(curClusterId) || getFirstClusterInfo() == null) {
            return false;
        }
        ClusterInfo firstClusterInfo = getFirstClusterInfo();
        Intrinsics.checkNotNull(firstClusterInfo);
        setCurClusterId(firstClusterInfo.getClusterId());
        clusterUtils.m32943i(ClusterList.class, "checkCurClusterId dst: " + curClusterId);
        return true;
    }

    public final void clear() {
        this.clusterMap.clear();
    }

    @NotNull
    public final Map<String, ClusterInfo> getClusterMap() {
        return this.clusterMap;
    }

    public final int getClusterMapSize() {
        return this.clusterMap.size();
    }

    @Nullable
    public final String getCurClusterId() {
        return this.curClusterId;
    }

    @JSONField(deserialize = false, serialize = false)
    @Nullable
    public final ClusterInfo getFirstClusterInfo() {
        if (CollectionKt.isNullOrEmpty(getClusterMap())) {
            return null;
        }
        return getClusterMap().entrySet().iterator().next().getValue();
    }

    public final boolean isEmptyList() {
        return CollectionKt.isNullOrEmpty(this.clusterMap);
    }

    public final boolean isNotBlank() {
        return StringUtils.isNotBlank(this.curClusterId) || CollectionKt.isNonBlank(this.clusterMap);
    }

    @JSONField(deserialize = false, serialize = false)
    @Nullable
    public final ClusterInfo loadClusterInfo(@NotNull String clusterId) {
        Intrinsics.checkNotNullParameter(clusterId, "clusterId");
        return getClusterMap().get(clusterId);
    }

    public final void printLog() {
        StringBuilder sb = new StringBuilder();
        if (CollectionKt.isNonBlank(this.clusterMap)) {
            Iterator<Map.Entry<String, ClusterInfo>> it2 = this.clusterMap.entrySet().iterator();
            while (it2.hasNext()) {
                sb.append(it2.next().getKey());
                sb.append(" ");
            }
        }
        ClusterUtils.INSTANCE.m32943i(ClusterList.class, "curClusterId: " + this.curClusterId + ", list: " + ((Object) sb));
    }

    public final void setClusterMap(@NotNull LinkedHashMap<String, ClusterInfo> clusterMap) {
        Intrinsics.checkNotNullParameter(clusterMap, "clusterMap");
        this.clusterMap = clusterMap;
    }

    /* renamed from: setCurClusterId, reason: collision with other method in class */
    public final void m72237setCurClusterId(@Nullable String str) {
        this.curClusterId = str;
    }

    @NotNull
    public final ClusterList setCurClusterId(@NotNull String curClusterId) {
        Intrinsics.checkNotNullParameter(curClusterId, "curClusterId");
        this.curClusterId = curClusterId;
        ClusterUtils.INSTANCE.m32943i(ClusterList.class, "setCurClusterId: " + curClusterId);
        return this;
    }
}
