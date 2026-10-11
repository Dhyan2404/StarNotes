package com.onyx.android.sdk.universal.editor.feature.work;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R \u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeatureManager;", "", "", CouchFieldKey.KEY_ACTIVE_SCENE, "Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;", "getWorkFeature", "", "a", "Ljava/util/Map;", "featureMap", "Lcom/onyx/android/sdk/universal/editor/feature/work/NormalWorkFeature;", "b", "Lcom/onyx/android/sdk/universal/editor/feature/work/NormalWorkFeature;", "defaultFeature", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class WorkFeatureManager {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Map<Integer, WorkFeature> featureMap;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final NormalWorkFeature defaultFeature;

    public WorkFeatureManager() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.featureMap = linkedHashMap;
        this.defaultFeature = new NormalWorkFeature();
        linkedHashMap.put(2, new DraftWorkFeature());
        linkedHashMap.put(0, new NormalWorkFeature());
        linkedHashMap.put(3, new PdfWorkFeature());
    }

    @NotNull
    public final WorkFeature getWorkFeature(int activeScene) {
        WorkFeature workFeature = this.featureMap.get(Integer.valueOf(activeScene));
        return workFeature == null ? this.defaultFeature : workFeature;
    }
}
