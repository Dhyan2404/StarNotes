package kotlinx.coroutines.internal;

import com.sunia.HTREnginev2.t6n;
import com.sunia.HTREnginev2.u6n;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/t6n", "com/sunia/HTREnginev2/u6n"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 8, 0})
/* loaded from: classes11.dex */
public final class SystemPropsKt {
    public static final int getAVAILABLE_PROCESSORS() {
        return t6n.m57305a();
    }

    public static final int systemProp(@NotNull String str, int i, int i2, int i3) {
        return u6n.m57539a(str, i, i2, i3);
    }

    public static /* synthetic */ int systemProp$default(String str, int i, int i2, int i3, int i4, Object obj) {
        return u6n.m57543e(str, i, i2, i3, i4, obj);
    }

    public static final long systemProp(@NotNull String str, long j, long j2, long j3) {
        return u6n.m57540b(str, j, j2, j3);
    }

    public static /* synthetic */ long systemProp$default(String str, long j, long j2, long j3, int i, Object obj) {
        return u6n.m57544f(str, j, j2, j3, i, obj);
    }

    @Nullable
    public static final String systemProp(@NotNull String str) {
        return t6n.m57306b(str);
    }

    @NotNull
    public static final String systemProp(@NotNull String str, @NotNull String str2) {
        return u6n.m57541c(str, str2);
    }

    public static final boolean systemProp(@NotNull String str, boolean z) {
        return u6n.m57542d(str, z);
    }
}
