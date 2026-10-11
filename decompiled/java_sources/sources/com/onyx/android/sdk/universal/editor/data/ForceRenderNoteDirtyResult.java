package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.geometry.data.SliceBitmapUpdateResult;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\r\u001a\u00020\u000bR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;", "", "()V", "resultList", "", "Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;", "getResultList", "()Ljava/util/List;", "getDebugString", "", "hasFailList", "", "isHighQualityUpdateSuccess", "isUpdateBitmapSuccess", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nForceRenderNoteDirtyArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForceRenderNoteDirtyArgs.kt\ncom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n1747#2,3:115\n1747#2,3:118\n1747#2,3:121\n1855#2,2:124\n*S KotlinDebug\n*F\n+ 1 ForceRenderNoteDirtyArgs.kt\ncom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult\n*L\n56#1:115,3\n60#1:118,3\n64#1:121,3\n69#1:124,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ForceRenderNoteDirtyResult {

    @NotNull
    private final List<SliceBitmapUpdateResult> resultList = new ArrayList();

    @NotNull
    public final String getDebugString() {
        StringBuilder sb = new StringBuilder();
        for (SliceBitmapUpdateResult sliceBitmapUpdateResult : this.resultList) {
            sb.append("isHighQuality = " + sliceBitmapUpdateResult.getSliceInfo().getIsHighQuality() + ", success = " + sliceBitmapUpdateResult.getIsSuccess() + '\n');
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @NotNull
    public final List<SliceBitmapUpdateResult> getResultList() {
        return this.resultList;
    }

    public final boolean hasFailList() {
        List<SliceBitmapUpdateResult> list = this.resultList;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            if (!((SliceBitmapUpdateResult) it2.next()).getIsSuccess()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isHighQualityUpdateSuccess() {
        List<SliceBitmapUpdateResult> list = this.resultList;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (SliceBitmapUpdateResult sliceBitmapUpdateResult : list) {
            if (sliceBitmapUpdateResult.getIsSuccess() && sliceBitmapUpdateResult.getSliceInfo().getIsHighQuality()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isUpdateBitmapSuccess() {
        List<SliceBitmapUpdateResult> list = this.resultList;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            if (((SliceBitmapUpdateResult) it2.next()).getIsSuccess()) {
                return true;
            }
        }
        return false;
    }
}
