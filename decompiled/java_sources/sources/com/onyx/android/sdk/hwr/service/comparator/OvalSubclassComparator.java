package com.onyx.android.sdk.hwr.service.comparator;

import com.onyx.android.sdk.geometry.data.GeometryType;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/comparator/OvalSubclassComparator;", "Lcom/onyx/android/sdk/hwr/service/comparator/SubclassComparator;", "", "", "getSupportedShapes", "getPriorityOrders", "a", "Ljava/util/List;", "orderedShapes", Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OvalSubclassComparator extends SubclassComparator {

    @NotNull
    public static final OvalSubclassComparator INSTANCE = new OvalSubclassComparator();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final List<String> orderedShapes;

    static {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"Circle", GeometryType.ELLIPSE});
        orderedShapes = listOf;
    }

    @Override // com.onyx.android.sdk.hwr.service.comparator.SubclassComparator
    @NotNull
    public List<String> getPriorityOrders() {
        return orderedShapes;
    }

    @Override // com.onyx.android.sdk.hwr.service.comparator.ShapeCandidateComparator
    @NotNull
    public List<String> getSupportedShapes() {
        return orderedShapes;
    }
}
