package com.onyx.android.sdk.genericshape.erase;

import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.genericshape.Geometry;
import com.onyx.android.sdk.genericshape.IGeometry;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public /* synthetic */ class UniversalShapeSplitter$split$1 extends FunctionReferenceImpl implements Function3<IGeometry, List<? extends TouchPointList>, Integer, Geometry> {
    public UniversalShapeSplitter$split$1(Object obj) {
        super(3, obj, UniversalShapeSplitter.class, "parseSegmentGeometry", "parseSegmentGeometry(Lcom/onyx/android/sdk/genericshape/IGeometry;Ljava/util/List;I)Lcom/onyx/android/sdk/genericshape/Geometry;", 0);
    }

    @Nullable
    public final Geometry invoke(@NotNull IGeometry p0, @NotNull List<TouchPointList> p1, int i) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        Intrinsics.checkNotNullParameter(p1, "p1");
        return ((UniversalShapeSplitter) this.receiver).parseSegmentGeometry(p0, p1, i);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Geometry invoke(IGeometry iGeometry, List<? extends TouchPointList> list, Integer num) {
        return invoke(iGeometry, (List<TouchPointList>) list, num.intValue());
    }
}
