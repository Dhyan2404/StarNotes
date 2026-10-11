package com.onyx.android.sdk.data.couchbase.bean;

import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u001a\u0014\u0010\u0004\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¨\u0006\u0005"}, m61528d2 = {"copyFrom", "", "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;", "replicatorBean", "merge", "sdk-data_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class StartReplicatorBeanKt {
    public static final void copyFrom(@NotNull StartReplicatorBean startReplicatorBean, @Nullable StartReplicatorBean startReplicatorBean2) {
        List<String> mutableList;
        List<String> mutableList2;
        Intrinsics.checkNotNullParameter(startReplicatorBean, "<this>");
        if (startReplicatorBean2 == null) {
            return;
        }
        startReplicatorBean.setTriggerSource(startReplicatorBean2.getTriggerSource());
        startReplicatorBean.setForce(startReplicatorBean2.getForce());
        startReplicatorBean.setResetCheckpoint(startReplicatorBean2.getResetCheckpoint());
        startReplicatorBean.setSyncAll(startReplicatorBean2.getSyncAll());
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) startReplicatorBean2.getSyncDocIdList());
        startReplicatorBean.setSyncDocIdList(mutableList);
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) startReplicatorBean2.getLibraryDocIdList());
        startReplicatorBean.setLibraryDocIdList(mutableList2);
        startReplicatorBean.setEnableLog(startReplicatorBean2.getEnableLog());
    }

    public static final void merge(@NotNull StartReplicatorBean startReplicatorBean, @Nullable StartReplicatorBean startReplicatorBean2) {
        Intrinsics.checkNotNullParameter(startReplicatorBean, "<this>");
        if (startReplicatorBean2 == null) {
            return;
        }
        startReplicatorBean.setTriggerSource(startReplicatorBean2.getTriggerSource());
        startReplicatorBean.setForce(startReplicatorBean.getForce() || startReplicatorBean2.getForce());
        startReplicatorBean.setResetCheckpoint(startReplicatorBean.getResetCheckpoint() || startReplicatorBean2.getResetCheckpoint());
        startReplicatorBean.setSyncAll(startReplicatorBean.getSyncAll() || startReplicatorBean2.getSyncAll());
        startReplicatorBean.getSyncDocIdList().addAll(startReplicatorBean2.getSyncDocIdList());
        startReplicatorBean.getLibraryDocIdList().addAll(startReplicatorBean2.getLibraryDocIdList());
        startReplicatorBean.setEnableLog(startReplicatorBean.getEnableLog() || startReplicatorBean2.getEnableLog());
    }
}
