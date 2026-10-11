package kotlinx.coroutines;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.hwr.data.bean.HWRGestureWithContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.C14434t4;
import com.sunia.HTREnginev2.bqi;
import com.sunia.HTREnginev2.cqi;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.grl;
import com.sunia.HTREnginev2.hrl;
import com.sunia.HTREnginev2.xof;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.LockFreeLinkedListKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.OpDescriptor;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectClause0;
import kotlinx.coroutines.selects.SelectClause0Impl;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectClause1Impl;
import kotlinx.coroutines.selects.SelectInstance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Ü\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0005,\u0013H7\u001dB\u0012\u0012\u0007\u0010·\u0001\u001a\u00020\u0016¢\u0006\u0006\b¸\u0001\u0010¹\u0001J\u001f\u0010\t\u001a\u00020\b2\u0014\u0010\u0007\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0082\bJ\u001c\u0010\r\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\u0005H\u0002J \u0010\u0011\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u001e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u001a\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0002J\u001a\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0002J\u0018\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u000fH\u0002J\u0010\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u000fH\u0002J\u0016\u0010\u001e\u001a\u00020\u0006*\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u000fH\u0002J'\u0010!\u001a\u00020\u0006\"\n\b\u0000\u0010 \u0018\u0001*\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u000fH\u0082\bJ\u0012\u0010#\u001a\u00020\"2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002J9\u0010)\u001a\u00020\u001f2'\u0010'\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`&2\u0006\u0010(\u001a\u00020\u0016H\u0002J \u0010,\u001a\u00020\u00162\u0006\u0010*\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\u001fH\u0002J\u0010\u0010.\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020-H\u0002J\u0010\u0010/\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u001fH\u0002J\b\u00100\u001a\u00020\u0016H\u0002J\u0013\u00101\u001a\u00020\u0006H\u0082@ø\u0001\u0000¢\u0006\u0004\b1\u00102J\u001e\u00106\u001a\u00020\u00062\n\u00104\u001a\u0006\u0012\u0002\b\u0003032\b\u00105\u001a\u0004\u0018\u00010\u0005H\u0002J\u0014\u00107\u001a\u0004\u0018\u00010\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u00108\u001a\u00020\u000f2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u0002J\u0014\u00109\u001a\u0004\u0018\u00010\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u0010:\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u000b\u001a\u00020\u0014H\u0002J\u0018\u0010;\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u000fH\u0002J\u001e\u0010<\u001a\u0004\u0018\u00010\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u0005H\u0002J\u001c\u0010=\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u00142\b\u0010\f\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u0010?\u001a\u0004\u0018\u00010>2\u0006\u0010\u000b\u001a\u00020\u0014H\u0002J#\u0010A\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010@\u001a\u00020>2\b\u0010\f\u001a\u0004\u0018\u00010\u0005H\u0082\u0010J\"\u0010C\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010B\u001a\u00020>2\b\u0010\f\u001a\u0004\u0018\u00010\u0005H\u0002J\u000e\u0010E\u001a\u0004\u0018\u00010>*\u00020DH\u0002J\u0012\u0010G\u001a\u00020F2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002J\u0015\u0010H\u001a\u0004\u0018\u00010\u0005H\u0082@ø\u0001\u0000¢\u0006\u0004\bH\u00102J\u001e\u0010I\u001a\u00020\u00062\n\u00104\u001a\u0006\u0012\u0002\b\u0003032\b\u00105\u001a\u0004\u0018\u00010\u0005H\u0002J\u001e\u0010K\u001a\u0004\u0018\u00010\u00052\b\u00105\u001a\u0004\u0018\u00010\u00052\b\u0010J\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u0010M\u001a\u00020\u00062\b\u0010L\u001a\u0004\u0018\u00010\u0001H\u0004J\u0006\u0010N\u001a\u00020\u0016J\b\u0010O\u001a\u00020\u0006H\u0014J\n\u0010R\u001a\u00060Pj\u0002`QJ\u001c\u0010T\u001a\u00060Pj\u0002`Q*\u00020\u000f2\n\b\u0002\u0010S\u001a\u0004\u0018\u00010FH\u0004J/\u0010V\u001a\u00020U2'\u0010'\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`&J?\u0010V\u001a\u00020U2\u0006\u0010(\u001a\u00020\u00162\u0006\u0010W\u001a\u00020\u00162'\u0010'\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`&J\u0013\u0010X\u001a\u00020\u0006H\u0086@ø\u0001\u0000¢\u0006\u0004\bX\u00102J\u0017\u0010[\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u001fH\u0000¢\u0006\u0004\bY\u0010ZJ\u0018\u0010\\\u001a\u00020\u00062\u000e\u0010\u001b\u001a\n\u0018\u00010Pj\u0004\u0018\u0001`QH\u0016J\b\u0010]\u001a\u00020FH\u0014J\u0012\u0010\\\u001a\u00020\u00162\b\u0010\u001b\u001a\u0004\u0018\u00010\u000fH\u0017J\u0010\u0010^\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u000fH\u0016J\u000e\u0010`\u001a\u00020\u00062\u0006\u0010_\u001a\u00020\u0003J\u0010\u0010a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u000fH\u0016J\u0010\u0010b\u001a\u00020\u00162\b\u0010\u001b\u001a\u0004\u0018\u00010\u000fJ\u0019\u0010e\u001a\u00020\u00162\b\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u0000¢\u0006\u0004\bc\u0010dJ(\u0010i\u001a\u00020f2\n\b\u0002\u0010S\u001a\u0004\u0018\u00010F2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u000fH\u0080\b¢\u0006\u0004\bg\u0010hJ\f\u0010j\u001a\u00060Pj\u0002`QH\u0016J\u0019\u0010l\u001a\u00020\u00162\b\u0010\f\u001a\u0004\u0018\u00010\u0005H\u0000¢\u0006\u0004\bk\u0010dJ\u001b\u0010o\u001a\u0004\u0018\u00010\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u0005H\u0000¢\u0006\u0004\bm\u0010nJ\u000e\u0010q\u001a\u00020p2\u0006\u0010@\u001a\u00020\u0002J\u0017\u0010u\u001a\u00020\u00062\u0006\u0010r\u001a\u00020\u000fH\u0010¢\u0006\u0004\bs\u0010tJ\u0012\u0010(\u001a\u00020\u00062\b\u0010\u001b\u001a\u0004\u0018\u00010\u000fH\u0014J\u0010\u0010v\u001a\u00020\u00162\u0006\u0010r\u001a\u00020\u000fH\u0014J\u0012\u0010w\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0014J\u0012\u0010x\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0014J\b\u0010y\u001a\u00020FH\u0016J\b\u0010z\u001a\u00020FH\u0007J\u000f\u0010}\u001a\u00020FH\u0010¢\u0006\u0004\b{\u0010|J\b\u0010~\u001a\u0004\u0018\u00010\u000fJ\u0013\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0005H\u0000¢\u0006\u0005\b\u007f\u0010\u0080\u0001J\u0017\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0005H\u0084@ø\u0001\u0000¢\u0006\u0005\b\u0082\u0001\u00102R\u001f\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u000f*\u0004\u0018\u00010\u00058BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0083\u0001\u0010\u0084\u0001R\u001b\u0010\u0088\u0001\u001a\u00020\u0016*\u00020\u00148BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0086\u0001\u0010\u0087\u0001R\u0019\u0010\u008c\u0001\u001a\u0007\u0012\u0002\b\u00030\u0089\u00018F¢\u0006\b\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001R.\u0010\u0092\u0001\u001a\u0004\u0018\u00010p2\t\u0010\u008d\u0001\u001a\u0004\u0018\u00010p8@@@X\u0080\u000e¢\u0006\u0010\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001\"\u0006\b\u0090\u0001\u0010\u0091\u0001R\u0018\u0010L\u001a\u0004\u0018\u00010\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00058@X\u0080\u0004¢\u0006\b\u001a\u0006\b\u0095\u0001\u0010\u0080\u0001R\u0017\u0010\u0096\u0001\u001a\u00020\u00168VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u0096\u0001\u0010\u0097\u0001R\u0014\u0010\u0098\u0001\u001a\u00020\u00168F¢\u0006\b\u001a\u0006\b\u0098\u0001\u0010\u0097\u0001R\u0014\u0010\u0099\u0001\u001a\u00020\u00168F¢\u0006\b\u001a\u0006\b\u0099\u0001\u0010\u0097\u0001R\u0019\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u000f8DX\u0084\u0004¢\u0006\b\u001a\u0006\b\u009a\u0001\u0010\u009b\u0001R\u0017\u0010\u009e\u0001\u001a\u00020\u00168DX\u0084\u0004¢\u0006\b\u001a\u0006\b\u009d\u0001\u0010\u0097\u0001R\u001d\u0010¤\u0001\u001a\u00030\u009f\u00018F¢\u0006\u0010\u0012\u0006\b¢\u0001\u0010£\u0001\u001a\u0006\b \u0001\u0010¡\u0001R\u0017\u0010¦\u0001\u001a\u00020\u00168PX\u0090\u0004¢\u0006\b\u001a\u0006\b¥\u0001\u0010\u0097\u0001R\u001b\u0010ª\u0001\u001a\t\u0012\u0004\u0012\u00020\u00010§\u00018F¢\u0006\b\u001a\u0006\b¨\u0001\u0010©\u0001R\u0017\u0010«\u0001\u001a\u00020\u00168TX\u0094\u0004¢\u0006\b\u001a\u0006\b«\u0001\u0010\u0097\u0001R\u0017\u0010\u00ad\u0001\u001a\u00020\u00168PX\u0090\u0004¢\u0006\b\u001a\u0006\b¬\u0001\u0010\u0097\u0001R\u0014\u0010®\u0001\u001a\u00020\u00168F¢\u0006\b\u001a\u0006\b®\u0001\u0010\u0097\u0001R$\u0010³\u0001\u001a\u0007\u0012\u0002\b\u00030¯\u00018DX\u0084\u0004¢\u0006\u0010\u0012\u0006\b²\u0001\u0010£\u0001\u001a\u0006\b°\u0001\u0010±\u0001R\u0015\u0010µ\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010p0´\u00018\u0002X\u0082\u0004R\u0015\u0010¶\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00050´\u00018\u0002X\u0082\u0004\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006º\u0001"}, m61528d2 = {"Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/ChildJob;", "Lkotlinx/coroutines/ParentJob;", "Lkotlin/Function1;", "", "", BreakpointSQLiteHelper.f39283i, "", "r", "Lkotlinx/coroutines/JobSupport$c;", "state", "proposedUpdate", "i", "", "", "exceptions", "l", "rootCause", "b", "Lkotlinx/coroutines/Incomplete;", "update", "", "F", C6997f.f39671c, "Lkotlinx/coroutines/NodeList;", "list", "cause", "v", "e", "w", "Lkotlinx/coroutines/JobNode;", "T", "x", "", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", Constants.TRANSLET_OUTPUT_PNAME, "onCancelling", "t", "expect", "node", "a", "Lcom/sunia/HTREnginev2/xof;", "A", "B", C4921e.f26528e, "p", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "ignoredParam", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "d", C6999h.f39688c, "s", "m", "G", "H", "I", "Lkotlinx/coroutines/ChildHandleNode;", "j", "child", "J", "lastChild", C6998g.f39679a, "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "u", "", "E", "c", "z", com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "y", "parent", "initParentJob", gon.f71290o0, "onStart", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "getCancellationException", "message", "toCancellationException", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnCompletion", "invokeImmediately", HWRGestureWithContext.GESTURE_JOIN, "removeNode$kotlinx_coroutines_core", "(Lkotlinx/coroutines/JobNode;)V", "removeNode", "cancel", "cancellationExceptionMessage", "cancelInternal", "parentJob", "parentCancelled", "childCancelled", "cancelCoroutine", "cancelImpl$kotlinx_coroutines_core", "(Ljava/lang/Object;)Z", "cancelImpl", "Lkotlinx/coroutines/JobCancellationException;", "defaultCancellationException$kotlinx_coroutines_core", "(Ljava/lang/String;Ljava/lang/Throwable;)Lkotlinx/coroutines/JobCancellationException;", "defaultCancellationException", "getChildJobCancellationCause", "makeCompleting$kotlinx_coroutines_core", "makeCompleting", "makeCompletingOnce$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "makeCompletingOnce", "Lkotlinx/coroutines/ChildHandle;", "attachChild", "exception", "handleOnCompletionException$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)V", "handleOnCompletionException", "handleJobException", "onCompletionInternal", "afterCompletion", "toString", "toDebugString", "nameString$kotlinx_coroutines_core", "()Ljava/lang/String;", "nameString", "getCompletionExceptionOrNull", "getCompletedInternal$kotlinx_coroutines_core", "()Ljava/lang/Object;", "getCompletedInternal", "awaitInternal", C4921e.f26537n, "(Ljava/lang/Object;)Ljava/lang/Throwable;", "exceptionOrNull", GoogleApiAvailabilityLight.f29016b, "(Lkotlinx/coroutines/Incomplete;)Z", "isCancelling", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "key", "value", "getParentHandle$kotlinx_coroutines_core", "()Lkotlinx/coroutines/ChildHandle;", "setParentHandle$kotlinx_coroutines_core", "(Lkotlinx/coroutines/ChildHandle;)V", "parentHandle", Constants.GET_PARENT, "()Lkotlinx/coroutines/Job;", "getState$kotlinx_coroutines_core", "isActive", Constants.BOOLEAN_VALUE_SIG, "isCompleted", "isCancelled", "getCompletionCause", "()Ljava/lang/Throwable;", "completionCause", "getCompletionCauseHandled", "completionCauseHandled", "Lkotlinx/coroutines/selects/SelectClause0;", "getOnJoin", "()Lkotlinx/coroutines/selects/SelectClause0;", "getOnJoin$annotations", "()V", "onJoin", "getOnCancelComplete$kotlinx_coroutines_core", "onCancelComplete", "Lkotlin/sequences/Sequence;", Constants.GET_CHILDREN, "()Lkotlin/sequences/Sequence;", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_CHILDREN_STRING, "isScopedCoroutine", "getHandlesException$kotlinx_coroutines_core", "handlesException", "isCompletedExceptionally", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnAwaitInternal", "()Lkotlinx/coroutines/selects/SelectClause1;", "getOnAwaitInternal$annotations", "onAwaitInternal", "Lkotlinx/atomicfu/AtomicRef;", "_parentHandle", "_state", AppMeasurementSdk.ConditionalUserProperty.ACTIVE, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Z)V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@Deprecated(level = DeprecationLevel.ERROR, message = "This is internal API and may be removed in the future releases")
@SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 7 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 8 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n+ 9 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n+ 10 CompletionHandler.common.kt\nkotlinx/coroutines/CompletionHandler_commonKt\n+ 11 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 12 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 13 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,1454:1\n706#1,2:1461\n367#1,2:1471\n369#1,4:1476\n373#1,4:1482\n377#1,2:1489\n367#1,2:1491\n369#1,4:1496\n373#1,4:1502\n377#1,2:1509\n178#1,2:1518\n707#1:1520\n178#1,2:1521\n178#1,2:1540\n178#1,2:1555\n706#1,2:1557\n706#1,2:1559\n178#1,2:1561\n706#1,2:1563\n178#1,2:1565\n178#1,2:1572\n178#1,2:1574\n1#2:1455\n1#2:1480\n1#2:1500\n28#3,4:1456\n28#3,4:1523\n28#3,4:1567\n28#3,4:1576\n20#4:1460\n20#4:1527\n20#4:1571\n20#4:1580\n288#5,2:1463\n288#5,2:1465\n19#6:1467\n163#7:1468\n163#7:1469\n153#7,4:1583\n75#8:1470\n75#8:1481\n75#8:1501\n75#8:1514\n341#9,3:1473\n344#9,3:1486\n341#9,3:1493\n344#9,3:1506\n341#9,3:1511\n344#9,3:1515\n47#10:1528\n22#11:1529\n22#11:1530\n13#11:1551\n13#11:1554\n13#11:1581\n13#11:1582\n13#11:1587\n13#11:1588\n134#12:1531\n73#12,3:1532\n135#12,5:1535\n314#13,9:1542\n323#13,2:1552\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n250#1:1461,2\n332#1:1471,2\n332#1:1476,4\n332#1:1482,4\n332#1:1489,2\n364#1:1491,2\n364#1:1496,4\n364#1:1502,4\n364#1:1509,2\n381#1:1518,2\n426#1:1520\n461#1:1521,2\n553#1:1540,2\n594#1:1555,2\n621#1:1557,2\n630#1:1559,2\n694#1:1561,2\n723#1:1563,2\n736#1:1565,2\n809#1:1572,2\n831#1:1574,2\n332#1:1480\n364#1:1500\n213#1:1456,4\n478#1:1523,4\n739#1:1567,4\n884#1:1576,4\n213#1:1460\n478#1:1527\n739#1:1571\n884#1:1580\n261#1:1463,2\n265#1:1465,2\n273#1:1467\n279#1:1468\n281#1:1469\n1218#1:1583,4\n284#1:1470\n332#1:1481\n364#1:1501\n372#1:1514\n332#1:1473,3\n332#1:1486,3\n364#1:1493,3\n364#1:1506,3\n368#1:1511,3\n368#1:1515,3\n483#1:1528\n495#1:1529\n505#1:1530\n561#1:1551\n577#1:1554\n924#1:1581\n974#1:1582\n1237#1:1587\n1259#1:1588\n526#1:1531\n526#1:1532,3\n526#1:1535,5\n559#1:1542,9\n559#1:1552,2\n*E\n"})
/* loaded from: classes11.dex */
public class JobSupport implements Job, ChildJob, ParentJob {

