package kotlinx.coroutines;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sunia.HTREnginev2.kji;
import com.sunia.HTREnginev2.xof;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u0000*\u0004\u0018\u00010\u0000H\u0000\u001a\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0000*\u0004\u0018\u00010\u0000H\u0000\"\u0014\u0010\u0006\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005\"\u0014\u0010\u0007\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0005\"\u0014\u0010\t\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0005\"\u0014\u0010\u000b\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0005\"\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000e\"\u0014\u0010\u0011\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u000e\"\u0014\u0010\u0013\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u000e\"\u0014\u0010\u0015\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0005\"\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018\"\u0014\u0010\u001b\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"", "boxIncomplete", "unboxState", "Lkotlinx/coroutines/internal/Symbol;", "a", "Lkotlinx/coroutines/internal/Symbol;", "COMPLETING_ALREADY", "COMPLETING_WAITING_CHILDREN", "b", "COMPLETING_RETRY", "c", "TOO_LATE_TO_CANCEL", "", "d", "I", "RETRY", "e", "FALSE", C6997f.f39671c, "TRUE", C6998g.f39679a, "SEALED", "Lcom/sunia/HTREnginev2/xof;", C6999h.f39688c, "Lcom/sunia/HTREnginev2/xof;", "EMPTY_NEW", "i", "EMPTY_ACTIVE", "kotlinx-coroutines-core"}, m61529k = 2, m61530mv = {1, 8, 0})
/* loaded from: classes11.dex */
public final class JobSupportKt {

    /* renamed from: d */
    public static final int f98202d = -1;

    /* renamed from: e */
    public static final int f98203e = 0;

    /* renamed from: f */
    public static final int f98204f = 1;

    /* renamed from: a */
    @NotNull
    public static final Symbol f98199a = new Symbol("COMPLETING_ALREADY");

    @JvmField
    @NotNull
    public static final Symbol COMPLETING_WAITING_CHILDREN = new Symbol("COMPLETING_WAITING_CHILDREN");

    /* renamed from: b */
    @NotNull
    public static final Symbol f98200b = new Symbol("COMPLETING_RETRY");

    /* renamed from: c */
    @NotNull
    public static final Symbol f98201c = new Symbol("TOO_LATE_TO_CANCEL");

    /* renamed from: g */
    @NotNull
    public static final Symbol f98205g = new Symbol("SEALED");

    /* renamed from: h */
    @NotNull
    public static final xof f98206h = new xof(false);

    /* renamed from: i */
    @NotNull
    public static final xof f98207i = new xof(true);

    @Nullable
    public static final Object boxIncomplete(@Nullable Object obj) {
        return obj instanceof Incomplete ? new kji((Incomplete) obj) : obj;
    }

    @Nullable
    public static final Object unboxState(@Nullable Object obj) {
        Incomplete incomplete;
        kji kjiVar = obj instanceof kji ? (kji) obj : null;
        return (kjiVar == null || (incomplete = kjiVar.f75485a) == null) ? obj : incomplete;
    }
}
