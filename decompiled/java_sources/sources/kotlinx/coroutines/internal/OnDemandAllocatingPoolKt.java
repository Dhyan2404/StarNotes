package kotlinx.coroutines.internal;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u0017\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u0082\b\"\u0014\u0010\u0007\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0004\u0010\u0006¨\u0006\b"}, m61528d2 = {"Lkotlin/Function0;", "", BreakpointSQLiteHelper.f39283i, "", "a", "", "I", "IS_CLOSED_MASK", "kotlinx-coroutines-core"}, m61529k = 2, m61530mv = {1, 8, 0})
/* loaded from: classes11.dex */
public final class OnDemandAllocatingPoolKt {

    /* renamed from: a */
    public static final int f98611a = Integer.MIN_VALUE;

    /* renamed from: a */
    public static final Void m62232a(Function0<Unit> function0) {
        while (true) {
            function0.invoke();
        }
    }
}