    /* renamed from: e */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98182e = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_state");

    /* renamed from: f */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98183f = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_parentHandle");

    @Volatile
    @Nullable
    private volatile Object _parentHandle;

    @Volatile
    @Nullable
    private volatile Object _state;

    @SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$AwaitContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1454:1\n1#2:1455\n*E\n"})
    /* renamed from: kotlinx.coroutines.JobSupport$a */
    /* loaded from: classes11.dex */
    public static final class C18154a<T> extends CancellableContinuationImpl<T> {

        /* renamed from: j */
        @NotNull
        public final JobSupport f98186j;

        public C18154a(@NotNull Continuation<? super T> continuation, @NotNull JobSupport jobSupport) {
            super(continuation, 1);
            this.f98186j = jobSupport;
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        @NotNull
        public Throwable getContinuationCancellationCause(@NotNull Job job) {
            Throwable m61669d;
            Object state$kotlinx_coroutines_core = this.f98186j.getState$kotlinx_coroutines_core();
            return (!(state$kotlinx_coroutines_core instanceof C18156c) || (m61669d = ((C18156c) state$kotlinx_coroutines_core).m61669d()) == null) ? state$kotlinx_coroutines_core instanceof CompletedExceptionally ? ((CompletedExceptionally) state$kotlinx_coroutines_core).cause : job.getCancellationException() : m61669d;
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        @NotNull
        public String nameString() {
            return "AwaitContinuation";
        }
    }

    /* renamed from: kotlinx.coroutines.JobSupport$b */
    /* loaded from: classes11.dex */
    public static final class C18155b extends JobNode {

        /* renamed from: h */
        @NotNull
        public final JobSupport f98187h;

        /* renamed from: i */
        @NotNull
        public final C18156c f98188i;

        /* renamed from: j */
        @NotNull
        public final ChildHandleNode f98189j;

        /* renamed from: k */
        @Nullable
        public final Object f98190k;

        public C18155b(@NotNull JobSupport jobSupport, @NotNull C18156c c18156c, @NotNull ChildHandleNode childHandleNode, @Nullable Object obj) {
            this.f98187h = jobSupport;
            this.f98188i = c18156c;
            this.f98189j = childHandleNode;
            this.f98190k = obj;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        @Override // kotlinx.coroutines.CompletionHandlerBase
        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public void invoke2(@Nullable Throwable th) {
            this.f98187h.m61648g(this.f98188i, this.f98189j, this.f98190k);
        }
    }

    @SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$Finishing\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1454:1\n1#2:1455\n*E\n"})
    /* renamed from: kotlinx.coroutines.JobSupport$c */
    /* loaded from: classes11.dex */
    public static final class C18156c implements Incomplete {

        /* renamed from: f */
        @NotNull
        public static final AtomicIntegerFieldUpdater f98191f = AtomicIntegerFieldUpdater.newUpdater(C18156c.class, "_isCompleting");

        /* renamed from: g */
        @NotNull
        public static final AtomicReferenceFieldUpdater f98192g = AtomicReferenceFieldUpdater.newUpdater(C18156c.class, Object.class, "_rootCause");

        /* renamed from: h */
        @NotNull
        public static final AtomicReferenceFieldUpdater f98193h = AtomicReferenceFieldUpdater.newUpdater(C18156c.class, Object.class, "_exceptionsHolder");

        @Volatile
        @Nullable
        private volatile Object _exceptionsHolder;

        @Volatile
        private volatile int _isCompleting;

        @Volatile
        @Nullable
        private volatile Object _rootCause;

        /* renamed from: e */
        @NotNull
        public final NodeList f98194e;

        public C18156c(@NotNull NodeList nodeList, boolean z, @Nullable Throwable th) {
            this.f98194e = nodeList;
            this._isCompleting = z ? 1 : 0;
            this._rootCause = th;
        }

        /* renamed from: a */
        public final void m61666a(@NotNull Throwable th) {
            Throwable m61669d = m61669d();
            if (m61669d == null) {
                m61676k(th);
                return;
            }
            if (th == m61669d) {
                return;
            }
            Object m61668c = m61668c();
            if (m61668c == null) {
                m61675j(th);
                return;
            }
            if (m61668c instanceof Throwable) {
                if (th == m61668c) {
                    return;
                }
                ArrayList<Throwable> m61667b = m61667b();
                m61667b.add(m61668c);
                m61667b.add(th);
                m61675j(m61667b);
                return;
            }
            if (m61668c instanceof ArrayList) {
                ((ArrayList) m61668c).add(th);
                return;
            }
            throw new IllegalStateException(("State is " + m61668c).toString());
        }

        /* renamed from: b */
        public final ArrayList<Throwable> m61667b() {
            return new ArrayList<>(4);
        }

        /* renamed from: c */
        public final Object m61668c() {
            return f98193h.get(this);
        }

        @Nullable
        /* renamed from: d */
        public final Throwable m61669d() {
            return (Throwable) f98192g.get(this);
        }

        /* renamed from: e */
        public final boolean m61670e() {
            return m61669d() != null;
        }

        /* renamed from: f */
        public final boolean m61671f() {
            return f98191f.get(this) != 0;
        }

        /* renamed from: g */
        public final boolean m61672g() {
            Symbol symbol;
            Object m61668c = m61668c();
            symbol = JobSupportKt.f98205g;
            return m61668c == symbol;
        }

        @Override // kotlinx.coroutines.Incomplete
        @NotNull
        public NodeList getList() {
            return this.f98194e;
        }

        @NotNull
        /* renamed from: h */
        public final List<Throwable> m61673h(@Nullable Throwable th) {
            ArrayList<Throwable> arrayList;
            Symbol symbol;
            Object m61668c = m61668c();
            if (m61668c == null) {
                arrayList = m61667b();
            } else if (m61668c instanceof Throwable) {
                ArrayList<Throwable> m61667b = m61667b();
                m61667b.add(m61668c);
                arrayList = m61667b;
            } else {
                if (!(m61668c instanceof ArrayList)) {
                    throw new IllegalStateException(("State is " + m61668c).toString());
                }
                arrayList = (ArrayList) m61668c;
            }
            Throwable m61669d = m61669d();
            if (m61669d != null) {
                arrayList.add(0, m61669d);
            }
            if (th != null && !Intrinsics.areEqual(th, m61669d)) {
                arrayList.add(th);
            }
            symbol = JobSupportKt.f98205g;
            m61675j(symbol);
            return arrayList;
        }

        /* renamed from: i */
        public final void m61674i(boolean z) {
            f98191f.set(this, z ? 1 : 0);
        }

        @Override // kotlinx.coroutines.Incomplete
        public boolean isActive() {
            return m61669d() == null;
        }

        /* renamed from: j */
        public final void m61675j(Object obj) {
            f98193h.set(this, obj);
        }

        /* renamed from: k */
        public final void m61676k(@Nullable Throwable th) {
            f98192g.set(this, th);
        }

        @NotNull
        public String toString() {
            return "Finishing[cancelling=" + m61670e() + ", completing=" + m61671f() + ", rootCause=" + m61669d() + ", exceptions=" + m61668c() + ", list=" + getList() + ']';
        }
    }

    /* renamed from: kotlinx.coroutines.JobSupport$d */
    /* loaded from: classes11.dex */
    public final class C18157d extends JobNode {

        /* renamed from: h */
        @NotNull
        public final SelectInstance<?> f98195h;

        public C18157d(@NotNull SelectInstance<?> selectInstance) {
            this.f98195h = selectInstance;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        @Override // kotlinx.coroutines.CompletionHandlerBase
        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public void invoke2(@Nullable Throwable th) {
            Object state$kotlinx_coroutines_core = JobSupport.this.getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
                state$kotlinx_coroutines_core = JobSupportKt.unboxState(state$kotlinx_coroutines_core);
            }
            this.f98195h.trySelect(JobSupport.this, state$kotlinx_coroutines_core);
        }
    }

    /* renamed from: kotlinx.coroutines.JobSupport$e */
    /* loaded from: classes11.dex */
    public final class C18158e extends JobNode {

        /* renamed from: h */
        @NotNull
        public final SelectInstance<?> f98197h;

        public C18158e(@NotNull SelectInstance<?> selectInstance) {
            this.f98197h = selectInstance;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        @Override // kotlinx.coroutines.CompletionHandlerBase
        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public void invoke2(@Nullable Throwable th) {
            this.f98197h.trySelect(JobSupport.this, Unit.INSTANCE);
        }
    }

    public JobSupport(boolean z) {
        this._state = z ? JobSupportKt.f98207i : JobSupportKt.f98206h;
    }

    public static /* synthetic */ JobCancellationException defaultCancellationException$kotlinx_coroutines_core$default(JobSupport jobSupport, String str, Throwable th, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: defaultCancellationException");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            th = null;
        }
        if (str == null) {
            str = jobSupport.cancellationExceptionMessage();
        }
        return new JobCancellationException(str, th, jobSupport);
    }

    public static /* synthetic */ void getOnAwaitInternal$annotations() {
    }

    public static /* synthetic */ void getOnJoin$annotations() {
    }

    /* renamed from: q */
    private final void m61630q(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1, Object obj) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    public static /* synthetic */ CancellationException toCancellationException$default(JobSupport jobSupport, Throwable th, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        return jobSupport.toCancellationException(th, str);
    }

    /* renamed from: x */
    private final /* synthetic */ <T extends JobNode> void m61631x(NodeList list, Throwable cause) {
        Object next = list.getNext();
        Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next; !Intrinsics.areEqual(lockFreeLinkedListNode, list); lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode()) {
            Intrinsics.reifiedOperationMarker(3, "T");
            if (lockFreeLinkedListNode instanceof LockFreeLinkedListNode) {
                JobNode jobNode = (JobNode) lockFreeLinkedListNode;
                try {
                    jobNode.invoke(cause);
                } catch (Throwable th) {
                    if (completionHandlerException != null) {
                        ExceptionsKt__ExceptionsKt.addSuppressed(completionHandlerException, th);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + jobNode + " for " + this, th);
                        Unit unit = Unit.INSTANCE;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            handleOnCompletionException$kotlinx_coroutines_core(completionHandlerException);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.coroutines.InactiveNodeList] */
    /* renamed from: A */
    public final void m61632A(xof state) {
        NodeList nodeList = new NodeList();
        if (!state.isActive()) {
            nodeList = new InactiveNodeList(nodeList);
        }
        C14434t4.m57298a(f98182e, this, state, nodeList);
    }

    /* renamed from: B */
    public final void m61633B(JobNode state) {
        state.addOneIfEmpty(new NodeList());
        C14434t4.m57298a(f98182e, this, state, state.getNextNode());
    }

    /* renamed from: C */
    public final void m61634C(SelectInstance<?> select, Object ignoredParam) {
        if (m61656o()) {
            select.disposeOnCompletion(invokeOnCompletion(new C18158e(select)));
        } else {
            select.selectInRegistrationPhase(Unit.INSTANCE);
        }
    }

    /* renamed from: D */
    public final int m61635D(Object state) {
        xof xofVar;
        if (!(state instanceof xof)) {
            if (!(state instanceof InactiveNodeList)) {
                return 0;
            }
            if (!C14434t4.m57298a(f98182e, this, state, ((InactiveNodeList) state).getList())) {
                return -1;
            }
            onStart();
            return 1;
        }
        if (((xof) state).isActive()) {
            return 0;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98182e;
        xofVar = JobSupportKt.f98207i;
        if (!C14434t4.m57298a(atomicReferenceFieldUpdater, this, state, xofVar)) {
            return -1;
        }
        onStart();
        return 1;
    }

    /* renamed from: E */
    public final String m61636E(Object state) {
        if (!(state instanceof C18156c)) {
            return state instanceof Incomplete ? ((Incomplete) state).isActive() ? "Active" : "New" : state instanceof CompletedExceptionally ? "Cancelled" : "Completed";
        }
        C18156c c18156c = (C18156c) state;
        return c18156c.m61670e() ? "Cancelling" : c18156c.m61671f() ? "Completing" : "Active";
    }

    /* renamed from: F */
    public final boolean m61637F(Incomplete state, Object update) {
        if (!C14434t4.m57298a(f98182e, this, state, JobSupportKt.boxIncomplete(update))) {
            return false;
        }
        onCancelling(null);
        onCompletionInternal(update);
        m61647f(state, update);
        return true;
    }

    /* renamed from: G */
    public final boolean m61638G(Incomplete state, Throwable rootCause) {
        NodeList m61654m = m61654m(state);
        if (m61654m == null) {
            return false;
        }
        if (!C14434t4.m57298a(f98182e, this, state, new C18156c(m61654m, false, rootCause))) {
            return false;
        }
        m61662v(m61654m, rootCause);
        return true;
    }

    /* renamed from: H */
    public final Object m61639H(Object state, Object proposedUpdate) {
        Symbol symbol;
        Symbol symbol2;
        if (!(state instanceof Incomplete)) {
            symbol2 = JobSupportKt.f98199a;
            return symbol2;
        }
        if ((!(state instanceof xof) && !(state instanceof JobNode)) || (state instanceof ChildHandleNode) || (proposedUpdate instanceof CompletedExceptionally)) {
            return m61640I((Incomplete) state, proposedUpdate);
        }
        if (m61637F((Incomplete) state, proposedUpdate)) {
            return proposedUpdate;
        }
        symbol = JobSupportKt.f98200b;
        return symbol;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Throwable, T] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* renamed from: I */
    public final Object m61640I(Incomplete state, Object proposedUpdate) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        NodeList m61654m = m61654m(state);
        if (m61654m == null) {
            symbol3 = JobSupportKt.f98200b;
            return symbol3;
        }
        C18156c c18156c = state instanceof C18156c ? (C18156c) state : null;
        if (c18156c == null) {
            c18156c = new C18156c(m61654m, false, null);
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        synchronized (c18156c) {
            if (c18156c.m61671f()) {
                symbol2 = JobSupportKt.f98199a;
                return symbol2;
            }
            c18156c.m61674i(true);
            if (c18156c != state && !C14434t4.m57298a(f98182e, this, state, c18156c)) {
                symbol = JobSupportKt.f98200b;
                return symbol;
            }
            boolean m61670e = c18156c.m61670e();
            CompletedExceptionally completedExceptionally = proposedUpdate instanceof CompletedExceptionally ? (CompletedExceptionally) proposedUpdate : null;
            if (completedExceptionally != null) {
                c18156c.m61666a(completedExceptionally.cause);
            }
            ?? m61669d = Boolean.valueOf(m61670e ? false : true).booleanValue() ? c18156c.m61669d() : 0;
            objectRef.element = m61669d;
            Unit unit = Unit.INSTANCE;
            if (m61669d != 0) {
                m61662v(m61654m, m61669d);
            }
            ChildHandleNode m61651j = m61651j(state);
            return (m61651j == null || !m61641J(c18156c, m61651j, proposedUpdate)) ? m61650i(c18156c, proposedUpdate) : JobSupportKt.COMPLETING_WAITING_CHILDREN;
        }
    }

    /* renamed from: J */
    public final boolean m61641J(C18156c state, ChildHandleNode child, Object proposedUpdate) {
        while (Job.DefaultImpls.invokeOnCompletion$default(child.childJob, false, false, new C18155b(this, state, child, proposedUpdate), 1, null) == NonDisposableHandle.INSTANCE) {
            child = m61661u(child);
            if (child == null) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public final boolean m61642a(final Object expect, NodeList list, final JobNode node) {
        int tryCondAddNext;
        LockFreeLinkedListNode.CondAddOp condAddOp = new LockFreeLinkedListNode.CondAddOp(node) { // from class: kotlinx.coroutines.JobSupport$addLastAtomic$$inlined$addLastIf$1
            @Override // kotlinx.coroutines.internal.AtomicOp
            @Nullable
            public Object prepare(@NotNull LockFreeLinkedListNode affected) {
                if (this.getState$kotlinx_coroutines_core() == expect) {
                    return null;
                }
                return LockFreeLinkedListKt.getCONDITION_FALSE();
            }
        };
        do {
            tryCondAddNext = list.getPrevNode().tryCondAddNext(node, list, condAddOp);
            if (tryCondAddNext == 1) {
                return true;
            }
        } while (tryCondAddNext != 2);
        return false;
    }

    public void afterCompletion(@Nullable Object state) {
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final ChildHandle attachChild(@NotNull ChildJob child) {
        DisposableHandle invokeOnCompletion$default = Job.DefaultImpls.invokeOnCompletion$default(this, true, false, new ChildHandleNode(child), 2, null);
        Intrinsics.checkNotNull(invokeOnCompletion$default, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
        return (ChildHandle) invokeOnCompletion$default;
    }

    @Nullable
    public final Object awaitInternal(@NotNull Continuation<Object> continuation) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
                    throw ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
                }
                return JobSupportKt.unboxState(state$kotlinx_coroutines_core);
            }
        } while (m61635D(state$kotlinx_coroutines_core) < 0);
        return m61644c(continuation);
    }

    /* renamed from: b */
    public final void m61643b(Throwable rootCause, List<? extends Throwable> exceptions) {
        if (exceptions.size() <= 1) {
            return;
        }
        Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(exceptions.size()));
        for (Throwable th : exceptions) {
            if (th != rootCause && th != rootCause && !(th instanceof CancellationException) && newSetFromMap.add(th)) {
                ExceptionsKt__ExceptionsKt.addSuppressed(rootCause, th);
            }
        }
    }

    /* renamed from: c */
    public final Object m61644c(Continuation<Object> continuation) {
        C18154a c18154a = new C18154a(IntrinsicsKt.intercepted(continuation), this);
        c18154a.initCancellability();
        CancellableContinuationKt.disposeOnCancellation(c18154a, invokeOnCompletion(new grl(c18154a)));
        Object result = c18154a.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    @Override // kotlinx.coroutines.Job
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public /* synthetic */ void cancel() {
        Job.DefaultImpls.cancel(this);
    }

    public final boolean cancelCoroutine(@Nullable Throwable cause) {
        return cancelImpl$kotlinx_coroutines_core(cause);
    }

    public final boolean cancelImpl$kotlinx_coroutines_core(@Nullable Object cause) {
        Object obj;
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        obj = JobSupportKt.f98199a;
        if (getOnCancelComplete$kotlinx_coroutines_core() && (obj = m61645d(cause)) == JobSupportKt.COMPLETING_WAITING_CHILDREN) {
            return true;
        }
        symbol = JobSupportKt.f98199a;
        if (obj == symbol) {
            obj = m61659s(cause);
        }
        symbol2 = JobSupportKt.f98199a;
        if (obj == symbol2 || obj == JobSupportKt.COMPLETING_WAITING_CHILDREN) {
            return true;
        }
        symbol3 = JobSupportKt.f98201c;
        if (obj == symbol3) {
            return false;
        }
        afterCompletion(obj);
        return true;
    }

    public void cancelInternal(@NotNull Throwable cause) {
        cancelImpl$kotlinx_coroutines_core(cause);
    }

    @NotNull
    public String cancellationExceptionMessage() {
        return "Job was cancelled";
    }

    public boolean childCancelled(@NotNull Throwable cause) {
        if (cause instanceof CancellationException) {
            return true;
        }
        return cancelImpl$kotlinx_coroutines_core(cause) && getHandlesException();
    }

    /* renamed from: d */
    public final Object m61645d(Object cause) {
        Symbol symbol;
        Object m61639H;
        Symbol symbol2;
        do {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete) || ((state$kotlinx_coroutines_core instanceof C18156c) && ((C18156c) state$kotlinx_coroutines_core).m61671f())) {
                symbol = JobSupportKt.f98199a;
                return symbol;
            }
            m61639H = m61639H(state$kotlinx_coroutines_core, new CompletedExceptionally(m61649h(cause), false, 2, null));
            symbol2 = JobSupportKt.f98200b;
        } while (m61639H == symbol2);
        return m61639H;
    }

    @NotNull
    public final JobCancellationException defaultCancellationException$kotlinx_coroutines_core(@Nullable String message, @Nullable Throwable cause) {
        if (message == null) {
            message = cancellationExceptionMessage();
        }
        return new JobCancellationException(message, cause, this);
    }

    /* renamed from: e */
    public final boolean m61646e(Throwable cause) {
        if (isScopedCoroutine()) {
            return true;
        }
        boolean z = cause instanceof CancellationException;
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        return (parentHandle$kotlinx_coroutines_core == null || parentHandle$kotlinx_coroutines_core == NonDisposableHandle.INSTANCE) ? z : parentHandle$kotlinx_coroutines_core.childCancelled(cause) || z;
    }

    /* renamed from: f */
    public final void m61647f(Incomplete state, Object update) {
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null) {
            parentHandle$kotlinx_coroutines_core.dispose();
            setParentHandle$kotlinx_coroutines_core(NonDisposableHandle.INSTANCE);
        }
        CompletedExceptionally completedExceptionally = update instanceof CompletedExceptionally ? (CompletedExceptionally) update : null;
        Throwable th = completedExceptionally != null ? completedExceptionally.cause : null;
        if (!(state instanceof JobNode)) {
            NodeList list = state.getList();
            if (list != null) {
                m61663w(list, th);
                return;
            }
            return;
        }
        try {
            ((JobNode) state).invoke(th);
        } catch (Throwable th2) {
            handleOnCompletionException$kotlinx_coroutines_core(new CompletionHandlerException("Exception in completion handler " + state + " for " + this, th2));
        }
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) Job.DefaultImpls.fold(this, r, function2);
    }

    /* renamed from: g */
    public final void m61648g(C18156c state, ChildHandleNode lastChild, Object proposedUpdate) {
        ChildHandleNode m61661u = m61661u(lastChild);
        if (m61661u == null || !m61641J(state, m61661u, proposedUpdate)) {
            afterCompletion(m61650i(state, proposedUpdate));
        }
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        return (E) Job.DefaultImpls.get(this, key);
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final CancellationException getCancellationException() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (!(state$kotlinx_coroutines_core instanceof C18156c)) {
            if (state$kotlinx_coroutines_core instanceof Incomplete) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
                return toCancellationException$default(this, ((CompletedExceptionally) state$kotlinx_coroutines_core).cause, null, 1, null);
            }
            return new JobCancellationException(DebugStringsKt.getClassSimpleName(this) + " has completed normally", null, this);
        }
        Throwable m61669d = ((C18156c) state$kotlinx_coroutines_core).m61669d();
        if (m61669d != null) {
            CancellationException cancellationException = toCancellationException(m61669d, DebugStringsKt.getClassSimpleName(this) + " is cancelling");
            if (cancellationException != null) {
                return cancellationException;
            }
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Throwable] */
    @Override // kotlinx.coroutines.ParentJob
    @NotNull
    public CancellationException getChildJobCancellationCause() {
        CancellationException cancellationException;
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof C18156c) {
            cancellationException = ((C18156c) state$kotlinx_coroutines_core).m61669d();
        } else if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            cancellationException = ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        } else {
            if (state$kotlinx_coroutines_core instanceof Incomplete) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + state$kotlinx_coroutines_core).toString());
            }
            cancellationException = null;
        }
        CancellationException cancellationException2 = cancellationException instanceof CancellationException ? cancellationException : null;
        if (cancellationException2 != null) {
            return cancellationException2;
        }
        return new JobCancellationException("Parent job is " + m61636E(state$kotlinx_coroutines_core), cancellationException, this);
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final Sequence<Job> getChildren() {
        Sequence<Job> sequence;
        sequence = SequencesKt__SequenceBuilderKt.sequence(new JobSupport$children$1(this, null));
        return sequence;
    }

    @Nullable
    public final Object getCompletedInternal$kotlinx_coroutines_core() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (!(!(state$kotlinx_coroutines_core instanceof Incomplete))) {
            throw new IllegalStateException("This job has not completed yet".toString());
        }
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            throw ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        }
        return JobSupportKt.unboxState(state$kotlinx_coroutines_core);
    }

    @Nullable
    public final Throwable getCompletionCause() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof C18156c) {
            Throwable m61669d = ((C18156c) state$kotlinx_coroutines_core).m61669d();
            if (m61669d != null) {
                return m61669d;
            }
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
            if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
                return ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
            }
            return null;
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    public final boolean getCompletionCauseHandled() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return (state$kotlinx_coroutines_core instanceof CompletedExceptionally) && ((CompletedExceptionally) state$kotlinx_coroutines_core).getHandled();
    }

    @Nullable
    public final Throwable getCompletionExceptionOrNull() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
            return m61652k(state$kotlinx_coroutines_core);
        }
        throw new IllegalStateException("This job has not completed yet".toString());
    }

    /* renamed from: getHandlesException$kotlinx_coroutines_core */
    public boolean getHandlesException() {
        return true;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public final CoroutineContext.Key<?> getKey() {
        return Job.INSTANCE;
    }

    @NotNull
    public final SelectClause1<?> getOnAwaitInternal() {
        JobSupport$onAwaitInternal$1 jobSupport$onAwaitInternal$1 = JobSupport$onAwaitInternal$1.INSTANCE;
        Intrinsics.checkNotNull(jobSupport$onAwaitInternal$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(jobSupport$onAwaitInternal$1, 3);
        JobSupport$onAwaitInternal$2 jobSupport$onAwaitInternal$2 = JobSupport$onAwaitInternal$2.INSTANCE;
        Intrinsics.checkNotNull(jobSupport$onAwaitInternal$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(jobSupport$onAwaitInternal$2, 3), null, 8, null);
    }

    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return false;
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final SelectClause0 getOnJoin() {
        JobSupport$onJoin$1 jobSupport$onJoin$1 = JobSupport$onJoin$1.INSTANCE;
        Intrinsics.checkNotNull(jobSupport$onJoin$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        return new SelectClause0Impl(this, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(jobSupport$onJoin$1, 3), null, 4, null);
    }

    @Override // kotlinx.coroutines.Job
    @Nullable
    public Job getParent() {
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null) {
            return parentHandle$kotlinx_coroutines_core.getParent();
        }
        return null;
    }

    @Nullable
    public final ChildHandle getParentHandle$kotlinx_coroutines_core() {
        return (ChildHandle) f98183f.get(this);
    }

    @Nullable
    public final Object getState$kotlinx_coroutines_core() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98182e;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof OpDescriptor)) {
                return obj;
            }
            ((OpDescriptor) obj).perform(this);
        }
    }

    /* renamed from: h */
    public final Throwable m61649h(Object cause) {
        if (cause == null ? true : cause instanceof Throwable) {
            Throwable th = (Throwable) cause;
            return th == null ? new JobCancellationException(cancellationExceptionMessage(), null, this) : th;
        }
        Intrinsics.checkNotNull(cause, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((ParentJob) cause).getChildJobCancellationCause();
    }

    public boolean handleJobException(@NotNull Throwable exception) {
        return false;
    }

    public void handleOnCompletionException$kotlinx_coroutines_core(@NotNull Throwable exception) {
        throw exception;
    }

    /* renamed from: i */
    public final Object m61650i(C18156c state, Object proposedUpdate) {
        boolean m61670e;
        Throwable m61653l;
        CompletedExceptionally completedExceptionally = proposedUpdate instanceof CompletedExceptionally ? (CompletedExceptionally) proposedUpdate : null;
        Throwable th = completedExceptionally != null ? completedExceptionally.cause : null;
        synchronized (state) {
            m61670e = state.m61670e();
            List<Throwable> m61673h = state.m61673h(th);
            m61653l = m61653l(state, m61673h);
            if (m61653l != null) {
                m61643b(m61653l, m61673h);
            }
        }
        if (m61653l != null && m61653l != th) {
            proposedUpdate = new CompletedExceptionally(m61653l, false, 2, null);
        }
        if (m61653l != null) {
            if (m61646e(m61653l) || handleJobException(m61653l)) {
                Intrinsics.checkNotNull(proposedUpdate, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                ((CompletedExceptionally) proposedUpdate).makeHandled();
            }
        }
        if (!m61670e) {
            onCancelling(m61653l);
        }
        onCompletionInternal(proposedUpdate);
        C14434t4.m57298a(f98182e, this, state, JobSupportKt.boxIncomplete(proposedUpdate));
        m61647f(state, proposedUpdate);
        return proposedUpdate;
    }

    public final void initParentJob(@Nullable Job parent) {
        if (parent == null) {
            setParentHandle$kotlinx_coroutines_core(NonDisposableHandle.INSTANCE);
            return;
        }
        parent.start();
        ChildHandle attachChild = parent.attachChild(this);
        setParentHandle$kotlinx_coroutines_core(attachChild);
        if (isCompleted()) {
            attachChild.dispose();
            setParentHandle$kotlinx_coroutines_core(NonDisposableHandle.INSTANCE);
        }
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final DisposableHandle invokeOnCompletion(@NotNull Function1<? super Throwable, Unit> handler) {
        return invokeOnCompletion(false, true, handler);
    }

    @Override // kotlinx.coroutines.Job
    public boolean isActive() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return (state$kotlinx_coroutines_core instanceof Incomplete) && ((Incomplete) state$kotlinx_coroutines_core).isActive();
    }

    @Override // kotlinx.coroutines.Job
    public final boolean isCancelled() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return (state$kotlinx_coroutines_core instanceof CompletedExceptionally) || ((state$kotlinx_coroutines_core instanceof C18156c) && ((C18156c) state$kotlinx_coroutines_core).m61670e());
    }

    @Override // kotlinx.coroutines.Job
    public final boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof Incomplete);
    }

    public final boolean isCompletedExceptionally() {
        return getState$kotlinx_coroutines_core() instanceof CompletedExceptionally;
    }

    public boolean isScopedCoroutine() {
        return false;
    }

    /* renamed from: j */
    public final ChildHandleNode m61651j(Incomplete state) {
        ChildHandleNode childHandleNode = state instanceof ChildHandleNode ? (ChildHandleNode) state : null;
        if (childHandleNode != null) {
            return childHandleNode;
        }
        NodeList list = state.getList();
        if (list != null) {
            return m61661u(list);
        }
        return null;
    }

    @Override // kotlinx.coroutines.Job
    @Nullable
    public final Object join(@NotNull Continuation<? super Unit> continuation) {
        if (m61656o()) {
            Object m61657p = m61657p(continuation);
            return m61657p == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? m61657p : Unit.INSTANCE;
        }
        JobKt.ensureActive(continuation.getContext());
        return Unit.INSTANCE;
    }

    /* renamed from: k */
    public final Throwable m61652k(Object obj) {
        CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
        if (completedExceptionally != null) {
            return completedExceptionally.cause;
        }
        return null;
    }

    /* renamed from: l */
    public final Throwable m61653l(C18156c state, List<? extends Throwable> exceptions) {
        Object obj;
        Object obj2 = null;
        if (exceptions.isEmpty()) {
            if (state.m61670e()) {
                return new JobCancellationException(cancellationExceptionMessage(), null, this);
            }
            return null;
        }
        List<? extends Throwable> list = exceptions;
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (!(((Throwable) obj) instanceof CancellationException)) {
                break;
            }
        }
        Throwable th = (Throwable) obj;
        if (th != null) {
            return th;
        }
        Throwable th2 = exceptions.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            Iterator<T> it3 = list.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                Object next = it3.next();
                Throwable th3 = (Throwable) next;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    obj2 = next;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj2;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    /* renamed from: m */
    public final NodeList m61654m(Incomplete state) {
        NodeList list = state.getList();
        if (list != null) {
            return list;
        }
        if (state instanceof xof) {
            return new NodeList();
        }
        if (state instanceof JobNode) {
            m61633B((JobNode) state);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + state).toString());
    }

    public final boolean makeCompleting$kotlinx_coroutines_core(@Nullable Object proposedUpdate) {
        Object m61639H;
        Symbol symbol;
        Symbol symbol2;
        do {
            m61639H = m61639H(getState$kotlinx_coroutines_core(), proposedUpdate);
            symbol = JobSupportKt.f98199a;
            if (m61639H == symbol) {
                return false;
            }
            if (m61639H == JobSupportKt.COMPLETING_WAITING_CHILDREN) {
                return true;
            }
            symbol2 = JobSupportKt.f98200b;
        } while (m61639H == symbol2);
        afterCompletion(m61639H);
        return true;
    }

    @Nullable
    public final Object makeCompletingOnce$kotlinx_coroutines_core(@Nullable Object proposedUpdate) {
        Object m61639H;
        Symbol symbol;
        Symbol symbol2;
        do {
            m61639H = m61639H(getState$kotlinx_coroutines_core(), proposedUpdate);
            symbol = JobSupportKt.f98199a;
            if (m61639H == symbol) {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + proposedUpdate, m61652k(proposedUpdate));
            }
            symbol2 = JobSupportKt.f98200b;
        } while (m61639H == symbol2);
        return m61639H;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        return Job.DefaultImpls.minusKey(this, key);
    }

    /* renamed from: n */
    public final boolean m61655n(Incomplete incomplete) {
        return (incomplete instanceof C18156c) && ((C18156c) incomplete).m61670e();
    }

    @NotNull
    public String nameString$kotlinx_coroutines_core() {
        return DebugStringsKt.getClassSimpleName(this);
    }

    /* renamed from: o */
    public final boolean m61656o() {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                return false;
            }
        } while (m61635D(state$kotlinx_coroutines_core) < 0);
        return true;
    }

    public void onCancelling(@Nullable Throwable cause) {
    }

    public void onCompletionInternal(@Nullable Object state) {
    }

    public void onStart() {
    }

    /* renamed from: p */
    public final Object m61657p(Continuation<? super Unit> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationKt.disposeOnCancellation(cancellableContinuationImpl, invokeOnCompletion(new hrl(cancellableContinuationImpl)));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.ChildJob
    public final void parentCancelled(@NotNull ParentJob parentJob) {
        cancelImpl$kotlinx_coroutines_core(parentJob);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return Job.DefaultImpls.plus(this, coroutineContext);
    }

    /* renamed from: r */
    public final Void m61658r(Function1<Object, Unit> block) {
        while (true) {
            block.invoke(getState$kotlinx_coroutines_core());
        }
    }

    public final void removeNode$kotlinx_coroutines_core(@NotNull JobNode node) {
        Object state$kotlinx_coroutines_core;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        xof xofVar;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof JobNode)) {
                if (!(state$kotlinx_coroutines_core instanceof Incomplete) || ((Incomplete) state$kotlinx_coroutines_core).getList() == null) {
                    return;
                }
                node.mo74190remove();
                return;
            }
            if (state$kotlinx_coroutines_core != node) {
                return;
            }
            atomicReferenceFieldUpdater = f98182e;
            xofVar = JobSupportKt.f98207i;
        } while (!C14434t4.m57298a(atomicReferenceFieldUpdater, this, state$kotlinx_coroutines_core, xofVar));
    }

    /* renamed from: s */
    public final Object m61659s(Object cause) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Symbol symbol6;
        Throwable th = null;
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (state$kotlinx_coroutines_core instanceof C18156c) {
                synchronized (state$kotlinx_coroutines_core) {
                    if (((C18156c) state$kotlinx_coroutines_core).m61672g()) {
                        symbol2 = JobSupportKt.f98201c;
                        return symbol2;
                    }
                    boolean m61670e = ((C18156c) state$kotlinx_coroutines_core).m61670e();
                    if (cause != null || !m61670e) {
                        if (th == null) {
                            th = m61649h(cause);
                        }
                        ((C18156c) state$kotlinx_coroutines_core).m61666a(th);
                    }
                    Throwable m61669d = m61670e ^ true ? ((C18156c) state$kotlinx_coroutines_core).m61669d() : null;
                    if (m61669d != null) {
                        m61662v(((C18156c) state$kotlinx_coroutines_core).getList(), m61669d);
                    }
                    symbol = JobSupportKt.f98199a;
                    return symbol;
                }
            }
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                symbol3 = JobSupportKt.f98201c;
                return symbol3;
            }
            if (th == null) {
                th = m61649h(cause);
            }
            Incomplete incomplete = (Incomplete) state$kotlinx_coroutines_core;
            if (!incomplete.isActive()) {
                Object m61639H = m61639H(state$kotlinx_coroutines_core, new CompletedExceptionally(th, false, 2, null));
                symbol5 = JobSupportKt.f98199a;
                if (m61639H == symbol5) {
                    throw new IllegalStateException(("Cannot happen in " + state$kotlinx_coroutines_core).toString());
                }
                symbol6 = JobSupportKt.f98200b;
                if (m61639H != symbol6) {
                    return m61639H;
                }
            } else if (m61638G(incomplete, th)) {
                symbol4 = JobSupportKt.f98199a;
                return symbol4;
            }
        }
    }

    public final void setParentHandle$kotlinx_coroutines_core(@Nullable ChildHandle childHandle) {
        f98183f.set(this, childHandle);
    }

    @Override // kotlinx.coroutines.Job
    public final boolean start() {
        int m61635D;
        do {
            m61635D = m61635D(getState$kotlinx_coroutines_core());
            if (m61635D == 0) {
                return false;
            }
        } while (m61635D != 1);
        return true;
    }

    /* renamed from: t */
    public final JobNode m61660t(Function1<? super Throwable, Unit> handler, boolean onCancelling) {
        JobNode jobNode;
        if (onCancelling) {
            jobNode = handler instanceof JobCancellingNode ? (JobCancellingNode) handler : null;
            if (jobNode == null) {
                jobNode = new bqi(handler);
            }
        } else {
            jobNode = handler instanceof JobNode ? (JobNode) handler : null;
            if (jobNode == null) {
                jobNode = new cqi(handler);
            }
        }
        jobNode.setJob(this);
        return jobNode;
    }

    @NotNull
    public final CancellationException toCancellationException(@NotNull Throwable th, @Nullable String str) {
        CancellationException cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        if (cancellationException == null) {
            if (str == null) {
                str = cancellationExceptionMessage();
            }
            cancellationException = new JobCancellationException(str, th, this);
        }
        return cancellationException;
    }

    @InternalCoroutinesApi
    @NotNull
    public final String toDebugString() {
        return nameString$kotlinx_coroutines_core() + '{' + m61636E(getState$kotlinx_coroutines_core()) + '}';
    }

    @NotNull
    public String toString() {
        return toDebugString() + '@' + DebugStringsKt.getHexAddress(this);
    }

    /* renamed from: u */
    public final ChildHandleNode m61661u(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.isRemoved()) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.getPrevNode();
        }
        while (true) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode();
            if (!lockFreeLinkedListNode.isRemoved()) {
                if (lockFreeLinkedListNode instanceof ChildHandleNode) {
                    return (ChildHandleNode) lockFreeLinkedListNode;
                }
                if (lockFreeLinkedListNode instanceof NodeList) {
                    return null;
                }
            }
        }
    }

    /* renamed from: v */
    public final void m61662v(NodeList list, Throwable cause) {
        onCancelling(cause);
        Object next = list.getNext();
        Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next; !Intrinsics.areEqual(lockFreeLinkedListNode, list); lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode()) {
            if (lockFreeLinkedListNode instanceof JobCancellingNode) {
                JobNode jobNode = (JobNode) lockFreeLinkedListNode;
                try {
                    jobNode.invoke(cause);
                } catch (Throwable th) {
                    if (completionHandlerException != null) {
                        ExceptionsKt__ExceptionsKt.addSuppressed(completionHandlerException, th);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + jobNode + " for " + this, th);
                        Unit unit = Unit.INSTANCE;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            handleOnCompletionException$kotlinx_coroutines_core(completionHandlerException);
        }
        m61646e(cause);
    }

    /* renamed from: w */
    public final void m61663w(NodeList nodeList, Throwable th) {
        Object next = nodeList.getNext();
        Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next; !Intrinsics.areEqual(lockFreeLinkedListNode, nodeList); lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode()) {
            if (lockFreeLinkedListNode instanceof JobNode) {
                JobNode jobNode = (JobNode) lockFreeLinkedListNode;
                try {
                    jobNode.invoke(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        ExceptionsKt__ExceptionsKt.addSuppressed(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + jobNode + " for " + this, th2);
                        Unit unit = Unit.INSTANCE;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            handleOnCompletionException$kotlinx_coroutines_core(completionHandlerException);
        }
    }

    /* renamed from: y */
    public final Object m61664y(Object ignoredParam, Object result) {
        if (result instanceof CompletedExceptionally) {
            throw ((CompletedExceptionally) result).cause;
        }
        return result;
    }

    /* renamed from: z */
    public final void m61665z(SelectInstance<?> select, Object ignoredParam) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
                    state$kotlinx_coroutines_core = JobSupportKt.unboxState(state$kotlinx_coroutines_core);
                }
                select.selectInRegistrationPhase(state$kotlinx_coroutines_core);
                return;
            }
        } while (m61635D(state$kotlinx_coroutines_core) < 0);
        select.disposeOnCompletion(invokeOnCompletion(new C18157d(select)));
    }

    @Override // kotlinx.coroutines.Job
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Added since 1.2.0 for binary compatibility with versions <= 1.1.x")
    public /* synthetic */ boolean cancel(Throwable cause) {
        Throwable jobCancellationException;
        if (cause == null || (jobCancellationException = toCancellationException$default(this, cause, null, 1, null)) == null) {
            jobCancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(jobCancellationException);
        return true;
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final DisposableHandle invokeOnCompletion(boolean onCancelling, boolean invokeImmediately, @NotNull Function1<? super Throwable, Unit> handler) {
        JobNode m61660t = m61660t(handler, onCancelling);
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (state$kotlinx_coroutines_core instanceof xof) {
                xof xofVar = (xof) state$kotlinx_coroutines_core;
                if (xofVar.isActive()) {
                    if (C14434t4.m57298a(f98182e, this, state$kotlinx_coroutines_core, m61660t)) {
                        return m61660t;
                    }
                } else {
                    m61632A(xofVar);
                }
            } else {
                if (state$kotlinx_coroutines_core instanceof Incomplete) {
                    NodeList list = ((Incomplete) state$kotlinx_coroutines_core).getList();
                    if (list == null) {
                        Intrinsics.checkNotNull(state$kotlinx_coroutines_core, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                        m61633B((JobNode) state$kotlinx_coroutines_core);
                    } else {
                        DisposableHandle disposableHandle = NonDisposableHandle.INSTANCE;
                        if (onCancelling && (state$kotlinx_coroutines_core instanceof C18156c)) {
                            synchronized (state$kotlinx_coroutines_core) {
                                r3 = ((C18156c) state$kotlinx_coroutines_core).m61669d();
                                if (r3 == null || ((handler instanceof ChildHandleNode) && !((C18156c) state$kotlinx_coroutines_core).m61671f())) {
                                    if (m61642a(state$kotlinx_coroutines_core, list, m61660t)) {
                                        if (r3 == null) {
                                            return m61660t;
                                        }
                                        disposableHandle = m61660t;
                                    }
                                }
                                Unit unit = Unit.INSTANCE;
                            }
                        }
                        if (r3 != null) {
                            if (invokeImmediately) {
                                handler.invoke(r3);
                            }
                            return disposableHandle;
                        }
                        if (m61642a(state$kotlinx_coroutines_core, list, m61660t)) {
                            return m61660t;
                        }
                    }
                } else {
                    if (invokeImmediately) {
                        CompletedExceptionally completedExceptionally = state$kotlinx_coroutines_core instanceof CompletedExceptionally ? (CompletedExceptionally) state$kotlinx_coroutines_core : null;
                        handler.invoke(completedExceptionally != null ? completedExceptionally.cause : null);
                    }
                    return NonDisposableHandle.INSTANCE;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.Job
    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
    @NotNull
    public Job plus(@NotNull Job job) {
        return Job.DefaultImpls.plus((Job) this, job);
    }

    @Override // kotlinx.coroutines.Job
    public void cancel(@Nullable CancellationException cause) {
        if (cause == null) {
            cause = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cause);
    }
}
