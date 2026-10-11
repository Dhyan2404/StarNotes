package kotlinx.coroutines.debug.internal;

import _COROUTINE.ArtificialStackFrames;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.concurrent.ThreadsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineId;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Ð\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\"\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÁ\u0002\u0018\u00002\u00020\u0001:\u0002\u008a\u0001B\n\b\u0002¢\u0006\u0005\b\u0089\u0001\u0010EJ\u0016\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J4\u0010\u0011\u001a\u00020\u0004*\u00020\b2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\n0\t2\n\u0010\u000e\u001a\u00060\fj\u0002`\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J9\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017\"\b\b\u0000\u0010\u0012*\u00020\u00012\u001e\b\u0004\u0010\u0016\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00028\u00000\u0013H\u0082\bJ\f\u0010\u0019\u001a\u00020\u000f*\u00020\u0001H\u0002J\u0010\u0010\u001a\u001a\u00020\u0003*\u0006\u0012\u0002\b\u00030\u0014H\u0002J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u001e\u0010 \u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001b2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0017H\u0002J.\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00172\u0006\u0010!\u001a\u00020\u000f2\b\u0010#\u001a\u0004\u0018\u00010\"2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0017H\u0002J?\u0010+\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&0*2\u0006\u0010'\u001a\u00020&2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001e0(2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0017H\u0002¢\u0006\u0004\b+\u0010,J3\u0010.\u001a\u00020&2\u0006\u0010-\u001a\u00020&2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001e0(2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0017H\u0002¢\u0006\u0004\b.\u0010/J\u001c\u00102\u001a\u00020\u00042\n\u00101\u001a\u0006\u0012\u0002\b\u0003002\u0006\u0010!\u001a\u00020\u000fH\u0002J\u0018\u00104\u001a\u00020\u00042\u0006\u00101\u001a\u0002032\u0006\u0010!\u001a\u00020\u000fH\u0002J\u000f\u00105\u001a\u0004\u0018\u000103*\u000203H\u0082\u0010J(\u00107\u001a\u00020\u00042\n\u00106\u001a\u0006\u0012\u0002\b\u00030\u00142\n\u00101\u001a\u0006\u0012\u0002\b\u0003002\u0006\u0010!\u001a\u00020\u000fH\u0002J\u0016\u00108\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0014*\u0006\u0012\u0002\b\u000300H\u0002J\u0013\u00109\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0014*\u000203H\u0082\u0010J\u0012\u0010;\u001a\u00020:*\b\u0012\u0004\u0012\u00020\u001e0\u0017H\u0002J,\u0010>\u001a\b\u0012\u0004\u0012\u00028\u000000\"\u0004\b\u0000\u0010<2\f\u0010=\u001a\b\u0012\u0004\u0012\u00028\u0000002\b\u00101\u001a\u0004\u0018\u00010:H\u0002J\u0014\u0010?\u001a\u00020\u00042\n\u00106\u001a\u0006\u0012\u0002\b\u00030\u0014H\u0002J'\u0010B\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0017\"\b\b\u0000\u0010<*\u00020@2\u0006\u0010A\u001a\u00028\u0000H\u0002¢\u0006\u0004\bB\u0010CJ\u000f\u0010F\u001a\u00020\u0004H\u0000¢\u0006\u0004\bD\u0010EJ\u000f\u0010H\u001a\u00020\u0004H\u0000¢\u0006\u0004\bG\u0010EJ\u0017\u0010L\u001a\u00020\u000f2\u0006\u0010I\u001a\u00020\bH\u0000¢\u0006\u0004\bJ\u0010KJ\u0013\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00010(¢\u0006\u0004\bM\u0010NJ\u000e\u0010Q\u001a\u00020\u000f2\u0006\u0010P\u001a\u00020OJ\f\u0010R\u001a\b\u0012\u0004\u0012\u00020O0\u0017J\f\u0010T\u001a\b\u0012\u0004\u0012\u00020S0\u0017J\u0010\u0010U\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bH\u0001J\"\u0010V\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00172\u0006\u0010P\u001a\u00020O2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0017J\u001b\u0010Y\u001a\u00020\u00042\n\u00101\u001a\u0006\u0012\u0002\b\u000300H\u0000¢\u0006\u0004\bW\u0010XJ\u001b\u0010[\u001a\u00020\u00042\n\u00101\u001a\u0006\u0012\u0002\b\u000300H\u0000¢\u0006\u0004\bZ\u0010XJ)\u0010^\u001a\b\u0012\u0004\u0012\u00028\u000000\"\u0004\b\u0000\u0010<2\f\u0010=\u001a\b\u0012\u0004\u0012\u00028\u000000H\u0000¢\u0006\u0004\b\\\u0010]R\u0014\u0010`\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010_R\u0014\u0010c\u001a\u00020a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010bR\u0018\u0010e\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010dR$\u0010h\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0014\u0012\u0004\u0012\u00020\u00030f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010gR\"\u0010n\u001a\u00020\u00038\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b%\u0010i\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR\"\u0010q\u001a\u00020\u00038\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b+\u0010i\u001a\u0004\bo\u0010k\"\u0004\bp\u0010mR\"\u0010t\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010i\u001a\u0004\br\u0010k\"\u0004\bs\u0010mR\"\u0010w\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bu\u0010vR \u0010y\u001a\u000e\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020\n0f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bx\u0010gR\u001e\u0010|\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00140z8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bu\u0010{R\u001e\u0010\u007f\u001a\u00020\u000f*\u00020\b8BX\u0082\u0004¢\u0006\f\u0012\u0004\b}\u0010~\u001a\u0004\bx\u0010KR\u001b\u0010\u0082\u0001\u001a\u00020\u0003*\u00020\u001e8BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0080\u0001\u0010\u0081\u0001R\u0013\u0010\u0084\u0001\u001a\u00020\u00038G¢\u0006\u0007\u001a\u0005\b\u0083\u0001\u0010kR\r\u0010\u0086\u0001\u001a\u00030\u0085\u00018\u0002X\u0082\u0004R\r\u0010\u0088\u0001\u001a\u00030\u0087\u00018\u0002X\u0082\u0004¨\u0006\u008b\u0001"}, m61528d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl;", "", "Lkotlin/Function1;", "", "", C4921e.f26537n, "t", "u", "Lkotlinx/coroutines/Job;", "", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", Constant.MAP_TAG, "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "builder", "", "indent", "a", "R", "Lkotlin/Function2;", "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", "Lkotlin/coroutines/CoroutineContext;", BaiduYunConstant.CREATE, "", "c", "w", "l", "Ljava/io/PrintStream;", "out", "d", "Ljava/lang/StackTraceElement;", "frames", "p", "state", "Ljava/lang/Thread;", "thread", "coroutineTrace", "e", "", "indexOfResumeWith", "", "actualTrace", "Lkotlin/Pair;", C6997f.f39671c, "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)Lkotlin/Pair;", "frameIndex", C6998g.f39679a, "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)I", "Lkotlin/coroutines/Continuation;", TypedValues.AttributesType.S_FRAME, "y", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "x", "r", "owner", "z", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "Lkotlinx/coroutines/debug/internal/StackTraceFrame;", "v", "T", "completion", "b", "q", "", "throwable", "s", "(Ljava/lang/Throwable;)Ljava/util/List;", "install$kotlinx_coroutines_core", "()V", "install", "uninstall$kotlinx_coroutines_core", "uninstall", "job", "hierarchyToString$kotlinx_coroutines_core", "(Lkotlinx/coroutines/Job;)Ljava/lang/String;", "hierarchyToString", "dumpCoroutinesInfoAsJsonAndReferences", "()[Ljava/lang/Object;", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;", PrivilegedApp.f6532i, "enhanceStackTraceWithThreadDumpAsJson", "dumpCoroutinesInfo", "Lkotlinx/coroutines/debug/internal/DebuggerInfo;", "dumpDebuggerInfo", "dumpCoroutines", "enhanceStackTraceWithThreadDump", "probeCoroutineResumed$kotlinx_coroutines_core", "(Lkotlin/coroutines/Continuation;)V", "probeCoroutineResumed", "probeCoroutineSuspended$kotlinx_coroutines_core", "probeCoroutineSuspended", "probeCoroutineCreated$kotlinx_coroutines_core", "(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "probeCoroutineCreated", "Ljava/lang/StackTraceElement;", "ARTIFICIAL_FRAME", "Ljava/text/SimpleDateFormat;", "Ljava/text/SimpleDateFormat;", "dateFormat", "Ljava/lang/Thread;", "weakRefCleanerThread", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "capturedCoroutinesMap", Constants.HASIDCALL_INDEX_SIG, "getSanitizeStackTraces$kotlinx_coroutines_core", Constants.BOOLEAN_VALUE_SIG, "setSanitizeStackTraces$kotlinx_coroutines_core", "(Z)V", "sanitizeStackTraces", "getEnableCreationStackTraces$kotlinx_coroutines_core", "setEnableCreationStackTraces$kotlinx_coroutines_core", "enableCreationStackTraces", "getIgnoreCoroutinesWithEmptyContext", "setIgnoreCoroutinesWithEmptyContext", "ignoreCoroutinesWithEmptyContext", C6999h.f39688c, "Lkotlin/jvm/functions/Function1;", "dynamicAttach", "i", "callerInfoCache", "", "()Ljava/util/Set;", "capturedCoroutines", "getDebugString$annotations", "(Lkotlinx/coroutines/Job;)V", "debugString", "m", "(Ljava/lang/StackTraceElement;)Z", "isInternalMethod", "isInstalled$kotlinx_coroutines_debug", "isInstalled", "Lkotlinx/atomicfu/AtomicInt;", "installations", "Lkotlinx/atomicfu/AtomicLong;", "sequenceNumber", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "CoroutineOwner", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@PublishedApi
@SourceDebugExtension({"SMAP\nDebugProbesImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,620:1\n150#1:638\n151#1,4:640\n156#1,5:645\n150#1:650\n151#1,4:652\n156#1,5:657\n1#2:621\n1#2:639\n1#2:651\n766#3:622\n857#3,2:623\n1208#3,2:625\n1238#3,4:627\n1855#3,2:665\n350#3,7:673\n1819#3,8:680\n603#4:631\n603#4:644\n603#4:656\n603#4:662\n1295#4,2:663\n37#5,2:632\n37#5,2:634\n37#5,2:636\n1627#6,6:667\n1735#6,6:688\n*S KotlinDebug\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n*L\n245#1:638\n245#1:640,4\n245#1:645,5\n252#1:650\n252#1:652,4\n252#1:657,5\n245#1:639\n252#1:651\n110#1:622\n110#1:623,2\n111#1:625,2\n111#1:627,4\n307#1:665,2\n416#1:673,7\n506#1:680,8\n154#1:631\n245#1:644\n252#1:656\n287#1:662\n288#1:663,2\n211#1:632,2\n212#1:634,2\n213#1:636,2\n355#1:667,6\n558#1:688,6\n*E\n"})
/* loaded from: classes11.dex */
public final class DebugProbesImpl {

    @NotNull
    public static final DebugProbesImpl INSTANCE;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final StackTraceElement ARTIFICIAL_FRAME;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat dateFormat;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public static Thread weakRefCleanerThread;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final ConcurrentWeakMap<CoroutineOwner<?>, Boolean> capturedCoroutinesMap;

    /* renamed from: e, reason: from kotlin metadata */
    public static boolean sanitizeStackTraces;

    /* renamed from: f, reason: from kotlin metadata */
    public static boolean enableCreationStackTraces;

    /* renamed from: g, reason: from kotlin metadata */
    public static boolean ignoreCoroutinesWithEmptyContext;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public static final Function1<Boolean, Unit> dynamicAttach;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public static final ConcurrentWeakMap<CoroutineStackFrame, DebugCoroutineInfo> callerInfoCache;

    /* renamed from: j */
    @NotNull
    public static final C18173a f98337j;

    /* renamed from: k */
    @NotNull
    public static final C18174b f98338k;

    @Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u0003B\u001f\b\u0000\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u001d\u0010\u001eJ\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J \u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0016ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\b\u0010\f\u001a\u00020\u000bH\u0016R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00128\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u00198BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001f"}, m61528d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", "T", "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "Lkotlin/Result;", com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "", "resumeWith", "(Ljava/lang/Object;)V", "", "toString", "delegate", "Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", PrivilegedApp.f6532i, "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "Lkotlinx/coroutines/debug/internal/StackTraceFrame;", "a", "()Lkotlinx/coroutines/debug/internal/StackTraceFrame;", TypedValues.AttributesType.S_FRAME, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;)V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes11.dex */
    public static final class CoroutineOwner<T> implements Continuation<T>, CoroutineStackFrame {

        @JvmField
        @NotNull
        public final Continuation<T> delegate;

        @JvmField
        @NotNull
        public final DebugCoroutineInfo info;

        /* JADX WARN: Multi-variable type inference failed */
        public CoroutineOwner(@NotNull Continuation<? super T> continuation, @NotNull DebugCoroutineInfo debugCoroutineInfo) {
            this.delegate = continuation;
            this.info = debugCoroutineInfo;
        }

        /* renamed from: a */
        public final StackTraceFrame m61945a() {
            return this.info.getCreationStackBottom();
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        @Nullable
        public CoroutineStackFrame getCallerFrame() {
            StackTraceFrame m61945a = m61945a();
            if (m61945a != null) {
                return m61945a.getCallerFrame();
            }
            return null;
        }

        @Override // kotlin.coroutines.Continuation
        @NotNull
        public CoroutineContext getContext() {
            return this.delegate.getContext();
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        @Nullable
        public StackTraceElement getStackTraceElement() {
            StackTraceFrame m61945a = m61945a();
            if (m61945a != null) {
                return m61945a.getStackTraceElement();
            }
            return null;
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(@NotNull Object result) {
            DebugProbesImpl.INSTANCE.m61935q(this);
            this.delegate.resumeWith(result);
        }

        @NotNull
        public String toString() {
            return this.delegate.toString();
        }
    }

    /* renamed from: kotlinx.coroutines.debug.internal.DebugProbesImpl$a */
    /* loaded from: classes11.dex */
    public static final class C18173a {

        /* renamed from: a */
        @NotNull
        public static final AtomicIntegerFieldUpdater f98339a = AtomicIntegerFieldUpdater.newUpdater(C18173a.class, "installations");

        @Volatile
        private volatile int installations;

        public C18173a() {
        }

        public /* synthetic */ C18173a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* renamed from: kotlinx.coroutines.debug.internal.DebugProbesImpl$b */
    /* loaded from: classes11.dex */
    public static final class C18174b {

        /* renamed from: a */
        @NotNull
        public static final AtomicLongFieldUpdater f98340a = AtomicLongFieldUpdater.newUpdater(C18174b.class, "sequenceNumber");

        @Volatile
        private volatile long sequenceNumber;

        public C18174b() {
        }

        public /* synthetic */ C18174b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        DebugProbesImpl debugProbesImpl = new DebugProbesImpl();
        INSTANCE = debugProbesImpl;
        ARTIFICIAL_FRAME = new ArtificialStackFrames().coroutineCreation();
        dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        DefaultConstructorMarker defaultConstructorMarker = null;
        capturedCoroutinesMap = new ConcurrentWeakMap<>(false, 1, null);
        sanitizeStackTraces = true;
        enableCreationStackTraces = true;
        ignoreCoroutinesWithEmptyContext = true;
        dynamicAttach = debugProbesImpl.m61929k();
        callerInfoCache = new ConcurrentWeakMap<>(true);
        f98337j = new C18173a(defaultConstructorMarker);
        f98338k = new C18174b(defaultConstructorMarker);
    }

    /* renamed from: j */
    public static /* synthetic */ void m61919j(Job job) {
    }

    /* renamed from: a */
    public final void m61920a(Job job, Map<Job, DebugCoroutineInfo> map, StringBuilder sb, String str) {
        Object firstOrNull;
        DebugCoroutineInfo debugCoroutineInfo = map.get(job);
        if (debugCoroutineInfo != null) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) debugCoroutineInfo.lastObservedStackTrace$kotlinx_coroutines_core());
            sb.append(str + m61928i(job) + ", continuation is " + debugCoroutineInfo.get_state() + " at line " + ((StackTraceElement) firstOrNull) + '\n');
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append('\t');
            str = sb2.toString();
        } else if (!(job instanceof ScopeCoroutine)) {
            sb.append(str + m61928i(job) + '\n');
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            sb3.append('\t');
            str = sb3.toString();
        }
        Iterator<Job> it2 = job.getChildren().iterator();
        while (it2.hasNext()) {
            m61920a(it2.next(), map, sb, str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final <T> Continuation<T> m61921b(Continuation<? super T> completion, StackTraceFrame frame) {
        if (!isInstalled$kotlinx_coroutines_debug()) {
            return completion;
        }
        CoroutineOwner<?> coroutineOwner = new CoroutineOwner<>(completion, new DebugCoroutineInfo(completion.getContext(), frame, C18174b.f98340a.incrementAndGet(f98338k)));
        ConcurrentWeakMap<CoroutineOwner<?>, Boolean> concurrentWeakMap = capturedCoroutinesMap;
        concurrentWeakMap.put(coroutineOwner, Boolean.TRUE);
        if (!isInstalled$kotlinx_coroutines_debug()) {
            concurrentWeakMap.clear();
        }
        return coroutineOwner;
    }

    /* renamed from: c */
    public final <R> List<R> m61922c(final Function2<? super CoroutineOwner<?>, ? super CoroutineContext, ? extends R> create) {
        Sequence asSequence;
        Sequence sortedWith;
        Sequence mapNotNull;
        List<R> list;
        if (!isInstalled$kotlinx_coroutines_debug()) {
            throw new IllegalStateException("Debug probes are not installed".toString());
        }
        asSequence = CollectionsKt___CollectionsKt.asSequence(m61927h());
        sortedWith = SequencesKt___SequencesKt.sortedWith(asSequence, new DebugProbesImpl$dumpCoroutinesInfoImpl$$inlined$sortedBy$1());
        mapNotNull = SequencesKt___SequencesKt.mapNotNull(sortedWith, new Function1<CoroutineOwner<?>, R>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesInfoImpl$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final R invoke(@NotNull DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
                boolean m61930l;
                CoroutineContext context;
                m61930l = DebugProbesImpl.INSTANCE.m61930l(coroutineOwner);
                if (m61930l || (context = coroutineOwner.info.getContext()) == null) {
                    return null;
                }
                return create.invoke(coroutineOwner, context);
            }
        });
        list = SequencesKt___SequencesKt.toList(mapNotNull);
        return list;
    }

    /* renamed from: d */
    public final void m61923d(PrintStream out) {
        Sequence asSequence;
        Sequence filter;
        Sequence<CoroutineOwner> sortedWith;
        if (!isInstalled$kotlinx_coroutines_debug()) {
            throw new IllegalStateException("Debug probes are not installed".toString());
        }
        out.print("Coroutines dump " + dateFormat.format(Long.valueOf(System.currentTimeMillis())));
        asSequence = CollectionsKt___CollectionsKt.asSequence(m61927h());
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<CoroutineOwner<?>, Boolean>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesSynchronized$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
                boolean m61930l;
                m61930l = DebugProbesImpl.INSTANCE.m61930l(coroutineOwner);
                return Boolean.valueOf(!m61930l);
            }
        });
        sortedWith = SequencesKt___SequencesKt.sortedWith(filter, new Comparator() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesSynchronized$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((DebugProbesImpl.CoroutineOwner) t).info.sequenceNumber), Long.valueOf(((DebugProbesImpl.CoroutineOwner) t2).info.sequenceNumber));
                return compareValues;
            }
        });
        for (CoroutineOwner coroutineOwner : sortedWith) {
            DebugCoroutineInfo debugCoroutineInfo = coroutineOwner.info;
            List<StackTraceElement> lastObservedStackTrace$kotlinx_coroutines_core = debugCoroutineInfo.lastObservedStackTrace$kotlinx_coroutines_core();
            DebugProbesImpl debugProbesImpl = INSTANCE;
            List<StackTraceElement> m61924e = debugProbesImpl.m61924e(debugCoroutineInfo.get_state(), debugCoroutineInfo.lastObservedThread, lastObservedStackTrace$kotlinx_coroutines_core);
            out.print("\n\nCoroutine " + coroutineOwner.delegate + ", state: " + ((Intrinsics.areEqual(debugCoroutineInfo.get_state(), DebugCoroutineInfoImplKt.RUNNING) && m61924e == lastObservedStackTrace$kotlinx_coroutines_core) ? debugCoroutineInfo.get_state() + " (Last suspension stacktrace, not an actual stacktrace)" : debugCoroutineInfo.get_state()));
            if (lastObservedStackTrace$kotlinx_coroutines_core.isEmpty()) {
                out.print("\n\tat " + ARTIFICIAL_FRAME);
                debugProbesImpl.m61934p(out, debugCoroutineInfo.getCreationStackTrace());
            } else {
                debugProbesImpl.m61934p(out, m61924e);
            }
        }
    }

    @JvmName(name = "dumpCoroutines")
    public final void dumpCoroutines(@NotNull PrintStream out) {
        synchronized (out) {
            INSTANCE.m61923d(out);
            Unit unit = Unit.INSTANCE;
        }
    }

    @NotNull
    public final List<DebugCoroutineInfo> dumpCoroutinesInfo() {
        Sequence asSequence;
        Sequence sortedWith;
        Sequence mapNotNull;
        List<DebugCoroutineInfo> list;
        if (!isInstalled$kotlinx_coroutines_debug()) {
            throw new IllegalStateException("Debug probes are not installed".toString());
        }
        asSequence = CollectionsKt___CollectionsKt.asSequence(m61927h());
        sortedWith = SequencesKt___SequencesKt.sortedWith(asSequence, new DebugProbesImpl$dumpCoroutinesInfoImpl$$inlined$sortedBy$1());
        mapNotNull = SequencesKt___SequencesKt.mapNotNull(sortedWith, new Function1<CoroutineOwner<?>, DebugCoroutineInfo>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesInfo$$inlined$dumpCoroutinesInfoImpl$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final DebugCoroutineInfo invoke(@NotNull DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
                boolean m61930l;
                CoroutineContext context;
                m61930l = DebugProbesImpl.INSTANCE.m61930l(coroutineOwner);
                if (m61930l || (context = coroutineOwner.info.getContext()) == null) {
                    return null;
                }
                return new DebugCoroutineInfo(coroutineOwner.info, context);
            }
        });
        list = SequencesKt___SequencesKt.toList(mapNotNull);
        return list;
    }

    @NotNull
    public final Object[] dumpCoroutinesInfoAsJsonAndReferences() {
        String joinToString$default;
        String trimIndent;
        String name;
        List<DebugCoroutineInfo> dumpCoroutinesInfo = dumpCoroutinesInfo();
        int size = dumpCoroutinesInfo.size();
        ArrayList arrayList = new ArrayList(size);
        ArrayList arrayList2 = new ArrayList(size);
        ArrayList arrayList3 = new ArrayList(size);
        for (DebugCoroutineInfo debugCoroutineInfo : dumpCoroutinesInfo) {
            CoroutineContext context = debugCoroutineInfo.getContext();
            CoroutineName coroutineName = (CoroutineName) context.get(CoroutineName.INSTANCE);
            Long l = null;
            String m61941w = (coroutineName == null || (name = coroutineName.getName()) == null) ? null : m61941w(name);
            CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) context.get(CoroutineDispatcher.INSTANCE);
            String m61941w2 = coroutineDispatcher != null ? m61941w(coroutineDispatcher) : null;
            StringBuilder sb = new StringBuilder();
            sb.append("\n                {\n                    \"name\": ");
            sb.append(m61941w);
            sb.append(",\n                    \"id\": ");
            CoroutineId coroutineId = (CoroutineId) context.get(CoroutineId.INSTANCE);
            if (coroutineId != null) {
                l = Long.valueOf(coroutineId.getId());
            }
            sb.append(l);
            sb.append(",\n                    \"dispatcher\": ");
            sb.append(m61941w2);
            sb.append(",\n                    \"sequenceNumber\": ");
            sb.append(debugCoroutineInfo.getSequenceNumber());
            sb.append(",\n                    \"state\": \"");
            sb.append(debugCoroutineInfo.getState());
            sb.append("\"\n                } \n                ");
            trimIndent = StringsKt__IndentKt.trimIndent(sb.toString());
            arrayList3.add(trimIndent);
            arrayList2.add(debugCoroutineInfo.getLastObservedFrame());
            arrayList.add(debugCoroutineInfo.getLastObservedThread());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList3, null, null, null, 0, null, null, 63, null);
        sb2.append(joinToString$default);
        sb2.append(']');
        return new Object[]{sb2.toString(), arrayList.toArray(new Thread[0]), arrayList2.toArray(new CoroutineStackFrame[0]), dumpCoroutinesInfo.toArray(new DebugCoroutineInfo[0])};
    }

    @NotNull
    public final List<DebuggerInfo> dumpDebuggerInfo() {
        Sequence asSequence;
        Sequence sortedWith;
        Sequence mapNotNull;
        List<DebuggerInfo> list;
        if (!isInstalled$kotlinx_coroutines_debug()) {
            throw new IllegalStateException("Debug probes are not installed".toString());
        }
        asSequence = CollectionsKt___CollectionsKt.asSequence(m61927h());
        sortedWith = SequencesKt___SequencesKt.sortedWith(asSequence, new DebugProbesImpl$dumpCoroutinesInfoImpl$$inlined$sortedBy$1());
        mapNotNull = SequencesKt___SequencesKt.mapNotNull(sortedWith, new Function1<CoroutineOwner<?>, DebuggerInfo>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpDebuggerInfo$$inlined$dumpCoroutinesInfoImpl$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final DebuggerInfo invoke(@NotNull DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
                boolean m61930l;
                CoroutineContext context;
                m61930l = DebugProbesImpl.INSTANCE.m61930l(coroutineOwner);
                if (m61930l || (context = coroutineOwner.info.getContext()) == null) {
                    return null;
                }
                return new DebuggerInfo(coroutineOwner.info, context);
            }
        });
        list = SequencesKt___SequencesKt.toList(mapNotNull);
        return list;
    }

    /* renamed from: e */
    public final List<StackTraceElement> m61924e(String state, Thread thread, List<StackTraceElement> coroutineTrace) {
        Object m72621constructorimpl;
        if (!Intrinsics.areEqual(state, DebugCoroutineInfoImplKt.RUNNING) || thread == null) {
            return coroutineTrace;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            m72621constructorimpl = Result.m72621constructorimpl(thread.getStackTrace());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m72621constructorimpl = Result.m72621constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m72627isFailureimpl(m72621constructorimpl)) {
            m72621constructorimpl = null;
        }
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) m72621constructorimpl;
        if (stackTraceElementArr == null) {
            return coroutineTrace;
        }
        int length = stackTraceElementArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            }
            StackTraceElement stackTraceElement = stackTraceElementArr[i];
            if (Intrinsics.areEqual(stackTraceElement.getClassName(), StackTraceRecoveryKt.f98615a) && Intrinsics.areEqual(stackTraceElement.getMethodName(), "resumeWith") && Intrinsics.areEqual(stackTraceElement.getFileName(), "ContinuationImpl.kt")) {
                break;
            }
            i++;
        }
        Pair<Integer, Integer> m61925f = m61925f(i, stackTraceElementArr, coroutineTrace);
        int intValue = m61925f.component1().intValue();
        int intValue2 = m61925f.component2().intValue();
        if (intValue == -1) {
            return coroutineTrace;
        }
        ArrayList arrayList = new ArrayList((((coroutineTrace.size() + i) - intValue) - 1) - intValue2);
        int i2 = i - intValue2;
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add(stackTraceElementArr[i3]);
        }
        int size = coroutineTrace.size();
        for (int i4 = intValue + 1; i4 < size; i4++) {
            arrayList.add(coroutineTrace.get(i4));
        }
        return arrayList;
    }

    @NotNull
    public final List<StackTraceElement> enhanceStackTraceWithThreadDump(@NotNull DebugCoroutineInfo info, @NotNull List<StackTraceElement> coroutineTrace) {
        return m61924e(info.getState(), info.getLastObservedThread(), coroutineTrace);
    }

    @NotNull
    public final String enhanceStackTraceWithThreadDumpAsJson(@NotNull DebugCoroutineInfo info) {
        String joinToString$default;
        String trimIndent;
        List<StackTraceElement> enhanceStackTraceWithThreadDump = enhanceStackTraceWithThreadDump(info, info.lastObservedStackTrace());
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : enhanceStackTraceWithThreadDump) {
            StringBuilder sb = new StringBuilder();
            sb.append("\n                {\n                    \"declaringClass\": \"");
            sb.append(stackTraceElement.getClassName());
            sb.append("\",\n                    \"methodName\": \"");
            sb.append(stackTraceElement.getMethodName());
            sb.append("\",\n                    \"fileName\": ");
            String fileName = stackTraceElement.getFileName();
            sb.append(fileName != null ? m61941w(fileName) : null);
            sb.append(",\n                    \"lineNumber\": ");
            sb.append(stackTraceElement.getLineNumber());
            sb.append("\n                }\n                ");
            trimIndent = StringsKt__IndentKt.trimIndent(sb.toString());
            arrayList.add(trimIndent);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, null, null, null, 0, null, null, 63, null);
        sb2.append(joinToString$default);
        sb2.append(']');
        return sb2.toString();
    }

    /* renamed from: f */
    public final Pair<Integer, Integer> m61925f(int indexOfResumeWith, StackTraceElement[] actualTrace, List<StackTraceElement> coroutineTrace) {
        for (int i = 0; i < 3; i++) {
            int m61926g = INSTANCE.m61926g((indexOfResumeWith - 1) - i, actualTrace, coroutineTrace);
            if (m61926g != -1) {
                return TuplesKt.m61535to(Integer.valueOf(m61926g), Integer.valueOf(i));
            }
        }
        return TuplesKt.m61535to(-1, 0);
    }

    /* renamed from: g */
    public final int m61926g(int frameIndex, StackTraceElement[] actualTrace, List<StackTraceElement> coroutineTrace) {
        Object orNull;
        orNull = ArraysKt___ArraysKt.getOrNull(actualTrace, frameIndex);
        StackTraceElement stackTraceElement = (StackTraceElement) orNull;
        if (stackTraceElement == null) {
            return -1;
        }
        int i = 0;
        for (StackTraceElement stackTraceElement2 : coroutineTrace) {
            if (Intrinsics.areEqual(stackTraceElement2.getFileName(), stackTraceElement.getFileName()) && Intrinsics.areEqual(stackTraceElement2.getClassName(), stackTraceElement.getClassName()) && Intrinsics.areEqual(stackTraceElement2.getMethodName(), stackTraceElement.getMethodName())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public final boolean getEnableCreationStackTraces$kotlinx_coroutines_core() {
        return enableCreationStackTraces;
    }

    public final boolean getIgnoreCoroutinesWithEmptyContext() {
        return ignoreCoroutinesWithEmptyContext;
    }

    public final boolean getSanitizeStackTraces$kotlinx_coroutines_core() {
        return sanitizeStackTraces;
    }

    /* renamed from: h */
    public final Set<CoroutineOwner<?>> m61927h() {
        return capturedCoroutinesMap.keySet();
    }

    @NotNull
    public final String hierarchyToString$kotlinx_coroutines_core(@NotNull Job job) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        if (!isInstalled$kotlinx_coroutines_debug()) {
            throw new IllegalStateException("Debug probes are not installed".toString());
        }
        Set<CoroutineOwner<?>> m61927h = m61927h();
        ArrayList<CoroutineOwner> arrayList = new ArrayList();
        for (Object obj : m61927h) {
            if (((CoroutineOwner) obj).delegate.getContext().get(Job.INSTANCE) != null) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (CoroutineOwner coroutineOwner : arrayList) {
            linkedHashMap.put(JobKt.getJob(coroutineOwner.delegate.getContext()), coroutineOwner.info);
        }
        StringBuilder sb = new StringBuilder();
        INSTANCE.m61920a(job, linkedHashMap, sb, "");
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    /* renamed from: i */
    public final String m61928i(Job job) {
        return job instanceof JobSupport ? ((JobSupport) job).toDebugString() : job.toString();
    }

    public final void install$kotlinx_coroutines_core() {
        Function1<Boolean, Unit> function1;
        if (C18173a.f98339a.incrementAndGet(f98337j) > 1) {
            return;
        }
        m61938t();
        if (AgentInstallationType.INSTANCE.isInstalledStatically$kotlinx_coroutines_core() || (function1 = dynamicAttach) == null) {
            return;
        }
        function1.invoke(Boolean.TRUE);
    }

    @JvmName(name = "isInstalled$kotlinx_coroutines_debug")
    public final boolean isInstalled$kotlinx_coroutines_debug() {
        return C18173a.f98339a.get(f98337j) > 0;
    }

    /* renamed from: k */
    public final Function1<Boolean, Unit> m61929k() {
        Object m72621constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            Object newInstance = Class.forName("kotlinx.coroutines.debug.internal.ByteBuddyDynamicAttach").getConstructors()[0].newInstance(new Object[0]);
            Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Function1<kotlin.Boolean, kotlin.Unit>");
            m72621constructorimpl = Result.m72621constructorimpl((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(newInstance, 1));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m72621constructorimpl = Result.m72621constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m72627isFailureimpl(m72621constructorimpl)) {
            m72621constructorimpl = null;
        }
        return (Function1) m72621constructorimpl;
    }

    /* renamed from: l */
    public final boolean m61930l(CoroutineOwner<?> coroutineOwner) {
        Job job;
        CoroutineContext context = coroutineOwner.info.getContext();
        if (context == null || (job = (Job) context.get(Job.INSTANCE)) == null || !job.isCompleted()) {
            return false;
        }
        capturedCoroutinesMap.remove(coroutineOwner);
        return true;
    }

    /* renamed from: m */
    public final boolean m61931m(StackTraceElement stackTraceElement) {
        boolean startsWith$default;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(stackTraceElement.getClassName(), "kotlinx.coroutines", false, 2, null);
        return startsWith$default;
    }

    /* renamed from: n */
    public final CoroutineOwner<?> m61932n(Continuation<?> continuation) {
        CoroutineStackFrame coroutineStackFrame = continuation instanceof CoroutineStackFrame ? (CoroutineStackFrame) continuation : null;
        if (coroutineStackFrame != null) {
            return m61933o(coroutineStackFrame);
        }
        return null;
    }

    /* renamed from: o */
    public final CoroutineOwner<?> m61933o(CoroutineStackFrame coroutineStackFrame) {
        while (!(coroutineStackFrame instanceof CoroutineOwner)) {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return null;
            }
        }
        return (CoroutineOwner) coroutineStackFrame;
    }

    /* renamed from: p */
    public final void m61934p(PrintStream out, List<StackTraceElement> frames) {
        Iterator<T> it2 = frames.iterator();
        while (it2.hasNext()) {
            out.print("\n\tat " + ((StackTraceElement) it2.next()));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final <T> Continuation<T> probeCoroutineCreated$kotlinx_coroutines_core(@NotNull Continuation<? super T> completion) {
        if (!isInstalled$kotlinx_coroutines_debug()) {
            return completion;
        }
        if (!(ignoreCoroutinesWithEmptyContext && completion.getContext() == EmptyCoroutineContext.INSTANCE) && m61932n(completion) == null) {
            return m61921b(completion, enableCreationStackTraces ? m61940v(m61937s(new Exception())) : null);
        }
        return completion;
    }

    public final void probeCoroutineResumed$kotlinx_coroutines_core(@NotNull Continuation<?> frame) {
        m61943y(frame, DebugCoroutineInfoImplKt.RUNNING);
    }

    public final void probeCoroutineSuspended$kotlinx_coroutines_core(@NotNull Continuation<?> frame) {
        m61943y(frame, DebugCoroutineInfoImplKt.SUSPENDED);
    }

    /* renamed from: q */
    public final void m61935q(CoroutineOwner<?> owner) {
        CoroutineStackFrame m61936r;
        capturedCoroutinesMap.remove(owner);
        CoroutineStackFrame lastObservedFrame$kotlinx_coroutines_core = owner.info.getLastObservedFrame$kotlinx_coroutines_core();
        if (lastObservedFrame$kotlinx_coroutines_core == null || (m61936r = m61936r(lastObservedFrame$kotlinx_coroutines_core)) == null) {
            return;
        }
        callerInfoCache.remove(m61936r);
    }

    /* renamed from: r */
    public final CoroutineStackFrame m61936r(CoroutineStackFrame coroutineStackFrame) {
        do {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return null;
            }
        } while (coroutineStackFrame.getStackTraceElement() == null);
        return coroutineStackFrame;
    }

    /* renamed from: s */
    public final <T extends Throwable> List<StackTraceElement> m61937s(T throwable) {
        StackTraceElement[] stackTrace = throwable.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        int length2 = stackTrace.length - 1;
        if (length2 >= 0) {
            while (true) {
                int i2 = length2 - 1;
                if (Intrinsics.areEqual(stackTrace[length2].getClassName(), "kotlin.coroutines.jvm.internal.DebugProbesKt")) {
                    i = length2;
                    break;
                }
                if (i2 < 0) {
                    break;
                }
                length2 = i2;
            }
        }
        int i3 = i + 1;
        if (!sanitizeStackTraces) {
            int i4 = length - i3;
            ArrayList arrayList = new ArrayList(i4);
            for (int i5 = 0; i5 < i4; i5++) {
                arrayList.add(stackTrace[i5 + i3]);
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList((length - i3) + 1);
        while (i3 < length) {
            if (m61931m(stackTrace[i3])) {
                arrayList2.add(stackTrace[i3]);
                int i6 = i3 + 1;
                while (i6 < length && m61931m(stackTrace[i6])) {
                    i6++;
                }
                int i7 = i6 - 1;
                int i8 = i7;
                while (i8 > i3 && stackTrace[i8].getFileName() == null) {
                    i8--;
                }
                if (i8 > i3 && i8 < i7) {
                    arrayList2.add(stackTrace[i8]);
                }
                arrayList2.add(stackTrace[i7]);
                i3 = i6;
            } else {
                arrayList2.add(stackTrace[i3]);
                i3++;
            }
        }
        return arrayList2;
    }

    public final void setEnableCreationStackTraces$kotlinx_coroutines_core(boolean z) {
        enableCreationStackTraces = z;
    }

    public final void setIgnoreCoroutinesWithEmptyContext(boolean z) {
        ignoreCoroutinesWithEmptyContext = z;
    }

    public final void setSanitizeStackTraces$kotlinx_coroutines_core(boolean z) {
        sanitizeStackTraces = z;
    }

    /* renamed from: t */
    public final void m61938t() {
        weakRefCleanerThread = ThreadsKt.thread$default(false, true, null, "Coroutines Debugger Cleaner", 0, new Function0<Unit>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$startWeakRefCleanerThread$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                ConcurrentWeakMap concurrentWeakMap;
                concurrentWeakMap = DebugProbesImpl.callerInfoCache;
                concurrentWeakMap.runWeakRefQueueCleaningLoopUntilInterrupted();
            }
        }, 21, null);
    }

    /* renamed from: u */
    public final void m61939u() {
        Thread thread = weakRefCleanerThread;
        if (thread == null) {
            return;
        }
        weakRefCleanerThread = null;
        thread.interrupt();
        thread.join();
    }

    public final void uninstall$kotlinx_coroutines_core() {
        Function1<Boolean, Unit> function1;
        if (!isInstalled$kotlinx_coroutines_debug()) {
            throw new IllegalStateException("Agent was not installed".toString());
        }
        if (C18173a.f98339a.decrementAndGet(f98337j) != 0) {
            return;
        }
        m61939u();
        capturedCoroutinesMap.clear();
        callerInfoCache.clear();
        if (AgentInstallationType.INSTANCE.isInstalledStatically$kotlinx_coroutines_core() || (function1 = dynamicAttach) == null) {
            return;
        }
        function1.invoke(Boolean.FALSE);
    }

    /* renamed from: v */
    public final StackTraceFrame m61940v(List<StackTraceElement> list) {
        StackTraceFrame stackTraceFrame = null;
        if (!list.isEmpty()) {
            ListIterator<StackTraceElement> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                stackTraceFrame = new StackTraceFrame(stackTraceFrame, listIterator.previous());
            }
        }
        return new StackTraceFrame(stackTraceFrame, ARTIFICIAL_FRAME);
    }

    /* renamed from: w */
    public final String m61941w(Object obj) {
        String m61948a;
        m61948a = DebugProbesImplKt.m61948a(obj.toString());
        return m61948a;
    }

    /* renamed from: x */
    public final void m61942x(CoroutineStackFrame frame, String state) {
        boolean z;
        if (isInstalled$kotlinx_coroutines_debug()) {
            ConcurrentWeakMap<CoroutineStackFrame, DebugCoroutineInfo> concurrentWeakMap = callerInfoCache;
            DebugCoroutineInfo remove = concurrentWeakMap.remove(frame);
            if (remove != null) {
                z = false;
            } else {
                CoroutineOwner<?> m61933o = m61933o(frame);
                if (m61933o == null || (remove = m61933o.info) == null) {
                    return;
                }
                CoroutineStackFrame lastObservedFrame$kotlinx_coroutines_core = remove.getLastObservedFrame$kotlinx_coroutines_core();
                CoroutineStackFrame m61936r = lastObservedFrame$kotlinx_coroutines_core != null ? m61936r(lastObservedFrame$kotlinx_coroutines_core) : null;
                if (m61936r != null) {
                    concurrentWeakMap.remove(m61936r);
                }
                z = true;
            }
            Intrinsics.checkNotNull(frame, "null cannot be cast to non-null type kotlin.coroutines.Continuation<*>");
            remove.updateState$kotlinx_coroutines_core(state, (Continuation) frame, z);
            CoroutineStackFrame m61936r2 = m61936r(frame);
            if (m61936r2 == null) {
                return;
            }
            concurrentWeakMap.put(m61936r2, remove);
        }
    }

    /* renamed from: y */
    public final void m61943y(Continuation<?> frame, String state) {
        if (isInstalled$kotlinx_coroutines_debug()) {
            if (ignoreCoroutinesWithEmptyContext && frame.getContext() == EmptyCoroutineContext.INSTANCE) {
                return;
            }
            if (Intrinsics.areEqual(state, DebugCoroutineInfoImplKt.RUNNING)) {
                CoroutineStackFrame coroutineStackFrame = frame instanceof CoroutineStackFrame ? (CoroutineStackFrame) frame : null;
                if (coroutineStackFrame == null) {
                    return;
                }
                m61942x(coroutineStackFrame, state);
                return;
            }
            CoroutineOwner<?> m61932n = m61932n(frame);
            if (m61932n == null) {
                return;
            }
            m61944z(m61932n, frame, state);
        }
    }

    /* renamed from: z */
    public final void m61944z(CoroutineOwner<?> owner, Continuation<?> frame, String state) {
        if (isInstalled$kotlinx_coroutines_debug()) {
            owner.info.updateState$kotlinx_coroutines_core(state, frame, true);
        }
    }
}
