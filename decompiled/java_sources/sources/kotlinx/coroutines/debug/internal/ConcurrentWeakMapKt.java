package kotlinx.coroutines.debug.internal;

import com.sunia.HTREnginev2.c9j;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u001a\u000e\u0010\u0002\u001a\u00020\u0001*\u0004\u0018\u00010\u0000H\u0002\u001a\b\u0010\u0004\u001a\u00020\u0003H\u0002\"\u0014\u0010\u0007\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0002\u0010\u0006\"\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0004\u0010\u0006\"\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b\"\u0014\u0010\u000f\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e\"\u0014\u0010\u0011\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"", "Lcom/sunia/HTREnginev2/c9j;", "a", "", "b", "", "I", "MAGIC", "MIN_CAPACITY", "Lkotlinx/coroutines/internal/Symbol;", "c", "Lkotlinx/coroutines/internal/Symbol;", "REHASH", "d", "Lcom/sunia/HTREnginev2/c9j;", "MARKED_NULL", "e", "MARKED_TRUE", "kotlinx-coroutines-core"}, m61529k = 2, m61530mv = {1, 8, 0})
/* loaded from: classes11.dex */
public final class ConcurrentWeakMapKt {

    /* renamed from: a */
    public static final int f98312a = -1640531527;

    /* renamed from: b */
    public static final int f98313b = 16;

    /* renamed from: c */
    @NotNull
    public static final Symbol f98314c = new Symbol("REHASH");

    /* renamed from: d */
    @NotNull
    public static final c9j f98315d = new c9j(null);

    /* renamed from: e */
    @NotNull
    public static final c9j f98316e = new c9j(Boolean.TRUE);

    /* renamed from: a */
    public static final c9j m61915a(Object obj) {
        return obj == null ? f98315d : Intrinsics.areEqual(obj, Boolean.TRUE) ? f98316e : new c9j(obj);
    }

    /* renamed from: b */
    public static final Void m61916b() {
        throw new UnsupportedOperationException("not implemented");
    }
}
