package com.onyx.android.sdk.base.lite.extension;

import android.graphics.Path;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0001\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"getQuadToEndPos", "", Keywords.FUNC_CURRENT_STRING, Constants.NEXT, "factor", "copy", "Landroid/graphics/Path;", "sdk-baselite_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PathKt {
    @NotNull
    public static final Path copy(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Path path2 = new Path();
        path2.addPath(path);
        return path2;
    }

    public static final float getQuadToEndPos(float f, float f2, float f3) {
        return f + ((f2 - f) * f3);
    }

    public static /* synthetic */ float getQuadToEndPos$default(float f, float f2, float f3, int i, Object obj) {
        if ((i & 4) != 0) {
            f3 = 0.7f;
        }
        return getQuadToEndPos(f, f2, f3);
    }
}
