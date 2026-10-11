package com.onyx.android.sdk.base.extension;

import com.onyx.android.sdk.base.utils.Debug;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u0010\u0010\u0002\u001a\u00020\u0001*\b\u0012\u0002\b\u0003\u0018\u00010\u0000\u001a\u0010\u0010\u0003\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u0000H\u0002¨\u0006\u0004"}, m61528d2 = {"Ljava/lang/Class;", "", "getCompatSimpleName", "a", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class ClassKt {
    /* renamed from: a */
    public static final String m31902a(Class<?> cls) {
        int lastIndexOf$default;
        String name = cls.getName();
        try {
            Intrinsics.checkNotNull(name);
            lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) name, ".", 0, false, 6, (Object) null);
            if (lastIndexOf$default > 0) {
                Intrinsics.checkNotNull(name);
                String substring = name.substring(lastIndexOf$default + 1);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                name = substring;
            }
        } catch (Exception e) {
            Debug.INSTANCE.m32048e(e);
        }
        Intrinsics.checkNotNull(name);
        return name;
    }

    @NotNull
    public static final String getCompatSimpleName(@Nullable Class<?> cls) {
        if (cls == null) {
            return "null cls";
        }
        if (cls.getSimpleName().length() == 0) {
            return m31902a(cls);
        }
        String simpleName = cls.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        return simpleName;
    }
}
