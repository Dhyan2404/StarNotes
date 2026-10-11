package com.onyx.android.sdk.genericshape.erase;

import android.graphics.Path;
import com.onyx.android.sdk.genericshape.IGeometry;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public /* synthetic */ class UniversalShapeSplitter$splitPath$1 extends FunctionReferenceImpl implements Function1<IGeometry, Path> {
    public UniversalShapeSplitter$splitPath$1(Object obj) {
        super(1, obj, UniversalShapeSplitter.class, "loadRenderPath", "loadRenderPath(Lcom/onyx/android/sdk/genericshape/IGeometry;)Landroid/graphics/Path;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    @NotNull
    public final Path invoke(@NotNull IGeometry p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        return ((UniversalShapeSplitter) this.receiver).loadRenderPath(p0);
    }
}
