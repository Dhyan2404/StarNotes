package kotlinx.coroutines.selects;

import androidx.navigation.NavInflater;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.C14434t4;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0011\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00028\u00000\u0004:\u0001OB\u000f\u0012\u0006\u0010<\u001a\u000208¢\u0006\u0004\bM\u0010NJ\u0013\u0010\u0005\u001a\u00028\u0000H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0013\u0010\u000b\u001a\u00020\tH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\u0006J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u001a\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u0007H\u0002J\u001c\u0010\u0011\u001a\u000e\u0018\u00010\u0010R\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0013\u0010\u0012\u001a\u00028\u0000H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0006J/\u0010\u0014\u001a\u00028\u00002\u0010\u0010\u0013\u001a\f0\u0010R\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0007H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0017\u001a\u00020\t2\u0010\u0010\u0016\u001a\f0\u0010R\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0002J\u0013\u0010\u0018\u001a\u00028\u0000H\u0091@ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0006J5\u0010\u001d\u001a\u00020\t*\u00020\u00192\u001c\u0010\u001c\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u001aH\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001eJG\u0010\u001d\u001a\u00020\t\"\u0004\b\u0001\u0010\u001f*\b\u0012\u0004\u0012\u00028\u00010 2\"\u0010\u001c\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u00070!H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\"J[\u0010\u001d\u001a\u00020\t\"\u0004\b\u0001\u0010#\"\u0004\b\u0002\u0010\u001f*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020$2\u0006\u0010%\u001a\u00028\u00012\"\u0010\u001c\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u00070!H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010&J \u0010)\u001a\u00020\t*\f0\u0010R\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010(\u001a\u00020'H\u0001J\u0010\u0010,\u001a\u00020\t2\u0006\u0010+\u001a\u00020*H\u0016J\u001c\u00100\u001a\u00020\t2\n\u0010.\u001a\u0006\u0012\u0002\b\u00030-2\u0006\u0010/\u001a\u00020\u000eH\u0016J\u0012\u00101\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u00103\u001a\u00020'2\u0006\u0010\b\u001a\u00020\u00072\b\u00102\u001a\u0004\u0018\u00010\u0007H\u0016J\u0018\u00105\u001a\u0002042\u0006\u0010\b\u001a\u00020\u00072\b\u00102\u001a\u0004\u0018\u00010\u0007J\u0013\u0010\u001d\u001a\u00020\t2\b\u00107\u001a\u0004\u0018\u000106H\u0096\u0002R\u001a\u0010<\u001a\u0002088\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u00109\u001a\u0004\b:\u0010;R(\u0010?\u001a\u0014\u0012\u000e\u0012\f0\u0010R\b\u0012\u0004\u0012\u00028\u00000\u0000\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010>R\u0018\u0010B\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010E\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010AR\u0014\u0010H\u001a\u00020'8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b@\u0010GR\u0014\u0010I\u001a\u00020'8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bF\u0010GR\u0014\u0010J\u001a\u00020'8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bC\u0010GR\u0011\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00070K8\u0002X\u0082\u0004\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006P"}, m61528d2 = {"Lkotlinx/coroutines/selects/SelectImplementation;", "R", "Lkotlinx/coroutines/CancelHandler;", "Lkotlinx/coroutines/selects/SelectBuilder;", "Lkotlinx/coroutines/selects/SelectInstanceInternal;", "e", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "clauseObject", "", "a", C4921e.f26528e, "l", "internalResult", "", "m", "Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;", C6997f.f39671c, "c", "clause", C4921e.f26537n, "(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "selectedClause", "b", "doSelect", "Lkotlinx/coroutines/selects/SelectClause0;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", BreakpointSQLiteHelper.f39283i, "invoke", "(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V", "Q", "Lkotlinx/coroutines/selects/SelectClause1;", "Lkotlin/Function2;", "(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V", "P", "Lkotlinx/coroutines/selects/SelectClause2;", Constants.ELEMNAME_PARAMVARIABLE_STRING, "(Lkotlinx/coroutines/selects/SelectClause2;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "", "reregister", "register", "Lkotlinx/coroutines/DisposableHandle;", "disposableHandle", "disposeOnCompletion", "Lkotlinx/coroutines/internal/Segment;", "segment", FirebaseAnalytics.Param.INDEX, "invokeOnCancellation", "selectInRegistrationPhase", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "trySelect", "Lkotlinx/coroutines/selects/TrySelectDetailedResult;", "trySelectDetailed", "", "cause", "Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "", "Ljava/util/List;", "clauses", C6998g.f39679a, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.OBJECT_SIG, "disposableHandleOrSegment", C6999h.f39688c, "I", "indexInSegment", "i", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "inRegistrationPhase", "isSelected", "isCancelled", "Lkotlinx/atomicfu/AtomicRef;", "state", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lkotlin/coroutines/CoroutineContext;)V", "ClauseData", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@PublishedApi
@SourceDebugExtension({"SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,873:1\n1#2:874\n2624#3,3:875\n1855#3,2:888\n1855#3,2:896\n1855#3,2:898\n314#4,9:878\n323#4,2:890\n19#5:887\n153#6,4:892\n*S KotlinDebug\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n*L\n505#1:875,3\n569#1:888,2\n726#1:896,2\n751#1:898,2\n545#1:878,9\n545#1:890,2\n561#1:887\n711#1:892,4\n*E\n"})
/* loaded from: classes11.dex */
public class SelectImplementation<R> extends CancelHandler implements SelectBuilder<R>, SelectInstanceInternal<R> {

    /* renamed from: j */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98681j = AtomicReferenceFieldUpdater.newUpdater(SelectImplementation.class, Object.class, "state");

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final CoroutineContext context;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public List<SelectImplementation<R>.ClauseData> clauses;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Object disposableHandleOrSegment;

    /* renamed from: h, reason: from kotlin metadata */
    public int indexInSegment;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Object internalResult;

    @Volatile
    @Nullable
    private volatile Object state;

    @Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0080\u0004\u0018\u00002\u00020\u0001B¸\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0001\u0012U\u0010\u001b\u001aQ\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0012\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\r¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0003\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u000b0\u0014j\u0002`\u0018\u0012U\u0010\u001f\u001aQ\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0014j\u0002`\u001d\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\"\u001a\u00020\u0001\u0012g\u0010$\u001ac\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\r¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0003\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u000e\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000b0\u000f\u0018\u00010\u0014j\u0004\u0018\u0001`#¢\u0006\u0004\b)\u0010*J\u0014\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001J\u001d\u0010\t\u001a\u00028\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0001H\u0086@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\u0006\u0010\f\u001a\u00020\u000bJ*\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u000f2\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001R\u0014\u0010\u0012\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013Rc\u0010\u001b\u001aQ\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0012\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\r¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0003\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u000b0\u0014j\u0002`\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aRc\u0010\u001f\u001aQ\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0014j\u0002`\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001aR\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u0013R\u0014\u0010\"\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\u0013Ru\u0010$\u001ac\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\r¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0003\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u000e\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000b0\u000f\u0018\u00010\u0014j\u0004\u0018\u0001`#8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b$\u0010\u001aR\u0018\u0010%\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b%\u0010\u0013R\u0016\u0010'\u001a\u00020&8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b'\u0010(\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006+"}, m61528d2 = {"Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;", "", "Lkotlinx/coroutines/selects/SelectImplementation;", "select", "", "tryRegisterAsWaiter", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "processResult", NavInflater.f8491c, "invokeBlock", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "dispose", "Lkotlinx/coroutines/selects/SelectInstance;", "internalResult", "Lkotlin/Function1;", "", "createOnCancellationAction", "clauseObject", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.OBJECT_SIG, "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", Constants.ELEMNAME_PARAMVARIABLE_STRING, "Lkotlinx/coroutines/selects/RegistrationFunction;", "a", "Lkotlin/jvm/functions/Function3;", "regFunc", "clauseResult", "Lkotlinx/coroutines/selects/ProcessResultFunction;", "b", "processResFunc", "c", "d", BreakpointSQLiteHelper.f39283i, "Lkotlinx/coroutines/selects/OnCancellationConstructor;", "onCancellationConstructor", "disposableHandleOrSegment", "", "indexInSegment", "I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
    @SourceDebugExtension({"SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation$ClauseData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,873:1\n1#2:874\n*E\n"})
    /* loaded from: classes11.dex */
    public final class ClauseData {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final Function3<Object, SelectInstance<?>, Object, Unit> regFunc;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final Function3<Object, Object, Object, Object> processResFunc;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public final Object param;

        @JvmField
        @NotNull
        public final Object clauseObject;

        /* renamed from: d, reason: from kotlin metadata */
        @NotNull
        public final Object block;

        @JvmField
        @Nullable
        public Object disposableHandleOrSegment;

        @JvmField
        public int indexInSegment = -1;

        @JvmField
        @Nullable
        public final Function3<SelectInstance<?>, Object, Object, Function1<Throwable, Unit>> onCancellationConstructor;

        /* JADX WARN: Multi-variable type inference failed */
        public ClauseData(@NotNull Object obj, @NotNull Function3<Object, ? super SelectInstance<?>, Object, Unit> function3, @NotNull Function3<Object, Object, Object, ? extends Object> function32, @Nullable Object obj2, @NotNull Object obj3, @Nullable Function3<? super SelectInstance<?>, Object, Object, ? extends Function1<? super Throwable, Unit>> function33) {
            this.clauseObject = obj;
            this.regFunc = function3;
            this.processResFunc = function32;
            this.param = obj2;
            this.block = obj3;
            this.onCancellationConstructor = function33;
        }

        @Nullable
        public final Function1<Throwable, Unit> createOnCancellationAction(@NotNull SelectInstance<?> select, @Nullable Object internalResult) {
            Function3<SelectInstance<?>, Object, Object, Function1<Throwable, Unit>> function3 = this.onCancellationConstructor;
            if (function3 != null) {
                return function3.invoke(select, this.param, internalResult);
            }
            return null;
        }

        public final void dispose() {
            Object obj = this.disposableHandleOrSegment;
            SelectImplementation<R> selectImplementation = SelectImplementation.this;
            if (obj instanceof Segment) {
                ((Segment) obj).onCancellation(this.indexInSegment, null, selectImplementation.getContext());
                return;
            }
            DisposableHandle disposableHandle = obj instanceof DisposableHandle ? (DisposableHandle) obj : null;
            if (disposableHandle != null) {
                disposableHandle.dispose();
            }
        }

        @Nullable
        public final Object invokeBlock(@Nullable Object obj, @NotNull Continuation<? super R> continuation) {
            Object obj2 = this.block;
            if (this.param == SelectKt.getPARAM_CLAUSE_0()) {
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction0<R of kotlinx.coroutines.selects.SelectImplementation>");
                return ((Function1) obj2).invoke(continuation);
            }
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction1<kotlin.Any?, R of kotlinx.coroutines.selects.SelectImplementation>");
            return ((Function2) obj2).invoke(obj, continuation);
        }

        @Nullable
        public final Object processResult(@Nullable Object result) {
            return this.processResFunc.invoke(this.clauseObject, this.param, result);
        }

        public final boolean tryRegisterAsWaiter(@NotNull SelectImplementation<R> select) {
            Symbol symbol;
            this.regFunc.invoke(this.clauseObject, select, this.param);
            Object obj = select.internalResult;
            symbol = SelectKt.f98700i;
            return obj == symbol;
        }
    }

    public SelectImplementation(@NotNull CoroutineContext coroutineContext) {
        Symbol symbol;
        Symbol symbol2;
        this.context = coroutineContext;
        symbol = SelectKt.f98697f;
        this.state = symbol;
        this.clauses = new ArrayList(2);
        this.indexInSegment = -1;
        symbol2 = SelectKt.f98700i;
        this.internalResult = symbol2;
    }

    @PublishedApi
    /* renamed from: d */
    public static /* synthetic */ <R> Object m62303d(SelectImplementation<R> selectImplementation, Continuation<? super R> continuation) {
        return selectImplementation.m62311i() ? selectImplementation.m62306c(continuation) : selectImplementation.m62307e(continuation);
    }

    public static /* synthetic */ void register$default(SelectImplementation selectImplementation, ClauseData clauseData, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: register");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        selectImplementation.register(clauseData, z);
    }

    /* renamed from: a */
    public final void m62304a(Object clauseObject) {
        List<SelectImplementation<R>.ClauseData> list = this.clauses;
        Intrinsics.checkNotNull(list);
        List<SelectImplementation<R>.ClauseData> list2 = list;
        boolean z = true;
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            Iterator<T> it2 = list2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (((ClauseData) it2.next()).clauseObject == clauseObject) {
                    z = false;
                    break;
                }
            }
        }
        if (z) {
            return;
        }
        throw new IllegalStateException(("Cannot use select clauses on the same object: " + clauseObject).toString());
    }

    /* renamed from: b */
    public final void m62305b(SelectImplementation<R>.ClauseData selectedClause) {
        Symbol symbol;
        Symbol symbol2;
        List<SelectImplementation<R>.ClauseData> list = this.clauses;
        if (list == null) {
            return;
        }
        for (SelectImplementation<R>.ClauseData clauseData : list) {
            if (clauseData != selectedClause) {
                clauseData.dispose();
            }
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98681j;
        symbol = SelectKt.f98698g;
        atomicReferenceFieldUpdater.set(this, symbol);
        symbol2 = SelectKt.f98700i;
        this.internalResult = symbol2;
        this.clauses = null;
    }

    /* renamed from: c */
    public final Object m62306c(Continuation<? super R> continuation) {
        Object obj = f98681j.get(this);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation.ClauseData<R of kotlinx.coroutines.selects.SelectImplementation>");
        SelectImplementation<R>.ClauseData clauseData = (ClauseData) obj;
        Object obj2 = this.internalResult;
        m62305b(clauseData);
        return clauseData.invokeBlock(clauseData.processResult(obj2), continuation);
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public void disposeOnCompletion(@NotNull DisposableHandle disposableHandle) {
        this.disposableHandleOrSegment = disposableHandle;
    }

    @PublishedApi
    @Nullable
    public Object doSelect(@NotNull Continuation<? super R> continuation) {
        return m62303d(this, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0056 A[PHI: r6
      0x0056: PHI (r6v5 java.lang.Object) = (r6v4 java.lang.Object), (r6v1 java.lang.Object) binds: [B:17:0x0053, B:10:0x0028] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0055 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m62307e(kotlin.coroutines.Continuation<? super R> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1 r0 = (kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1 r0 = new kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r6)
            goto L56
        L2c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L34:
            java.lang.Object r5 = r0.L$0
            kotlinx.coroutines.selects.SelectImplementation r5 = (kotlinx.coroutines.selects.SelectImplementation) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L3c:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.L$0 = r5
            r0.label = r4
            java.lang.Object r6 = r5.m62317o(r0)
            if (r6 != r1) goto L4a
            return r1
        L4a:
            r6 = 0
            r0.L$0 = r6
            r0.label = r3
            java.lang.Object r6 = r5.m62306c(r0)
            if (r6 != r1) goto L56
            return r1
        L56:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectImplementation.m62307e(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* renamed from: f */
    public final SelectImplementation<R>.ClauseData m62308f(Object clauseObject) {
        List<SelectImplementation<R>.ClauseData> list = this.clauses;
        Object obj = null;
        if (list == null) {
            return null;
        }
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (((ClauseData) next).clauseObject == clauseObject) {
                obj = next;
                break;
            }
        }
        SelectImplementation<R>.ClauseData clauseData = (ClauseData) obj;
        if (clauseData != null) {
            return clauseData;
        }
        throw new IllegalStateException(("Clause with object " + clauseObject + " is not found").toString());
    }

    /* renamed from: g */
    public final boolean m62309g() {
        Symbol symbol;
        Object obj = f98681j.get(this);
        symbol = SelectKt.f98697f;
        return obj == symbol || (obj instanceof List);
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    @NotNull
    public CoroutineContext getContext() {
        return this.context;
    }

    /* renamed from: h */
    public final boolean m62310h() {
        Symbol symbol;
        Object obj = f98681j.get(this);
        symbol = SelectKt.f98699h;
        return obj == symbol;
    }

    /* renamed from: i */
    public final boolean m62311i() {
        return f98681j.get(this) instanceof ClauseData;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.Waiter
    public void invokeOnCancellation(@NotNull Segment<?> segment, int index) {
        this.disposableHandleOrSegment = segment;
        this.indexInSegment = index;
    }

    /* renamed from: j */
    public final void m62312j(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1, Object obj) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m62313k(kotlinx.coroutines.selects.SelectImplementation<R>.ClauseData r5, java.lang.Object r6, kotlin.coroutines.Continuation<? super R> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.selects.C18249xf491fb2a
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.selects.SelectImplementation$processResultAndInvokeBlockRecoveringException$1 r0 = (kotlinx.coroutines.selects.C18249xf491fb2a) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.selects.SelectImplementation$processResultAndInvokeBlockRecoveringException$1 r0 = new kotlinx.coroutines.selects.SelectImplementation$processResultAndInvokeBlockRecoveringException$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r4 = r0.result
            java.lang.Object r7 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L31
            if (r1 != r2) goto L29
            kotlin.ResultKt.throwOnFailure(r4)
            goto L41
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r4)
            java.lang.Object r4 = r5.processResult(r6)
            r0.label = r2
            java.lang.Object r4 = r5.invokeBlock(r4, r0)
            if (r4 != r7) goto L41
            return r7
        L41:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectImplementation.m62313k(kotlinx.coroutines.selects.SelectImplementation$ClauseData, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* renamed from: l */
    public final void m62314l(Object clauseObject) {
        SelectImplementation<R>.ClauseData m62308f = m62308f(clauseObject);
        Intrinsics.checkNotNull(m62308f);
        m62308f.disposableHandleOrSegment = null;
        m62308f.indexInSegment = -1;
        register(m62308f, true);
    }

    /* renamed from: m */
    public final int m62315m(Object clauseObject, Object internalResult) {
        boolean m62320c;
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        List listOf;
        List plus;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98681j;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof CancellableContinuation) {
                SelectImplementation<R>.ClauseData m62308f = m62308f(clauseObject);
                if (m62308f == null) {
                    continue;
                } else {
                    Function1<Throwable, Unit> createOnCancellationAction = m62308f.createOnCancellationAction(this, internalResult);
                    if (C14434t4.m57298a(atomicReferenceFieldUpdater, this, obj, m62308f)) {
                        this.internalResult = internalResult;
                        m62320c = SelectKt.m62320c((CancellableContinuation) obj, createOnCancellationAction);
                        if (m62320c) {
                            return 0;
                        }
                        this.internalResult = null;
                        return 2;
                    }
                }
            } else {
                symbol = SelectKt.f98698g;
                if (Intrinsics.areEqual(obj, symbol) ? true : obj instanceof ClauseData) {
                    return 3;
                }
                symbol2 = SelectKt.f98699h;
                if (Intrinsics.areEqual(obj, symbol2)) {
                    return 2;
                }
                symbol3 = SelectKt.f98697f;
                if (Intrinsics.areEqual(obj, symbol3)) {
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(clauseObject);
                    if (C14434t4.m57298a(atomicReferenceFieldUpdater, this, obj, listOf)) {
                        return 1;
                    }
                } else {
                    if (!(obj instanceof List)) {
                        throw new IllegalStateException(("Unexpected state: " + obj).toString());
                    }
                    plus = CollectionsKt___CollectionsKt.plus((Collection<? extends Object>) obj, clauseObject);
                    if (C14434t4.m57298a(atomicReferenceFieldUpdater, this, obj, plus)) {
                        return 1;
                    }
                }
            }
        }
    }

    /* renamed from: n */
    public final void m62316n(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, ? extends Object> function1, Object obj) {
        Object obj2;
        do {
            obj2 = atomicReferenceFieldUpdater.get(obj);
        } while (!C14434t4.m57298a(atomicReferenceFieldUpdater, obj, obj2, function1.invoke(obj2)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0065, code lost:
    
        r5 = r0.getResult();
        r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006d, code lost:
    
        if (r5 != r0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006f, code lost:
    
        kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0072, code lost:
    
        r6 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0076, code lost:
    
        if (r5 != r6) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0078, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007b, code lost:
    
        return kotlin.Unit.INSTANCE;
     */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m62317o(kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r5 = this;
            kotlinx.coroutines.CancellableContinuationImpl r0 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r6)
            r2 = 1
            r0.<init>(r1, r2)
            r0.initCancellability()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = access$getState$FU$p()
        L11:
            java.lang.Object r2 = r1.get(r5)
            kotlinx.coroutines.internal.Symbol r3 = kotlinx.coroutines.selects.SelectKt.access$getSTATE_REG$p()
            if (r2 != r3) goto L29
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r3 = access$getState$FU$p()
            boolean r2 = com.sunia.HTREnginev2.C14434t4.m57298a(r3, r5, r2, r0)
            if (r2 == 0) goto L11
            r0.invokeOnCancellation(r5)
            goto L65
        L29:
            boolean r3 = r2 instanceof java.util.List
            if (r3 == 0) goto L52
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r3 = access$getState$FU$p()
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.selects.SelectKt.access$getSTATE_REG$p()
            boolean r3 = com.sunia.HTREnginev2.C14434t4.m57298a(r3, r5, r2, r4)
            if (r3 == 0) goto L11
            r3 = r2
            java.util.List r3 = (java.util.List) r3
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            java.util.Iterator r2 = r2.iterator()
        L44:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L11
            java.lang.Object r3 = r2.next()
            access$reregisterClause(r5, r3)
            goto L44
        L52:
            boolean r1 = r2 instanceof kotlinx.coroutines.selects.SelectImplementation.ClauseData
            if (r1 == 0) goto L7c
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            kotlinx.coroutines.selects.SelectImplementation$ClauseData r2 = (kotlinx.coroutines.selects.SelectImplementation.ClauseData) r2
            java.lang.Object r3 = access$getInternalResult$p(r5)
            kotlin.jvm.functions.Function1 r5 = r2.createOnCancellationAction(r5, r3)
            r0.resume(r1, r5)
        L65:
            java.lang.Object r5 = r0.getResult()
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r5 != r0) goto L72
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r6)
        L72:
            java.lang.Object r6 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r5 != r6) goto L79
            return r5
        L79:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L7c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = "unexpected state: "
            r6.append(r0)
            r6.append(r2)
            java.lang.String r6 = r6.toString()
            java.lang.String r6 = r6.toString()
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectImplementation.m62317o(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    @Deprecated(level = DeprecationLevel.ERROR, message = "Replaced with the same extension function", replaceWith = @ReplaceWith(expression = "onTimeout", imports = {"kotlinx.coroutines.selects.onTimeout"}))
    @LowPriorityInOverloadResolution
    @ExperimentalCoroutinesApi
    public void onTimeout(long j, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        SelectBuilder.DefaultImpls.onTimeout(this, j, function1);
    }

    @JvmName(name = "register")
    public final void register(@NotNull SelectImplementation<R>.ClauseData clauseData, boolean z) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98681j;
        if (atomicReferenceFieldUpdater.get(this) instanceof ClauseData) {
            return;
        }
        if (!z) {
            m62304a(clauseData.clauseObject);
        }
        if (!clauseData.tryRegisterAsWaiter(this)) {
            atomicReferenceFieldUpdater.set(this, clauseData);
            return;
        }
        if (!z) {
            List<SelectImplementation<R>.ClauseData> list = this.clauses;
            Intrinsics.checkNotNull(list);
            list.add(clauseData);
        }
        clauseData.disposableHandleOrSegment = this.disposableHandleOrSegment;
        clauseData.indexInSegment = this.indexInSegment;
        this.disposableHandleOrSegment = null;
        this.indexInSegment = -1;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public void selectInRegistrationPhase(@Nullable Object internalResult) {
        this.internalResult = internalResult;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public boolean trySelect(@NotNull Object clauseObject, @Nullable Object result) {
        return m62315m(clauseObject, result) == 0;
    }

    @NotNull
    public final TrySelectDetailedResult trySelectDetailed(@NotNull Object clauseObject, @Nullable Object result) {
        TrySelectDetailedResult m62318a;
        m62318a = SelectKt.m62318a(m62315m(clauseObject, result));
        return m62318a;
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    public <P, Q> void invoke(@NotNull SelectClause2<? super P, ? extends Q> selectClause2, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        SelectBuilder.DefaultImpls.invoke(this, selectClause2, function2);
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    public void invoke(@NotNull SelectClause0 selectClause0, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        register$default(this, new ClauseData(selectClause0.getClauseObject(), selectClause0.getRegFunc(), selectClause0.getProcessResFunc(), SelectKt.getPARAM_CLAUSE_0(), function1, selectClause0.getOnCancellationConstructor()), false, 1, null);
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    public <Q> void invoke(@NotNull SelectClause1<? extends Q> selectClause1, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        register$default(this, new ClauseData(selectClause1.getClauseObject(), selectClause1.getRegFunc(), selectClause1.getProcessResFunc(), null, function2, selectClause1.getOnCancellationConstructor()), false, 1, null);
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    public <P, Q> void invoke(@NotNull SelectClause2<? super P, ? extends Q> selectClause2, P p, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        register$default(this, new ClauseData(selectClause2.getClauseObject(), selectClause2.getRegFunc(), selectClause2.getProcessResFunc(), p, function2, selectClause2.getOnCancellationConstructor()), false, 1, null);
    }

    @Override // kotlinx.coroutines.CancelHandlerBase
    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public void invoke2(@Nullable Throwable cause) {
        Object obj;
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98681j;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            symbol = SelectKt.f98698g;
            if (obj == symbol) {
                return;
            } else {
                symbol2 = SelectKt.f98699h;
            }
        } while (!C14434t4.m57298a(atomicReferenceFieldUpdater, this, obj, symbol2));
        List<SelectImplementation<R>.ClauseData> list = this.clauses;
        if (list == null) {
            return;
        }
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ((ClauseData) it2.next()).dispose();
        }
        symbol3 = SelectKt.f98700i;
        this.internalResult = symbol3;
        this.clauses = null;
    }
}
