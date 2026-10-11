package kotlinx.coroutines.channels;

import com.bumptech.glide.load.engine.GlideException;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.C14434t4;
import com.sunia.HTREnginev2.fel;
import com.sunia.HTREnginev2.k5o;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.internal.ConcurrentLinkedListKt;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.SegmentOrClosed;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectClause1Impl;
import kotlinx.coroutines.selects.SelectClause2;
import kotlinx.coroutines.selects.SelectClause2Impl;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.TrySelectDetailedResult;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Ì\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0002$>B8\u0012\u0007\u0010\u009f\u0001\u001a\u00020\t\u0012$\b\u0002\u0010¡\u0001\u001a\u001d\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0004\u0018\u00010.j\u000b\u0012\u0004\u0012\u00028\u0000\u0018\u0001` \u0001¢\u0006\u0006\bß\u0001\u0010à\u0001J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J9\u0010\r\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u000bH\u0082@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000eJ\"\u0010\u0010\u001a\u00020\u0004*\u00020\u000f2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J%\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u00002\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014JZ\u0010\u0019\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000f2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u00162\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u0016H\u0082\b¢\u0006\u0004\b\u0019\u0010\u001aJG\u0010\u001e\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJG\u0010 \u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b \u0010\u001fJ\u0010\u0010\"\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u000bH\u0003J\u0010\u0010$\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u000bH\u0002J\u001b\u0010%\u001a\u00020\u001c*\u00020\u001b2\u0006\u0010\u0003\u001a\u00028\u0000H\u0002¢\u0006\u0004\b%\u0010&J1\u0010(\u001a\u00028\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010'\u001a\u00020\u000bH\u0082@ø\u0001\u0000¢\u0006\u0004\b(\u0010)J\"\u0010*\u001a\u00020\u0004*\u00020\u000f2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0016\u0010\u0001\u001a\u00020\u00042\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0002J@\u0010,\u001a\b\u0012\u0004\u0012\u00028\u00000+2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010'\u001a\u00020\u000bH\u0082@ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b,\u0010)J\u001f\u0010-\u001a\u00020\u00042\u0012\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000+0\u0011H\u0002ø\u0001\u0000Jù\u0001\u00107\u001a\u00028\u0001\"\u0004\b\u0001\u0010,2\b\u0010\u0015\u001a\u0004\u0018\u00010\u001b2!\u00101\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(\u0003\u0012\u0004\u0012\u00028\u00010.2Q\u00105\u001aM\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(3\u0012\u0013\u0012\u00110\t¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(4\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b('\u0012\u0004\u0012\u00028\u0001022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u00162S\b\u0002\u00106\u001aM\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(3\u0012\u0013\u0012\u00110\t¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(4\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b('\u0012\u0004\u0012\u00028\u000102H\u0082\b¢\u0006\u0004\b7\u00108J`\u00109\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010'\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000f2!\u00101\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(\u0003\u0012\u0004\u0012\u00020\u00040.2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u0016H\u0082\bJ2\u0010:\u001a\u0004\u0018\u00010\u001b2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010'\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u001bH\u0002J2\u0010;\u001a\u0004\u0018\u00010\u001b2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010'\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u001bH\u0002J\"\u0010<\u001a\u00020\u001c*\u00020\u001b2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010=\u001a\u00020\u0004H\u0002J&\u0010?\u001a\u00020\u001c2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010>\u001a\u00020\u000bH\u0002J&\u0010@\u001a\u00020\u001c2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010>\u001a\u00020\u000bH\u0002J\u0012\u0010B\u001a\u00020\u00042\b\b\u0002\u0010A\u001a\u00020\u000bH\u0002J#\u0010E\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u00002\n\u0010D\u001a\u0006\u0012\u0002\b\u00030CH\u0002¢\u0006\u0004\bE\u0010FJ\u001e\u0010I\u001a\u0004\u0018\u00010\u001b2\b\u0010G\u001a\u0004\u0018\u00010\u001b2\b\u0010H\u001a\u0004\u0018\u00010\u001bH\u0002J\u001e\u0010J\u001a\u00020\u00042\n\u0010D\u001a\u0006\u0012\u0002\b\u00030C2\b\u0010G\u001a\u0004\u0018\u00010\u001bH\u0002J\u0014\u0010K\u001a\u00020\u00042\n\u0010D\u001a\u0006\u0012\u0002\b\u00030CH\u0002J\u001e\u0010L\u001a\u0004\u0018\u00010\u001b2\b\u0010G\u001a\u0004\u0018\u00010\u001b2\b\u0010H\u001a\u0004\u0018\u00010\u001bH\u0002J\u001e\u0010M\u001a\u0004\u0018\u00010\u001b2\b\u0010G\u001a\u0004\u0018\u00010\u001b2\b\u0010H\u001a\u0004\u0018\u00010\u001bH\u0002J\u001e\u0010N\u001a\u0004\u0018\u00010\u001b2\b\u0010G\u001a\u0004\u0018\u00010\u001b2\b\u0010H\u001a\u0004\u0018\u00010\u001bH\u0002J\b\u0010O\u001a\u00020\u0004H\u0002J\b\u0010P\u001a\u00020\u0004H\u0002J\b\u0010Q\u001a\u00020\u0004H\u0002J\b\u0010R\u001a\u00020\u0004H\u0002J\b\u0010S\u001a\u00020\u0004H\u0002J\u0016\u0010U\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010T\u001a\u00020\u000bH\u0002J\u0010\u0010V\u001a\u00020\u00042\u0006\u0010T\u001a\u00020\u000bH\u0002J\u000e\u0010W\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0002J\u0016\u0010Y\u001a\u00020\u000b2\f\u0010X\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0002J\u0016\u0010Z\u001a\u00020\u00042\f\u0010X\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0002J\u001e\u0010>\u001a\u00020\u00042\f\u0010X\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010[\u001a\u00020\u000bH\u0002J\f\u0010\\\u001a\u00020\u0004*\u00020\u000fH\u0002J\f\u0010]\u001a\u00020\u0004*\u00020\u000fH\u0002J\u0014\u0010_\u001a\u00020\u0004*\u00020\u000f2\u0006\u0010^\u001a\u00020\u001cH\u0002J\u0018\u0010\f\u001a\u00020\u001c2\u0006\u0010`\u001a\u00020\u000b2\u0006\u0010a\u001a\u00020\u001cH\u0002J&\u0010'\u001a\u00020\u001c2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010b\u001a\u00020\u000bH\u0002J&\u0010e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00072\u0006\u0010c\u001a\u00020\u000b2\f\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0002J&\u00104\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00072\u0006\u0010c\u001a\u00020\u000b2\f\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0002J.\u0010g\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00072\u0006\u0010c\u001a\u00020\u000b2\f\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010f\u001a\u00020\u000bH\u0002J\u001e\u0010h\u001a\u00020\u00042\u0006\u0010c\u001a\u00020\u000b2\f\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0002J\u0010\u0010j\u001a\u00020\u00042\u0006\u0010i\u001a\u00020\u000bH\u0002J\u0010\u0010k\u001a\u00020\u00042\u0006\u0010i\u001a\u00020\u000bH\u0002J\u001b\u0010l\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\bl\u0010\u0006J&\u0010o\u001a\b\u0012\u0004\u0012\u00020\u00040+2\u0006\u0010\u0003\u001a\u00028\u0000H\u0016ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\bm\u0010nJ\u001b\u0010q\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00028\u0000H\u0090@ø\u0001\u0000¢\u0006\u0004\bp\u0010\u0006Jì\u0001\u0010t\u001a\u00028\u0001\"\u0004\b\u0001\u0010,2\u0006\u0010\u0003\u001a\u00028\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u001b2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00010\u00162<\u00105\u001a8\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(3\u0012\u0013\u0012\u00110\t¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(4\u0012\u0004\u0012\u00028\u00010r2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u00162h\b\u0002\u00106\u001ab\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(3\u0012\u0013\u0012\u00110\t¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(4\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00028\u00010sH\u0084\b¢\u0006\u0004\bt\u0010uJ\u000f\u0010x\u001a\u00020\u001cH\u0010¢\u0006\u0004\bv\u0010wJ\b\u0010y\u001a\u00020\u0004H\u0014J\b\u0010z\u001a\u00020\u0004H\u0014J\u0013\u0010{\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b{\u0010|J\"\u0010~\u001a\b\u0012\u0004\u0012\u00028\u00000+H\u0096@ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b}\u0010|J \u0010\u0081\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000+H\u0016ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0005\b\u007f\u0010\u0080\u0001J\u0012\u0010\u0083\u0001\u001a\u00020\u00042\u0007\u0010\u0082\u0001\u001a\u00020\u000bH\u0004J\u001a\u0010\u0086\u0001\u001a\u00020\u00042\u0006\u0010b\u001a\u00020\u000bH\u0000¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J\u001f\u0010\u0087\u0001\u001a\u00020\u00042\n\u0010D\u001a\u0006\u0012\u0002\b\u00030C2\b\u0010\u0003\u001a\u0004\u0018\u00010\u001bH\u0014J\u0011\u0010\u0089\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u0088\u0001H\u0096\u0002J\t\u0010\u008a\u0001\u001a\u00020\u0004H\u0014J\u0015\u0010\u008d\u0001\u001a\u00020\u001c2\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008b\u0001H\u0016J\u0013\u0010\u008e\u0001\u001a\u00020\u001c2\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008b\u0001J\u0007\u0010\u008e\u0001\u001a\u00020\u0004J\u001a\u0010\u008e\u0001\u001a\u00020\u00042\u0011\u0010\u008c\u0001\u001a\f\u0018\u00010\u008f\u0001j\u0005\u0018\u0001`\u0090\u0001J\u001e\u0010\u0093\u0001\u001a\u00020\u001c2\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008b\u0001H\u0010¢\u0006\u0006\b\u0091\u0001\u0010\u0092\u0001J\u001e\u0010\u0094\u0001\u001a\u00020\u001c2\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008b\u00012\u0007\u0010\u008e\u0001\u001a\u00020\u001cH\u0014J1\u0010\u0096\u0001\u001a\u00020\u00042&\u0010\u0095\u0001\u001a!\u0012\u0017\u0012\u0015\u0018\u00010\u008b\u0001¢\u0006\r\b/\u0012\t\b0\u0012\u0005\b\b(\u008c\u0001\u0012\u0004\u0012\u00020\u00040.H\u0016J\u0011\u0010\u0098\u0001\u001a\u00020\u001cH\u0000¢\u0006\u0005\b\u0097\u0001\u0010wJ\n\u0010\u009a\u0001\u001a\u00030\u0099\u0001H\u0016J\u0013\u0010\u009d\u0001\u001a\u00030\u0099\u0001H\u0000¢\u0006\u0006\b\u009b\u0001\u0010\u009c\u0001J\u0007\u0010\u009e\u0001\u001a\u00020\u0004R\u0015\u0010\u009f\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010\u0013R2\u0010¡\u0001\u001a\u001d\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0004\u0018\u00010.j\u000b\u0012\u0004\u0012\u00028\u0000\u0018\u0001` \u00018\u0000X\u0081\u0004¢\u0006\b\n\u0006\b¡\u0001\u0010¢\u0001R\u0083\u0001\u0010©\u0001\u001ag\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030C¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(D\u0012\u0016\u0012\u0014\u0018\u00010\u001b¢\u0006\r\b/\u0012\t\b0\u0012\u0005\b\b(£\u0001\u0012\u0016\u0012\u0014\u0018\u00010\u001b¢\u0006\r\b/\u0012\t\b0\u0012\u0005\b\b(¤\u0001\u0012\u0011\u0012\u000f\u0012\u0005\u0012\u00030\u008b\u0001\u0012\u0004\u0012\u00020\u00040.\u0018\u000102j\u0005\u0018\u0001`¥\u00018\u0002X\u0082\u0004¢\u0006\u000f\n\u0005\bS\u0010¦\u0001\u0012\u0006\b§\u0001\u0010¨\u0001R\u0017\u0010¬\u0001\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\b\u001a\u0006\bª\u0001\u0010«\u0001R\u0016\u0010®\u0001\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u00ad\u0001\u0010wR\u0018\u0010±\u0001\u001a\u00030\u008b\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\b¯\u0001\u0010°\u0001R\u001b\u0010´\u0001\u001a\u00020\u001c*\u00020\u000b8BX\u0082\u0004¢\u0006\b\u001a\u0006\b²\u0001\u0010³\u0001R\u001b\u0010¶\u0001\u001a\u00020\u001c*\u00020\u000b8BX\u0082\u0004¢\u0006\b\u001a\u0006\bµ\u0001\u0010³\u0001R\u0016\u0010[\u001a\u00020\u000b8@X\u0080\u0004¢\u0006\b\u001a\u0006\b·\u0001\u0010«\u0001R\u0017\u0010¹\u0001\u001a\u00020\u000b8@X\u0080\u0004¢\u0006\b\u001a\u0006\b¸\u0001\u0010«\u0001R2\u0010¾\u0001\u001a\u0015\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000º\u00018VX\u0096\u0004¢\u0006\u0010\u0012\u0006\b½\u0001\u0010¨\u0001\u001a\u0006\b»\u0001\u0010¼\u0001R&\u0010Ã\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000¿\u00018VX\u0096\u0004¢\u0006\u0010\u0012\u0006\bÂ\u0001\u0010¨\u0001\u001a\u0006\bÀ\u0001\u0010Á\u0001R/\u0010Æ\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000+0¿\u00018VX\u0096\u0004ø\u0001\u0000¢\u0006\u0010\u0012\u0006\bÅ\u0001\u0010¨\u0001\u001a\u0006\bÄ\u0001\u0010Á\u0001R(\u0010É\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00018\u00000¿\u00018VX\u0096\u0004¢\u0006\u0010\u0012\u0006\bÈ\u0001\u0010¨\u0001\u001a\u0006\bÇ\u0001\u0010Á\u0001R\u001a\u0010Ë\u0001\u001a\u0005\u0018\u00010\u008b\u00018DX\u0084\u0004¢\u0006\b\u001a\u0006\bÊ\u0001\u0010°\u0001R\u0018\u0010Í\u0001\u001a\u00030\u008b\u00018DX\u0084\u0004¢\u0006\b\u001a\u0006\bÌ\u0001\u0010°\u0001R\u0016\u0010Î\u0001\u001a\u00020\u001c8TX\u0094\u0004¢\u0006\u0007\u001a\u0005\bÎ\u0001\u0010wR\u001e\u0010Ï\u0001\u001a\u00020\u001c8VX\u0097\u0004¢\u0006\u000f\u0012\u0006\bÐ\u0001\u0010¨\u0001\u001a\u0005\bÏ\u0001\u0010wR\u001c\u0010a\u001a\u00020\u001c8VX\u0097\u0004¢\u0006\u000e\u0012\u0006\bÑ\u0001\u0010¨\u0001\u001a\u0004\ba\u0010wR\u001e\u0010Ò\u0001\u001a\u00020\u001c8VX\u0097\u0004¢\u0006\u000f\u0012\u0006\bÓ\u0001\u0010¨\u0001\u001a\u0005\bÒ\u0001\u0010wR\u0015\u0010Õ\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001b0Ô\u00018\u0002X\u0082\u0004R\r\u0010×\u0001\u001a\u00030Ö\u00018\u0002X\u0082\u0004R\u0019\u0010Ø\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070Ô\u00018\u0002X\u0082\u0004R\u0015\u0010Ù\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001b0Ô\u00018\u0002X\u0082\u0004R\r\u0010Ú\u0001\u001a\u00030Ö\u00018\u0002X\u0082\u0004R\u0019\u0010Û\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070Ô\u00018\u0002X\u0082\u0004R\r\u0010Ü\u0001\u001a\u00030Ö\u00018\u0002X\u0082\u0004R\u0019\u0010Ý\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070Ô\u00018\u0002X\u0082\u0004R\r\u0010Þ\u0001\u001a\u00030Ö\u00018\u0002X\u0082\u0004\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006á\u0001"}, m61528d2 = {"Lkotlinx/coroutines/channels/BufferedChannel;", "E", "Lkotlinx/coroutines/channels/Channel;", "element", "", "H", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ChannelSegment;", "segment", "", FirebaseAnalytics.Param.INDEX, "", "s", "e0", "(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/Waiter;", "K", "Lkotlinx/coroutines/CancellableContinuation;", "cont", "I", "(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V", "waiter", "Lkotlin/Function0;", "onRendezvousOrBuffered", "onClosed", "d0", "(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlinx/coroutines/Waiter;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "", "", "closed", "n0", "(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I", "o0", "curSendersAndCloseStatus", "f0", "curSenders", "a", "g0", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "r", "V", "(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "J", "Lkotlinx/coroutines/channels/ChannelResult;", "R", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "onElementRetrieved", "Lkotlin/Function3;", "segm", "i", "onSuspend", "onNoWaiterSuspend", "S", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "U", "l0", "m0", "h0", C6998g.f39679a, "b", "j0", "k0", "nAttempts", C4921e.f26528e, "Lkotlinx/coroutines/selects/SelectInstance;", "select", "G", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)V", "ignoredParam", "selectResult", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "W", "F", "L", "N", "M", "q", "B", "A", "z", C6997f.f39671c, "sendersCur", "e", "d", "c", "lastSegment", "y", "X", "sendersCounter", "Y", Constants.HASIDCALL_INDEX_SIG, EventHandlerManager.RECEIVER, "a0", "sendersAndCloseStatusCur", "isClosedForReceive", "globalIndex", "id", "startFrom", "j", "currentBufferEndCounter", C6999h.f39688c, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "value", "q0", "p0", "send", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "trySend", "sendBroadcast$kotlinx_coroutines_core", "sendBroadcast", "Lkotlin/Function2;", "Lkotlin/Function4;", "sendImpl", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "shouldSendSuspend$kotlinx_coroutines_core", Constants.BOOLEAN_VALUE_SIG, "shouldSendSuspend", "onReceiveEnqueued", "onReceiveDequeued", "receive", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "receiveCatching-JP2dKIU", "receiveCatching", "tryReceive-PtdJZtk", "()Ljava/lang/Object;", "tryReceive", "globalCellIndex", "dropFirstElementUntilTheSpecifiedCellIsInTheBuffer", "waitExpandBufferCompletion$kotlinx_coroutines_core", "(J)V", "waitExpandBufferCompletion", "registerSelectForSend", "Lkotlinx/coroutines/channels/ChannelIterator;", Constants.ITERATOR_PNAME, "onClosedIdempotent", "", "cause", "close", "cancel", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cancelImpl$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)Z", "cancelImpl", "closeOrCancelImpl", Constants.TRANSLET_OUTPUT_PNAME, "invokeOnClose", "hasElements$kotlinx_coroutines_core", "hasElements", "", "toString", "toStringDebug$kotlinx_coroutines_core", "()Ljava/lang/String;", "toStringDebug", "checkSegmentStructureInvariants", "capacity", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "onUndeliveredElement", "Lkotlin/jvm/functions/Function1;", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_PARAMVARIABLE_STRING, "internalResult", "Lkotlinx/coroutines/selects/OnCancellationConstructor;", "Lkotlin/jvm/functions/Function3;", "getOnUndeliveredElementReceiveCancellationConstructor$annotations", "()V", "onUndeliveredElementReceiveCancellationConstructor", "l", "()J", "bufferEndCounter", "v", "isRendezvousOrUnlimited", GoogleApiAvailabilityLight.f29016b, "()Ljava/lang/Throwable;", "receiveException", "u", "(J)Z", "isClosedForSend0", "t", "isClosedForReceive0", "getSendersCounter$kotlinx_coroutines_core", "getReceiversCounter$kotlinx_coroutines_core", "receiversCounter", "Lkotlinx/coroutines/selects/SelectClause2;", "getOnSend", "()Lkotlinx/coroutines/selects/SelectClause2;", "getOnSend$annotations", "onSend", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnReceive", "()Lkotlinx/coroutines/selects/SelectClause1;", "getOnReceive$annotations", "onReceive", "getOnReceiveCatching", "getOnReceiveCatching$annotations", "onReceiveCatching", "getOnReceiveOrNull", "getOnReceiveOrNull$annotations", "onReceiveOrNull", "getCloseCause", "closeCause", "getSendException", "sendException", "isConflatedDropOldest", "isClosedForSend", "isClosedForSend$annotations", "isClosedForReceive$annotations", "isEmpty", "isEmpty$annotations", "Lkotlinx/atomicfu/AtomicRef;", "_closeCause", "Lkotlinx/atomicfu/AtomicLong;", "bufferEnd", "bufferEndSegment", "closeHandler", "completedExpandBuffersAndPauseFlag", "receiveSegment", "receivers", "sendSegment", "sendersAndCloseStatus", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ILkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 7 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n+ 8 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 9 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 10 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 11 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,3055:1\n273#1,6:3058\n280#1,68:3065\n374#1,18:3156\n244#1:3174\n269#1,10:3175\n280#1,48:3186\n395#1:3234\n334#1,14:3235\n399#1,3:3250\n244#1:3263\n269#1,10:3264\n280#1,68:3275\n244#1:3353\n269#1,10:3354\n280#1,68:3365\n244#1:3437\n269#1,10:3438\n280#1,68:3449\n886#1,52:3519\n964#1,8:3575\n858#1:3583\n882#1,33:3584\n974#1:3617\n916#1,14:3618\n935#1,3:3633\n979#1,6:3636\n886#1,52:3650\n964#1,8:3706\n858#1:3714\n882#1,33:3715\n974#1:3748\n916#1,14:3749\n935#1,3:3764\n979#1,6:3767\n858#1:3782\n882#1,48:3783\n935#1,3:3832\n858#1:3835\n882#1,48:3836\n935#1,3:3885\n244#1:3897\n269#1,10:3898\n280#1,68:3909\n858#1:3978\n882#1,48:3979\n935#1,3:4028\n1#2:3056\n3038#3:3057\n3038#3:3064\n3038#3:3185\n3038#3:3274\n3038#3:3364\n3038#3:3436\n3038#3:3448\n3038#3:3518\n3038#3:3781\n3038#3:3888\n3038#3:3889\n3052#3:3890\n3052#3:3891\n3051#3:3892\n3051#3:3893\n3051#3:3894\n3052#3:3895\n3051#3:3896\n3038#3:3908\n3039#3:4031\n3038#3:4032\n3038#3:4033\n3038#3:4034\n3039#3:4035\n3038#3:4036\n3039#3:4059\n3038#3:4060\n3038#3:4061\n3039#3:4062\n3038#3:4112\n3039#3:4113\n3039#3:4114\n3039#3:4132\n3039#3:4133\n314#4,9:3133\n323#4,2:3150\n332#4,4:3152\n336#4,8:3253\n314#4,9:3344\n323#4,2:3434\n332#4,4:3571\n336#4,8:3642\n332#4,4:3702\n336#4,8:3773\n220#5:3142\n221#5:3145\n220#5:3146\n221#5:3149\n61#6,2:3143\n61#6,2:3147\n61#6,2:3261\n269#7:3249\n269#7:3343\n269#7:3433\n269#7:3517\n269#7:3977\n882#8:3632\n882#8:3763\n882#8:3831\n882#8:3884\n882#8:4027\n37#9,11:4037\n37#9,11:4048\n72#10,3:4063\n46#10,8:4066\n72#10,3:4074\n46#10,8:4077\n46#10,8:4085\n72#10,3:4093\n46#10,8:4096\n46#10,8:4104\n766#11:4115\n857#11,2:4116\n2310#11,14:4118\n766#11:4134\n857#11,2:4135\n2310#11,14:4137\n766#11:4151\n857#11,2:4152\n2310#11,14:4154\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n*L\n113#1:3058,6\n113#1:3065,68\n154#1:3156,18\n154#1:3174\n154#1:3175,10\n154#1:3186,48\n154#1:3234\n154#1:3235,14\n154#1:3250,3\n194#1:3263\n194#1:3264,10\n194#1:3275,68\n225#1:3353\n225#1:3354,10\n225#1:3365,68\n391#1:3437\n391#1:3438,10\n391#1:3449,68\n667#1:3519,52\n696#1:3575,8\n696#1:3583\n696#1:3584,33\n696#1:3617\n696#1:3618,14\n696#1:3633,3\n696#1:3636,6\n732#1:3650,52\n748#1:3706,8\n748#1:3714\n748#1:3715,33\n748#1:3748\n748#1:3749,14\n748#1:3764,3\n748#1:3767,6\n781#1:3782\n781#1:3783,48\n781#1:3832,3\n971#1:3835\n971#1:3836,48\n971#1:3885,3\n1464#1:3897\n1464#1:3898,10\n1464#1:3909,68\n1512#1:3978\n1512#1:3979,48\n1512#1:4028,3\n70#1:3057\n113#1:3064\n154#1:3185\n194#1:3274\n225#1:3364\n278#1:3436\n391#1:3448\n606#1:3518\n771#1:3781\n1007#1:3888\n1056#1:3889\n1374#1:3890\n1376#1:3891\n1406#1:3892\n1416#1:3893\n1425#1:3894\n1426#1:3895\n1433#1:3896\n1464#1:3908\n1865#1:4031\n1867#1:4032\n1869#1:4033\n1882#1:4034\n1893#1:4035\n1894#1:4036\n2196#1:4059\n2209#1:4060\n2219#1:4061\n2222#1:4062\n2539#1:4112\n2541#1:4113\n2566#1:4114\n2628#1:4132\n2629#1:4133\n134#1:3133,9\n134#1:3150,2\n153#1:3152,4\n153#1:3253,8\n221#1:3344,9\n221#1:3434,2\n695#1:3571,4\n695#1:3642,8\n746#1:3702,4\n746#1:3773,8\n138#1:3142\n138#1:3145\n141#1:3146\n141#1:3149\n138#1:3143,2\n141#1:3147,2\n183#1:3261,2\n154#1:3249\n194#1:3343\n225#1:3433\n391#1:3517\n1464#1:3977\n696#1:3632\n748#1:3763\n781#1:3831\n971#1:3884\n1512#1:4027\n2098#1:4037,11\n2153#1:4048,11\n2361#1:4063,3\n2361#1:4066,8\n2416#1:4074,3\n2416#1:4077,8\n2435#1:4085,8\n2465#1:4093,3\n2465#1:4096,8\n2526#1:4104,8\n2575#1:4115\n2575#1:4116,2\n2576#1:4118,14\n2640#1:4134\n2640#1:4135,2\n2641#1:4137,14\n2681#1:4151\n2681#1:4152,2\n2682#1:4154,14\n*E\n"})
/* loaded from: classes11.dex */
public class BufferedChannel<E> implements Channel<E> {

    /* renamed from: g */
    @NotNull
    public static final AtomicLongFieldUpdater f98228g = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus");

    /* renamed from: h */
    @NotNull
    public static final AtomicLongFieldUpdater f98229h = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers");

    /* renamed from: i */
    @NotNull
    public static final AtomicLongFieldUpdater f98230i = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd");

    /* renamed from: j */
    @NotNull
    public static final AtomicLongFieldUpdater f98231j = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag");

    /* renamed from: k */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98232k = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment");

    /* renamed from: l */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98233l = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment");

    /* renamed from: m */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98234m = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "bufferEndSegment");

    /* renamed from: n */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98235n = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "_closeCause");

    /* renamed from: o */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98236o = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "closeHandler");

    @Volatile
    @Nullable
    private volatile Object _closeCause;

    @Volatile
    private volatile long bufferEnd;

    @Volatile
    @Nullable
    private volatile Object bufferEndSegment;

    @Volatile
    @Nullable
    private volatile Object closeHandler;

    @Volatile
    private volatile long completedExpandBuffersAndPauseFlag;

    /* renamed from: e, reason: from kotlin metadata */
    public final int capacity;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public final Function3<SelectInstance<?>, Object, Object, Function1<Throwable, Unit>> onUndeliveredElementReceiveCancellationConstructor;

    @JvmField
    @Nullable
    public final Function1<E, Unit> onUndeliveredElement;

    @Volatile
    @Nullable
    private volatile Object receiveSegment;

    @Volatile
    private volatile long receivers;

    @Volatile
    @Nullable
    private volatile Object sendSegment;

    @Volatile
    private volatile long sendersAndCloseStatus;

    @SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n+ 2 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3055:1\n886#2,52:3056\n964#2,8:3112\n858#2:3120\n882#2,33:3121\n974#2:3154\n916#2,14:3155\n935#2,3:3170\n979#2,6:3173\n332#3,4:3108\n336#3,8:3179\n882#4:3169\n61#5,2:3187\n61#5,2:3190\n1#6:3189\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n*L\n1590#1:3056,52\n1627#1:3112,8\n1627#1:3120\n1627#1:3121,33\n1627#1:3154\n1627#1:3155,14\n1627#1:3170,3\n1627#1:3173,6\n1625#1:3108,4\n1625#1:3179,8\n1627#1:3169\n1663#1:3187,2\n1708#1:3190,2\n*E\n"})
    /* renamed from: kotlinx.coroutines.channels.BufferedChannel$a */
    /* loaded from: classes11.dex */
    public final class C18163a implements ChannelIterator<E>, Waiter {

        /* renamed from: e */
        @Nullable
        public Object f98239e;

        /* renamed from: f */
        @Nullable
        public CancellableContinuationImpl<? super Boolean> f98240f;

        public C18163a() {
            Symbol symbol;
            symbol = BufferedChannelKt.f98272v;
            this.f98239e = symbol;
        }

        /* renamed from: e */
        public final Object m61793e(ChannelSegment<E> channelSegment, int i, long j, Continuation<? super Boolean> continuation) {
            Continuation intercepted;
            Symbol symbol;
            Symbol symbol2;
            Boolean boxBoolean;
            Symbol symbol3;
            Symbol symbol4;
            Symbol symbol5;
            Object coroutine_suspended;
            BufferedChannel<E> bufferedChannel = BufferedChannel.this;
            intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
            CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(intercepted);
            try {
                this.f98240f = orCreateCancellableContinuation;
                Object m61772l0 = bufferedChannel.m61772l0(channelSegment, i, j, this);
                symbol = BufferedChannelKt.f98263m;
                if (m61772l0 == symbol) {
                    bufferedChannel.m61737J(this, channelSegment, i);
                } else {
                    symbol2 = BufferedChannelKt.f98265o;
                    Function1<Throwable, Unit> function1 = null;
                    if (m61772l0 == symbol2) {
                        if (j < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                            channelSegment.cleanPrev();
                        }
                        ChannelSegment channelSegment2 = (ChannelSegment) BufferedChannel.f98233l.get(bufferedChannel);
                        while (true) {
                            if (bufferedChannel.isClosedForReceive()) {
                                m61795g();
                                break;
                            }
                            long andIncrement = BufferedChannel.f98229h.getAndIncrement(bufferedChannel);
                            int i2 = BufferedChannelKt.SEGMENT_SIZE;
                            long j2 = andIncrement / i2;
                            int i3 = (int) (andIncrement % i2);
                            if (channelSegment2.id != j2) {
                                ChannelSegment m61765i = bufferedChannel.m61765i(j2, channelSegment2);
                                if (m61765i != null) {
                                    channelSegment2 = m61765i;
                                }
                            }
                            Object m61772l02 = bufferedChannel.m61772l0(channelSegment2, i3, andIncrement, this);
                            symbol3 = BufferedChannelKt.f98263m;
                            if (m61772l02 == symbol3) {
                                bufferedChannel.m61737J(this, channelSegment2, i3);
                                break;
                            }
                            symbol4 = BufferedChannelKt.f98265o;
                            if (m61772l02 != symbol4) {
                                symbol5 = BufferedChannelKt.f98264n;
                                if (m61772l02 == symbol5) {
                                    throw new IllegalStateException("unexpected".toString());
                                }
                                channelSegment2.cleanPrev();
                                this.f98239e = m61772l02;
                                this.f98240f = null;
                                boxBoolean = Boxing.boxBoolean(true);
                                Function1<E, Unit> function12 = bufferedChannel.onUndeliveredElement;
                                if (function12 != null) {
                                    function1 = OnUndeliveredElementKt.bindCancellationFun(function12, m61772l02, orCreateCancellableContinuation.getContext());
                                }
                            } else if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                                channelSegment2.cleanPrev();
                            }
                        }
                    } else {
                        channelSegment.cleanPrev();
                        this.f98239e = m61772l0;
                        this.f98240f = null;
                        boxBoolean = Boxing.boxBoolean(true);
                        Function1<E, Unit> function13 = bufferedChannel.onUndeliveredElement;
                        if (function13 != null) {
                            function1 = OnUndeliveredElementKt.bindCancellationFun(function13, m61772l0, orCreateCancellableContinuation.getContext());
                        }
                    }
                    orCreateCancellableContinuation.resume(boxBoolean, function1);
                }
                Object result = orCreateCancellableContinuation.getResult();
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (result == coroutine_suspended) {
                    DebugProbesKt.probeCoroutineSuspended(continuation);
                }
                return result;
            } catch (Throwable th) {
                orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                throw th;
            }
        }

        /* renamed from: f */
        public final boolean m61794f() {
            this.f98239e = BufferedChannelKt.getCHANNEL_CLOSED();
            Throwable closeCause = BufferedChannel.this.getCloseCause();
            if (closeCause == null) {
                return false;
            }
            throw StackTraceRecoveryKt.recoverStackTrace(closeCause);
        }

        /* renamed from: g */
        public final void m61795g() {
            CancellableContinuationImpl<? super Boolean> cancellableContinuationImpl = this.f98240f;
            Intrinsics.checkNotNull(cancellableContinuationImpl);
            this.f98240f = null;
            this.f98239e = BufferedChannelKt.getCHANNEL_CLOSED();
            Throwable closeCause = BufferedChannel.this.getCloseCause();
            if (closeCause == null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m72621constructorimpl(Boolean.FALSE));
            } else {
                Result.Companion companion2 = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m72621constructorimpl(ResultKt.createFailure(closeCause)));
            }
        }

        /* renamed from: h */
        public final boolean m61796h(E e) {
            boolean m61807i;
            CancellableContinuationImpl<? super Boolean> cancellableContinuationImpl = this.f98240f;
            Intrinsics.checkNotNull(cancellableContinuationImpl);
            this.f98240f = null;
            this.f98239e = e;
            Boolean bool = Boolean.TRUE;
            Function1<E, Unit> function1 = BufferedChannel.this.onUndeliveredElement;
            m61807i = BufferedChannelKt.m61807i(cancellableContinuationImpl, bool, function1 != null ? OnUndeliveredElementKt.bindCancellationFun(function1, e, cancellableContinuationImpl.getContext()) : null);
            return m61807i;
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        @Nullable
        public Object hasNext(@NotNull Continuation<? super Boolean> continuation) {
            ChannelSegment<E> channelSegment;
            Symbol symbol;
            Symbol symbol2;
            Symbol symbol3;
            BufferedChannel<E> bufferedChannel = BufferedChannel.this;
            ChannelSegment<E> channelSegment2 = (ChannelSegment) BufferedChannel.f98233l.get(bufferedChannel);
            while (!bufferedChannel.isClosedForReceive()) {
                long andIncrement = BufferedChannel.f98229h.getAndIncrement(bufferedChannel);
                int i = BufferedChannelKt.SEGMENT_SIZE;
                long j = andIncrement / i;
                int i2 = (int) (andIncrement % i);
                if (channelSegment2.id != j) {
                    ChannelSegment<E> m61765i = bufferedChannel.m61765i(j, channelSegment2);
                    if (m61765i == null) {
                        continue;
                    } else {
                        channelSegment = m61765i;
                    }
                } else {
                    channelSegment = channelSegment2;
                }
                Object m61772l0 = bufferedChannel.m61772l0(channelSegment, i2, andIncrement, null);
                symbol = BufferedChannelKt.f98263m;
                if (m61772l0 == symbol) {
                    throw new IllegalStateException("unreachable".toString());
                }
                symbol2 = BufferedChannelKt.f98265o;
                if (m61772l0 != symbol2) {
                    symbol3 = BufferedChannelKt.f98264n;
                    if (m61772l0 == symbol3) {
                        return m61793e(channelSegment, i2, andIncrement, continuation);
                    }
                    channelSegment.cleanPrev();
                    this.f98239e = m61772l0;
                    return Boxing.boxBoolean(true);
                }
                if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
                channelSegment2 = channelSegment;
            }
            return Boxing.boxBoolean(m61794f());
        }

        /* renamed from: i */
        public final void m61797i() {
            CancellableContinuationImpl<? super Boolean> cancellableContinuationImpl = this.f98240f;
            Intrinsics.checkNotNull(cancellableContinuationImpl);
            this.f98240f = null;
            this.f98239e = BufferedChannelKt.getCHANNEL_CLOSED();
            Throwable closeCause = BufferedChannel.this.getCloseCause();
            if (closeCause == null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m72621constructorimpl(Boolean.FALSE));
            } else {
                Result.Companion companion2 = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m72621constructorimpl(ResultKt.createFailure(closeCause)));
            }
        }

        @Override // kotlinx.coroutines.Waiter
        public void invokeOnCancellation(@NotNull Segment<?> segment, int i) {
            CancellableContinuationImpl<? super Boolean> cancellableContinuationImpl = this.f98240f;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.invokeOnCancellation(segment, i);
            }
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.3.0, binary compatibility with versions <= 1.2.x")
        @JvmName(name = Constants.NEXT)
        public /* synthetic */ Object next(Continuation continuation) {
            return ChannelIterator.DefaultImpls.next(this, continuation);
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public E next() {
            Symbol symbol;
            Symbol symbol2;
            E e = (E) this.f98239e;
            symbol = BufferedChannelKt.f98272v;
            if (e != symbol) {
                symbol2 = BufferedChannelKt.f98272v;
                this.f98239e = symbol2;
                if (e != BufferedChannelKt.getCHANNEL_CLOSED()) {
                    return e;
                }
                throw StackTraceRecoveryKt.recoverStackTrace(BufferedChannel.this.m61774n());
            }
            throw new IllegalStateException("`hasNext()` has not been invoked".toString());
        }
    }

    /* renamed from: kotlinx.coroutines.channels.BufferedChannel$b */
    /* loaded from: classes11.dex */
    public static final class C18164b implements Waiter {

        /* renamed from: e */
        @NotNull
        public final CancellableContinuation<Boolean> f98242e;

        /* renamed from: f */
        public final /* synthetic */ CancellableContinuationImpl<Boolean> f98243f;

        /* JADX WARN: Multi-variable type inference failed */
        public C18164b(@NotNull CancellableContinuation<? super Boolean> cancellableContinuation) {
            this.f98242e = cancellableContinuation;
            Intrinsics.checkNotNull(cancellableContinuation, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlin.Boolean>");
            this.f98243f = (CancellableContinuationImpl) cancellableContinuation;
        }

        @NotNull
        /* renamed from: a */
        public final CancellableContinuation<Boolean> m61798a() {
            return this.f98242e;
        }

        @Override // kotlinx.coroutines.Waiter
        public void invokeOnCancellation(@NotNull Segment<?> segment, int i) {
            this.f98243f.invokeOnCancellation(segment, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [kotlin.jvm.functions.Function1<? super E, kotlin.Unit>, kotlin.jvm.functions.Function1<E, kotlin.Unit>] */
    public BufferedChannel(int i, @Nullable Function1<? super E, Unit> function1) {
        long m61806h;
        Symbol symbol;
        this.capacity = i;
        this.onUndeliveredElement = function1;
        if (i >= 0) {
            m61806h = BufferedChannelKt.m61806h(i);
            this.bufferEnd = m61806h;
            this.completedExpandBuffersAndPauseFlag = m61771l();
            ChannelSegment channelSegment = new ChannelSegment(0L, null, this, 3);
            this.sendSegment = channelSegment;
            this.receiveSegment = channelSegment;
            if (m61785v()) {
                channelSegment = BufferedChannelKt.f98251a;
                Intrinsics.checkNotNull(channelSegment, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
            }
            this.bufferEndSegment = channelSegment;
            this.onUndeliveredElementReceiveCancellationConstructor = function1 != 0 ? new Function3<SelectInstance<?>, Object, Object, Function1<? super Throwable, ? extends Unit>>(this) { // from class: kotlinx.coroutines.channels.BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1
                final /* synthetic */ BufferedChannel<E> this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function3
                @NotNull
                public final Function1<Throwable, Unit> invoke(@NotNull final SelectInstance<?> selectInstance, @Nullable Object obj, @Nullable final Object obj2) {
                    final BufferedChannel<E> bufferedChannel = this.this$0;
                    return new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.channels.BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                            invoke2(th);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(@NotNull Throwable th) {
                            if (obj2 != BufferedChannelKt.getCHANNEL_CLOSED()) {
                                OnUndeliveredElementKt.callUndeliveredElement(bufferedChannel.onUndeliveredElement, obj2, selectInstance.getContext());
                            }
                        }
                    };
                }
            } : null;
            symbol = BufferedChannelKt.f98275y;
            this._closeCause = symbol;
            return;
        }
        throw new IllegalArgumentException(("Invalid channel capacity: " + i + ", should be >=0").toString());
    }

    /* renamed from: P */
    public static /* synthetic */ <E> Object m61720P(BufferedChannel<E> bufferedChannel, Continuation<? super E> continuation) {
        ChannelSegment<E> channelSegment;
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        ChannelSegment<E> channelSegment2 = (ChannelSegment) f98233l.get(bufferedChannel);
        while (!bufferedChannel.isClosedForReceive()) {
            long andIncrement = f98229h.getAndIncrement(bufferedChannel);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j = andIncrement / i;
            int i2 = (int) (andIncrement % i);
            if (channelSegment2.id != j) {
                ChannelSegment<E> m61765i = bufferedChannel.m61765i(j, channelSegment2);
                if (m61765i == null) {
                    continue;
                } else {
                    channelSegment = m61765i;
                }
            } else {
                channelSegment = channelSegment2;
            }
            Object m61772l0 = bufferedChannel.m61772l0(channelSegment, i2, andIncrement, null);
            symbol = BufferedChannelKt.f98263m;
            if (m61772l0 == symbol) {
                throw new IllegalStateException("unexpected".toString());
            }
            symbol2 = BufferedChannelKt.f98265o;
            if (m61772l0 != symbol2) {
                symbol3 = BufferedChannelKt.f98264n;
                if (m61772l0 == symbol3) {
                    return bufferedChannel.m61746V(channelSegment, i2, andIncrement, continuation);
                }
                channelSegment.cleanPrev();
                return m61772l0;
            }
            if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                channelSegment.cleanPrev();
            }
            channelSegment2 = channelSegment;
        }
        throw StackTraceRecoveryKt.recoverStackTrace(bufferedChannel.m61774n());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* renamed from: Q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ <E> java.lang.Object m61721Q(kotlinx.coroutines.channels.BufferedChannel<E> r14, kotlin.coroutines.Continuation<? super kotlinx.coroutines.channels.ChannelResult<? extends E>> r15) {
        /*
            boolean r0 = r15 instanceof kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1
            if (r0 == 0) goto L13
            r0 = r15
            kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1 r0 = (kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1 r0 = new kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1
            r0.<init>(r14, r15)
        L18:
            r6 = r0
            java.lang.Object r15 = r6.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.ResultKt.throwOnFailure(r15)
            kotlinx.coroutines.channels.ChannelResult r15 = (kotlinx.coroutines.channels.ChannelResult) r15
            java.lang.Object r14 = r15.getHolder()
            goto Lb6
        L31:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L39:
            kotlin.ResultKt.throwOnFailure(r15)
            r15 = 0
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = access$getReceiveSegment$FU$p()
            java.lang.Object r1 = r1.get(r14)
            kotlinx.coroutines.channels.ChannelSegment r1 = (kotlinx.coroutines.channels.ChannelSegment) r1
        L47:
            boolean r3 = r14.isClosedForReceive()
            if (r3 == 0) goto L59
            kotlinx.coroutines.channels.ChannelResult$Companion r15 = kotlinx.coroutines.channels.ChannelResult.INSTANCE
            java.lang.Throwable r14 = r14.getCloseCause()
            java.lang.Object r14 = r15.m74168closedJP2dKIU(r14)
            goto Lb6
        L59:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r3 = access$getReceivers$FU$p()
            long r4 = r3.getAndIncrement(r14)
            int r3 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            long r7 = (long) r3
            long r7 = r4 / r7
            long r9 = (long) r3
            long r9 = r4 % r9
            int r3 = (int) r9
            long r9 = r1.id
            int r9 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r9 == 0) goto L79
            kotlinx.coroutines.channels.ChannelSegment r7 = access$findSegmentReceive(r14, r7, r1)
            if (r7 != 0) goto L77
            goto L47
        L77:
            r13 = r7
            goto L7a
        L79:
            r13 = r1
        L7a:
            r7 = r14
            r8 = r13
            r9 = r3
            r10 = r4
            r12 = r15
            java.lang.Object r1 = access$updateCellReceive(r7, r8, r9, r10, r12)
            kotlinx.coroutines.internal.Symbol r7 = kotlinx.coroutines.channels.BufferedChannelKt.access$getSUSPEND$p()
            if (r1 == r7) goto Lb7
            kotlinx.coroutines.internal.Symbol r7 = kotlinx.coroutines.channels.BufferedChannelKt.access$getFAILED$p()
            if (r1 != r7) goto L9c
            long r7 = r14.getSendersCounter$kotlinx_coroutines_core()
            int r1 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r1 >= 0) goto L9a
            r13.cleanPrev()
        L9a:
            r1 = r13
            goto L47
        L9c:
            kotlinx.coroutines.internal.Symbol r15 = kotlinx.coroutines.channels.BufferedChannelKt.access$getSUSPEND_NO_WAITER$p()
            if (r1 != r15) goto Lad
            r6.label = r2
            r1 = r14
            r2 = r13
            java.lang.Object r14 = r1.m61743R(r2, r3, r4, r6)
            if (r14 != r0) goto Lb6
            return r0
        Lad:
            r13.cleanPrev()
            kotlinx.coroutines.channels.ChannelResult$Companion r14 = kotlinx.coroutines.channels.ChannelResult.INSTANCE
            java.lang.Object r14 = r14.m74170successJP2dKIU(r1)
        Lb6:
            return r14
        Lb7:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "unexpected"
            java.lang.String r15 = r15.toString()
            r14.<init>(r15)
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.m61721Q(kotlinx.coroutines.channels.BufferedChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* renamed from: T */
    public static /* synthetic */ Object m61722T(BufferedChannel bufferedChannel, Object obj, Function1 function1, Function3 function3, Function0 function0, Function3 function32, int i, Object obj2) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: receiveImpl");
        }
        if ((i & 16) != 0) {
            function32 = new Function3() { // from class: kotlinx.coroutines.channels.BufferedChannel$receiveImpl$1
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Object invoke(Object obj3, Object obj4, Object obj5) {
                    return invoke((ChannelSegment) obj3, ((Number) obj4).intValue(), ((Number) obj5).longValue());
                }

                @NotNull
                public final Void invoke(@NotNull ChannelSegment<E> channelSegment, int i2, long j) {
                    throw new IllegalStateException("unexpected".toString());
                }
            };
        }
        ChannelSegment channelSegment = (ChannelSegment) f98233l.get(bufferedChannel);
        while (!bufferedChannel.isClosedForReceive()) {
            long andIncrement = f98229h.getAndIncrement(bufferedChannel);
            int i2 = BufferedChannelKt.SEGMENT_SIZE;
            long j = andIncrement / i2;
            int i3 = (int) (andIncrement % i2);
            if (channelSegment.id != j) {
                ChannelSegment m61765i = bufferedChannel.m61765i(j, channelSegment);
                if (m61765i == null) {
                    continue;
                } else {
                    channelSegment = m61765i;
                }
            }
            Object m61772l0 = bufferedChannel.m61772l0(channelSegment, i3, andIncrement, obj);
            symbol = BufferedChannelKt.f98263m;
            if (m61772l0 == symbol) {
                Waiter waiter = obj instanceof Waiter ? (Waiter) obj : null;
                if (waiter != null) {
                    bufferedChannel.m61737J(waiter, channelSegment, i3);
                }
                return function3.invoke(channelSegment, Integer.valueOf(i3), Long.valueOf(andIncrement));
            }
            symbol2 = BufferedChannelKt.f98265o;
            if (m61772l0 != symbol2) {
                symbol3 = BufferedChannelKt.f98264n;
                if (m61772l0 == symbol3) {
                    return function32.invoke(channelSegment, Integer.valueOf(i3), Long.valueOf(andIncrement));
                }
                channelSegment.cleanPrev();
                return function1.invoke(m61772l0);
            }
            if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                channelSegment.cleanPrev();
            }
        }
        return function0.invoke();
    }

    /* renamed from: b0 */
    public static /* synthetic */ <E> Object m61723b0(BufferedChannel<E> bufferedChannel, E e, Continuation<? super Unit> continuation) {
        ChannelSegment<E> channelSegment;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        Object coroutine_suspended3;
        Object coroutine_suspended4;
        ChannelSegment<E> channelSegment2 = (ChannelSegment) f98232k.get(bufferedChannel);
        while (true) {
            long andIncrement = f98228g.getAndIncrement(bufferedChannel);
            long j = andIncrement & BufferedChannelKt.f98248E;
            boolean m61784u = bufferedChannel.m61784u(andIncrement);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = j / i;
            int i2 = (int) (j % i);
            if (channelSegment2.id != j2) {
                ChannelSegment<E> m61767j = bufferedChannel.m61767j(j2, channelSegment2);
                if (m61767j != null) {
                    channelSegment = m61767j;
                } else if (m61784u) {
                    Object m61735H = bufferedChannel.m61735H(e, continuation);
                    coroutine_suspended4 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (m61735H == coroutine_suspended4) {
                        return m61735H;
                    }
                }
            } else {
                channelSegment = channelSegment2;
            }
            int m61775n0 = bufferedChannel.m61775n0(channelSegment, i2, e, j, null, m61784u);
            if (m61775n0 == 0) {
                channelSegment.cleanPrev();
                break;
            }
            if (m61775n0 == 1) {
                break;
            }
            if (m61775n0 != 2) {
                if (m61775n0 == 3) {
                    Object m61758e0 = bufferedChannel.m61758e0(channelSegment, i2, e, j, continuation);
                    coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (m61758e0 == coroutine_suspended2) {
                        return m61758e0;
                    }
                } else if (m61775n0 != 4) {
                    if (m61775n0 == 5) {
                        channelSegment.cleanPrev();
                    }
                    channelSegment2 = channelSegment;
                } else {
                    if (j < bufferedChannel.getReceiversCounter$kotlinx_coroutines_core()) {
                        channelSegment.cleanPrev();
                    }
                    Object m61735H2 = bufferedChannel.m61735H(e, continuation);
                    coroutine_suspended3 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (m61735H2 == coroutine_suspended3) {
                        return m61735H2;
                    }
                }
            } else if (m61784u) {
                channelSegment.onSlotCleaned();
                Object m61735H3 = bufferedChannel.m61735H(e, continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (m61735H3 == coroutine_suspended) {
                    return m61735H3;
                }
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b6, code lost:
    
        r0 = kotlin.Result.INSTANCE;
        r9.resumeWith(kotlin.Result.m72621constructorimpl(kotlin.coroutines.jvm.internal.Boxing.boxBoolean(true)));
     */
    /* renamed from: c0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ <E> java.lang.Object m61724c0(kotlinx.coroutines.channels.BufferedChannel<E> r18, E r19, kotlin.coroutines.Continuation<? super java.lang.Boolean> r20) {
        /*
            r8 = r18
            kotlinx.coroutines.CancellableContinuationImpl r9 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r20)
            r10 = 1
            r9.<init>(r0, r10)
            r9.initCancellability()
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r0 = r8.onUndeliveredElement
            r11 = 0
            if (r0 != 0) goto L16
            r0 = r10
            goto L17
        L16:
            r0 = r11
        L17:
            if (r0 == 0) goto Ld1
            kotlinx.coroutines.channels.BufferedChannel$b r12 = new kotlinx.coroutines.channels.BufferedChannel$b
            r12.<init>(r9)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = access$getSendSegment$FU$p()
            java.lang.Object r0 = r0.get(r8)
            kotlinx.coroutines.channels.ChannelSegment r0 = (kotlinx.coroutines.channels.ChannelSegment) r0
        L28:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = access$getSendersAndCloseStatus$FU$p()
            long r1 = r1.getAndIncrement(r8)
            r3 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            long r13 = r1 & r3
            boolean r15 = access$isClosedForSend0(r8, r1)
            int r1 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            long r2 = (long) r1
            long r2 = r13 / r2
            long r4 = (long) r1
            long r4 = r13 % r4
            int r7 = (int) r4
            long r4 = r0.id
            int r1 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r1 == 0) goto L55
            kotlinx.coroutines.channels.ChannelSegment r1 = access$findSegmentSend(r8, r2, r0)
            if (r1 != 0) goto L53
            if (r15 == 0) goto L28
            goto L9b
        L53:
            r6 = r1
            goto L56
        L55:
            r6 = r0
        L56:
            r0 = r18
            r1 = r6
            r2 = r7
            r3 = r19
            r4 = r13
            r16 = r6
            r6 = r12
            r17 = r7
            r7 = r15
            int r0 = access$updateCellSend(r0, r1, r2, r3, r4, r6, r7)
            if (r0 == 0) goto Lb1
            if (r0 == r10) goto Lb6
            r1 = 2
            if (r0 == r1) goto L96
            r1 = 3
            if (r0 == r1) goto L8a
            r1 = 4
            if (r0 == r1) goto L7e
            r1 = 5
            if (r0 == r1) goto L78
            goto L7b
        L78:
            r16.cleanPrev()
        L7b:
            r0 = r16
            goto L28
        L7e:
            long r0 = r18.getReceiversCounter$kotlinx_coroutines_core()
            int r0 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1))
            if (r0 >= 0) goto L9b
            r16.cleanPrev()
            goto L9b
        L8a:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "unexpected"
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L96:
            if (r15 == 0) goto La9
            r16.onSlotCleaned()
        L9b:
            kotlin.Result$Companion r0 = kotlin.Result.INSTANCE
            java.lang.Boolean r0 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r11)
            java.lang.Object r0 = kotlin.Result.m72621constructorimpl(r0)
            r9.resumeWith(r0)
            goto Lc3
        La9:
            r1 = r16
            r0 = r17
            access$prepareSenderForSuspension(r8, r12, r1, r0)
            goto Lc3
        Lb1:
            r1 = r16
            r1.cleanPrev()
        Lb6:
            kotlin.Result$Companion r0 = kotlin.Result.INSTANCE
            java.lang.Boolean r0 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r10)
            java.lang.Object r0 = kotlin.Result.m72621constructorimpl(r0)
            r9.resumeWith(r0)
        Lc3:
            java.lang.Object r0 = r9.getResult()
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r0 != r1) goto Ld0
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r20)
        Ld0:
            return r0
        Ld1:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "the `onUndeliveredElement` feature is unsupported for `sendBroadcast(e)`"
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.m61724c0(kotlinx.coroutines.channels.BufferedChannel, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ void getOnReceive$annotations() {
    }

    public static /* synthetic */ void getOnReceiveCatching$annotations() {
    }

    public static /* synthetic */ void getOnReceiveOrNull$annotations() {
    }

    public static /* synthetic */ void getOnSend$annotations() {
    }

    @ExperimentalCoroutinesApi
    public static /* synthetic */ void isClosedForReceive$annotations() {
    }

    @ExperimentalCoroutinesApi
    public static /* synthetic */ void isClosedForSend$annotations() {
    }

    @ExperimentalCoroutinesApi
    public static /* synthetic */ void isEmpty$annotations() {
    }

    /* renamed from: m */
    public static /* synthetic */ void m61725m() {
    }

    /* renamed from: p */
    public static /* synthetic */ void m61726p(BufferedChannel bufferedChannel, long j, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts");
        }
        if ((i & 1) != 0) {
            j = 1;
        }
        bufferedChannel.m61776o(j);
    }

    public static /* synthetic */ Object sendImpl$default(BufferedChannel bufferedChannel, Object obj, Object obj2, Function0 function0, Function2 function2, Function0 function02, Function4 function4, int i, Object obj3) {
        ChannelSegment channelSegment;
        if (obj3 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendImpl");
        }
        Function4 function42 = (i & 32) != 0 ? new Function4() { // from class: kotlinx.coroutines.channels.BufferedChannel$sendImpl$1
            @Override // kotlin.jvm.functions.Function4
            public /* bridge */ /* synthetic */ Object invoke(Object obj4, Object obj5, Object obj6, Object obj7) {
                return invoke((ChannelSegment<int>) obj4, ((Number) obj5).intValue(), (int) obj6, ((Number) obj7).longValue());
            }

            @NotNull
            public final Void invoke(@NotNull ChannelSegment<E> channelSegment2, int i2, E e, long j) {
                throw new IllegalStateException("unexpected".toString());
            }
        } : function4;
        ChannelSegment channelSegment2 = (ChannelSegment) f98232k.get(bufferedChannel);
        while (true) {
            long andIncrement = f98228g.getAndIncrement(bufferedChannel);
            long j = andIncrement & BufferedChannelKt.f98248E;
            boolean m61784u = bufferedChannel.m61784u(andIncrement);
            int i2 = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = j / i2;
            int i3 = (int) (j % i2);
            if (channelSegment2.id != j2) {
                ChannelSegment m61767j = bufferedChannel.m61767j(j2, channelSegment2);
                if (m61767j != null) {
                    channelSegment = m61767j;
                } else if (m61784u) {
                    return function02.invoke();
                }
            } else {
                channelSegment = channelSegment2;
            }
            int m61775n0 = bufferedChannel.m61775n0(channelSegment, i3, obj, j, obj2, m61784u);
            if (m61775n0 == 0) {
                channelSegment.cleanPrev();
                return function0.invoke();
            }
            if (m61775n0 == 1) {
                return function0.invoke();
            }
            if (m61775n0 == 2) {
                if (m61784u) {
                    channelSegment.onSlotCleaned();
                    return function02.invoke();
                }
                Waiter waiter = obj2 instanceof Waiter ? (Waiter) obj2 : null;
                if (waiter != null) {
                    bufferedChannel.m61738K(waiter, channelSegment, i3);
                }
                return function2.invoke(channelSegment, Integer.valueOf(i3));
            }
            if (m61775n0 == 3) {
                return function42.invoke(channelSegment, Integer.valueOf(i3), obj, Long.valueOf(j));
            }
            if (m61775n0 == 4) {
                if (j < bufferedChannel.getReceiversCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
                return function02.invoke();
            }
            if (m61775n0 == 5) {
                channelSegment.cleanPrev();
            }
            channelSegment2 = channelSegment;
        }
    }

    /* renamed from: x */
    private final void m61727x(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1, Object obj) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    /* renamed from: A */
    public final void m61728A() {
        long j;
        long m61800b;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f98228g;
        do {
            j = atomicLongFieldUpdater.get(this);
            m61800b = BufferedChannelKt.m61800b(BufferedChannelKt.f98248E & j, 3);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, m61800b));
    }

    /* renamed from: B */
    public final void m61729B() {
        long j;
        long m61800b;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f98228g;
        do {
            j = atomicLongFieldUpdater.get(this);
            int i = (int) (j >> 60);
            if (i == 0) {
                m61800b = BufferedChannelKt.m61800b(j & BufferedChannelKt.f98248E, 2);
            } else if (i != 1) {
                return;
            } else {
                m61800b = BufferedChannelKt.m61800b(j & BufferedChannelKt.f98248E, 3);
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, m61800b));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: C */
    public final void m61730C(long id, ChannelSegment<E> startFrom) {
        boolean z;
        ChannelSegment<E> channelSegment;
        ChannelSegment<E> channelSegment2;
        while (startFrom.id < id && (channelSegment2 = (ChannelSegment) startFrom.getNext()) != null) {
            startFrom = channelSegment2;
        }
        while (true) {
            if (!startFrom.isRemoved() || (channelSegment = (ChannelSegment) startFrom.getNext()) == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98234m;
                while (true) {
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    z = true;
                    if (segment.id >= startFrom.id) {
                        break;
                    }
                    if (!startFrom.tryIncPointers$kotlinx_coroutines_core()) {
                        z = false;
                        break;
                    } else if (C14434t4.m57298a(atomicReferenceFieldUpdater, this, segment, startFrom)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    } else if (startFrom.decPointers$kotlinx_coroutines_core()) {
                        startFrom.remove();
                    }
                }
                if (z) {
                    return;
                }
            } else {
                startFrom = channelSegment;
            }
        }
    }

    /* renamed from: D */
    public final void m61731D(CancellableContinuation<? super ChannelResult<? extends E>> cont) {
        Result.Companion companion = Result.INSTANCE;
        cont.resumeWith(Result.m72621constructorimpl(ChannelResult.m74155boximpl(ChannelResult.INSTANCE.m74168closedJP2dKIU(getCloseCause()))));
    }

    /* renamed from: E */
    public final void m61732E(CancellableContinuation<? super E> cont) {
        Result.Companion companion = Result.INSTANCE;
        cont.resumeWith(Result.m72621constructorimpl(ResultKt.createFailure(m61774n())));
    }

    /* renamed from: F */
    public final void m61733F(SelectInstance<?> select) {
        select.selectInRegistrationPhase(BufferedChannelKt.getCHANNEL_CLOSED());
    }

    /* renamed from: G */
    public final void m61734G(E element, SelectInstance<?> select) {
        Function1<E, Unit> function1 = this.onUndeliveredElement;
        if (function1 != null) {
            OnUndeliveredElementKt.callUndeliveredElement(function1, element, select.getContext());
        }
        select.selectInRegistrationPhase(BufferedChannelKt.getCHANNEL_CLOSED());
    }

    /* renamed from: H */
    public final Object m61735H(E e, Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        UndeliveredElementException callUndeliveredElementCatchingException$default;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        Function1<E, Unit> function1 = this.onUndeliveredElement;
        if (function1 == null || (callUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, e, null, 2, null)) == null) {
            Throwable sendException = getSendException();
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m72621constructorimpl(ResultKt.createFailure(sendException)));
        } else {
            ExceptionsKt__ExceptionsKt.addSuppressed(callUndeliveredElementCatchingException$default, getSendException());
            Result.Companion companion2 = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m72621constructorimpl(ResultKt.createFailure(callUndeliveredElementCatchingException$default)));
        }
        Object result = cancellableContinuationImpl.getResult();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (result == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return result == coroutine_suspended2 ? result : Unit.INSTANCE;
    }

    /* renamed from: I */
    public final void m61736I(E element, CancellableContinuation<? super Unit> cont) {
        Function1<E, Unit> function1 = this.onUndeliveredElement;
        if (function1 != null) {
            OnUndeliveredElementKt.callUndeliveredElement(function1, element, cont.getContext());
        }
        Throwable sendException = getSendException();
        Result.Companion companion = Result.INSTANCE;
        cont.resumeWith(Result.m72621constructorimpl(ResultKt.createFailure(sendException)));
    }

    /* renamed from: J */
    public final void m61737J(Waiter waiter, ChannelSegment<E> channelSegment, int i) {
        onReceiveEnqueued();
        waiter.invokeOnCancellation(channelSegment, i);
    }

    /* renamed from: K */
    public final void m61738K(Waiter waiter, ChannelSegment<E> channelSegment, int i) {
        waiter.invokeOnCancellation(channelSegment, i + BufferedChannelKt.SEGMENT_SIZE);
    }

    /* renamed from: L */
    public final Object m61739L(Object ignoredParam, Object selectResult) {
        if (selectResult != BufferedChannelKt.getCHANNEL_CLOSED()) {
            return selectResult;
        }
        throw m61774n();
    }

    /* renamed from: M */
    public final Object m61740M(Object ignoredParam, Object selectResult) {
        return ChannelResult.m74155boximpl(selectResult == BufferedChannelKt.getCHANNEL_CLOSED() ? ChannelResult.INSTANCE.m74168closedJP2dKIU(getCloseCause()) : ChannelResult.INSTANCE.m74170successJP2dKIU(selectResult));
    }

    /* renamed from: N */
    public final Object m61741N(Object ignoredParam, Object selectResult) {
        if (selectResult != BufferedChannelKt.getCHANNEL_CLOSED()) {
            return selectResult;
        }
        if (getCloseCause() == null) {
            return null;
        }
        throw m61774n();
    }

    /* renamed from: O */
    public final Object m61742O(Object ignoredParam, Object selectResult) {
        if (selectResult != BufferedChannelKt.getCHANNEL_CLOSED()) {
            return this;
        }
        throw getSendException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* renamed from: R */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m61743R(kotlinx.coroutines.channels.ChannelSegment<E> r11, int r12, long r13, kotlin.coroutines.Continuation<? super kotlinx.coroutines.channels.ChannelResult<? extends E>> r15) {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.m61743R(kotlinx.coroutines.channels.ChannelSegment, int, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* renamed from: S */
    public final <R> R m61744S(Object waiter, Function1<? super E, ? extends R> onElementRetrieved, Function3<? super ChannelSegment<E>, ? super Integer, ? super Long, ? extends R> onSuspend, Function0<? extends R> onClosed, Function3<? super ChannelSegment<E>, ? super Integer, ? super Long, ? extends R> onNoWaiterSuspend) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        ChannelSegment channelSegment = (ChannelSegment) f98233l.get(this);
        while (!isClosedForReceive()) {
            long andIncrement = f98229h.getAndIncrement(this);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j = andIncrement / i;
            int i2 = (int) (andIncrement % i);
            if (channelSegment.id != j) {
                ChannelSegment m61765i = m61765i(j, channelSegment);
                if (m61765i == null) {
                    continue;
                } else {
                    channelSegment = m61765i;
                }
            }
            Symbol symbol4 = (Object) m61772l0(channelSegment, i2, andIncrement, waiter);
            symbol = BufferedChannelKt.f98263m;
            if (symbol4 == symbol) {
                Waiter waiter2 = waiter instanceof Waiter ? (Waiter) waiter : null;
                if (waiter2 != null) {
                    m61737J(waiter2, channelSegment, i2);
                }
                return onSuspend.invoke(channelSegment, Integer.valueOf(i2), Long.valueOf(andIncrement));
            }
            symbol2 = BufferedChannelKt.f98265o;
            if (symbol4 != symbol2) {
                symbol3 = BufferedChannelKt.f98264n;
                if (symbol4 == symbol3) {
                    return onNoWaiterSuspend.invoke(channelSegment, Integer.valueOf(i2), Long.valueOf(andIncrement));
                }
                channelSegment.cleanPrev();
                return onElementRetrieved.invoke(symbol4);
            }
            if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                channelSegment.cleanPrev();
            }
        }
        return onClosed.invoke();
    }

    /* renamed from: U */
    public final void m61745U(ChannelSegment<E> segment, int index, long r, Waiter waiter, Function1<? super E, Unit> onElementRetrieved, Function0<Unit> onClosed) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Symbol symbol6 = (Object) m61772l0(segment, index, r, waiter);
        symbol = BufferedChannelKt.f98263m;
        if (symbol6 == symbol) {
            m61737J(waiter, segment, index);
            return;
        }
        symbol2 = BufferedChannelKt.f98265o;
        if (symbol6 != symbol2) {
            segment.cleanPrev();
            onElementRetrieved.invoke(symbol6);
            return;
        }
        if (r < getSendersCounter$kotlinx_coroutines_core()) {
            segment.cleanPrev();
        }
        ChannelSegment channelSegment = (ChannelSegment) f98233l.get(this);
        while (!isClosedForReceive()) {
            long andIncrement = f98229h.getAndIncrement(this);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j = andIncrement / i;
            int i2 = (int) (andIncrement % i);
            if (channelSegment.id != j) {
                ChannelSegment m61765i = m61765i(j, channelSegment);
                if (m61765i == null) {
                    continue;
                } else {
                    channelSegment = m61765i;
                }
            }
            Symbol symbol7 = (Object) m61772l0(channelSegment, i2, andIncrement, waiter);
            symbol3 = BufferedChannelKt.f98263m;
            if (symbol7 == symbol3) {
                if (!(waiter instanceof Waiter)) {
                    waiter = null;
                }
                if (waiter != null) {
                    m61737J(waiter, channelSegment, i2);
                }
                Unit unit = Unit.INSTANCE;
                return;
            }
            symbol4 = BufferedChannelKt.f98265o;
            if (symbol7 != symbol4) {
                symbol5 = BufferedChannelKt.f98264n;
                if (symbol7 == symbol5) {
                    throw new IllegalStateException("unexpected".toString());
                }
                channelSegment.cleanPrev();
                onElementRetrieved.invoke(symbol7);
                return;
            }
            if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                channelSegment.cleanPrev();
            }
        }
        onClosed.invoke();
    }

    /* renamed from: V */
    public final Object m61746V(ChannelSegment<E> channelSegment, int i, long j, Continuation<? super E> continuation) {
        Continuation intercepted;
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(intercepted);
        try {
            Object m61772l0 = m61772l0(channelSegment, i, j, orCreateCancellableContinuation);
            symbol = BufferedChannelKt.f98263m;
            if (m61772l0 == symbol) {
                m61737J(orCreateCancellableContinuation, channelSegment, i);
            } else {
                symbol2 = BufferedChannelKt.f98265o;
                Function1<Throwable, Unit> function1 = null;
                function1 = null;
                if (m61772l0 == symbol2) {
                    if (j < getSendersCounter$kotlinx_coroutines_core()) {
                        channelSegment.cleanPrev();
                    }
                    ChannelSegment channelSegment2 = (ChannelSegment) f98233l.get(this);
                    while (true) {
                        if (isClosedForReceive()) {
                            m61732E(orCreateCancellableContinuation);
                            break;
                        }
                        long andIncrement = f98229h.getAndIncrement(this);
                        int i2 = BufferedChannelKt.SEGMENT_SIZE;
                        long j2 = andIncrement / i2;
                        int i3 = (int) (andIncrement % i2);
                        if (channelSegment2.id != j2) {
                            ChannelSegment m61765i = m61765i(j2, channelSegment2);
                            if (m61765i != null) {
                                channelSegment2 = m61765i;
                            }
                        }
                        m61772l0 = m61772l0(channelSegment2, i3, andIncrement, orCreateCancellableContinuation);
                        symbol3 = BufferedChannelKt.f98263m;
                        if (m61772l0 == symbol3) {
                            CancellableContinuationImpl cancellableContinuationImpl = orCreateCancellableContinuation instanceof Waiter ? orCreateCancellableContinuation : null;
                            if (cancellableContinuationImpl != null) {
                                m61737J(cancellableContinuationImpl, channelSegment2, i3);
                            }
                        } else {
                            symbol4 = BufferedChannelKt.f98265o;
                            if (m61772l0 != symbol4) {
                                symbol5 = BufferedChannelKt.f98264n;
                                if (m61772l0 == symbol5) {
                                    throw new IllegalStateException("unexpected".toString());
                                }
                                channelSegment2.cleanPrev();
                                Function1<E, Unit> function12 = this.onUndeliveredElement;
                                if (function12 != null) {
                                    function1 = OnUndeliveredElementKt.bindCancellationFun(function12, m61772l0, orCreateCancellableContinuation.getContext());
                                }
                            } else if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                                channelSegment2.cleanPrev();
                            }
                        }
                    }
                } else {
                    channelSegment.cleanPrev();
                    Function1<E, Unit> function13 = this.onUndeliveredElement;
                    if (function13 != null) {
                        function1 = OnUndeliveredElementKt.bindCancellationFun(function13, m61772l0, orCreateCancellableContinuation.getContext());
                    }
                }
                orCreateCancellableContinuation.resume(m61772l0, function1);
            }
            Object result = orCreateCancellableContinuation.getResult();
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (result == coroutine_suspended) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result;
        } catch (Throwable th) {
            orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th;
        }
    }

    /* renamed from: W */
    public final void m61747W(SelectInstance<?> select, Object ignoredParam) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        ChannelSegment channelSegment = (ChannelSegment) f98233l.get(this);
        while (!isClosedForReceive()) {
            long andIncrement = f98229h.getAndIncrement(this);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j = andIncrement / i;
            int i2 = (int) (andIncrement % i);
            if (channelSegment.id != j) {
                ChannelSegment m61765i = m61765i(j, channelSegment);
                if (m61765i == null) {
                    continue;
                } else {
                    channelSegment = m61765i;
                }
            }
            Object m61772l0 = m61772l0(channelSegment, i2, andIncrement, select);
            symbol = BufferedChannelKt.f98263m;
            if (m61772l0 == symbol) {
                Waiter waiter = select instanceof Waiter ? (Waiter) select : null;
                if (waiter != null) {
                    m61737J(waiter, channelSegment, i2);
                    return;
                }
                return;
            }
            symbol2 = BufferedChannelKt.f98265o;
            if (m61772l0 != symbol2) {
                symbol3 = BufferedChannelKt.f98264n;
                if (m61772l0 == symbol3) {
                    throw new IllegalStateException("unexpected".toString());
                }
                channelSegment.cleanPrev();
                select.selectInRegistrationPhase(m61772l0);
                return;
            }
            if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                channelSegment.cleanPrev();
            }
        }
        m61733F(select);
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x00b3, code lost:
    
        r12 = (kotlinx.coroutines.channels.ChannelSegment) r12.getPrev();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: X */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m61748X(kotlinx.coroutines.channels.ChannelSegment<E> r12) {
        /*
            r11 = this;
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r0 = r11.onUndeliveredElement
            r1 = 0
            r2 = 1
            java.lang.Object r3 = kotlinx.coroutines.internal.InlineList.m74182constructorimpl$default(r1, r2, r1)
        L8:
            int r4 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            int r4 = r4 - r2
        Lb:
            r5 = -1
            if (r5 >= r4) goto Lb3
            long r6 = r12.id
            int r8 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            long r8 = (long) r8
            long r6 = r6 * r8
            long r8 = (long) r4
            long r6 = r6 + r8
        L16:
            java.lang.Object r8 = r12.getState$kotlinx_coroutines_core(r4)
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.channels.BufferedChannelKt.access$getDONE_RCV$p()
            if (r8 == r9) goto Lbb
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.channels.BufferedChannelKt.BUFFERED
            if (r8 != r9) goto L48
            long r9 = r11.getReceiversCounter$kotlinx_coroutines_core()
            int r9 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r9 < 0) goto Lbb
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.channels.BufferedChannelKt.getCHANNEL_CLOSED()
            boolean r8 = r12.casState$kotlinx_coroutines_core(r4, r8, r9)
            if (r8 == 0) goto L16
            if (r0 == 0) goto L40
            java.lang.Object r5 = r12.getElement$kotlinx_coroutines_core(r4)
            kotlinx.coroutines.internal.UndeliveredElementException r1 = kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElementCatchingException(r0, r5, r1)
        L40:
            r12.cleanElement$kotlinx_coroutines_core(r4)
            r12.onSlotCleaned()
            goto Laf
        L48:
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.channels.BufferedChannelKt.access$getIN_BUFFER$p()
            if (r8 == r9) goto La2
            if (r8 != 0) goto L51
            goto La2
        L51:
            boolean r9 = r8 instanceof kotlinx.coroutines.Waiter
            if (r9 != 0) goto L6e
            boolean r9 = r8 instanceof com.sunia.HTREnginev2.k5o
            if (r9 == 0) goto L5a
            goto L6e
        L5a:
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.channels.BufferedChannelKt.access$getRESUMING_BY_EB$p()
            if (r8 == r9) goto Lbb
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.channels.BufferedChannelKt.access$getRESUMING_BY_RCV$p()
            if (r8 != r9) goto L67
            goto Lbb
        L67:
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.channels.BufferedChannelKt.access$getRESUMING_BY_EB$p()
            if (r8 == r9) goto L16
            goto Laf
        L6e:
            long r9 = r11.getReceiversCounter$kotlinx_coroutines_core()
            int r9 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r9 < 0) goto Lbb
            boolean r9 = r8 instanceof com.sunia.HTREnginev2.k5o
            if (r9 == 0) goto L80
            r9 = r8
            com.sunia.HTREnginev2.k5o r9 = (com.sunia.HTREnginev2.k5o) r9
            kotlinx.coroutines.Waiter r9 = r9.f75116a
            goto L83
        L80:
            r9 = r8
            kotlinx.coroutines.Waiter r9 = (kotlinx.coroutines.Waiter) r9
        L83:
            kotlinx.coroutines.internal.Symbol r10 = kotlinx.coroutines.channels.BufferedChannelKt.getCHANNEL_CLOSED()
            boolean r8 = r12.casState$kotlinx_coroutines_core(r4, r8, r10)
            if (r8 == 0) goto L16
            if (r0 == 0) goto L97
            java.lang.Object r5 = r12.getElement$kotlinx_coroutines_core(r4)
            kotlinx.coroutines.internal.UndeliveredElementException r1 = kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElementCatchingException(r0, r5, r1)
        L97:
            java.lang.Object r3 = kotlinx.coroutines.internal.InlineList.m74187plusFjFbRPM(r3, r9)
            r12.cleanElement$kotlinx_coroutines_core(r4)
            r12.onSlotCleaned()
            goto Laf
        La2:
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.channels.BufferedChannelKt.getCHANNEL_CLOSED()
            boolean r8 = r12.casState$kotlinx_coroutines_core(r4, r8, r9)
            if (r8 == 0) goto L16
            r12.onSlotCleaned()
        Laf:
            int r4 = r4 + (-1)
            goto Lb
        Lb3:
            kotlinx.coroutines.internal.ConcurrentLinkedListNode r12 = r12.getPrev()
            kotlinx.coroutines.channels.ChannelSegment r12 = (kotlinx.coroutines.channels.ChannelSegment) r12
            if (r12 != 0) goto L8
        Lbb:
            if (r3 == 0) goto Le1
            boolean r12 = r3 instanceof java.util.ArrayList
            if (r12 != 0) goto Lc7
            kotlinx.coroutines.Waiter r3 = (kotlinx.coroutines.Waiter) r3
            r11.m61750Z(r3)
            goto Le1
        Lc7:
            java.lang.String r12 = "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3, r12)
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            int r12 = r3.size()
            int r12 = r12 - r2
        Ld3:
            if (r5 >= r12) goto Le1
            java.lang.Object r0 = r3.get(r12)
            kotlinx.coroutines.Waiter r0 = (kotlinx.coroutines.Waiter) r0
            r11.m61750Z(r0)
            int r12 = r12 + (-1)
            goto Ld3
        Le1:
            if (r1 != 0) goto Le4
            return
        Le4:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.m61748X(kotlinx.coroutines.channels.ChannelSegment):void");
    }

    /* renamed from: Y */
    public final void m61749Y(Waiter waiter) {
        m61752a0(waiter, true);
    }

    /* renamed from: Z */
    public final void m61750Z(Waiter waiter) {
        m61752a0(waiter, false);
    }

    /* renamed from: a */
    public final boolean m61751a(long curSenders) {
        return curSenders < m61771l() || curSenders < getReceiversCounter$kotlinx_coroutines_core() + ((long) this.capacity);
    }

    /* renamed from: a0 */
    public final void m61752a0(Waiter waiter, boolean z) {
        if (waiter instanceof C18164b) {
            CancellableContinuation<Boolean> m61798a = ((C18164b) waiter).m61798a();
            Result.Companion companion = Result.INSTANCE;
            m61798a.resumeWith(Result.m72621constructorimpl(Boolean.FALSE));
            return;
        }
        if (waiter instanceof CancellableContinuation) {
            Continuation continuation = (Continuation) waiter;
            Result.Companion companion2 = Result.INSTANCE;
            continuation.resumeWith(Result.m72621constructorimpl(ResultKt.createFailure(z ? m61774n() : getSendException())));
        } else if (waiter instanceof fel) {
            CancellableContinuationImpl<ChannelResult<? extends E>> cancellableContinuationImpl = ((fel) waiter).f69939e;
            Result.Companion companion3 = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m72621constructorimpl(ChannelResult.m74155boximpl(ChannelResult.INSTANCE.m74168closedJP2dKIU(getCloseCause()))));
        } else if (waiter instanceof C18163a) {
            ((C18163a) waiter).m61797i();
        } else {
            if (waiter instanceof SelectInstance) {
                ((SelectInstance) waiter).trySelect(this, BufferedChannelKt.getCHANNEL_CLOSED());
                return;
            }
            throw new IllegalStateException(("Unexpected waiter: " + waiter).toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final void m61753b(ChannelSegment<E> lastSegment, long sendersCounter) {
        Symbol symbol;
        Object m74182constructorimpl$default = InlineList.m74182constructorimpl$default(null, 1, null);
        loop0: while (lastSegment != null) {
            for (int i = BufferedChannelKt.SEGMENT_SIZE - 1; -1 < i; i--) {
                if ((lastSegment.id * BufferedChannelKt.SEGMENT_SIZE) + i < sendersCounter) {
                    break loop0;
                }
                while (true) {
                    Object state$kotlinx_coroutines_core = lastSegment.getState$kotlinx_coroutines_core(i);
                    if (state$kotlinx_coroutines_core != null) {
                        symbol = BufferedChannelKt.f98255e;
                        if (state$kotlinx_coroutines_core != symbol) {
                            if (!(state$kotlinx_coroutines_core instanceof k5o)) {
                                if (!(state$kotlinx_coroutines_core instanceof Waiter)) {
                                    break;
                                }
                                if (lastSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                                    m74182constructorimpl$default = InlineList.m74187plusFjFbRPM(m74182constructorimpl$default, state$kotlinx_coroutines_core);
                                    lastSegment.onCancelledRequest(i, true);
                                    break;
                                }
                            } else {
                                if (lastSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                                    m74182constructorimpl$default = InlineList.m74187plusFjFbRPM(m74182constructorimpl$default, ((k5o) state$kotlinx_coroutines_core).f75116a);
                                    lastSegment.onCancelledRequest(i, true);
                                    break;
                                }
                            }
                        }
                    }
                    if (lastSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                        lastSegment.onSlotCleaned();
                        break;
                    }
                }
            }
            lastSegment = (ChannelSegment) lastSegment.getPrev();
        }
        if (m74182constructorimpl$default != null) {
            if (!(m74182constructorimpl$default instanceof ArrayList)) {
                m61749Y((Waiter) m74182constructorimpl$default);
                return;
            }
            Intrinsics.checkNotNull(m74182constructorimpl$default, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
            ArrayList arrayList = (ArrayList) m74182constructorimpl$default;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                m61749Y((Waiter) arrayList.get(size));
            }
        }
    }

    /* renamed from: c */
    public final ChannelSegment<E> m61754c() {
        Object obj = f98234m.get(this);
        ChannelSegment channelSegment = (ChannelSegment) f98232k.get(this);
        if (channelSegment.id > ((ChannelSegment) obj).id) {
            obj = channelSegment;
        }
        ChannelSegment channelSegment2 = (ChannelSegment) f98233l.get(this);
        if (channelSegment2.id > ((ChannelSegment) obj).id) {
            obj = channelSegment2;
        }
        return (ChannelSegment) ConcurrentLinkedListKt.close((ConcurrentLinkedListNode) obj);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final boolean cancel(@Nullable Throwable cause) {
        return cancelImpl$kotlinx_coroutines_core(cause);
    }

    public boolean cancelImpl$kotlinx_coroutines_core(@Nullable Throwable cause) {
        if (cause == null) {
            cause = new CancellationException("Channel was cancelled");
        }
        return closeOrCancelImpl(cause, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01ee A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void checkSegmentStructureInvariants() {
        /*
            Method dump skipped, instructions count: 582
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.checkSegmentStructureInvariants():void");
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean close(@Nullable Throwable cause) {
        return closeOrCancelImpl(cause, false);
    }

    public boolean closeOrCancelImpl(@Nullable Throwable cause, boolean cancel) {
        Symbol symbol;
        if (cancel) {
            m61788z();
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98235n;
        symbol = BufferedChannelKt.f98275y;
        boolean m57298a = C14434t4.m57298a(atomicReferenceFieldUpdater, this, symbol, cause);
        if (cancel) {
            m61728A();
        } else {
            m61729B();
        }
        m61759f();
        onClosedIdempotent();
        if (m57298a) {
            m61779q();
        }
        return m57298a;
    }

    /* renamed from: d */
    public final void m61755d(long sendersCur) {
        m61748X(m61757e(sendersCur));
    }

    /* renamed from: d0 */
    public final void m61756d0(ChannelSegment<E> segment, int index, E element, long s, Waiter waiter, Function0<Unit> onRendezvousOrBuffered, Function0<Unit> onClosed) {
        ChannelSegment channelSegment;
        Waiter waiter2 = waiter;
        int m61775n0 = m61775n0(segment, index, element, s, waiter, false);
        if (m61775n0 == 0) {
            segment.cleanPrev();
            onRendezvousOrBuffered.invoke();
            return;
        }
        if (m61775n0 == 1) {
            onRendezvousOrBuffered.invoke();
            return;
        }
        if (m61775n0 == 2) {
            m61738K(waiter2, segment, index);
            return;
        }
        if (m61775n0 == 4) {
            if (s < getReceiversCounter$kotlinx_coroutines_core()) {
                segment.cleanPrev();
            }
            onClosed.invoke();
            return;
        }
        if (m61775n0 != 5) {
            throw new IllegalStateException("unexpected".toString());
        }
        segment.cleanPrev();
        ChannelSegment channelSegment2 = (ChannelSegment) f98232k.get(this);
        while (true) {
            long andIncrement = f98228g.getAndIncrement(this);
            long j = andIncrement & BufferedChannelKt.f98248E;
            boolean m61784u = m61784u(andIncrement);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = j / i;
            int i2 = (int) (j % i);
            if (channelSegment2.id != j2) {
                ChannelSegment m61767j = m61767j(j2, channelSegment2);
                if (m61767j != null) {
                    channelSegment = m61767j;
                } else if (m61784u) {
                    onClosed.invoke();
                    return;
                }
            } else {
                channelSegment = channelSegment2;
            }
            ChannelSegment channelSegment3 = channelSegment;
            int m61775n02 = m61775n0(channelSegment, i2, element, j, waiter, m61784u);
            if (m61775n02 == 0) {
                channelSegment3.cleanPrev();
                onRendezvousOrBuffered.invoke();
                return;
            }
            if (m61775n02 == 1) {
                onRendezvousOrBuffered.invoke();
                return;
            }
            if (m61775n02 == 2) {
                if (m61784u) {
                    channelSegment3.onSlotCleaned();
                    onClosed.invoke();
                    return;
                }
                if (!(waiter2 instanceof Waiter)) {
                    waiter2 = null;
                }
                if (waiter2 != null) {
                    m61738K(waiter2, channelSegment3, i2);
                }
                Unit unit = Unit.INSTANCE;
                return;
            }
            if (m61775n02 == 3) {
                throw new IllegalStateException("unexpected".toString());
            }
            if (m61775n02 == 4) {
                if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                    channelSegment3.cleanPrev();
                }
                onClosed.invoke();
                return;
            } else {
                if (m61775n02 == 5) {
                    channelSegment3.cleanPrev();
                }
                channelSegment2 = channelSegment3;
            }
        }
    }

    public final void dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(long globalCellIndex) {
        Symbol symbol;
        UndeliveredElementException callUndeliveredElementCatchingException$default;
        ChannelSegment<E> channelSegment = (ChannelSegment) f98233l.get(this);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f98229h;
            long j = atomicLongFieldUpdater.get(this);
            if (globalCellIndex < Math.max(this.capacity + j, m61771l())) {
                return;
            }
            if (atomicLongFieldUpdater.compareAndSet(this, j, j + 1)) {
                int i = BufferedChannelKt.SEGMENT_SIZE;
                long j2 = j / i;
                int i2 = (int) (j % i);
                if (channelSegment.id != j2) {
                    ChannelSegment<E> m61765i = m61765i(j2, channelSegment);
                    if (m61765i == null) {
                        continue;
                    } else {
                        channelSegment = m61765i;
                    }
                }
                Object m61772l0 = m61772l0(channelSegment, i2, j, null);
                symbol = BufferedChannelKt.f98265o;
                if (m61772l0 != symbol) {
                    channelSegment.cleanPrev();
                    Function1<E, Unit> function1 = this.onUndeliveredElement;
                    if (function1 != null && (callUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, m61772l0, null, 2, null)) != null) {
                        throw callUndeliveredElementCatchingException$default;
                    }
                } else if (j < getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
            }
        }
    }

    /* renamed from: e */
    public final ChannelSegment<E> m61757e(long sendersCur) {
        ChannelSegment<E> m61754c = m61754c();
        if (isConflatedDropOldest()) {
            long m61787y = m61787y(m61754c);
            if (m61787y != -1) {
                dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(m61787y);
            }
        }
        m61753b(m61754c, sendersCur);
        return m61754c;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0122 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0123  */
    /* renamed from: e0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m61758e0(kotlinx.coroutines.channels.ChannelSegment<E> r21, int r22, E r23, long r24, kotlin.coroutines.Continuation<? super kotlin.Unit> r26) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.m61758e0(kotlinx.coroutines.channels.ChannelSegment, int, java.lang.Object, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* renamed from: f */
    public final void m61759f() {
        isClosedForSend();
    }

    /* renamed from: f0 */
    public final boolean m61760f0(long curSendersAndCloseStatus) {
        if (m61784u(curSendersAndCloseStatus)) {
            return false;
        }
        return !m61751a(curSendersAndCloseStatus & BufferedChannelKt.f98248E);
    }

    /* renamed from: g */
    public final void m61761g() {
        if (m61785v()) {
            return;
        }
        ChannelSegment<E> channelSegment = (ChannelSegment) f98234m.get(this);
        while (true) {
            long andIncrement = f98230i.getAndIncrement(this);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j = andIncrement / i;
            if (getSendersCounter$kotlinx_coroutines_core() <= andIncrement) {
                if (channelSegment.id < j && channelSegment.getNext() != 0) {
                    m61730C(j, channelSegment);
                }
                m61726p(this, 0L, 1, null);
                return;
            }
            if (channelSegment.id != j) {
                ChannelSegment<E> m61763h = m61763h(j, channelSegment, andIncrement);
                if (m61763h == null) {
                    continue;
                } else {
                    channelSegment = m61763h;
                }
            }
            if (m61768j0(channelSegment, (int) (andIncrement % i), andIncrement)) {
                m61726p(this, 0L, 1, null);
                return;
            }
            m61726p(this, 0L, 1, null);
        }
    }

    /* renamed from: g0 */
    public final boolean m61762g0(Object obj, E e) {
        boolean m61807i;
        boolean m61807i2;
        if (obj instanceof SelectInstance) {
            return ((SelectInstance) obj).trySelect(this, e);
        }
        if (obj instanceof fel) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            fel felVar = (fel) obj;
            CancellableContinuationImpl<ChannelResult<? extends E>> cancellableContinuationImpl = felVar.f69939e;
            ChannelResult m74155boximpl = ChannelResult.m74155boximpl(ChannelResult.INSTANCE.m74170successJP2dKIU(e));
            Function1<E, Unit> function1 = this.onUndeliveredElement;
            m61807i2 = BufferedChannelKt.m61807i(cancellableContinuationImpl, m74155boximpl, function1 != null ? OnUndeliveredElementKt.bindCancellationFun(function1, e, felVar.f69939e.getContext()) : null);
            return m61807i2;
        }
        if (obj instanceof C18163a) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            return ((C18163a) obj).m61796h(e);
        }
        if (!(obj instanceof CancellableContinuation)) {
            throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
        CancellableContinuation cancellableContinuation = (CancellableContinuation) obj;
        Function1<E, Unit> function12 = this.onUndeliveredElement;
        m61807i = BufferedChannelKt.m61807i(cancellableContinuation, e, function12 != null ? OnUndeliveredElementKt.bindCancellationFun(function12, e, cancellableContinuation.getContext()) : null);
        return m61807i;
    }

    @Nullable
    public final Throwable getCloseCause() {
        return (Throwable) f98235n.get(this);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public SelectClause1<E> getOnReceive() {
        BufferedChannel$onReceive$1 bufferedChannel$onReceive$1 = BufferedChannel$onReceive$1.INSTANCE;
        Intrinsics.checkNotNull(bufferedChannel$onReceive$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceive$1, 3);
        BufferedChannel$onReceive$2 bufferedChannel$onReceive$2 = BufferedChannel$onReceive$2.INSTANCE;
        Intrinsics.checkNotNull(bufferedChannel$onReceive$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceive$2, 3), this.onUndeliveredElementReceiveCancellationConstructor);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public SelectClause1<ChannelResult<E>> getOnReceiveCatching() {
        BufferedChannel$onReceiveCatching$1 bufferedChannel$onReceiveCatching$1 = BufferedChannel$onReceiveCatching$1.INSTANCE;
        Intrinsics.checkNotNull(bufferedChannel$onReceiveCatching$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceiveCatching$1, 3);
        BufferedChannel$onReceiveCatching$2 bufferedChannel$onReceiveCatching$2 = BufferedChannel$onReceiveCatching$2.INSTANCE;
        Intrinsics.checkNotNull(bufferedChannel$onReceiveCatching$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceiveCatching$2, 3), this.onUndeliveredElementReceiveCancellationConstructor);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public SelectClause1<E> getOnReceiveOrNull() {
        BufferedChannel$onReceiveOrNull$1 bufferedChannel$onReceiveOrNull$1 = BufferedChannel$onReceiveOrNull$1.INSTANCE;
        Intrinsics.checkNotNull(bufferedChannel$onReceiveOrNull$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceiveOrNull$1, 3);
        BufferedChannel$onReceiveOrNull$2 bufferedChannel$onReceiveOrNull$2 = BufferedChannel$onReceiveOrNull$2.INSTANCE;
        Intrinsics.checkNotNull(bufferedChannel$onReceiveOrNull$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceiveOrNull$2, 3), this.onUndeliveredElementReceiveCancellationConstructor);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @NotNull
    public SelectClause2<E, BufferedChannel<E>> getOnSend() {
        BufferedChannel$onSend$1 bufferedChannel$onSend$1 = BufferedChannel$onSend$1.INSTANCE;
        Intrinsics.checkNotNull(bufferedChannel$onSend$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onSend$1, 3);
        BufferedChannel$onSend$2 bufferedChannel$onSend$2 = BufferedChannel$onSend$2.INSTANCE;
        Intrinsics.checkNotNull(bufferedChannel$onSend$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new SelectClause2Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onSend$2, 3), null, 8, null);
    }

    public final long getReceiversCounter$kotlinx_coroutines_core() {
        return f98229h.get(this);
    }

    @NotNull
    public final Throwable getSendException() {
        Throwable closeCause = getCloseCause();
        return closeCause == null ? new ClosedSendChannelException(ChannelsKt.DEFAULT_CLOSE_MESSAGE) : closeCause;
    }

    public final long getSendersCounter$kotlinx_coroutines_core() {
        return f98228g.get(this) & BufferedChannelKt.f98248E;
    }

    /* renamed from: h */
    public final ChannelSegment<E> m61763h(long id, ChannelSegment<E> startFrom, long currentBufferEndCounter) {
        Object findSegmentInternal;
        boolean z;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98234m;
        Function2 function2 = (Function2) BufferedChannelKt.createSegmentFunction();
        do {
            findSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(startFrom, id, function2);
            if (SegmentOrClosed.m74197isClosedimpl(findSegmentInternal)) {
                break;
            }
            Segment m74195getSegmentimpl = SegmentOrClosed.m74195getSegmentimpl(findSegmentInternal);
            while (true) {
                Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                if (segment.id >= m74195getSegmentimpl.id) {
                    break;
                }
                if (!m74195getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                    z = false;
                    break;
                }
                if (C14434t4.m57298a(atomicReferenceFieldUpdater, this, segment, m74195getSegmentimpl)) {
                    if (segment.decPointers$kotlinx_coroutines_core()) {
                        segment.remove();
                    }
                } else if (m74195getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                    m74195getSegmentimpl.remove();
                }
            }
            z = true;
        } while (!z);
        if (SegmentOrClosed.m74197isClosedimpl(findSegmentInternal)) {
            m61759f();
            m61730C(id, startFrom);
            m61726p(this, 0L, 1, null);
            return null;
        }
        ChannelSegment<E> channelSegment = (ChannelSegment) SegmentOrClosed.m74195getSegmentimpl(findSegmentInternal);
        long j = channelSegment.id;
        if (j <= id) {
            return channelSegment;
        }
        int i = BufferedChannelKt.SEGMENT_SIZE;
        if (f98230i.compareAndSet(this, currentBufferEndCounter + 1, i * j)) {
            m61776o((channelSegment.id * i) - currentBufferEndCounter);
            return null;
        }
        m61726p(this, 0L, 1, null);
        return null;
    }

    /* renamed from: h0 */
    public final boolean m61764h0(Object obj, ChannelSegment<E> channelSegment, int i) {
        if (obj instanceof CancellableContinuation) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return BufferedChannelKt.m61808j((CancellableContinuation) obj, Unit.INSTANCE, null, 2, null);
        }
        if (obj instanceof SelectInstance) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
            TrySelectDetailedResult trySelectDetailed = ((SelectImplementation) obj).trySelectDetailed(this, Unit.INSTANCE);
            if (trySelectDetailed == TrySelectDetailedResult.REREGISTER) {
                channelSegment.cleanElement$kotlinx_coroutines_core(i);
            }
            return trySelectDetailed == TrySelectDetailedResult.SUCCESSFUL;
        }
        if (obj instanceof C18164b) {
            return BufferedChannelKt.m61808j(((C18164b) obj).m61798a(), Boolean.TRUE, null, 2, null);
        }
        throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
    }

    public final boolean hasElements$kotlinx_coroutines_core() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98233l;
            ChannelSegment<E> channelSegment = (ChannelSegment) atomicReferenceFieldUpdater.get(this);
            long receiversCounter$kotlinx_coroutines_core = getReceiversCounter$kotlinx_coroutines_core();
            if (getSendersCounter$kotlinx_coroutines_core() <= receiversCounter$kotlinx_coroutines_core) {
                return false;
            }
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j = receiversCounter$kotlinx_coroutines_core / i;
            if (channelSegment.id == j || (channelSegment = m61765i(j, channelSegment)) != null) {
                channelSegment.cleanPrev();
                if (m61781r(channelSegment, (int) (receiversCounter$kotlinx_coroutines_core % i), receiversCounter$kotlinx_coroutines_core)) {
                    return true;
                }
                f98229h.compareAndSet(this, receiversCounter$kotlinx_coroutines_core, receiversCounter$kotlinx_coroutines_core + 1);
            } else if (((ChannelSegment) atomicReferenceFieldUpdater.get(this)).id < j) {
                return false;
            }
        }
    }

    /* renamed from: i */
    public final ChannelSegment<E> m61765i(long id, ChannelSegment<E> startFrom) {
        Object findSegmentInternal;
        boolean z;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98233l;
        Function2 function2 = (Function2) BufferedChannelKt.createSegmentFunction();
        do {
            findSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(startFrom, id, function2);
            if (!SegmentOrClosed.m74197isClosedimpl(findSegmentInternal)) {
                Segment m74195getSegmentimpl = SegmentOrClosed.m74195getSegmentimpl(findSegmentInternal);
                while (true) {
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    z = true;
                    if (segment.id >= m74195getSegmentimpl.id) {
                        break;
                    }
                    if (!m74195getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        z = false;
                        break;
                    }
                    if (C14434t4.m57298a(atomicReferenceFieldUpdater, this, segment, m74195getSegmentimpl)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    } else if (m74195getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                        m74195getSegmentimpl.remove();
                    }
                }
            } else {
                break;
            }
        } while (!z);
        if (SegmentOrClosed.m74197isClosedimpl(findSegmentInternal)) {
            m61759f();
            if (startFrom.id * BufferedChannelKt.SEGMENT_SIZE >= getSendersCounter$kotlinx_coroutines_core()) {
                return null;
            }
            startFrom.cleanPrev();
            return null;
        }
        ChannelSegment<E> channelSegment = (ChannelSegment) SegmentOrClosed.m74195getSegmentimpl(findSegmentInternal);
        if (!m61785v() && id <= m61771l() / BufferedChannelKt.SEGMENT_SIZE) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f98234m;
            while (true) {
                Segment segment2 = (Segment) atomicReferenceFieldUpdater2.get(this);
                if (segment2.id >= channelSegment.id || !channelSegment.tryIncPointers$kotlinx_coroutines_core()) {
                    break;
                }
                if (C14434t4.m57298a(atomicReferenceFieldUpdater2, this, segment2, channelSegment)) {
                    if (segment2.decPointers$kotlinx_coroutines_core()) {
                        segment2.remove();
                    }
                } else if (channelSegment.decPointers$kotlinx_coroutines_core()) {
                    channelSegment.remove();
                }
            }
        }
        long j = channelSegment.id;
        if (j <= id) {
            return channelSegment;
        }
        int i = BufferedChannelKt.SEGMENT_SIZE;
        m61778p0(j * i);
        if (channelSegment.id * i >= getSendersCounter$kotlinx_coroutines_core()) {
            return null;
        }
        channelSegment.cleanPrev();
        return null;
    }

    /* renamed from: i0 */
    public final void m61766i0(AtomicLongFieldUpdater atomicLongFieldUpdater, Function1<? super Long, Long> function1, Object obj) {
        long j;
        do {
            j = atomicLongFieldUpdater.get(obj);
        } while (!atomicLongFieldUpdater.compareAndSet(obj, j, function1.invoke(Long.valueOf(j)).longValue()));
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public void invokeOnClose(@NotNull Function1<? super Throwable, Unit> handler) {
        Symbol symbol;
        Symbol symbol2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Symbol symbol3;
        Symbol symbol4;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f98236o;
        if (C14434t4.m57298a(atomicReferenceFieldUpdater2, this, null, handler)) {
            return;
        }
        do {
            Object obj = atomicReferenceFieldUpdater2.get(this);
            symbol = BufferedChannelKt.f98273w;
            if (obj != symbol) {
                symbol2 = BufferedChannelKt.f98274x;
                if (obj == symbol2) {
                    throw new IllegalStateException("Another handler was already registered and successfully invoked".toString());
                }
                throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
            }
            atomicReferenceFieldUpdater = f98236o;
            symbol3 = BufferedChannelKt.f98273w;
            symbol4 = BufferedChannelKt.f98274x;
        } while (!C14434t4.m57298a(atomicReferenceFieldUpdater, this, symbol3, symbol4));
        handler.invoke(getCloseCause());
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean isClosedForReceive() {
        return m61783t(f98228g.get(this));
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean isClosedForSend() {
        return m61784u(f98228g.get(this));
    }

    public boolean isConflatedDropOldest() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean isEmpty() {
        if (isClosedForReceive() || hasElements$kotlinx_coroutines_core()) {
            return false;
        }
        return !isClosedForReceive();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public ChannelIterator<E> iterator() {
        return new C18163a();
    }

    /* renamed from: j */
    public final ChannelSegment<E> m61767j(long id, ChannelSegment<E> startFrom) {
        Object findSegmentInternal;
        boolean z;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98232k;
        Function2 function2 = (Function2) BufferedChannelKt.createSegmentFunction();
        do {
            findSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(startFrom, id, function2);
            if (!SegmentOrClosed.m74197isClosedimpl(findSegmentInternal)) {
                Segment m74195getSegmentimpl = SegmentOrClosed.m74195getSegmentimpl(findSegmentInternal);
                while (true) {
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    z = true;
                    if (segment.id >= m74195getSegmentimpl.id) {
                        break;
                    }
                    if (!m74195getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        z = false;
                        break;
                    }
                    if (C14434t4.m57298a(atomicReferenceFieldUpdater, this, segment, m74195getSegmentimpl)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    } else if (m74195getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                        m74195getSegmentimpl.remove();
                    }
                }
            } else {
                break;
            }
        } while (!z);
        if (SegmentOrClosed.m74197isClosedimpl(findSegmentInternal)) {
            m61759f();
            if (startFrom.id * BufferedChannelKt.SEGMENT_SIZE >= getReceiversCounter$kotlinx_coroutines_core()) {
                return null;
            }
            startFrom.cleanPrev();
            return null;
        }
        ChannelSegment<E> channelSegment = (ChannelSegment) SegmentOrClosed.m74195getSegmentimpl(findSegmentInternal);
        long j = channelSegment.id;
        if (j <= id) {
            return channelSegment;
        }
        int i = BufferedChannelKt.SEGMENT_SIZE;
        m61780q0(j * i);
        if (channelSegment.id * i >= getReceiversCounter$kotlinx_coroutines_core()) {
            return null;
        }
        channelSegment.cleanPrev();
        return null;
    }

    /* renamed from: j0 */
    public final boolean m61768j0(ChannelSegment<E> segment, int index, long b) {
        Symbol symbol;
        Symbol symbol2;
        Object state$kotlinx_coroutines_core = segment.getState$kotlinx_coroutines_core(index);
        if ((state$kotlinx_coroutines_core instanceof Waiter) && b >= f98229h.get(this)) {
            symbol = BufferedChannelKt.f98257g;
            if (segment.casState$kotlinx_coroutines_core(index, state$kotlinx_coroutines_core, symbol)) {
                if (m61764h0(state$kotlinx_coroutines_core, segment, index)) {
                    segment.setState$kotlinx_coroutines_core(index, BufferedChannelKt.BUFFERED);
                    return true;
                }
                symbol2 = BufferedChannelKt.f98260j;
                segment.setState$kotlinx_coroutines_core(index, symbol2);
                segment.onCancelledRequest(index, false);
                return false;
            }
        }
        return m61770k0(segment, index, b);
    }

    /* renamed from: k */
    public final Object m61769k(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, ? extends Object> function1, Object obj) {
        Object obj2;
        do {
            obj2 = atomicReferenceFieldUpdater.get(obj);
        } while (!C14434t4.m57298a(atomicReferenceFieldUpdater, obj, obj2, function1.invoke(obj2)));
        return obj2;
    }

    /* renamed from: k0 */
    public final boolean m61770k0(ChannelSegment<E> segment, int index, long b) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Symbol symbol6;
        Symbol symbol7;
        Symbol symbol8;
        while (true) {
            Object state$kotlinx_coroutines_core = segment.getState$kotlinx_coroutines_core(index);
            if (!(state$kotlinx_coroutines_core instanceof Waiter)) {
                symbol3 = BufferedChannelKt.f98260j;
                if (state$kotlinx_coroutines_core != symbol3) {
                    if (state$kotlinx_coroutines_core != null) {
                        if (state$kotlinx_coroutines_core != BufferedChannelKt.BUFFERED) {
                            symbol5 = BufferedChannelKt.f98258h;
                            if (state$kotlinx_coroutines_core == symbol5) {
                                break;
                            }
                            symbol6 = BufferedChannelKt.f98259i;
                            if (state$kotlinx_coroutines_core == symbol6) {
                                break;
                            }
                            symbol7 = BufferedChannelKt.f98261k;
                            if (state$kotlinx_coroutines_core == symbol7 || state$kotlinx_coroutines_core == BufferedChannelKt.getCHANNEL_CLOSED()) {
                                return true;
                            }
                            symbol8 = BufferedChannelKt.f98256f;
                            if (state$kotlinx_coroutines_core != symbol8) {
                                throw new IllegalStateException(("Unexpected cell state: " + state$kotlinx_coroutines_core).toString());
                            }
                        } else {
                            return true;
                        }
                    } else {
                        symbol4 = BufferedChannelKt.f98255e;
                        if (segment.casState$kotlinx_coroutines_core(index, state$kotlinx_coroutines_core, symbol4)) {
                            return true;
                        }
                    }
                } else {
                    return false;
                }
            } else if (b >= f98229h.get(this)) {
                symbol = BufferedChannelKt.f98257g;
                if (segment.casState$kotlinx_coroutines_core(index, state$kotlinx_coroutines_core, symbol)) {
                    if (m61764h0(state$kotlinx_coroutines_core, segment, index)) {
                        segment.setState$kotlinx_coroutines_core(index, BufferedChannelKt.BUFFERED);
                        return true;
                    }
                    symbol2 = BufferedChannelKt.f98260j;
                    segment.setState$kotlinx_coroutines_core(index, symbol2);
                    segment.onCancelledRequest(index, false);
                    return false;
                }
            } else if (segment.casState$kotlinx_coroutines_core(index, state$kotlinx_coroutines_core, new k5o((Waiter) state$kotlinx_coroutines_core))) {
                return true;
            }
        }
    }

    /* renamed from: l */
    public final long m61771l() {
        return f98230i.get(this);
    }

    /* renamed from: l0 */
    public final Object m61772l0(ChannelSegment<E> segment, int index, long r, Object waiter) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Object state$kotlinx_coroutines_core = segment.getState$kotlinx_coroutines_core(index);
        if (state$kotlinx_coroutines_core == null) {
            if (r >= (f98228g.get(this) & BufferedChannelKt.f98248E)) {
                if (waiter == null) {
                    symbol3 = BufferedChannelKt.f98264n;
                    return symbol3;
                }
                if (segment.casState$kotlinx_coroutines_core(index, state$kotlinx_coroutines_core, waiter)) {
                    m61761g();
                    symbol2 = BufferedChannelKt.f98263m;
                    return symbol2;
                }
            }
        } else if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED) {
            symbol = BufferedChannelKt.f98259i;
            if (segment.casState$kotlinx_coroutines_core(index, state$kotlinx_coroutines_core, symbol)) {
                m61761g();
                return segment.retrieveElement$kotlinx_coroutines_core(index);
            }
        }
        return m61773m0(segment, index, r, waiter);
    }

    /* renamed from: m0 */
    public final Object m61773m0(ChannelSegment<E> segment, int index, long r, Object waiter) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Symbol symbol6;
        Symbol symbol7;
        Symbol symbol8;
        Symbol symbol9;
        Symbol symbol10;
        Symbol symbol11;
        Symbol symbol12;
        Symbol symbol13;
        Symbol symbol14;
        Symbol symbol15;
        Symbol symbol16;
        while (true) {
            Object state$kotlinx_coroutines_core = segment.getState$kotlinx_coroutines_core(index);
            if (state$kotlinx_coroutines_core != null) {
                symbol5 = BufferedChannelKt.f98255e;
                if (state$kotlinx_coroutines_core != symbol5) {
                    if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED) {
                        symbol6 = BufferedChannelKt.f98259i;
                        if (segment.casState$kotlinx_coroutines_core(index, state$kotlinx_coroutines_core, symbol6)) {
                            m61761g();
                            return segment.retrieveElement$kotlinx_coroutines_core(index);
                        }
                    } else {
                        symbol7 = BufferedChannelKt.f98260j;
                        if (state$kotlinx_coroutines_core == symbol7) {
                            symbol8 = BufferedChannelKt.f98265o;
                            return symbol8;
                        }
                        symbol9 = BufferedChannelKt.f98258h;
                        if (state$kotlinx_coroutines_core == symbol9) {
                            symbol10 = BufferedChannelKt.f98265o;
                            return symbol10;
                        }
                        if (state$kotlinx_coroutines_core == BufferedChannelKt.getCHANNEL_CLOSED()) {
                            m61761g();
                            symbol11 = BufferedChannelKt.f98265o;
                            return symbol11;
                        }
                        symbol12 = BufferedChannelKt.f98257g;
                        if (state$kotlinx_coroutines_core != symbol12) {
                            symbol13 = BufferedChannelKt.f98256f;
                            if (segment.casState$kotlinx_coroutines_core(index, state$kotlinx_coroutines_core, symbol13)) {
                                boolean z = state$kotlinx_coroutines_core instanceof k5o;
                                if (z) {
                                    state$kotlinx_coroutines_core = ((k5o) state$kotlinx_coroutines_core).f75116a;
                                }
                                if (m61764h0(state$kotlinx_coroutines_core, segment, index)) {
                                    symbol16 = BufferedChannelKt.f98259i;
                                    segment.setState$kotlinx_coroutines_core(index, symbol16);
                                    m61761g();
                                    return segment.retrieveElement$kotlinx_coroutines_core(index);
                                }
                                symbol14 = BufferedChannelKt.f98260j;
                                segment.setState$kotlinx_coroutines_core(index, symbol14);
                                segment.onCancelledRequest(index, false);
                                if (z) {
                                    m61761g();
                                }
                                symbol15 = BufferedChannelKt.f98265o;
                                return symbol15;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            if (r < (f98228g.get(this) & BufferedChannelKt.f98248E)) {
                symbol = BufferedChannelKt.f98258h;
                if (segment.casState$kotlinx_coroutines_core(index, state$kotlinx_coroutines_core, symbol)) {
                    m61761g();
                    symbol2 = BufferedChannelKt.f98265o;
                    return symbol2;
                }
            } else {
                if (waiter == null) {
                    symbol3 = BufferedChannelKt.f98264n;
                    return symbol3;
                }
                if (segment.casState$kotlinx_coroutines_core(index, state$kotlinx_coroutines_core, waiter)) {
                    m61761g();
                    symbol4 = BufferedChannelKt.f98263m;
                    return symbol4;
                }
            }
        }
    }

    /* renamed from: n */
    public final Throwable m61774n() {
        Throwable closeCause = getCloseCause();
        return closeCause == null ? new ClosedReceiveChannelException(ChannelsKt.DEFAULT_CLOSE_MESSAGE) : closeCause;
    }

    /* renamed from: n0 */
    public final int m61775n0(ChannelSegment<E> segment, int index, E element, long s, Object waiter, boolean closed) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        segment.storeElement$kotlinx_coroutines_core(index, element);
        if (closed) {
            return m61777o0(segment, index, element, s, waiter, closed);
        }
        Object state$kotlinx_coroutines_core = segment.getState$kotlinx_coroutines_core(index);
        if (state$kotlinx_coroutines_core == null) {
            if (m61751a(s)) {
                if (segment.casState$kotlinx_coroutines_core(index, null, BufferedChannelKt.BUFFERED)) {
                    return 1;
                }
            } else {
                if (waiter == null) {
                    return 3;
                }
                if (segment.casState$kotlinx_coroutines_core(index, null, waiter)) {
                    return 2;
                }
            }
        } else if (state$kotlinx_coroutines_core instanceof Waiter) {
            segment.cleanElement$kotlinx_coroutines_core(index);
            if (m61762g0(state$kotlinx_coroutines_core, element)) {
                symbol3 = BufferedChannelKt.f98259i;
                segment.setState$kotlinx_coroutines_core(index, symbol3);
                onReceiveDequeued();
                return 0;
            }
            symbol = BufferedChannelKt.f98261k;
            Object andSetState$kotlinx_coroutines_core = segment.getAndSetState$kotlinx_coroutines_core(index, symbol);
            symbol2 = BufferedChannelKt.f98261k;
            if (andSetState$kotlinx_coroutines_core != symbol2) {
                segment.onCancelledRequest(index, true);
            }
            return 5;
        }
        return m61777o0(segment, index, element, s, waiter, closed);
    }

    /* renamed from: o */
    public final void m61776o(long nAttempts) {
        if (!((f98231j.addAndGet(this, nAttempts) & 4611686018427387904L) != 0)) {
            return;
        }
        do {
        } while ((f98231j.get(this) & 4611686018427387904L) != 0);
    }

    /* renamed from: o0 */
    public final int m61777o0(ChannelSegment<E> segment, int index, E element, long s, Object waiter, boolean closed) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Symbol symbol6;
        Symbol symbol7;
        while (true) {
            Object state$kotlinx_coroutines_core = segment.getState$kotlinx_coroutines_core(index);
            if (state$kotlinx_coroutines_core != null) {
                symbol2 = BufferedChannelKt.f98255e;
                if (state$kotlinx_coroutines_core != symbol2) {
                    symbol3 = BufferedChannelKt.f98261k;
                    if (state$kotlinx_coroutines_core == symbol3) {
                        segment.cleanElement$kotlinx_coroutines_core(index);
                        return 5;
                    }
                    symbol4 = BufferedChannelKt.f98258h;
                    if (state$kotlinx_coroutines_core == symbol4) {
                        segment.cleanElement$kotlinx_coroutines_core(index);
                        return 5;
                    }
                    if (state$kotlinx_coroutines_core == BufferedChannelKt.getCHANNEL_CLOSED()) {
                        segment.cleanElement$kotlinx_coroutines_core(index);
                        m61759f();
                        return 4;
                    }
                    segment.cleanElement$kotlinx_coroutines_core(index);
                    if (state$kotlinx_coroutines_core instanceof k5o) {
                        state$kotlinx_coroutines_core = ((k5o) state$kotlinx_coroutines_core).f75116a;
                    }
                    if (m61762g0(state$kotlinx_coroutines_core, element)) {
                        symbol7 = BufferedChannelKt.f98259i;
                        segment.setState$kotlinx_coroutines_core(index, symbol7);
                        onReceiveDequeued();
                        return 0;
                    }
                    symbol5 = BufferedChannelKt.f98261k;
                    Object andSetState$kotlinx_coroutines_core = segment.getAndSetState$kotlinx_coroutines_core(index, symbol5);
                    symbol6 = BufferedChannelKt.f98261k;
                    if (andSetState$kotlinx_coroutines_core != symbol6) {
                        segment.onCancelledRequest(index, true);
                    }
                    return 5;
                }
                if (segment.casState$kotlinx_coroutines_core(index, state$kotlinx_coroutines_core, BufferedChannelKt.BUFFERED)) {
                    return 1;
                }
            } else if (!m61751a(s) || closed) {
                if (closed) {
                    symbol = BufferedChannelKt.f98260j;
                    if (segment.casState$kotlinx_coroutines_core(index, null, symbol)) {
                        segment.onCancelledRequest(index, false);
                        return 4;
                    }
                } else {
                    if (waiter == null) {
                        return 3;
                    }
                    if (segment.casState$kotlinx_coroutines_core(index, null, waiter)) {
                        return 2;
                    }
                }
            } else if (segment.casState$kotlinx_coroutines_core(index, null, BufferedChannelKt.BUFFERED)) {
                return 1;
            }
        }
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e) {
        return Channel.DefaultImpls.offer(this, e);
    }

    public void onClosedIdempotent() {
    }

    public void onReceiveDequeued() {
    }

    public void onReceiveEnqueued() {
    }

    /* renamed from: p0 */
    public final void m61778p0(long value) {
        long j;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f98229h;
        do {
            j = atomicLongFieldUpdater.get(this);
            if (j >= value) {
                return;
            }
        } while (!f98229h.compareAndSet(this, j, value));
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
    @Nullable
    public E poll() {
        return (E) Channel.DefaultImpls.poll(this);
    }

    /* renamed from: q */
    public final void m61779q() {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98236o;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
        } while (!C14434t4.m57298a(atomicReferenceFieldUpdater, this, obj, obj == null ? BufferedChannelKt.f98273w : BufferedChannelKt.f98274x));
        if (obj == null) {
            return;
        }
        ((Function1) obj).invoke(getCloseCause());
    }

    /* renamed from: q0 */
    public final void m61780q0(long value) {
        long j;
        long m61800b;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f98228g;
        do {
            j = atomicLongFieldUpdater.get(this);
            long j2 = BufferedChannelKt.f98248E & j;
            if (j2 >= value) {
                return;
            } else {
                m61800b = BufferedChannelKt.m61800b(j2, (int) (j >> 60));
            }
        } while (!f98228g.compareAndSet(this, j, m61800b));
    }

    /* renamed from: r */
    public final boolean m61781r(ChannelSegment<E> segment, int index, long globalIndex) {
        Object state$kotlinx_coroutines_core;
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Symbol symbol6;
        Symbol symbol7;
        do {
            state$kotlinx_coroutines_core = segment.getState$kotlinx_coroutines_core(index);
            if (state$kotlinx_coroutines_core != null) {
                symbol2 = BufferedChannelKt.f98255e;
                if (state$kotlinx_coroutines_core != symbol2) {
                    if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED) {
                        return true;
                    }
                    symbol3 = BufferedChannelKt.f98260j;
                    if (state$kotlinx_coroutines_core == symbol3 || state$kotlinx_coroutines_core == BufferedChannelKt.getCHANNEL_CLOSED()) {
                        return false;
                    }
                    symbol4 = BufferedChannelKt.f98259i;
                    if (state$kotlinx_coroutines_core == symbol4) {
                        return false;
                    }
                    symbol5 = BufferedChannelKt.f98258h;
                    if (state$kotlinx_coroutines_core == symbol5) {
                        return false;
                    }
                    symbol6 = BufferedChannelKt.f98257g;
                    if (state$kotlinx_coroutines_core == symbol6) {
                        return true;
                    }
                    symbol7 = BufferedChannelKt.f98256f;
                    return state$kotlinx_coroutines_core != symbol7 && globalIndex == getReceiversCounter$kotlinx_coroutines_core();
                }
            }
            symbol = BufferedChannelKt.f98258h;
        } while (!segment.casState$kotlinx_coroutines_core(index, state$kotlinx_coroutines_core, symbol));
        m61761g();
        return false;
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Nullable
    public Object receive(@NotNull Continuation<? super E> continuation) {
        return m61720P(this, continuation);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Nullable
    /* renamed from: receiveCatching-JP2dKIU, reason: not valid java name */
    public Object mo74149receiveCatchingJP2dKIU(@NotNull Continuation<? super ChannelResult<? extends E>> continuation) {
        return m61721Q(this, continuation);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
    @LowPriorityInOverloadResolution
    @Nullable
    public Object receiveOrNull(@NotNull Continuation<? super E> continuation) {
        return Channel.DefaultImpls.receiveOrNull(this, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0088, code lost:
    
        r14.selectInRegistrationPhase(kotlin.Unit.INSTANCE);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x008d, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void registerSelectForSend(@org.jetbrains.annotations.NotNull kotlinx.coroutines.selects.SelectInstance<?> r14, @org.jetbrains.annotations.Nullable java.lang.Object r15) {
        /*
            r13 = this;
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = access$getSendSegment$FU$p()
            java.lang.Object r0 = r0.get(r13)
            kotlinx.coroutines.channels.ChannelSegment r0 = (kotlinx.coroutines.channels.ChannelSegment) r0
        La:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = access$getSendersAndCloseStatus$FU$p()
            long r1 = r1.getAndIncrement(r13)
            r3 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            long r3 = r3 & r1
            boolean r1 = access$isClosedForSend0(r13, r1)
            int r2 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            long r5 = (long) r2
            long r5 = r3 / r5
            long r7 = (long) r2
            long r7 = r3 % r7
            int r2 = (int) r7
            long r7 = r0.id
            int r7 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r7 == 0) goto L35
            kotlinx.coroutines.channels.ChannelSegment r5 = access$findSegmentSend(r13, r5, r0)
            if (r5 != 0) goto L34
            if (r1 == 0) goto La
            goto L73
        L34:
            r0 = r5
        L35:
            r5 = r13
            r6 = r0
            r7 = r2
            r8 = r15
            r9 = r3
            r11 = r14
            r12 = r1
            int r5 = access$updateCellSend(r5, r6, r7, r8, r9, r11, r12)
            if (r5 == 0) goto L85
            r6 = 1
            if (r5 == r6) goto L88
            r6 = 2
            if (r5 == r6) goto L6e
            r1 = 3
            if (r5 == r1) goto L62
            r1 = 4
            if (r5 == r1) goto L56
            r1 = 5
            if (r5 == r1) goto L52
            goto La
        L52:
            r0.cleanPrev()
            goto La
        L56:
            long r1 = r13.getReceiversCounter$kotlinx_coroutines_core()
            int r1 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r1 >= 0) goto L73
            r0.cleanPrev()
            goto L73
        L62:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "unexpected"
            java.lang.String r14 = r14.toString()
            r13.<init>(r14)
            throw r13
        L6e:
            if (r1 == 0) goto L77
            r0.onSlotCleaned()
        L73:
            r13.m61734G(r15, r14)
            goto L8d
        L77:
            boolean r15 = r14 instanceof kotlinx.coroutines.Waiter
            if (r15 == 0) goto L7e
            kotlinx.coroutines.Waiter r14 = (kotlinx.coroutines.Waiter) r14
            goto L7f
        L7e:
            r14 = 0
        L7f:
            if (r14 == 0) goto L8d
            access$prepareSenderForSuspension(r13, r14, r0, r2)
            goto L8d
        L85:
            r0.cleanPrev()
        L88:
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            r14.selectInRegistrationPhase(r13)
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.registerSelectForSend(kotlinx.coroutines.selects.SelectInstance, java.lang.Object):void");
    }

    /* renamed from: s */
    public final boolean m61782s(long sendersAndCloseStatusCur, boolean isClosedForReceive) {
        int i = (int) (sendersAndCloseStatusCur >> 60);
        if (i == 0 || i == 1) {
            return false;
        }
        if (i == 2) {
            m61757e(sendersAndCloseStatusCur & BufferedChannelKt.f98248E);
            if (isClosedForReceive && hasElements$kotlinx_coroutines_core()) {
                return false;
            }
        } else {
            if (i != 3) {
                throw new IllegalStateException(("unexpected close status: " + i).toString());
            }
            m61755d(sendersAndCloseStatusCur & BufferedChannelKt.f98248E);
        }
        return true;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @Nullable
    public Object send(E e, @NotNull Continuation<? super Unit> continuation) {
        return m61723b0(this, e, continuation);
    }

    @Nullable
    public Object sendBroadcast$kotlinx_coroutines_core(E e, @NotNull Continuation<? super Boolean> continuation) {
        return m61724c0(this, e, continuation);
    }

    public final <R> R sendImpl(E element, @Nullable Object waiter, @NotNull Function0<? extends R> onRendezvousOrBuffered, @NotNull Function2<? super ChannelSegment<E>, ? super Integer, ? extends R> onSuspend, @NotNull Function0<? extends R> onClosed, @NotNull Function4<? super ChannelSegment<E>, ? super Integer, ? super E, ? super Long, ? extends R> onNoWaiterSuspend) {
        ChannelSegment channelSegment;
        ChannelSegment channelSegment2 = (ChannelSegment) f98232k.get(this);
        while (true) {
            long andIncrement = f98228g.getAndIncrement(this);
            long j = andIncrement & BufferedChannelKt.f98248E;
            boolean m61784u = m61784u(andIncrement);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = j / i;
            int i2 = (int) (j % i);
            if (channelSegment2.id != j2) {
                ChannelSegment m61767j = m61767j(j2, channelSegment2);
                if (m61767j != null) {
                    channelSegment = m61767j;
                } else if (m61784u) {
                    return onClosed.invoke();
                }
            } else {
                channelSegment = channelSegment2;
            }
            int m61775n0 = m61775n0(channelSegment, i2, element, j, waiter, m61784u);
            if (m61775n0 == 0) {
                channelSegment.cleanPrev();
                return onRendezvousOrBuffered.invoke();
            }
            if (m61775n0 == 1) {
                return onRendezvousOrBuffered.invoke();
            }
            if (m61775n0 == 2) {
                if (m61784u) {
                    channelSegment.onSlotCleaned();
                    return onClosed.invoke();
                }
                Waiter waiter2 = waiter instanceof Waiter ? (Waiter) waiter : null;
                if (waiter2 != null) {
                    m61738K(waiter2, channelSegment, i2);
                }
                return onSuspend.invoke(channelSegment, Integer.valueOf(i2));
            }
            if (m61775n0 == 3) {
                return onNoWaiterSuspend.invoke(channelSegment, Integer.valueOf(i2), element, Long.valueOf(j));
            }
            if (m61775n0 == 4) {
                if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
                return onClosed.invoke();
            }
            if (m61775n0 == 5) {
                channelSegment.cleanPrev();
            }
            channelSegment2 = channelSegment;
        }
    }

    public boolean shouldSendSuspend$kotlinx_coroutines_core() {
        return m61760f0(f98228g.get(this));
    }

    /* renamed from: t */
    public final boolean m61783t(long j) {
        return m61782s(j, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x01e0, code lost:
    
        r3 = (kotlinx.coroutines.channels.ChannelSegment) r3.getNext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01e7, code lost:
    
        if (r3 != null) goto L101;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 528
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.toString():java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final String toStringDebug$kotlinx_coroutines_core() {
        List listOf;
        String valueOf;
        ChannelSegment channelSegment;
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("S=");
        sb2.append(getSendersCounter$kotlinx_coroutines_core());
        sb2.append(",R=");
        sb2.append(getReceiversCounter$kotlinx_coroutines_core());
        sb2.append(",B=");
        sb2.append(m61771l());
        sb2.append(",B'=");
        sb2.append(f98231j.get(this));
        sb2.append(",C=");
        AtomicLongFieldUpdater atomicLongFieldUpdater = f98228g;
        sb2.append((int) (atomicLongFieldUpdater.get(this) >> 60));
        sb2.append(',');
        sb.append(sb2.toString());
        int i = (int) (atomicLongFieldUpdater.get(this) >> 60);
        if (i == 1) {
            sb.append("CANCELLATION_STARTED,");
        } else if (i == 2) {
            sb.append("CLOSED,");
        } else if (i == 3) {
            sb.append("CANCELLED,");
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("SEND_SEGM=");
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98232k;
        sb3.append(DebugStringsKt.getHexAddress(atomicReferenceFieldUpdater.get(this)));
        sb3.append(",RCV_SEGM=");
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f98233l;
        sb3.append(DebugStringsKt.getHexAddress(atomicReferenceFieldUpdater2.get(this)));
        sb.append(sb3.toString());
        if (!m61785v()) {
            sb.append(",EB_SEGM=" + DebugStringsKt.getHexAddress(f98234m.get(this)));
        }
        sb.append(GlideException.C1935a.f14609h);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ChannelSegment[]{atomicReferenceFieldUpdater2.get(this), atomicReferenceFieldUpdater.get(this), f98234m.get(this)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listOf) {
            ChannelSegment channelSegment2 = (ChannelSegment) obj;
            channelSegment = BufferedChannelKt.f98251a;
            if (channelSegment2 != channelSegment) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it2.next();
        if (it2.hasNext()) {
            long j = ((ChannelSegment) next).id;
            do {
                Object next2 = it2.next();
                long j2 = ((ChannelSegment) next2).id;
                if (j > j2) {
                    next = next2;
                    j = j2;
                }
            } while (it2.hasNext());
        }
        ChannelSegment channelSegment3 = (ChannelSegment) next;
        do {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(DebugStringsKt.getHexAddress(channelSegment3));
            sb4.append("=[");
            sb4.append(channelSegment3.isRemoved() ? "*" : "");
            sb4.append(channelSegment3.id);
            sb4.append(",prev=");
            ChannelSegment channelSegment4 = (ChannelSegment) channelSegment3.getPrev();
            sb4.append(channelSegment4 != null ? DebugStringsKt.getHexAddress(channelSegment4) : null);
            sb4.append(',');
            sb.append(sb4.toString());
            int i2 = BufferedChannelKt.SEGMENT_SIZE;
            for (int i3 = 0; i3 < i2; i3++) {
                Object state$kotlinx_coroutines_core = channelSegment3.getState$kotlinx_coroutines_core(i3);
                Object element$kotlinx_coroutines_core = channelSegment3.getElement$kotlinx_coroutines_core(i3);
                if (state$kotlinx_coroutines_core instanceof CancellableContinuation) {
                    valueOf = "cont";
                } else if (state$kotlinx_coroutines_core instanceof SelectInstance) {
                    valueOf = "select";
                } else if (state$kotlinx_coroutines_core instanceof fel) {
                    valueOf = "receiveCatching";
                } else if (state$kotlinx_coroutines_core instanceof C18164b) {
                    valueOf = "send(broadcast)";
                } else if (state$kotlinx_coroutines_core instanceof k5o) {
                    valueOf = "EB(" + state$kotlinx_coroutines_core + ')';
                } else {
                    valueOf = String.valueOf(state$kotlinx_coroutines_core);
                }
                sb.append('[' + i3 + "]=(" + valueOf + ',' + element$kotlinx_coroutines_core + "),");
            }
            StringBuilder sb5 = new StringBuilder();
            sb5.append("next=");
            ChannelSegment channelSegment5 = (ChannelSegment) channelSegment3.getNext();
            sb5.append(channelSegment5 != null ? DebugStringsKt.getHexAddress(channelSegment5) : null);
            sb5.append("]  ");
            sb.append(sb5.toString());
            channelSegment3 = (ChannelSegment) channelSegment3.getNext();
        } while (channelSegment3 != null);
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    /* renamed from: tryReceive-PtdJZtk, reason: not valid java name */
    public Object mo74150tryReceivePtdJZtk() {
        Object obj;
        ChannelSegment channelSegment;
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        long j = f98229h.get(this);
        long j2 = f98228g.get(this);
        if (m61783t(j2)) {
            return ChannelResult.INSTANCE.m74168closedJP2dKIU(getCloseCause());
        }
        if (j >= (j2 & BufferedChannelKt.f98248E)) {
            return ChannelResult.INSTANCE.m74169failurePtdJZtk();
        }
        obj = BufferedChannelKt.f98261k;
        ChannelSegment channelSegment2 = (ChannelSegment) f98233l.get(this);
        while (!isClosedForReceive()) {
            long andIncrement = f98229h.getAndIncrement(this);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j3 = andIncrement / i;
            int i2 = (int) (andIncrement % i);
            if (channelSegment2.id != j3) {
                ChannelSegment m61765i = m61765i(j3, channelSegment2);
                if (m61765i == null) {
                    continue;
                } else {
                    channelSegment = m61765i;
                }
            } else {
                channelSegment = channelSegment2;
            }
            Object m61772l0 = m61772l0(channelSegment, i2, andIncrement, obj);
            symbol = BufferedChannelKt.f98263m;
            if (m61772l0 == symbol) {
                Waiter waiter = obj instanceof Waiter ? (Waiter) obj : null;
                if (waiter != null) {
                    m61737J(waiter, channelSegment, i2);
                }
                waitExpandBufferCompletion$kotlinx_coroutines_core(andIncrement);
                channelSegment.onSlotCleaned();
                return ChannelResult.INSTANCE.m74169failurePtdJZtk();
            }
            symbol2 = BufferedChannelKt.f98265o;
            if (m61772l0 != symbol2) {
                symbol3 = BufferedChannelKt.f98264n;
                if (m61772l0 == symbol3) {
                    throw new IllegalStateException("unexpected".toString());
                }
                channelSegment.cleanPrev();
                return ChannelResult.INSTANCE.m74170successJP2dKIU(m61772l0);
            }
            if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                channelSegment.cleanPrev();
            }
            channelSegment2 = channelSegment;
        }
        return ChannelResult.INSTANCE.m74168closedJP2dKIU(getCloseCause());
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00bb, code lost:
    
        return kotlinx.coroutines.channels.ChannelResult.INSTANCE.m74170successJP2dKIU(kotlin.Unit.INSTANCE);
     */
    @Override // kotlinx.coroutines.channels.SendChannel
    @org.jetbrains.annotations.NotNull
    /* renamed from: trySend-JP2dKIU */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo74147trySendJP2dKIU(E r15) {
        /*
            r14 = this;
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = kotlinx.coroutines.channels.BufferedChannel.f98228g
            long r0 = r0.get(r14)
            boolean r0 = r14.m61760f0(r0)
            if (r0 == 0) goto L13
            kotlinx.coroutines.channels.ChannelResult$Companion r14 = kotlinx.coroutines.channels.ChannelResult.INSTANCE
            java.lang.Object r14 = r14.m74169failurePtdJZtk()
            return r14
        L13:
            kotlinx.coroutines.internal.Symbol r8 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_SEND$p()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = access$getSendSegment$FU$p()
            java.lang.Object r0 = r0.get(r14)
            kotlinx.coroutines.channels.ChannelSegment r0 = (kotlinx.coroutines.channels.ChannelSegment) r0
        L21:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = access$getSendersAndCloseStatus$FU$p()
            long r1 = r1.getAndIncrement(r14)
            r3 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            long r9 = r1 & r3
            boolean r11 = access$isClosedForSend0(r14, r1)
            int r1 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            long r2 = (long) r1
            long r2 = r9 / r2
            long r4 = (long) r1
            long r4 = r9 % r4
            int r12 = (int) r4
            long r4 = r0.id
            int r1 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r1 == 0) goto L4e
            kotlinx.coroutines.channels.ChannelSegment r1 = access$findSegmentSend(r14, r2, r0)
            if (r1 != 0) goto L4c
            if (r11 == 0) goto L21
            goto L8e
        L4c:
            r13 = r1
            goto L4f
        L4e:
            r13 = r0
        L4f:
            r0 = r14
            r1 = r13
            r2 = r12
            r3 = r15
            r4 = r9
            r6 = r8
            r7 = r11
            int r0 = access$updateCellSend(r0, r1, r2, r3, r4, r6, r7)
            if (r0 == 0) goto Lb0
            r1 = 1
            if (r0 == r1) goto Lb3
            r1 = 2
            if (r0 == r1) goto L89
            r1 = 3
            if (r0 == r1) goto L7d
            r1 = 4
            if (r0 == r1) goto L71
            r1 = 5
            if (r0 == r1) goto L6c
            goto L6f
        L6c:
            r13.cleanPrev()
        L6f:
            r0 = r13
            goto L21
        L71:
            long r0 = r14.getReceiversCounter$kotlinx_coroutines_core()
            int r15 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r15 >= 0) goto L8e
            r13.cleanPrev()
            goto L8e
        L7d:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "unexpected"
            java.lang.String r15 = r15.toString()
            r14.<init>(r15)
            throw r14
        L89:
            if (r11 == 0) goto L99
            r13.onSlotCleaned()
        L8e:
            kotlinx.coroutines.channels.ChannelResult$Companion r15 = kotlinx.coroutines.channels.ChannelResult.INSTANCE
            java.lang.Throwable r14 = r14.getSendException()
            java.lang.Object r14 = r15.m74168closedJP2dKIU(r14)
            goto Lbb
        L99:
            boolean r15 = r8 instanceof kotlinx.coroutines.Waiter
            if (r15 == 0) goto La0
            kotlinx.coroutines.Waiter r8 = (kotlinx.coroutines.Waiter) r8
            goto La1
        La0:
            r8 = 0
        La1:
            if (r8 == 0) goto La6
            access$prepareSenderForSuspension(r14, r8, r13, r12)
        La6:
            r13.onSlotCleaned()
            kotlinx.coroutines.channels.ChannelResult$Companion r14 = kotlinx.coroutines.channels.ChannelResult.INSTANCE
            java.lang.Object r14 = r14.m74169failurePtdJZtk()
            goto Lbb
        Lb0:
            r13.cleanPrev()
        Lb3:
            kotlinx.coroutines.channels.ChannelResult$Companion r14 = kotlinx.coroutines.channels.ChannelResult.INSTANCE
            kotlin.Unit r15 = kotlin.Unit.INSTANCE
            java.lang.Object r14 = r14.m74170successJP2dKIU(r15)
        Lbb:
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.mo74147trySendJP2dKIU(java.lang.Object):java.lang.Object");
    }

    /* renamed from: u */
    public final boolean m61784u(long j) {
        return m61782s(j, false);
    }

    /* renamed from: v */
    public final boolean m61785v() {
        long m61771l = m61771l();
        return m61771l == 0 || m61771l == Long.MAX_VALUE;
    }

    /* renamed from: w */
    public final void m61786w(AtomicLongFieldUpdater atomicLongFieldUpdater, Function1<? super Long, Unit> function1, Object obj) {
        while (true) {
            function1.invoke(Long.valueOf(atomicLongFieldUpdater.get(obj)));
        }
    }

    public final void waitExpandBufferCompletion$kotlinx_coroutines_core(long globalIndex) {
        int i;
        long j;
        long m61799a;
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long m61799a2;
        long j2;
        long m61799a3;
        if (m61785v()) {
            return;
        }
        do {
        } while (m61771l() <= globalIndex);
        i = BufferedChannelKt.f98252b;
        for (int i2 = 0; i2 < i; i2++) {
            long m61771l = m61771l();
            if (m61771l == (4611686018427387903L & f98231j.get(this)) && m61771l == m61771l()) {
                return;
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater2 = f98231j;
        do {
            j = atomicLongFieldUpdater2.get(this);
            m61799a = BufferedChannelKt.m61799a(j & 4611686018427387903L, true);
        } while (!atomicLongFieldUpdater2.compareAndSet(this, j, m61799a));
        while (true) {
            long m61771l2 = m61771l();
            atomicLongFieldUpdater = f98231j;
            long j3 = atomicLongFieldUpdater.get(this);
            long j4 = j3 & 4611686018427387903L;
            boolean z = (4611686018427387904L & j3) != 0;
            if (m61771l2 == j4 && m61771l2 == m61771l()) {
                break;
            } else if (!z) {
                m61799a2 = BufferedChannelKt.m61799a(j4, true);
                atomicLongFieldUpdater.compareAndSet(this, j3, m61799a2);
            }
        }
        do {
            j2 = atomicLongFieldUpdater.get(this);
            m61799a3 = BufferedChannelKt.m61799a(j2 & 4611686018427387903L, false);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j2, m61799a3));
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x003c, code lost:
    
        r8 = (kotlinx.coroutines.channels.ChannelSegment) r8.getPrev();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m61787y(kotlinx.coroutines.channels.ChannelSegment<E> r8) {
        /*
            r7 = this;
        L0:
            int r0 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            int r0 = r0 + (-1)
        L4:
            r1 = -1
            r3 = -1
            if (r3 >= r0) goto L3c
            long r3 = r8.id
            int r5 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            long r5 = (long) r5
            long r3 = r3 * r5
            long r5 = (long) r0
            long r3 = r3 + r5
            long r5 = r7.getReceiversCounter$kotlinx_coroutines_core()
            int r5 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r5 >= 0) goto L1a
            return r1
        L1a:
            java.lang.Object r1 = r8.getState$kotlinx_coroutines_core(r0)
            if (r1 == 0) goto L2c
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getIN_BUFFER$p()
            if (r1 != r2) goto L27
            goto L2c
        L27:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.BUFFERED
            if (r1 != r2) goto L39
            return r3
        L2c:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.getCHANNEL_CLOSED()
            boolean r1 = r8.casState$kotlinx_coroutines_core(r0, r1, r2)
            if (r1 == 0) goto L1a
            r8.onSlotCleaned()
        L39:
            int r0 = r0 + (-1)
            goto L4
        L3c:
            kotlinx.coroutines.internal.ConcurrentLinkedListNode r8 = r8.getPrev()
            kotlinx.coroutines.channels.ChannelSegment r8 = (kotlinx.coroutines.channels.ChannelSegment) r8
            if (r8 != 0) goto L0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.m61787y(kotlinx.coroutines.channels.ChannelSegment):long");
    }

    /* renamed from: z */
    public final void m61788z() {
        long j;
        long m61800b;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f98228g;
        do {
            j = atomicLongFieldUpdater.get(this);
            if (((int) (j >> 60)) != 0) {
                return;
            } else {
                m61800b = BufferedChannelKt.m61800b(BufferedChannelKt.f98248E & j, 1);
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, m61800b));
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void cancel() {
        cancelImpl$kotlinx_coroutines_core(null);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void cancel(@Nullable CancellationException cause) {
        cancelImpl$kotlinx_coroutines_core(cause);
    }

    public /* synthetic */ BufferedChannel(int i, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? null : function1);
    }
}
