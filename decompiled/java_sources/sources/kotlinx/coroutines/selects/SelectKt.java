package kotlinx.coroutines.selects;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aG\u0010\u0006\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u001f\b\u0004\u0010\u0005\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0004\u0012\u00020\u00030\u0001¢\u0006\u0002\b\u0004H\u0086Hø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0006\u0010\u0007\u001a7\u0010\u000f\u001a\u00020\u000e*\b\u0012\u0004\u0012\u00020\u00030\b2#\u0010\r\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0001H\u0002\u001a\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\"c\u0010\u001b\u001aQ\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0016\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0014j\u0002`\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u001a\"\u0014\u0010\u001e\u001a\u00020\u00108\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d\"\u0014\u0010\u001f\u001a\u00020\u00108\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u001d\"\u0014\u0010!\u001a\u00020\u00108\u0002X\u0082T¢\u0006\u0006\n\u0004\b \u0010\u001d\"\u0014\u0010#\u001a\u00020\u00108\u0002X\u0082T¢\u0006\u0006\n\u0004\b\"\u0010\u001d\"\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&\"\u0014\u0010)\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010&\"\u0014\u0010+\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010&\"\u0014\u0010-\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010&\"\u001a\u00101\u001a\u00020$8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b.\u0010&\u001a\u0004\b/\u00100*Â\u0001\b\u0007\u00105\"[\u0012\u0017\u0012\u0015\u0012\u0002\b\u000302¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(3\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00030\u00010\u00142[\u0012\u0017\u0012\u0015\u0012\u0002\b\u000302¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(3\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00030\u00010\u0014B\u0002\b4*¦\u0001\b\u0007\u00106\"M\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0016\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00142M\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0016\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0014B\u0002\b4*¦\u0001\b\u0007\u00107\"M\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0016\u0012\u0017\u0012\u0015\u0012\u0002\b\u000302¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u00030\u00142M\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0016\u0012\u0017\u0012\u0015\u0012\u0002\b\u000302¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u00030\u0014B\u0002\b4\u0082\u0002\u0004\n\u0002\b\u0019¨\u00068"}, m61528d2 = {"R", "Lkotlin/Function1;", "Lkotlinx/coroutines/selects/SelectBuilder;", "", "Lkotlin/ExtensionFunctionType;", "builder", "select", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/CancellableContinuation;", "", "Lkotlin/ParameterName;", "name", "cause", "onCancellation", "", "c", "", "trySelectInternalResult", "Lkotlinx/coroutines/selects/TrySelectDetailedResult;", "a", "Lkotlin/Function3;", "", "clauseObject", Constants.ELEMNAME_PARAMVARIABLE_STRING, "clauseResult", "Lkotlinx/coroutines/selects/ProcessResultFunction;", "Lkotlin/jvm/functions/Function3;", "DUMMY_PROCESS_RESULT_FUNCTION", "b", "I", "TRY_SELECT_SUCCESSFUL", "TRY_SELECT_REREGISTER", "d", "TRY_SELECT_CANCELLED", "e", "TRY_SELECT_ALREADY_SELECTED", "Lkotlinx/coroutines/internal/Symbol;", C6997f.f39671c, "Lkotlinx/coroutines/internal/Symbol;", "STATE_REG", C6998g.f39679a, "STATE_COMPLETED", C6999h.f39688c, "STATE_CANCELLED", "i", "NO_RESULT", "j", "getPARAM_CLAUSE_0", "()Lkotlinx/coroutines/internal/Symbol;", "PARAM_CLAUSE_0", "Lkotlinx/coroutines/selects/SelectInstance;", "internalResult", "Lkotlinx/coroutines/InternalCoroutinesApi;", "OnCancellationConstructor", "ProcessResultFunction", "RegistrationFunction", "kotlinx-coroutines-core"}, m61529k = 2, m61530mv = {1, 8, 0})
/* loaded from: classes11.dex */
public final class SelectKt {

    /* renamed from: b */
    public static final int f98693b = 0;

    /* renamed from: c */
    public static final int f98694c = 1;

    /* renamed from: d */
    public static final int f98695d = 2;

    /* renamed from: e */
    public static final int f98696e = 3;

    /* renamed from: a */
    @NotNull
    public static final Function3<Object, Object, Object, Object> f98692a = new Function3() { // from class: kotlinx.coroutines.selects.SelectKt$DUMMY_PROCESS_RESULT_FUNCTION$1
        @Override // kotlin.jvm.functions.Function3
        @Nullable
        public final Void invoke(@NotNull Object obj, @Nullable Object obj2, @Nullable Object obj3) {
            return null;
        }
    };

    /* renamed from: f */
    @NotNull
    public static final Symbol f98697f = new Symbol("STATE_REG");

    /* renamed from: g */
    @NotNull
    public static final Symbol f98698g = new Symbol("STATE_COMPLETED");

    /* renamed from: h */
    @NotNull
    public static final Symbol f98699h = new Symbol("STATE_CANCELLED");

    /* renamed from: i */
    @NotNull
    public static final Symbol f98700i = new Symbol("NO_RESULT");

    /* renamed from: j */
    @NotNull
    public static final Symbol f98701j = new Symbol("PARAM_CLAUSE_0");

    @InternalCoroutinesApi
    public static /* synthetic */ void OnCancellationConstructor$annotations() {
    }

    @InternalCoroutinesApi
    public static /* synthetic */ void ProcessResultFunction$annotations() {
    }

    @InternalCoroutinesApi
    public static /* synthetic */ void RegistrationFunction$annotations() {
    }

    /* renamed from: a */
    public static final TrySelectDetailedResult m62318a(int i) {
        if (i == 0) {
            return TrySelectDetailedResult.SUCCESSFUL;
        }
        if (i == 1) {
            return TrySelectDetailedResult.REREGISTER;
        }
        if (i == 2) {
            return TrySelectDetailedResult.CANCELLED;
        }
        if (i == 3) {
            return TrySelectDetailedResult.ALREADY_SELECTED;
        }
        throw new IllegalStateException(("Unexpected internal result: " + i).toString());
    }

    /* renamed from: b */
    public static final <R> Object m62319b(Function1<? super SelectBuilder<? super R>, Unit> function1, Continuation<? super R> continuation) {
        InlineMarker.mark(3);
        throw null;
    }

    /* renamed from: c */
    public static final boolean m62320c(CancellableContinuation<? super Unit> cancellableContinuation, Function1<? super Throwable, Unit> function1) {
        Object tryResume = cancellableContinuation.tryResume(Unit.INSTANCE, null, function1);
        if (tryResume == null) {
            return false;
        }
        cancellableContinuation.completeResume(tryResume);
        return true;
    }

    @NotNull
    public static final Symbol getPARAM_CLAUSE_0() {
        return f98701j;
    }

    @Nullable
    public static final <R> Object select(@NotNull Function1<? super SelectBuilder<? super R>, Unit> function1, @NotNull Continuation<? super R> continuation) {
        SelectImplementation selectImplementation = new SelectImplementation(continuation.getContext());
        function1.invoke(selectImplementation);
        return selectImplementation.doSelect(continuation);
    }
}
