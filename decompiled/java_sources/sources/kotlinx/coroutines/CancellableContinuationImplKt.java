package kotlinx.coroutines;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.debug.internal.DebugCoroutineInfoImplKt;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0019\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0082\b\"\u0014\u0010\u0005\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004\"\u0014\u0010\u0007\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004\"\u0014\u0010\t\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004\"\u0014\u0010\u000b\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004\"\u0014\u0010\r\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0004\"\u0014\u0010\u000f\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004\"\u0014\u0010\u0011\u001a\u00020\u00108\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012\"\u0019\u0010\u0001\u001a\u00020\u0000*\u00020\u00008Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0013\"\u0019\u0010\u0002\u001a\u00020\u0000*\u00020\u00008Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\u0013¨\u0006\u0014"}, m61528d2 = {"", "decision", FirebaseAnalytics.Param.INDEX, "a", "I", "UNDECIDED", "b", DebugCoroutineInfoImplKt.SUSPENDED, "c", "RESUMED", "d", "DECISION_SHIFT", "e", "INDEX_MASK", C6997f.f39671c, "NO_INDEX", "Lkotlinx/coroutines/internal/Symbol;", "RESUME_TOKEN", "Lkotlinx/coroutines/internal/Symbol;", Constants.GET_PARENT_SIG, "kotlinx-coroutines-core"}, m61529k = 2, m61530mv = {1, 8, 0})
/* loaded from: classes11.dex */
public final class CancellableContinuationImplKt {

    @JvmField
    @NotNull
    public static final Symbol RESUME_TOKEN = new Symbol("RESUME_TOKEN");

    /* renamed from: a */
    public static final int f98125a = 0;

    /* renamed from: b */
    public static final int f98126b = 1;

    /* renamed from: c */
    public static final int f98127c = 2;

    /* renamed from: d */
    public static final int f98128d = 29;

    /* renamed from: e */
    public static final int f98129e = 536870911;

    /* renamed from: f */
    public static final int f98130f = 536870911;

    /* renamed from: a */
    public static final int m61596a(int i, int i2) {
        return (i << 29) + i2;
    }

    /* renamed from: b */
    public static final int m61597b(int i) {
        return i >> 29;
    }

    /* renamed from: c */
    public static final int m61598c(int i) {
        return i & 536870911;
    }
}
