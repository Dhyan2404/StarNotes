package androidx.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.MainThread;
import androidx.annotation.NavigationRes;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.os.BundleKt;
import androidx.fragment.app.C1126e;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavControllerViewModel;
import androidx.navigation.NavDeepLinkRequest;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigator;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.v6l;
import com.sunia.commonv2.global.HWREngineConstant;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt__ReversedViewsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000ä\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001d\b\u0016\u0018\u0000 õ\u00012\u00020\u0001:\u0006õ\u0001ö\u0001÷\u0001B\u0012\u0012\u0007\u0010\u0080\u0001\u001a\u00020{¢\u0006\u0006\bó\u0001\u0010ô\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J[\u0010\u0014\u001a\u00020\u0005*\n\u0012\u0006\b\u0001\u0012\u00020\b0\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2#\b\u0002\u0010\u0013\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u00050\u000fH\u0002JI\u0010\u0018\u001a\u00020\u0005*\n\u0012\u0006\b\u0001\u0012\u00020\b0\u00072\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00162#\b\u0002\u0010\u0013\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u00050\u000fH\u0002J$\u0010\u001c\u001a\u00020\u00162\b\b\u0001\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0016H\u0003J \u0010\u001f\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J2\u0010\"\u001a\u00020\u00162\u0010\u0010 \u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\t2\u0006\u0010!\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J*\u0010&\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00022\b\b\u0002\u0010\u0017\u001a\u00020\u00162\u000e\b\u0002\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#H\u0002J\u0012\u0010'\u001a\u00020\u00162\b\b\u0001\u0010\u001a\u001a\u00020\u0019H\u0003J\u0010\u0010(\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001dH\u0003J\b\u0010)\u001a\u00020\u0016H\u0002J\b\u0010*\u001a\u00020\u0016H\u0002J\b\u0010+\u001a\u00020\u0016H\u0002J\u0012\u0010.\u001a\u00020\u00052\b\u0010-\u001a\u0004\u0018\u00010,H\u0003J\u0012\u00101\u001a\u0004\u0018\u00010\u001d2\u0006\u00100\u001a\u00020/H\u0002J\u0018\u00102\u001a\u0004\u0018\u00010\b*\u00020\b2\b\b\u0001\u0010\u001a\u001a\u00020\u0019H\u0002J.\u00105\u001a\u00020\u00052\u0006\u00103\u001a\u00020\b2\b\u00104\u001a\u0004\u0018\u00010,2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0003J\u001a\u00106\u001a\u00020\u00162\u0006\u00103\u001a\u00020\b2\b\u00104\u001a\u0004\u0018\u00010,H\u0002J.\u00108\u001a\u00020\u00162\u0006\u00107\u001a\u00020\u00192\b\u00104\u001a\u0004\u0018\u00010,2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002J\u0010\u00109\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J4\u0010:\u001a\u00020\u00162\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\b\u00104\u001a\u0004\u0018\u00010,2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002J\u001e\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u000e\u0010;\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#H\u0002J2\u0010?\u001a\u00020\u00052\u0006\u00103\u001a\u00020\b2\b\u0010=\u001a\u0004\u0018\u00010,2\u0006\u0010\u0012\u001a\u00020\u00022\u000e\b\u0002\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0002J\b\u0010@\u001a\u00020\u0005H\u0002J\u0019\u0010C\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0000¢\u0006\u0004\bA\u0010BJ\u0010\u0010F\u001a\u00020\u00052\u0006\u0010E\u001a\u00020DH\u0016J\u0010\u0010G\u001a\u00020\u00052\u0006\u0010E\u001a\u00020DH\u0016J\b\u0010H\u001a\u00020\u0016H\u0017J\u001a\u0010H\u001a\u00020\u00162\b\b\u0001\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0016H\u0017J\"\u0010H\u001a\u00020\u00162\b\b\u0001\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0017J\"\u0010H\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0016H\u0007J%\u0010M\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00022\f\u0010J\u001a\b\u0012\u0004\u0012\u00020\u00050IH\u0000¢\u0006\u0004\bK\u0010LJ\u0010\u0010N\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001dH\u0007J\u0012\u0010N\u001a\u00020\u00162\b\b\u0001\u0010\u001a\u001a\u00020\u0019H\u0007J\b\u0010O\u001a\u00020\u0016H\u0017J\u000f\u0010R\u001a\u00020\u0005H\u0000¢\u0006\u0004\bP\u0010QJ\u0015\u0010U\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0000¢\u0006\u0004\bS\u0010TJ\u0012\u0010W\u001a\u00020\u00052\b\b\u0001\u0010V\u001a\u00020\u0019H\u0017J\u001c\u0010W\u001a\u00020\u00052\b\b\u0001\u0010V\u001a\u00020\u00192\b\u0010-\u001a\u0004\u0018\u00010,H\u0017J\u001a\u0010W\u001a\u00020\u00052\u0006\u0010Y\u001a\u00020X2\b\u0010-\u001a\u0004\u0018\u00010,H\u0017J\u0012\u0010\\\u001a\u00020\u00162\b\u0010[\u001a\u0004\u0018\u00010ZH\u0017J\u0014\u0010]\u001a\u0004\u0018\u00010\b2\b\b\u0001\u0010\u001a\u001a\u00020\u0019H\u0007J\u0012\u0010]\u001a\u0004\u0018\u00010\b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0007J\u0012\u0010_\u001a\u00020\u00052\b\b\u0001\u0010^\u001a\u00020\u0019H\u0017J\u001c\u0010_\u001a\u00020\u00052\b\b\u0001\u0010^\u001a\u00020\u00192\b\u00104\u001a\u0004\u0018\u00010,H\u0017J&\u0010_\u001a\u00020\u00052\b\b\u0001\u0010^\u001a\u00020\u00192\b\u00104\u001a\u0004\u0018\u00010,2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0017J0\u0010_\u001a\u00020\u00052\b\b\u0001\u0010^\u001a\u00020\u00192\b\u00104\u001a\u0004\u0018\u00010,2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0017J\u0010\u0010_\u001a\u00020\u00052\u0006\u00100\u001a\u00020`H\u0017J\u001a\u0010_\u001a\u00020\u00052\u0006\u00100\u001a\u00020`2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0017J$\u0010_\u001a\u00020\u00052\u0006\u00100\u001a\u00020`2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0017J\u0010\u0010_\u001a\u00020\u00052\u0006\u0010b\u001a\u00020aH\u0017J\u001a\u0010_\u001a\u00020\u00052\u0006\u0010b\u001a\u00020a2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0017J$\u0010_\u001a\u00020\u00052\u0006\u0010b\u001a\u00020a2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0017J\u0010\u0010_\u001a\u00020\u00052\u0006\u0010d\u001a\u00020cH\u0017J\u001a\u0010_\u001a\u00020\u00052\u0006\u0010d\u001a\u00020c2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0017J\u0018\u0010_\u001a\u00020\u00052\u0006\u0010d\u001a\u00020c2\u0006\u0010\u000e\u001a\u00020\rH\u0017J)\u0010_\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001d2\u0017\u0010g\u001a\u0013\u0012\u0004\u0012\u00020e\u0012\u0004\u0012\u00020\u00050\u000f¢\u0006\u0002\bfH\u0007J(\u0010_\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001d2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007J\b\u0010i\u001a\u00020hH\u0016J\n\u0010\u0017\u001a\u0004\u0018\u00010,H\u0017J\u0012\u0010k\u001a\u00020\u00052\b\u0010j\u001a\u0004\u0018\u00010,H\u0017J\u0010\u0010n\u001a\u00020\u00052\u0006\u0010m\u001a\u00020lH\u0017J\u0010\u0010q\u001a\u00020\u00052\u0006\u0010p\u001a\u00020oH\u0017J\u0010\u0010s\u001a\u00020\u00052\u0006\u0010r\u001a\u00020\u0016H\u0017J\u0010\u0010v\u001a\u00020\u00052\u0006\u0010u\u001a\u00020tH\u0017J\u0012\u0010y\u001a\u00020x2\b\b\u0001\u0010w\u001a\u00020\u0019H\u0016J\u0012\u0010z\u001a\u00020\u00022\b\b\u0001\u0010\u001a\u001a\u00020\u0019H\u0016J\u000e\u0010z\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001dR\u0018\u0010\u0080\u0001\u001a\u00020{8\u0007¢\u0006\f\n\u0004\b|\u0010}\u001a\u0004\b~\u0010\u007fR\u001b\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0081\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b?\u0010\u0082\u0001R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u001a\u0010\u0089\u0001\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b'\u0010\u0088\u0001R\u001a\u0010\u008b\u0001\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b(\u0010\u008a\u0001R\"\u0010\u008f\u0001\u001a\f\u0012\u0005\u0012\u00030\u008d\u0001\u0018\u00010\u008c\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b+\u0010\u008e\u0001R\u0018\u0010\u0091\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\"\u0010\u0090\u0001R\u001c\u0010\u0093\u0001\u001a\b\u0012\u0004\u0012\u00020\u00020#8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b:\u0010\u0092\u0001R#\u0010\u0096\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\t0\u0094\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b2\u0010\u0095\u0001R+\u0010\u009b\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\t0\u0097\u00018GX\u0087\u0004¢\u0006\u000f\n\u0005\b1\u0010\u0098\u0001\u001a\u0006\b\u0099\u0001\u0010\u009a\u0001R$\u0010\u009d\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\t0\u0094\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u0095\u0001R(\u0010\u009f\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\t0\u0097\u00018\u0006¢\u0006\u000f\n\u0005\b<\u0010\u0098\u0001\u001a\u0006\b\u009e\u0001\u0010\u009a\u0001R#\u0010¢\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020 \u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b6\u0010¡\u0001R%\u0010¥\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0005\u0012\u00030£\u00010 \u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¤\u0001\u0010¡\u0001R%\u0010¦\u0001\u001a\u0011\u0012\u0004\u0012\u00020\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001d0 \u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0006\u0010¡\u0001R)\u0010§\u0001\u001a\u0015\u0012\u0004\u0012\u00020\u001d\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0#0 \u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b5\u0010¡\u0001R\u001a\u0010©\u0001\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0014\u0010¨\u0001R\u001b\u0010¬\u0001\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0001\u0010«\u0001R\u001b\u0010¯\u0001\u001a\u0005\u0018\u00010\u00ad\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b.\u0010®\u0001R\u001d\u0010²\u0001\u001a\t\u0012\u0004\u0012\u00020D0°\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0018\u0010±\u0001R)\u0010¹\u0001\u001a\u00030³\u00018@@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\b\u001c\u0010´\u0001\u001a\u0006\bµ\u0001\u0010¶\u0001\"\u0006\b·\u0001\u0010¸\u0001R\u0017\u0010¼\u0001\u001a\u00030º\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u001f\u0010»\u0001R\u0018\u0010À\u0001\u001a\u00030½\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¾\u0001\u0010¿\u0001R\u0019\u0010Â\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÁ\u0001\u0010\u0090\u0001R\u0019\u0010Å\u0001\u001a\u00030Ã\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b&\u0010Ä\u0001R1\u0010È\u0001\u001a\u001c\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\b0\u0007\u0012\t\u0012\u00070Æ\u0001R\u00020\u00000 \u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÇ\u0001\u0010¡\u0001R5\u0010Ê\u0001\u001a\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b8\u0010É\u0001R5\u0010Ë\u0001\u001a\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b9\u0010É\u0001R#\u0010Ì\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00160 \u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b)\u0010¡\u0001R\u0018\u0010Î\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b*\u0010Í\u0001R\u001d\u0010Ñ\u0001\u001a\t\u0012\u0004\u0012\u00020\u00020Ï\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b@\u0010Ð\u0001R!\u0010Ö\u0001\u001a\u00030\u0084\u00018VX\u0096\u0084\u0002¢\u0006\u0010\n\u0006\bÒ\u0001\u0010Ó\u0001\u001a\u0006\bÔ\u0001\u0010Õ\u0001R\u001e\u0010Ú\u0001\u001a\t\u0012\u0004\u0012\u00020\u00020×\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bØ\u0001\u0010Ù\u0001R#\u0010à\u0001\u001a\t\u0012\u0004\u0012\u00020\u00020Û\u00018\u0006¢\u0006\u0010\n\u0006\bÜ\u0001\u0010Ý\u0001\u001a\u0006\bÞ\u0001\u0010ß\u0001R\u0017\u0010â\u0001\u001a\u00020\u00198BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u009c\u0001\u0010á\u0001R'\u0010Y\u001a\u00020X2\u0006\u0010Y\u001a\u00020X8W@WX\u0096\u000e¢\u0006\u000f\u001a\u0006\bã\u0001\u0010ä\u0001\"\u0005\bW\u0010å\u0001R,\u0010æ\u0001\u001a\u00030Ã\u00012\b\u0010æ\u0001\u001a\u00030Ã\u00018V@WX\u0096\u000e¢\u0006\u0010\u001a\u0006\bç\u0001\u0010è\u0001\"\u0006\bé\u0001\u0010ê\u0001R\u0019\u0010í\u0001\u001a\u0004\u0018\u00010\b8VX\u0096\u0004¢\u0006\b\u001a\u0006\bë\u0001\u0010ì\u0001R\u0019\u0010ð\u0001\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004¢\u0006\b\u001a\u0006\bî\u0001\u0010ï\u0001R\u0019\u0010ò\u0001\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004¢\u0006\b\u001a\u0006\bñ\u0001\u0010ï\u0001¨\u0006ø\u0001"}, m61528d2 = {"Landroidx/navigation/NavController;", "", "Landroidx/navigation/NavBackStackEntry;", "child", "parent", "", C4921e.f26528e, "Landroidx/navigation/Navigator;", "Landroidx/navigation/NavDestination;", "", "entries", "Landroidx/navigation/NavOptions;", "navOptions", "Landroidx/navigation/Navigator$Extras;", "navigatorExtras", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "backStackEntry", Constants.TRANSLET_OUTPUT_PNAME, "q", "popUpTo", "", "saveState", "t", "", "destinationId", "inclusive", "u", "", "route", "v", "popOperations", "foundDestination", C6998g.f39679a, "Lkotlin/collections/ArrayDeque;", "Landroidx/navigation/NavBackStackEntryState;", "savedState", "y", "d", "e", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, SardineUtil.DEFAULT_NAMESPACE_PREFIX, C6997f.f39671c, "Landroid/os/Bundle;", "startDestinationArgs", "s", "", NavInflater.f8492d, "j", "i", "node", "args", "p", "m", "id", "A", "B", C6999h.f39688c, "backStackState", "l", "finalArgs", "restoredEntries", "b", "E", "unlinkChildFromParent$navigation_runtime_release", "(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;", "unlinkChildFromParent", "Landroidx/navigation/NavController$OnDestinationChangedListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addOnDestinationChangedListener", "removeOnDestinationChangedListener", "popBackStack", "Lkotlin/Function0;", "onComplete", "popBackStackFromNavigator$navigation_runtime_release", "(Landroidx/navigation/NavBackStackEntry;Lkotlin/jvm/functions/Function0;)V", "popBackStackFromNavigator", "clearBackStack", "navigateUp", "updateBackStackLifecycle$navigation_runtime_release", "()V", "updateBackStackLifecycle", "populateVisibleEntries$navigation_runtime_release", "()Ljava/util/List;", "populateVisibleEntries", "graphResId", "setGraph", "Landroidx/navigation/NavGraph;", "graph", "Landroid/content/Intent;", v6l.f87196g, "handleDeepLink", "findDestination", HWREngineConstant.Constant.RES_ID, "navigate", "Landroid/net/Uri;", "Landroidx/navigation/NavDeepLinkRequest;", AbstractLogger.REQUEST, "Landroidx/navigation/NavDirections;", "directions", "Landroidx/navigation/NavOptionsBuilder;", "Lkotlin/ExtensionFunctionType;", "builder", "Landroidx/navigation/NavDeepLinkBuilder;", "createDeepLink", "navState", "restoreState", "Landroidx/lifecycle/LifecycleOwner;", "owner", "setLifecycleOwner", "Landroidx/activity/OnBackPressedDispatcher;", "dispatcher", "setOnBackPressedDispatcher", "enabled", "enableOnBackPressed", "Landroidx/lifecycle/ViewModelStore;", "viewModelStore", "setViewModelStore", "navGraphId", "Landroidx/lifecycle/ViewModelStoreOwner;", "getViewModelStoreOwner", "getBackStackEntry", "Landroid/content/Context;", "a", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "Landroid/app/Activity;", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "Landroidx/navigation/NavInflater;", "c", "Landroidx/navigation/NavInflater;", "inflater", "Landroidx/navigation/NavGraph;", "_graph", "Landroid/os/Bundle;", "navigatorStateToRestore", "", "Landroid/os/Parcelable;", "[Landroid/os/Parcelable;", "backStackToRestore", Constants.HASIDCALL_INDEX_SIG, "deepLinkHandled", "Lkotlin/collections/ArrayDeque;", "backQueue", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lkotlinx/coroutines/flow/MutableStateFlow;", "_currentBackStack", "Lkotlinx/coroutines/flow/StateFlow;", "Lkotlinx/coroutines/flow/StateFlow;", "getCurrentBackStack", "()Lkotlinx/coroutines/flow/StateFlow;", "currentBackStack", C4921e.f26537n, "_visibleEntries", "getVisibleEntries", "visibleEntries", "", "Ljava/util/Map;", "childToParentEntries", "Ljava/util/concurrent/atomic/AtomicInteger;", GoogleApiAvailabilityLight.f29016b, "parentToChildCount", "backStackMap", "backStackStates", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "r", "Landroidx/activity/OnBackPressedDispatcher;", "onBackPressedDispatcher", "Landroidx/navigation/NavControllerViewModel;", "Landroidx/navigation/NavControllerViewModel;", "viewModel", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Ljava/util/concurrent/CopyOnWriteArrayList;", "onDestinationChangedListeners", "Landroidx/lifecycle/Lifecycle$State;", "Landroidx/lifecycle/Lifecycle$State;", "getHostLifecycleState$navigation_runtime_release", "()Landroidx/lifecycle/Lifecycle$State;", "setHostLifecycleState$navigation_runtime_release", "(Landroidx/lifecycle/Lifecycle$State;)V", "hostLifecycleState", "Landroidx/lifecycle/LifecycleObserver;", "Landroidx/lifecycle/LifecycleObserver;", "lifecycleObserver", "Landroidx/activity/OnBackPressedCallback;", "w", "Landroidx/activity/OnBackPressedCallback;", "onBackPressedCallback", "x", "enableOnBackPressedCallback", "Landroidx/navigation/NavigatorProvider;", "Landroidx/navigation/NavigatorProvider;", "_navigatorProvider", "Landroidx/navigation/NavController$NavControllerNavigatorState;", "z", "navigatorState", "Lkotlin/jvm/functions/Function1;", "addToBackStackHandler", "popFromBackStackHandler", "entrySavedState", "I", "dispatchReentrantCount", "", "Ljava/util/List;", "backStackEntriesToDispatch", "F", "Lkotlin/Lazy;", "getNavInflater", "()Landroidx/navigation/NavInflater;", "navInflater", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "G", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "_currentBackStackEntryFlow", "Lkotlinx/coroutines/flow/Flow;", "H", "Lkotlinx/coroutines/flow/Flow;", "getCurrentBackStackEntryFlow", "()Lkotlinx/coroutines/flow/Flow;", "currentBackStackEntryFlow", "()I", "destinationCountOnBackStack", "getGraph", "()Landroidx/navigation/NavGraph;", "(Landroidx/navigation/NavGraph;)V", "navigatorProvider", "getNavigatorProvider", "()Landroidx/navigation/NavigatorProvider;", "setNavigatorProvider", "(Landroidx/navigation/NavigatorProvider;)V", "getCurrentDestination", "()Landroidx/navigation/NavDestination;", "currentDestination", "getCurrentBackStackEntry", "()Landroidx/navigation/NavBackStackEntry;", "currentBackStackEntry", "getPreviousBackStackEntry", "previousBackStackEntry", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Companion", "NavControllerNavigatorState", "OnDestinationChangedListener", "navigation-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nNavController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavController.kt\nandroidx/navigation/NavController\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 7 Uri.kt\nandroidx/core/net/UriKt\n+ 8 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,2600:1\n179#2,2:2601\n1295#2,2:2611\n1295#2,2:2613\n179#2,2:2732\n1#3:2603\n150#4:2604\n533#5,6:2605\n1855#5,2:2615\n1855#5,2:2617\n1855#5,2:2619\n1855#5,2:2621\n1864#5,3:2623\n1774#5,4:2626\n1855#5:2630\n766#5:2631\n857#5,2:2632\n1856#5:2634\n766#5:2635\n857#5,2:2636\n766#5:2638\n857#5,2:2639\n1855#5,2:2641\n1855#5:2643\n1789#5,3:2644\n1856#5:2647\n819#5:2655\n847#5,2:2656\n1855#5:2658\n1856#5:2666\n1855#5,2:2667\n1855#5,2:2669\n378#5,7:2671\n1855#5,2:2678\n1855#5,2:2680\n819#5:2682\n847#5,2:2683\n1855#5,2:2685\n1855#5,2:2687\n533#5,6:2689\n533#5,6:2695\n533#5,6:2701\n1855#5,2:2707\n1855#5,2:2709\n1864#5,3:2712\n1855#5,2:2718\n533#5,6:2720\n533#5,6:2726\n361#6,7:2648\n361#6,7:2659\n29#7:2711\n13674#8,3:2715\n*S KotlinDebug\n*F\n+ 1 NavController.kt\nandroidx/navigation/NavController\n*L\n77#1:2601,2\n664#1:2611,2\n683#1:2613,2\n2508#1:2732,2\n162#1:2604\n606#1:2605,6\n806#1:2615,2\n811#1:2617,2\n819#1:2619,2\n823#1:2621,2\n905#1:2623,3\n965#1:2626,4\n1107#1:2630\n1108#1:2631\n1108#1:2632,2\n1107#1:2634\n1115#1:2635\n1115#1:2636,2\n1119#1:2638\n1119#1:2639,2\n1188#1:2641,2\n1204#1:2643\n1207#1:2644,3\n1204#1:2647\n1271#1:2655\n1271#1:2656,2\n1271#1:2658\n1271#1:2666\n1829#1:2667,2\n1874#1:2669,2\n1894#1:2671,7\n1907#1:2678,2\n1917#1:2680,2\n1985#1:2682\n1985#1:2683,2\n1988#1:2685,2\n2030#1:2687,2\n2072#1:2689,6\n2097#1:2695,6\n2124#1:2701,6\n2134#1:2707,2\n2150#1:2709,2\n2295#1:2712,3\n2338#1:2718,2\n2443#1:2720,6\n2465#1:2726,6\n1257#1:2648,7\n1272#1:2659,7\n2222#1:2711\n2333#1:2715,3\n*E\n"})
/* loaded from: classes3.dex */
public class NavController {

    /* renamed from: I */
    @NotNull
    public static final String f8364I = "NavController";

    /* renamed from: J */
    @NotNull
    public static final String f8365J = "android-support-nav:controller:navigatorState";

    /* renamed from: K */
    @NotNull
    public static final String f8366K = "android-support-nav:controller:navigatorState:names";

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final String KEY_DEEP_LINK_ARGS = "android-support-nav:controller:deepLinkArgs";

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final String KEY_DEEP_LINK_EXTRAS = "android-support-nav:controller:deepLinkExtras";

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final String KEY_DEEP_LINK_HANDLED = "android-support-nav:controller:deepLinkHandled";

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final String KEY_DEEP_LINK_IDS = "android-support-nav:controller:deepLinkIds";

    @NotNull
    public static final String KEY_DEEP_LINK_INTENT = "android-support-nav:controller:deepLinkIntent";

    /* renamed from: L */
    @NotNull
    public static final String f8367L = "android-support-nav:controller:backStack";

    /* renamed from: M */
    @NotNull
    public static final String f8368M = "android-support-nav:controller:backStackDestIds";

    /* renamed from: N */
    @NotNull
    public static final String f8369N = "android-support-nav:controller:backStackIds";

    /* renamed from: O */
    @NotNull
    public static final String f8370O = "android-support-nav:controller:backStackStates";

    /* renamed from: P */
    @NotNull
    public static final String f8371P = "android-support-nav:controller:backStackStates:";

    /* renamed from: A, reason: from kotlin metadata */
    @Nullable
    public Function1<? super NavBackStackEntry, Unit> addToBackStackHandler;

    /* renamed from: B, reason: from kotlin metadata */
    @Nullable
    public Function1<? super NavBackStackEntry, Unit> popFromBackStackHandler;

    /* renamed from: C, reason: from kotlin metadata */
    @NotNull
    public final Map<NavBackStackEntry, Boolean> entrySavedState;

    /* renamed from: D, reason: from kotlin metadata */
    public int dispatchReentrantCount;

    /* renamed from: E, reason: from kotlin metadata */
    @NotNull
    public final List<NavBackStackEntry> backStackEntriesToDispatch;

    /* renamed from: F, reason: from kotlin metadata */
    @NotNull
    public final Lazy navInflater;

    /* renamed from: G, reason: from kotlin metadata */
    @NotNull
    public final MutableSharedFlow<NavBackStackEntry> _currentBackStackEntryFlow;

    /* renamed from: H, reason: from kotlin metadata */
    @NotNull
    public final Flow<NavBackStackEntry> currentBackStackEntryFlow;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public Activity activity;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public NavInflater inflater;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public NavGraph _graph;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Bundle navigatorStateToRestore;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Parcelable[] backStackToRestore;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean deepLinkHandled;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ArrayDeque<NavBackStackEntry> backQueue;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableStateFlow<List<NavBackStackEntry>> _currentBackStack;

    /* renamed from: j, reason: from kotlin metadata */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final StateFlow<List<NavBackStackEntry>> currentBackStack;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final MutableStateFlow<List<NavBackStackEntry>> _visibleEntries;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final StateFlow<List<NavBackStackEntry>> visibleEntries;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Map<NavBackStackEntry, NavBackStackEntry> childToParentEntries;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Map<NavBackStackEntry, AtomicInteger> parentToChildCount;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final Map<Integer, String> backStackMap;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final Map<String, ArrayDeque<NavBackStackEntryState>> backStackStates;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public LifecycleOwner lifecycleOwner;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public OnBackPressedDispatcher onBackPressedDispatcher;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public NavControllerViewModel viewModel;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final CopyOnWriteArrayList<OnDestinationChangedListener> onDestinationChangedListeners;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public Lifecycle.State hostLifecycleState;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final LifecycleObserver lifecycleObserver;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final OnBackPressedCallback onBackPressedCallback;

    /* renamed from: x, reason: from kotlin metadata */
    public boolean enableOnBackPressedCallback;

    /* renamed from: y, reason: from kotlin metadata */
    @NotNull
    public NavigatorProvider _navigatorProvider;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public final Map<Navigator<? extends NavDestination>, NavControllerNavigatorState> navigatorState;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: Q */
    public static boolean f8372Q = true;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0013H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087T¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u00020\u00048\u0006X\u0087T¢\u0006\b\n\u0000\u0012\u0004\b\u000b\u0010\u0002R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087T¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, m61528d2 = {"Landroidx/navigation/NavController$Companion;", "", "()V", "KEY_BACK_STACK", "", "KEY_BACK_STACK_DEST_IDS", "KEY_BACK_STACK_IDS", "KEY_BACK_STACK_STATES_IDS", "KEY_BACK_STACK_STATES_PREFIX", "KEY_DEEP_LINK_ARGS", "KEY_DEEP_LINK_EXTRAS", "getKEY_DEEP_LINK_EXTRAS$annotations", "KEY_DEEP_LINK_HANDLED", "KEY_DEEP_LINK_IDS", "KEY_DEEP_LINK_INTENT", "KEY_NAVIGATOR_STATE", "KEY_NAVIGATOR_STATE_NAMES", "TAG", "deepLinkSaveState", "", "enableDeepLinkSaveState", "", "saveState", "navigation-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getKEY_DEEP_LINK_EXTRAS$annotations() {
        }

        @JvmStatic
        @NavDeepLinkSaveStateControl
        public final void enableDeepLinkSaveState(boolean saveState) {
            NavController.f8372Q = saveState;
        }

        public Companion() {
        }
    }

    @SourceDebugExtension({"SMAP\nNavController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavController.kt\nandroidx/navigation/NavController$NavControllerNavigatorState\n+ 2 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2600:1\n150#2:2601\n150#2:2602\n2624#3,3:2603\n*S KotlinDebug\n*F\n+ 1 NavController.kt\nandroidx/navigation/NavController$NavControllerNavigatorState\n*L\n289#1:2601\n326#1:2602\n358#1:2603,3\n*E\n"})
    /* loaded from: classes3.dex */
    public final class NavControllerNavigatorState extends NavigatorState {

        /* renamed from: g */
        @NotNull
        public final Navigator<? extends NavDestination> f8407g;

        /* renamed from: h */
        public final /* synthetic */ NavController f8408h;

        public NavControllerNavigatorState(@NotNull NavController navController, Navigator<? extends NavDestination> navigator) {
            Intrinsics.checkNotNullParameter(navigator, "navigator");
            this.f8408h = navController;
            this.f8407g = navigator;
        }

        /* renamed from: b */
        public final void m5125b(@NotNull NavBackStackEntry backStackEntry) {
            Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
            super.push(backStackEntry);
        }

        @NotNull
        /* renamed from: c */
        public final Navigator<? extends NavDestination> m5126c() {
            return this.f8407g;
        }

        @Override // androidx.navigation.NavigatorState
        @NotNull
        public NavBackStackEntry createBackStackEntry(@NotNull NavDestination destination, @Nullable Bundle bundle) {
            Intrinsics.checkNotNullParameter(destination, "destination");
            return NavBackStackEntry.Companion.create$default(NavBackStackEntry.INSTANCE, this.f8408h.getContext(), destination, bundle, this.f8408h.getHostLifecycleState$navigation_runtime_release(), this.f8408h.viewModel, null, null, 96, null);
        }

        @Override // androidx.navigation.NavigatorState
        public void markTransitionComplete(@NotNull NavBackStackEntry entry) {
            List mutableList;
            NavControllerViewModel navControllerViewModel;
            Intrinsics.checkNotNullParameter(entry, "entry");
            boolean areEqual = Intrinsics.areEqual(this.f8408h.entrySavedState.get(entry), Boolean.TRUE);
            super.markTransitionComplete(entry);
            this.f8408h.entrySavedState.remove(entry);
            if (this.f8408h.backQueue.contains(entry)) {
                if (getIsNavigating()) {
                    return;
                }
                this.f8408h.updateBackStackLifecycle$navigation_runtime_release();
                MutableStateFlow mutableStateFlow = this.f8408h._currentBackStack;
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.f8408h.backQueue);
                mutableStateFlow.tryEmit(mutableList);
                this.f8408h._visibleEntries.tryEmit(this.f8408h.populateVisibleEntries$navigation_runtime_release());
                return;
            }
            this.f8408h.unlinkChildFromParent$navigation_runtime_release(entry);
            if (entry.getLifecycle().getState().isAtLeast(Lifecycle.State.CREATED)) {
                entry.setMaxLifecycle(Lifecycle.State.DESTROYED);
            }
            ArrayDeque arrayDeque = this.f8408h.backQueue;
            boolean z = true;
            if (!(arrayDeque instanceof Collection) || !arrayDeque.isEmpty()) {
                Iterator<E> it2 = arrayDeque.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    } else if (Intrinsics.areEqual(((NavBackStackEntry) it2.next()).getId(), entry.getId())) {
                        z = false;
                        break;
                    }
                }
            }
            if (z && !areEqual && (navControllerViewModel = this.f8408h.viewModel) != null) {
                navControllerViewModel.clear(entry.getId());
            }
            this.f8408h.updateBackStackLifecycle$navigation_runtime_release();
            this.f8408h._visibleEntries.tryEmit(this.f8408h.populateVisibleEntries$navigation_runtime_release());
        }

        @Override // androidx.navigation.NavigatorState
        public void pop(@NotNull final NavBackStackEntry popUpTo, final boolean z) {
            Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
            Navigator navigator = this.f8408h._navigatorProvider.getNavigator(popUpTo.getDestination().getNavigatorName());
            if (!Intrinsics.areEqual(navigator, this.f8407g)) {
                Object obj = this.f8408h.navigatorState.get(navigator);
                Intrinsics.checkNotNull(obj);
                ((NavControllerNavigatorState) obj).pop(popUpTo, z);
            } else {
                Function1 function1 = this.f8408h.popFromBackStackHandler;
                if (function1 == null) {
                    this.f8408h.popBackStackFromNavigator$navigation_runtime_release(popUpTo, new Function0<Unit>() { // from class: androidx.navigation.NavController$NavControllerNavigatorState$pop$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            super/*androidx.navigation.NavigatorState*/.pop(popUpTo, z);
                        }
                    });
                } else {
                    function1.invoke(popUpTo);
                    super.pop(popUpTo, z);
                }
            }
        }

        @Override // androidx.navigation.NavigatorState
        public void popWithTransition(@NotNull NavBackStackEntry popUpTo, boolean z) {
            Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
            super.popWithTransition(popUpTo, z);
            this.f8408h.entrySavedState.put(popUpTo, Boolean.valueOf(z));
        }

        @Override // androidx.navigation.NavigatorState
        public void prepareForTransition(@NotNull NavBackStackEntry entry) {
            Intrinsics.checkNotNullParameter(entry, "entry");
            super.prepareForTransition(entry);
            if (!this.f8408h.backQueue.contains(entry)) {
                throw new IllegalStateException("Cannot transition entry that is not in the back stack");
            }
            entry.setMaxLifecycle(Lifecycle.State.STARTED);
        }

        @Override // androidx.navigation.NavigatorState
        public void push(@NotNull NavBackStackEntry backStackEntry) {
            Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
            Navigator navigator = this.f8408h._navigatorProvider.getNavigator(backStackEntry.getDestination().getNavigatorName());
            if (!Intrinsics.areEqual(navigator, this.f8407g)) {
                Object obj = this.f8408h.navigatorState.get(navigator);
                if (obj != null) {
                    ((NavControllerNavigatorState) obj).push(backStackEntry);
                    return;
                }
                throw new IllegalStateException(("NavigatorBackStack for " + backStackEntry.getDestination().getNavigatorName() + " should already be created").toString());
            }
            Function1 function1 = this.f8408h.addToBackStackHandler;
            if (function1 != null) {
                function1.invoke(backStackEntry);
                m5125b(backStackEntry);
                return;
            }
            Log.i(NavController.f8364I, "Ignoring add of destination " + backStackEntry.getDestination() + " outside of the call to navigate(). ");
        }
    }

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, m61528d2 = {"Landroidx/navigation/NavController$OnDestinationChangedListener;", "", "onDestinationChanged", "", "controller", "Landroidx/navigation/NavController;", FirebaseAnalytics.Param.DESTINATION, "Landroidx/navigation/NavDestination;", C1126e.f7698m, "Landroid/os/Bundle;", "navigation-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public interface OnDestinationChangedListener {
        void onDestinationChanged(@NotNull NavController controller, @NotNull NavDestination destination, @Nullable Bundle arguments);
    }

    public NavController(@NotNull Context context) {
        Sequence generateSequence;
        Object obj;
        List emptyList;
        List emptyList2;
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        generateSequence = SequencesKt__SequencesKt.generateSequence(context, (Function1<? super Context, ? extends Context>) ((Function1<? super Object, ? extends Object>) new Function1<Context, Context>() { // from class: androidx.navigation.NavController$activity$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final Context invoke(@NotNull Context it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                if (it2 instanceof ContextWrapper) {
                    return ((ContextWrapper) it2).getBaseContext();
                }
                return null;
            }
        }));
        Iterator it2 = generateSequence.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (((Context) obj) instanceof Activity) {
                    break;
                }
            }
        }
        this.activity = (Activity) obj;
        this.backQueue = new ArrayDeque<>();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        MutableStateFlow<List<NavBackStackEntry>> MutableStateFlow = StateFlowKt.MutableStateFlow(emptyList);
        this._currentBackStack = MutableStateFlow;
        this.currentBackStack = FlowKt.asStateFlow(MutableStateFlow);
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        MutableStateFlow<List<NavBackStackEntry>> MutableStateFlow2 = StateFlowKt.MutableStateFlow(emptyList2);
        this._visibleEntries = MutableStateFlow2;
        this.visibleEntries = FlowKt.asStateFlow(MutableStateFlow2);
        this.childToParentEntries = new LinkedHashMap();
        this.parentToChildCount = new LinkedHashMap();
        this.backStackMap = new LinkedHashMap();
        this.backStackStates = new LinkedHashMap();
        this.onDestinationChangedListeners = new CopyOnWriteArrayList<>();
        this.hostLifecycleState = Lifecycle.State.INITIALIZED;
        this.lifecycleObserver = new LifecycleEventObserver() { // from class: com.sunia.HTREnginev2.wsj
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                NavController.m5095n(NavController.this, lifecycleOwner, event);
            }
        };
        this.onBackPressedCallback = new OnBackPressedCallback() { // from class: androidx.navigation.NavController$onBackPressedCallback$1
            {
                super(false);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public void handleOnBackPressed() {
                NavController.this.popBackStack();
            }
        };
        this.enableOnBackPressedCallback = true;
        this._navigatorProvider = new NavigatorProvider();
        this.navigatorState = new LinkedHashMap();
        this.entrySavedState = new LinkedHashMap();
        NavigatorProvider navigatorProvider = this._navigatorProvider;
        navigatorProvider.addNavigator(new NavGraphNavigator(navigatorProvider));
        this._navigatorProvider.addNavigator(new ActivityNavigator(this.context));
        this.backStackEntriesToDispatch = new ArrayList();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<NavInflater>() { // from class: androidx.navigation.NavController$navInflater$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NavInflater invoke() {
                NavInflater navInflater;
                navInflater = NavController.this.inflater;
                return navInflater == null ? new NavInflater(NavController.this.getContext(), NavController.this._navigatorProvider) : navInflater;
            }
        });
        this.navInflater = lazy;
        MutableSharedFlow<NavBackStackEntry> MutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(1, 0, BufferOverflow.DROP_OLDEST, 2, null);
        this._currentBackStackEntryFlow = MutableSharedFlow$default;
        this.currentBackStackEntryFlow = FlowKt.asSharedFlow(MutableSharedFlow$default);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public static /* synthetic */ void m5094c(NavController navController, NavDestination navDestination, Bundle bundle, NavBackStackEntry navBackStackEntry, List list, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addEntryToBackStack");
        }
        if ((i & 8) != 0) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        navController.m5105b(navDestination, bundle, navBackStackEntry, list);
    }

    @JvmStatic
    @NavDeepLinkSaveStateControl
    public static final void enableDeepLinkSaveState(boolean z) {
        INSTANCE.enableDeepLinkSaveState(z);
    }

    /* renamed from: n */
    public static final void m5095n(NavController this$0, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(event, "event");
        this$0.hostLifecycleState = event.getTargetState();
        if (this$0._graph != null) {
            Iterator<NavBackStackEntry> it2 = this$0.backQueue.iterator();
            while (it2.hasNext()) {
                it2.next().handleLifecycleEvent(event);
            }
        }
    }

    public static /* synthetic */ void navigate$default(NavController navController, String str, NavOptions navOptions, Navigator.Extras extras, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: navigate");
        }
        if ((i & 2) != 0) {
            navOptions = null;
        }
        if ((i & 4) != 0) {
            extras = null;
        }
        navController.navigate(str, navOptions, extras);
    }

    public static /* synthetic */ boolean popBackStack$default(NavController navController, String str, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: popBackStack");
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        return navController.popBackStack(str, z, z2);
    }

    /* renamed from: r */
    public static /* synthetic */ void m5096r(NavController navController, Navigator navigator, List list, NavOptions navOptions, Navigator.Extras extras, Function1 function1, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: navigateInternal");
        }
        if ((i & 8) != 0) {
            function1 = new Function1<NavBackStackEntry, Unit>() { // from class: androidx.navigation.NavController$navigateInternal$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull NavBackStackEntry it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(NavBackStackEntry navBackStackEntry) {
                    invoke2(navBackStackEntry);
                    return Unit.INSTANCE;
                }
            };
        }
        navController.m5118q(navigator, list, navOptions, extras, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: w */
    public static /* synthetic */ void m5097w(NavController navController, Navigator navigator, NavBackStackEntry navBackStackEntry, boolean z, Function1 function1, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: popBackStackInternal");
        }
        if ((i & 4) != 0) {
            function1 = new Function1<NavBackStackEntry, Unit>() { // from class: androidx.navigation.NavController$popBackStackInternal$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull NavBackStackEntry it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(NavBackStackEntry navBackStackEntry2) {
                    invoke2(navBackStackEntry2);
                    return Unit.INSTANCE;
                }
            };
        }
        navController.m5120t(navigator, navBackStackEntry, z, function1);
    }

    /* renamed from: x */
    public static /* synthetic */ boolean m5098x(NavController navController, int i, boolean z, boolean z2, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: popBackStackInternal");
        }
        if ((i2 & 4) != 0) {
            z2 = false;
        }
        return navController.m5121u(i, z, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: z */
    public static /* synthetic */ void m5099z(NavController navController, NavBackStackEntry navBackStackEntry, boolean z, ArrayDeque arrayDeque, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: popEntryFromBackStack");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            arrayDeque = new ArrayDeque();
        }
        navController.m5123y(navBackStackEntry, z, arrayDeque);
    }

    /* renamed from: A */
    public final boolean m5100A(int id, Bundle args, NavOptions navOptions, Navigator.Extras navigatorExtras) {
        if (!this.backStackMap.containsKey(Integer.valueOf(id))) {
            return false;
        }
        final String str = this.backStackMap.get(Integer.valueOf(id));
        CollectionsKt__MutableCollectionsKt.removeAll(this.backStackMap.values(), new Function1<String, Boolean>() { // from class: androidx.navigation.NavController$restoreStateInternal$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@Nullable String str2) {
                return Boolean.valueOf(Intrinsics.areEqual(str2, str));
            }
        });
        return m5110h(m5114l((ArrayDeque) TypeIntrinsics.asMutableMap(this.backStackStates).remove(str)), args, navOptions, navigatorExtras);
    }

    /* renamed from: B */
    public final boolean m5101B(String route) {
        NavBackStackEntryState firstOrNull;
        int hashCode = NavDestination.INSTANCE.createRoute(route).hashCode();
        if (this.backStackMap.containsKey(Integer.valueOf(hashCode))) {
            return m5100A(hashCode, null, null, null);
        }
        NavDestination findDestination = findDestination(route);
        if (!(findDestination != null)) {
            throw new IllegalStateException(("Restore State failed: route " + route + " cannot be found from the current destination " + getCurrentDestination()).toString());
        }
        final String str = this.backStackMap.get(Integer.valueOf(findDestination.getId()));
        CollectionsKt__MutableCollectionsKt.removeAll(this.backStackMap.values(), new Function1<String, Boolean>() { // from class: androidx.navigation.NavController$restoreStateInternal$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@Nullable String str2) {
                return Boolean.valueOf(Intrinsics.areEqual(str2, str));
            }
        });
        ArrayDeque<NavBackStackEntryState> arrayDeque = (ArrayDeque) TypeIntrinsics.asMutableMap(this.backStackStates).remove(str);
        NavDestination.DeepLinkMatch matchDeepLink = findDestination.matchDeepLink(route);
        Intrinsics.checkNotNull(matchDeepLink);
        if (matchDeepLink.hasMatchingArgs((arrayDeque == null || (firstOrNull = arrayDeque.firstOrNull()) == null) ? null : firstOrNull.getArgs())) {
            return m5110h(m5114l(arrayDeque), null, null, null);
        }
        return false;
    }

    /* renamed from: C */
    public final boolean m5102C() {
        List mutableList;
        Object removeLast;
        Object removeLast2;
        int i = 0;
        if (!this.deepLinkHandled) {
            return false;
        }
        Activity activity = this.activity;
        Intrinsics.checkNotNull(activity);
        Intent intent = activity.getIntent();
        Bundle extras = intent.getExtras();
        Intrinsics.checkNotNull(extras);
        int[] intArray = extras.getIntArray(KEY_DEEP_LINK_IDS);
        Intrinsics.checkNotNull(intArray);
        mutableList = ArraysKt___ArraysKt.toMutableList(intArray);
        ArrayList parcelableArrayList = extras.getParcelableArrayList(KEY_DEEP_LINK_ARGS);
        removeLast = CollectionsKt__MutableCollectionsKt.removeLast(mutableList);
        int intValue = ((Number) removeLast).intValue();
        if (parcelableArrayList != null) {
            removeLast2 = CollectionsKt__MutableCollectionsKt.removeLast(parcelableArrayList);
        }
        if (mutableList.isEmpty()) {
            return false;
        }
        NavDestination m5111i = m5111i(getGraph(), intValue);
        if (m5111i instanceof NavGraph) {
            intValue = NavGraph.INSTANCE.findStartDestination((NavGraph) m5111i).getId();
        }
        NavDestination currentDestination = getCurrentDestination();
        if (!(currentDestination != null && intValue == currentDestination.getId())) {
            return false;
        }
        NavDeepLinkBuilder createDeepLink = createDeepLink();
        Bundle bundleOf = BundleKt.bundleOf(TuplesKt.m61535to(KEY_DEEP_LINK_INTENT, intent));
        Bundle bundle = extras.getBundle(KEY_DEEP_LINK_EXTRAS);
        if (bundle != null) {
            bundleOf.putAll(bundle);
        }
        createDeepLink.setArguments(bundleOf);
        for (Object obj : mutableList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            createDeepLink.addDestination(((Number) obj).intValue(), parcelableArrayList != null ? (Bundle) parcelableArrayList.get(i) : null);
            i = i2;
        }
        createDeepLink.createTaskStackBuilder().startActivities();
        Activity activity2 = this.activity;
        if (activity2 != null) {
            activity2.finish();
        }
        return true;
    }

    /* renamed from: D */
    public final boolean m5103D() {
        NavDestination currentDestination = getCurrentDestination();
        Intrinsics.checkNotNull(currentDestination);
        int id = currentDestination.getId();
        for (NavGraph parent = currentDestination.getParent(); parent != null; parent = parent.getParent()) {
            if (parent.getStartDestId() != id) {
                Bundle bundle = new Bundle();
                Activity activity = this.activity;
                if (activity != null) {
                    Intrinsics.checkNotNull(activity);
                    if (activity.getIntent() != null) {
                        Activity activity2 = this.activity;
                        Intrinsics.checkNotNull(activity2);
                        if (activity2.getIntent().getData() != null) {
                            Activity activity3 = this.activity;
                            Intrinsics.checkNotNull(activity3);
                            bundle.putParcelable(KEY_DEEP_LINK_INTENT, activity3.getIntent());
                            NavGraph navGraph = this._graph;
                            Intrinsics.checkNotNull(navGraph);
                            Activity activity4 = this.activity;
                            Intrinsics.checkNotNull(activity4);
                            Intent intent = activity4.getIntent();
                            Intrinsics.checkNotNullExpressionValue(intent, "activity!!.intent");
                            NavDestination.DeepLinkMatch matchDeepLink = navGraph.matchDeepLink(new NavDeepLinkRequest(intent));
                            if ((matchDeepLink != null ? matchDeepLink.getMatchingArgs() : null) != null) {
                                bundle.putAll(matchDeepLink.getCom.google.firebase.analytics.FirebaseAnalytics.Param.DESTINATION java.lang.String().addInDefaultArgs(matchDeepLink.getMatchingArgs()));
                            }
                        }
                    }
                }
                NavDeepLinkBuilder.setDestination$default(new NavDeepLinkBuilder(this), parent.getId(), (Bundle) null, 2, (Object) null).setArguments(bundle).createTaskStackBuilder().startActivities();
                Activity activity5 = this.activity;
                if (activity5 == null) {
                    return true;
                }
                activity5.finish();
                return true;
            }
            id = parent.getId();
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000b, code lost:
    
        if (m5113k() > 1) goto L8;
     */
    /* renamed from: E */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5104E() {
        /*
            r2 = this;
            androidx.activity.OnBackPressedCallback r0 = r2.onBackPressedCallback
            boolean r1 = r2.enableOnBackPressedCallback
            if (r1 == 0) goto Le
            int r2 = r2.m5113k()
            r1 = 1
            if (r2 <= r1) goto Le
            goto Lf
        Le:
            r1 = 0
        Lf:
            r0.setEnabled(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavController.m5104E():void");
    }

    public void addOnDestinationChangedListener(@NotNull OnDestinationChangedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onDestinationChangedListeners.add(listener);
        if (!this.backQueue.isEmpty()) {
            NavBackStackEntry last = this.backQueue.last();
            listener.onDestinationChanged(this, last.getDestination(), last.getArguments());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0230, code lost:
    
        r19 = androidx.navigation.NavBackStackEntry.Companion;
        r0 = r32.context;
        r1 = r32._graph;
        kotlin.jvm.internal.Intrinsics.checkNotNull(r1);
        r2 = r32._graph;
        kotlin.jvm.internal.Intrinsics.checkNotNull(r2);
        r18 = androidx.navigation.NavBackStackEntry.Companion.create$default(r19, r0, r1, r2.addInDefaultArgs(r14), getHostLifecycleState$navigation_runtime_release(), r32.viewModel, null, null, 96, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x025a, code lost:
    
        r11.addFirst(r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x025f, code lost:
    
        r0 = r11.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0267, code lost:
    
        if (r0.hasNext() == false) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0269, code lost:
    
        r1 = (androidx.navigation.NavBackStackEntry) r0.next();
        r2 = r32.navigatorState.get(r32._navigatorProvider.getNavigator(r1.getDestination().getNavigatorName()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0283, code lost:
    
        if (r2 == null) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0285, code lost:
    
        r2.m5125b(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02ae, code lost:
    
        throw new java.lang.IllegalStateException(("NavigatorBackStack for " + r33.getNavigatorName() + " should already be created").toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x02af, code lost:
    
        r32.backQueue.addAll(r11);
        r32.backQueue.add(r8);
        r0 = kotlin.collections.CollectionsKt___CollectionsKt.plus((java.util.Collection<? extends androidx.navigation.NavBackStackEntry>) ((java.util.Collection<? extends java.lang.Object>) r11), r8);
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x02c7, code lost:
    
        if (r0.hasNext() == false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x02c9, code lost:
    
        r1 = (androidx.navigation.NavBackStackEntry) r0.next();
        r2 = r1.getDestination().getParent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x02d7, code lost:
    
        if (r2 == null) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x02d9, code lost:
    
        m5116o(r1, getBackStackEntry(r2.getId()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x02e5, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x01fc, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0193, code lost:
    
        r12 = ((androidx.navigation.NavBackStackEntry) r11.first()).getDestination();
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0112, code lost:
    
        r12 = ((androidx.navigation.NavBackStackEntry) r11.first()).getDestination();
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x00e8, code lost:
    
        r13 = r0;
        r14 = r2;
        r9 = r3;
        r10 = r4;
        r11 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x00ae, code lost:
    
        r20 = r12;
        r0 = r13;
        r8 = r14;
        r2 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x007c, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x00ee, code lost:
    
        r9 = r3;
        r10 = r4;
        r11 = r5;
        r20 = r12;
        r8 = r14;
        r14 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0046, code lost:
    
        r5 = new kotlin.collections.ArrayDeque();
        r4 = true;
        r18 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0103, code lost:
    
        r10 = true;
        r11 = r5;
        r20 = r12;
        r8 = r14;
        r14 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0050, code lost:
    
        if ((r33 instanceof androidx.navigation.NavGraph) == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
    
        r0 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
    
        kotlin.jvm.internal.Intrinsics.checkNotNull(r0);
        r3 = r0.getParent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005a, code lost:
    
        if (r3 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005c, code lost:
    
        r0 = r13.listIterator(r36.size());
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0068, code lost:
    
        if (r0.hasPrevious() == false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006a, code lost:
    
        r1 = r0.previous();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0079, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1.getDestination(), r3) == false) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007e, code lost:
    
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0080, code lost:
    
        if (r1 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0082, code lost:
    
        r20 = r12;
        r0 = r13;
        r2 = r15;
        r8 = r14;
        r1 = androidx.navigation.NavBackStackEntry.Companion.create$default(androidx.navigation.NavBackStackEntry.Companion, r32.context, r3, r34, getHostLifecycleState$navigation_runtime_release(), r32.viewModel, null, null, 96, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b3, code lost:
    
        r5.addFirst(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00bd, code lost:
    
        if ((r32.backQueue.isEmpty() ^ r4) == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0010, code lost:
    
        if ((r12 instanceof androidx.navigation.FloatingWindow) == false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00cb, code lost:
    
        if (r32.backQueue.last().getDestination() != r3) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00cd, code lost:
    
        r13 = r0;
        r14 = r2;
        r9 = r3;
        r10 = r4;
        r11 = r5;
        m5099z(r32, r32.backQueue.last(), false, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00f5, code lost:
    
        if (r9 == null) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00f7, code lost:
    
        if (r9 != r33) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00fa, code lost:
    
        r0 = r9;
        r4 = r10;
        r5 = r11;
        r15 = r14;
        r12 = r20;
        r14 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x010d, code lost:
    
        if (r11.isEmpty() == false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x010f, code lost:
    
        r12 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x011d, code lost:
    
        if (r12 == null) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0127, code lost:
    
        if (findDestination(r12.getId()) == r12) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0129, code lost:
    
        r12 = r12.getParent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x012d, code lost:
    
        if (r12 == null) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x012f, code lost:
    
        if (r14 == null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0135, code lost:
    
        if (r34.isEmpty() != r10) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0018, code lost:
    
        if (r32.backQueue.isEmpty() != false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0137, code lost:
    
        r4 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x013a, code lost:
    
        if (r4 == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x013c, code lost:
    
        r15 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0140, code lost:
    
        r0 = r13.listIterator(r36.size());
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x014c, code lost:
    
        if (r0.hasPrevious() == false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x014e, code lost:
    
        r1 = r0.previous();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x015d, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1.getDestination(), r12) == false) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0162, code lost:
    
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0164, code lost:
    
        if (r1 != null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0166, code lost:
    
        r1 = androidx.navigation.NavBackStackEntry.Companion.create$default(androidx.navigation.NavBackStackEntry.Companion, r32.context, r12, r12.addInDefaultArgs(r15), getHostLifecycleState$navigation_runtime_release(), r32.viewModel, null, null, 96, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0186, code lost:
    
        r11.addFirst(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0160, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x013f, code lost:
    
        r15 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0139, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0028, code lost:
    
        if ((r32.backQueue.last().getDestination() instanceof androidx.navigation.FloatingWindow) == false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x018e, code lost:
    
        if (r11.isEmpty() == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0190, code lost:
    
        r12 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01a3, code lost:
    
        if (r32.backQueue.isEmpty() != false) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01b3, code lost:
    
        if ((r32.backQueue.last().getDestination() instanceof androidx.navigation.NavGraph) == false) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01b5, code lost:
    
        r0 = r32.backQueue.last().getDestination();
        kotlin.jvm.internal.Intrinsics.checkNotNull(r0, "null cannot be cast to non-null type androidx.navigation.NavGraph");
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01d0, code lost:
    
        if (((androidx.navigation.NavGraph) r0).findNode(r12.getId(), false) != null) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01d2, code lost:
    
        m5099z(r32, r32.backQueue.last(), false, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01e5, code lost:
    
        r0 = r32.backQueue.firstOrNull();
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01ed, code lost:
    
        if (r0 != null) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01ef, code lost:
    
        r0 = (androidx.navigation.NavBackStackEntry) r11.firstOrNull();
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01f5, code lost:
    
        if (r0 == null) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01f7, code lost:
    
        r0 = r0.getDestination();
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0044, code lost:
    
        if (m5098x(r32, r32.backQueue.last().getDestination().getId(), true, false, 4, null) != false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0204, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r0, r32._graph) != false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0206, code lost:
    
        r0 = r13.listIterator(r36.size());
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0212, code lost:
    
        if (r0.hasPrevious() == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0214, code lost:
    
        r1 = r0.previous();
        r2 = r1.getDestination();
        r3 = r32._graph;
        kotlin.jvm.internal.Intrinsics.checkNotNull(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0228, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r2, r3) == false) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x022a, code lost:
    
        r18 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x022c, code lost:
    
        r18 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x022e, code lost:
    
        if (r18 != null) goto L95;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5105b(androidx.navigation.NavDestination r33, android.os.Bundle r34, androidx.navigation.NavBackStackEntry r35, java.util.List<androidx.navigation.NavBackStackEntry> r36) {
        /*
            Method dump skipped, instructions count: 742
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavController.m5105b(androidx.navigation.NavDestination, android.os.Bundle, androidx.navigation.NavBackStackEntry, java.util.List):void");
    }

    @MainThread
    public final boolean clearBackStack(@NotNull String route) {
        Intrinsics.checkNotNullParameter(route, "route");
        return m5107e(route) && m5108f();
    }

    @NotNull
    public NavDeepLinkBuilder createDeepLink() {
        return new NavDeepLinkBuilder(this);
    }

    @MainThread
    /* renamed from: d */
    public final boolean m5106d(@IdRes int destinationId) {
        Iterator<T> it2 = this.navigatorState.values().iterator();
        while (it2.hasNext()) {
            ((NavControllerNavigatorState) it2.next()).setNavigating(true);
        }
        boolean m5100A = m5100A(destinationId, null, NavOptionsBuilderKt.navOptions(new Function1<NavOptionsBuilder, Unit>() { // from class: androidx.navigation.NavController$clearBackStackInternal$restored$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NavOptionsBuilder navOptionsBuilder) {
                invoke2(navOptionsBuilder);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NavOptionsBuilder navOptions) {
                Intrinsics.checkNotNullParameter(navOptions, "$this$navOptions");
                navOptions.setRestoreState(true);
            }
        }), null);
        Iterator<T> it3 = this.navigatorState.values().iterator();
        while (it3.hasNext()) {
            ((NavControllerNavigatorState) it3.next()).setNavigating(false);
        }
        return m5100A && m5121u(destinationId, true, false);
    }

    @MainThread
    /* renamed from: e */
    public final boolean m5107e(String route) {
        Iterator<T> it2 = this.navigatorState.values().iterator();
        while (it2.hasNext()) {
            ((NavControllerNavigatorState) it2.next()).setNavigating(true);
        }
        boolean m5101B = m5101B(route);
        Iterator<T> it3 = this.navigatorState.values().iterator();
        while (it3.hasNext()) {
            ((NavControllerNavigatorState) it3.next()).setNavigating(false);
        }
        return m5101B && m5122v(route, true, false);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void enableOnBackPressed(boolean enabled) {
        this.enableOnBackPressedCallback = enabled;
        m5104E();
    }

    /* renamed from: f */
    public final boolean m5108f() {
        List<NavBackStackEntry> mutableList;
        List<NavBackStackEntry> mutableList2;
        while (!this.backQueue.isEmpty() && (this.backQueue.last().getDestination() instanceof NavGraph)) {
            m5099z(this, this.backQueue.last(), false, null, 6, null);
        }
        NavBackStackEntry lastOrNull = this.backQueue.lastOrNull();
        if (lastOrNull != null) {
            this.backStackEntriesToDispatch.add(lastOrNull);
        }
        this.dispatchReentrantCount++;
        updateBackStackLifecycle$navigation_runtime_release();
        int i = this.dispatchReentrantCount - 1;
        this.dispatchReentrantCount = i;
        if (i == 0) {
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.backStackEntriesToDispatch);
            this.backStackEntriesToDispatch.clear();
            for (NavBackStackEntry navBackStackEntry : mutableList) {
                Iterator<OnDestinationChangedListener> it2 = this.onDestinationChangedListeners.iterator();
                while (it2.hasNext()) {
                    it2.next().onDestinationChanged(this, navBackStackEntry.getDestination(), navBackStackEntry.getArguments());
                }
                this._currentBackStackEntryFlow.tryEmit(navBackStackEntry);
            }
            MutableStateFlow<List<NavBackStackEntry>> mutableStateFlow = this._currentBackStack;
            mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) this.backQueue);
            mutableStateFlow.tryEmit(mutableList2);
            this._visibleEntries.tryEmit(populateVisibleEntries$navigation_runtime_release());
        }
        return lastOrNull != null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public final NavDestination findDestination(@IdRes int destinationId) {
        NavDestination navDestination;
        NavGraph navGraph = this._graph;
        if (navGraph == null) {
            return null;
        }
        Intrinsics.checkNotNull(navGraph);
        if (navGraph.getId() == destinationId) {
            return this._graph;
        }
        NavBackStackEntry lastOrNull = this.backQueue.lastOrNull();
        if (lastOrNull == null || (navDestination = lastOrNull.getDestination()) == null) {
            navDestination = this._graph;
            Intrinsics.checkNotNull(navDestination);
        }
        return m5111i(navDestination, destinationId);
    }

    /* renamed from: g */
    public final boolean m5109g(List<? extends Navigator<?>> popOperations, NavDestination foundDestination, boolean inclusive, final boolean saveState) {
        Sequence generateSequence;
        Sequence takeWhile;
        Sequence generateSequence2;
        Sequence<NavDestination> takeWhile2;
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        final ArrayDeque<NavBackStackEntryState> arrayDeque = new ArrayDeque<>();
        Iterator<? extends Navigator<?>> it2 = popOperations.iterator();
        while (it2.hasNext()) {
            Navigator<? extends NavDestination> navigator = (Navigator) it2.next();
            final Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            m5120t(navigator, this.backQueue.last(), saveState, new Function1<NavBackStackEntry, Unit>() { // from class: androidx.navigation.NavController$executePopOperations$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(NavBackStackEntry navBackStackEntry) {
                    invoke2(navBackStackEntry);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull NavBackStackEntry entry) {
                    Intrinsics.checkNotNullParameter(entry, "entry");
                    Ref.BooleanRef.this.element = true;
                    booleanRef.element = true;
                    this.m5123y(entry, saveState, arrayDeque);
                }
            });
            if (!booleanRef2.element) {
                break;
            }
        }
        if (saveState) {
            if (!inclusive) {
                generateSequence2 = SequencesKt__SequencesKt.generateSequence(foundDestination, (Function1<? super NavDestination, ? extends NavDestination>) ((Function1<? super Object, ? extends Object>) new Function1<NavDestination, NavDestination>() { // from class: androidx.navigation.NavController$executePopOperations$2
                    @Override // kotlin.jvm.functions.Function1
                    @Nullable
                    public final NavDestination invoke(@NotNull NavDestination destination) {
                        Intrinsics.checkNotNullParameter(destination, "destination");
                        NavGraph parent = destination.getParent();
                        boolean z = false;
                        if (parent != null && parent.getStartDestId() == destination.getId()) {
                            z = true;
                        }
                        if (z) {
                            return destination.getParent();
                        }
                        return null;
                    }
                }));
                takeWhile2 = SequencesKt___SequencesKt.takeWhile(generateSequence2, new Function1<NavDestination, Boolean>() { // from class: androidx.navigation.NavController$executePopOperations$3
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull NavDestination destination) {
                        Map map;
                        Intrinsics.checkNotNullParameter(destination, "destination");
                        map = NavController.this.backStackMap;
                        return Boolean.valueOf(!map.containsKey(Integer.valueOf(destination.getId())));
                    }
                });
                for (NavDestination navDestination : takeWhile2) {
                    Map<Integer, String> map = this.backStackMap;
                    Integer valueOf = Integer.valueOf(navDestination.getId());
                    NavBackStackEntryState firstOrNull = arrayDeque.firstOrNull();
                    map.put(valueOf, firstOrNull != null ? firstOrNull.getId() : null);
                }
            }
            if (!arrayDeque.isEmpty()) {
                NavBackStackEntryState first = arrayDeque.first();
                generateSequence = SequencesKt__SequencesKt.generateSequence(findDestination(first.getDestinationId()), (Function1<? super NavDestination, ? extends NavDestination>) ((Function1<? super Object, ? extends Object>) new Function1<NavDestination, NavDestination>() { // from class: androidx.navigation.NavController$executePopOperations$5
                    @Override // kotlin.jvm.functions.Function1
                    @Nullable
                    public final NavDestination invoke(@NotNull NavDestination destination) {
                        Intrinsics.checkNotNullParameter(destination, "destination");
                        NavGraph parent = destination.getParent();
                        boolean z = false;
                        if (parent != null && parent.getStartDestId() == destination.getId()) {
                            z = true;
                        }
                        if (z) {
                            return destination.getParent();
                        }
                        return null;
                    }
                }));
                takeWhile = SequencesKt___SequencesKt.takeWhile(generateSequence, new Function1<NavDestination, Boolean>() { // from class: androidx.navigation.NavController$executePopOperations$6
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull NavDestination destination) {
                        Map map2;
                        Intrinsics.checkNotNullParameter(destination, "destination");
                        map2 = NavController.this.backStackMap;
                        return Boolean.valueOf(!map2.containsKey(Integer.valueOf(destination.getId())));
                    }
                });
                Iterator it3 = takeWhile.iterator();
                while (it3.hasNext()) {
                    this.backStackMap.put(Integer.valueOf(((NavDestination) it3.next()).getId()), first.getId());
                }
                this.backStackStates.put(first.getId(), arrayDeque);
            }
        }
        m5104E();
        return booleanRef.element;
    }

    @NotNull
    public NavBackStackEntry getBackStackEntry(@IdRes int destinationId) {
        NavBackStackEntry navBackStackEntry;
        ArrayDeque<NavBackStackEntry> arrayDeque = this.backQueue;
        ListIterator<NavBackStackEntry> listIterator = arrayDeque.listIterator(arrayDeque.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                navBackStackEntry = null;
                break;
            }
            navBackStackEntry = listIterator.previous();
            if (navBackStackEntry.getDestination().getId() == destinationId) {
                break;
            }
        }
        NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
        if (navBackStackEntry2 != null) {
            return navBackStackEntry2;
        }
        throw new IllegalArgumentException(("No destination with ID " + destinationId + " is on the NavController's back stack. The current destination is " + getCurrentDestination()).toString());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final StateFlow<List<NavBackStackEntry>> getCurrentBackStack() {
        return this.currentBackStack;
    }

    @Nullable
    public NavBackStackEntry getCurrentBackStackEntry() {
        return this.backQueue.lastOrNull();
    }

    @NotNull
    public final Flow<NavBackStackEntry> getCurrentBackStackEntryFlow() {
        return this.currentBackStackEntryFlow;
    }

    @Nullable
    public NavDestination getCurrentDestination() {
        NavBackStackEntry currentBackStackEntry = getCurrentBackStackEntry();
        if (currentBackStackEntry != null) {
            return currentBackStackEntry.getDestination();
        }
        return null;
    }

    @MainThread
    @NotNull
    public NavGraph getGraph() {
        NavGraph navGraph = this._graph;
        if (navGraph == null) {
            throw new IllegalStateException("You must call setGraph() before calling getGraph()".toString());
        }
        Intrinsics.checkNotNull(navGraph, "null cannot be cast to non-null type androidx.navigation.NavGraph");
        return navGraph;
    }

    @NotNull
    public final Lifecycle.State getHostLifecycleState$navigation_runtime_release() {
        return this.lifecycleOwner == null ? Lifecycle.State.CREATED : this.hostLifecycleState;
    }

    @NotNull
    public NavInflater getNavInflater() {
        return (NavInflater) this.navInflater.getValue();
    }

    @NotNull
    /* renamed from: getNavigatorProvider, reason: from getter */
    public NavigatorProvider get_navigatorProvider() {
        return this._navigatorProvider;
    }

    @Nullable
    public NavBackStackEntry getPreviousBackStackEntry() {
        List reversed;
        Sequence asSequence;
        Object obj;
        reversed = CollectionsKt___CollectionsKt.reversed(this.backQueue);
        Iterator it2 = reversed.iterator();
        if (it2.hasNext()) {
            it2.next();
        }
        asSequence = SequencesKt__SequencesKt.asSequence(it2);
        Iterator it3 = asSequence.iterator();
        while (true) {
            if (!it3.hasNext()) {
                obj = null;
                break;
            }
            obj = it3.next();
            if (!(((NavBackStackEntry) obj).getDestination() instanceof NavGraph)) {
                break;
            }
        }
        return (NavBackStackEntry) obj;
    }

    @NotNull
    public ViewModelStoreOwner getViewModelStoreOwner(@IdRes int navGraphId) {
        if (this.viewModel == null) {
            throw new IllegalStateException("You must call setViewModelStore() before calling getViewModelStoreOwner().".toString());
        }
        NavBackStackEntry backStackEntry = getBackStackEntry(navGraphId);
        if (backStackEntry.getDestination() instanceof NavGraph) {
            return backStackEntry;
        }
        throw new IllegalArgumentException(("No NavGraph with ID " + navGraphId + " is on the NavController's back stack").toString());
    }

    @NotNull
    public final StateFlow<List<NavBackStackEntry>> getVisibleEntries() {
        return this.visibleEntries;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0064 A[SYNTHETIC] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5110h(final java.util.List<androidx.navigation.NavBackStackEntry> r12, final android.os.Bundle r13, androidx.navigation.NavOptions r14, androidx.navigation.Navigator.Extras r15) {
        /*
            r11 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = r12
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Iterator r1 = r1.iterator()
        L11:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L2a
            java.lang.Object r3 = r1.next()
            r4 = r3
            androidx.navigation.NavBackStackEntry r4 = (androidx.navigation.NavBackStackEntry) r4
            androidx.navigation.NavDestination r4 = r4.getDestination()
            boolean r4 = r4 instanceof androidx.navigation.NavGraph
            if (r4 != 0) goto L11
            r2.add(r3)
            goto L11
        L2a:
            java.util.Iterator r1 = r2.iterator()
        L2e:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L76
            java.lang.Object r2 = r1.next()
            androidx.navigation.NavBackStackEntry r2 = (androidx.navigation.NavBackStackEntry) r2
            java.lang.Object r3 = kotlin.collections.CollectionsKt.lastOrNull(r0)
            java.util.List r3 = (java.util.List) r3
            if (r3 == 0) goto L55
            java.lang.Object r4 = kotlin.collections.CollectionsKt.last(r3)
            androidx.navigation.NavBackStackEntry r4 = (androidx.navigation.NavBackStackEntry) r4
            if (r4 == 0) goto L55
            androidx.navigation.NavDestination r4 = r4.getDestination()
            if (r4 == 0) goto L55
            java.lang.String r4 = r4.getNavigatorName()
            goto L56
        L55:
            r4 = 0
        L56:
            androidx.navigation.NavDestination r5 = r2.getDestination()
            java.lang.String r5 = r5.getNavigatorName()
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 == 0) goto L6a
            java.util.Collection r3 = (java.util.Collection) r3
            r3.add(r2)
            goto L2e
        L6a:
            androidx.navigation.NavBackStackEntry[] r2 = new androidx.navigation.NavBackStackEntry[]{r2}
            java.util.List r2 = kotlin.collections.CollectionsKt.mutableListOf(r2)
            r0.add(r2)
            goto L2e
        L76:
            kotlin.jvm.internal.Ref$BooleanRef r1 = new kotlin.jvm.internal.Ref$BooleanRef
            r1.<init>()
            java.util.Iterator r0 = r0.iterator()
        L7f:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto Lb8
            java.lang.Object r2 = r0.next()
            java.util.List r2 = (java.util.List) r2
            androidx.navigation.NavigatorProvider r3 = r11._navigatorProvider
            java.lang.Object r4 = kotlin.collections.CollectionsKt.first(r2)
            androidx.navigation.NavBackStackEntry r4 = (androidx.navigation.NavBackStackEntry) r4
            androidx.navigation.NavDestination r4 = r4.getDestination()
            java.lang.String r4 = r4.getNavigatorName()
            androidx.navigation.Navigator r9 = r3.getNavigator(r4)
            kotlin.jvm.internal.Ref$IntRef r6 = new kotlin.jvm.internal.Ref$IntRef
            r6.<init>()
            androidx.navigation.NavController$executeRestoreState$3 r10 = new androidx.navigation.NavController$executeRestoreState$3
            r3 = r10
            r4 = r1
            r5 = r12
            r7 = r11
            r8 = r13
            r3.<init>()
            r3 = r11
            r4 = r9
            r5 = r2
            r6 = r14
            r7 = r15
            r8 = r10
            r3.m5118q(r4, r5, r6, r7, r8)
            goto L7f
        Lb8:
            boolean r11 = r1.element
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavController.m5110h(java.util.List, android.os.Bundle, androidx.navigation.NavOptions, androidx.navigation.Navigator$Extras):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
    
        if ((r0.length == 0) != false) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0030  */
    @androidx.annotation.MainThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleDeepLink(@org.jetbrains.annotations.Nullable android.content.Intent r20) {
        /*
            Method dump skipped, instructions count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavController.handleDeepLink(android.content.Intent):boolean");
    }

    /* renamed from: i */
    public final NavDestination m5111i(NavDestination navDestination, @IdRes int i) {
        NavGraph parent;
        if (navDestination.getId() == i) {
            return navDestination;
        }
        if (navDestination instanceof NavGraph) {
            parent = (NavGraph) navDestination;
        } else {
            parent = navDestination.getParent();
            Intrinsics.checkNotNull(parent);
        }
        return parent.findNode(i);
    }

    /* renamed from: j */
    public final String m5112j(int[] deepLink) {
        NavGraph navGraph;
        NavGraph navGraph2 = this._graph;
        int length = deepLink.length;
        int i = 0;
        while (true) {
            NavDestination navDestination = null;
            if (i >= length) {
                return null;
            }
            int i2 = deepLink[i];
            if (i == 0) {
                NavGraph navGraph3 = this._graph;
                Intrinsics.checkNotNull(navGraph3);
                if (navGraph3.getId() == i2) {
                    navDestination = this._graph;
                }
            } else {
                Intrinsics.checkNotNull(navGraph2);
                navDestination = navGraph2.findNode(i2);
            }
            if (navDestination == null) {
                return NavDestination.INSTANCE.getDisplayName(this.context, i2);
            }
            if (i != deepLink.length - 1 && (navDestination instanceof NavGraph)) {
                while (true) {
                    navGraph = (NavGraph) navDestination;
                    Intrinsics.checkNotNull(navGraph);
                    if (!(navGraph.findNode(navGraph.getStartDestId()) instanceof NavGraph)) {
                        break;
                    }
                    navDestination = navGraph.findNode(navGraph.getStartDestId());
                }
                navGraph2 = navGraph;
            }
            i++;
        }
    }

    /* renamed from: k */
    public final int m5113k() {
        ArrayDeque<NavBackStackEntry> arrayDeque = this.backQueue;
        int i = 0;
        if (!(arrayDeque instanceof Collection) || !arrayDeque.isEmpty()) {
            Iterator<NavBackStackEntry> it2 = arrayDeque.iterator();
            while (it2.hasNext()) {
                if ((!(it2.next().getDestination() instanceof NavGraph)) && (i = i + 1) < 0) {
                    CollectionsKt__CollectionsKt.throwCountOverflow();
                }
            }
        }
        return i;
    }

    /* renamed from: l */
    public final List<NavBackStackEntry> m5114l(ArrayDeque<NavBackStackEntryState> backStackState) {
        NavDestination graph;
        ArrayList arrayList = new ArrayList();
        NavBackStackEntry lastOrNull = this.backQueue.lastOrNull();
        if (lastOrNull == null || (graph = lastOrNull.getDestination()) == null) {
            graph = getGraph();
        }
        if (backStackState != null) {
            for (NavBackStackEntryState navBackStackEntryState : backStackState) {
                NavDestination m5111i = m5111i(graph, navBackStackEntryState.getDestinationId());
                if (m5111i == null) {
                    throw new IllegalStateException(("Restore State failed: destination " + NavDestination.INSTANCE.getDisplayName(this.context, navBackStackEntryState.getDestinationId()) + " cannot be found from the current destination " + graph).toString());
                }
                arrayList.add(navBackStackEntryState.instantiate(this.context, m5111i, getHostLifecycleState$navigation_runtime_release(), this.viewModel));
                graph = m5111i;
            }
        }
        return arrayList;
    }

    /* JADX WARN: Incorrect condition in loop: B:26:0x0062 */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5115m(androidx.navigation.NavDestination r6, android.os.Bundle r7) {
        /*
            r5 = this;
            androidx.navigation.NavBackStackEntry r0 = r5.getCurrentBackStackEntry()
            boolean r1 = r6 instanceof androidx.navigation.NavGraph
            if (r1 == 0) goto L16
            androidx.navigation.NavGraph$Companion r1 = androidx.navigation.NavGraph.INSTANCE
            r2 = r6
            androidx.navigation.NavGraph r2 = (androidx.navigation.NavGraph) r2
            androidx.navigation.NavDestination r1 = r1.findStartDestination(r2)
            int r1 = r1.getId()
            goto L1a
        L16:
            int r1 = r6.getId()
        L1a:
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L2c
            androidx.navigation.NavDestination r0 = r0.getDestination()
            if (r0 == 0) goto L2c
            int r0 = r0.getId()
            if (r1 != r0) goto L2c
            r0 = r2
            goto L2d
        L2c:
            r0 = r3
        L2d:
            if (r0 != 0) goto L30
            return r3
        L30:
            kotlin.collections.ArrayDeque r0 = new kotlin.collections.ArrayDeque
            r0.<init>()
            kotlin.collections.ArrayDeque<androidx.navigation.NavBackStackEntry> r1 = r5.backQueue
            int r4 = r1.size()
            java.util.ListIterator r1 = r1.listIterator(r4)
        L3f:
            boolean r4 = r1.hasPrevious()
            if (r4 == 0) goto L5b
            java.lang.Object r4 = r1.previous()
            androidx.navigation.NavBackStackEntry r4 = (androidx.navigation.NavBackStackEntry) r4
            androidx.navigation.NavDestination r4 = r4.getDestination()
            if (r4 != r6) goto L53
            r4 = r2
            goto L54
        L53:
            r4 = r3
        L54:
            if (r4 == 0) goto L3f
            int r6 = r1.nextIndex()
            goto L5c
        L5b:
            r6 = -1
        L5c:
            kotlin.collections.ArrayDeque<androidx.navigation.NavBackStackEntry> r1 = r5.backQueue
            int r1 = kotlin.collections.CollectionsKt.getLastIndex(r1)
            if (r1 < r6) goto L80
            kotlin.collections.ArrayDeque<androidx.navigation.NavBackStackEntry> r1 = r5.backQueue
            java.lang.Object r1 = r1.removeLast()
            androidx.navigation.NavBackStackEntry r1 = (androidx.navigation.NavBackStackEntry) r1
            r5.unlinkChildFromParent$navigation_runtime_release(r1)
            androidx.navigation.NavBackStackEntry r3 = new androidx.navigation.NavBackStackEntry
            androidx.navigation.NavDestination r4 = r1.getDestination()
            android.os.Bundle r4 = r4.addInDefaultArgs(r7)
            r3.<init>(r1, r4)
            r0.addFirst(r3)
            goto L5c
        L80:
            java.util.Iterator r6 = r0.iterator()
        L84:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto Lab
            java.lang.Object r7 = r6.next()
            androidx.navigation.NavBackStackEntry r7 = (androidx.navigation.NavBackStackEntry) r7
            androidx.navigation.NavDestination r1 = r7.getDestination()
            androidx.navigation.NavGraph r1 = r1.getParent()
            if (r1 == 0) goto La5
            int r1 = r1.getId()
            androidx.navigation.NavBackStackEntry r1 = r5.getBackStackEntry(r1)
            r5.m5116o(r7, r1)
        La5:
            kotlin.collections.ArrayDeque<androidx.navigation.NavBackStackEntry> r1 = r5.backQueue
            r1.add(r7)
            goto L84
        Lab:
            java.util.Iterator r6 = r0.iterator()
        Laf:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto Lcd
            java.lang.Object r7 = r6.next()
            androidx.navigation.NavBackStackEntry r7 = (androidx.navigation.NavBackStackEntry) r7
            androidx.navigation.NavigatorProvider r0 = r5._navigatorProvider
            androidx.navigation.NavDestination r1 = r7.getDestination()
            java.lang.String r1 = r1.getNavigatorName()
            androidx.navigation.Navigator r0 = r0.getNavigator(r1)
            r0.onLaunchSingleTop(r7)
            goto Laf
        Lcd:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavController.m5115m(androidx.navigation.NavDestination, android.os.Bundle):boolean");
    }

    @JvmOverloads
    @MainThread
    public final void navigate(@NotNull String route) {
        Intrinsics.checkNotNullParameter(route, "route");
        navigate$default(this, route, null, null, 6, null);
    }

    @MainThread
    public boolean navigateUp() {
        Intent intent;
        if (m5113k() != 1) {
            return popBackStack();
        }
        Activity activity = this.activity;
        Bundle extras = (activity == null || (intent = activity.getIntent()) == null) ? null : intent.getExtras();
        return (extras != null ? extras.getIntArray(KEY_DEEP_LINK_IDS) : null) != null ? m5102C() : m5103D();
    }

    /* renamed from: o */
    public final void m5116o(NavBackStackEntry child, NavBackStackEntry parent) {
        this.childToParentEntries.put(child, parent);
        if (this.parentToChildCount.get(parent) == null) {
            this.parentToChildCount.put(parent, new AtomicInteger(0));
        }
        AtomicInteger atomicInteger = this.parentToChildCount.get(parent);
        Intrinsics.checkNotNull(atomicInteger);
        atomicInteger.incrementAndGet();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00f8 A[LOOP:1: B:22:0x00f2->B:24:0x00f8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a9  */
    @androidx.annotation.MainThread
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5117p(final androidx.navigation.NavDestination r22, android.os.Bundle r23, androidx.navigation.NavOptions r24, androidx.navigation.Navigator.Extras r25) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavController.m5117p(androidx.navigation.NavDestination, android.os.Bundle, androidx.navigation.NavOptions, androidx.navigation.Navigator$Extras):void");
    }

    @JvmOverloads
    @MainThread
    public final boolean popBackStack(@NotNull String route, boolean z) {
        Intrinsics.checkNotNullParameter(route, "route");
        return popBackStack$default(this, route, z, false, 4, null);
    }

    public final void popBackStackFromNavigator$navigation_runtime_release(@NotNull NavBackStackEntry popUpTo, @NotNull Function0<Unit> onComplete) {
        Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        int indexOf = this.backQueue.indexOf(popUpTo);
        if (indexOf < 0) {
            Log.i(f8364I, "Ignoring pop of " + popUpTo + " as it was not found on the current back stack");
            return;
        }
        int i = indexOf + 1;
        if (i != this.backQueue.size()) {
            m5121u(this.backQueue.get(i).getDestination().getId(), true, false);
        }
        m5099z(this, popUpTo, false, null, 6, null);
        onComplete.invoke();
        m5104E();
        m5108f();
    }

    @NotNull
    public final List<NavBackStackEntry> populateVisibleEntries$navigation_runtime_release() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = this.navigatorState.values().iterator();
        while (it2.hasNext()) {
            Set<NavBackStackEntry> value = ((NavControllerNavigatorState) it2.next()).getTransitionsInProgress().getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : value) {
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                if ((arrayList.contains(navBackStackEntry) || navBackStackEntry.getMaxLifecycle().isAtLeast(Lifecycle.State.STARTED)) ? false : true) {
                    arrayList2.add(obj);
                }
            }
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, arrayList2);
        }
        ArrayDeque<NavBackStackEntry> arrayDeque = this.backQueue;
        ArrayList arrayList3 = new ArrayList();
        for (NavBackStackEntry navBackStackEntry2 : arrayDeque) {
            NavBackStackEntry navBackStackEntry3 = navBackStackEntry2;
            if (!arrayList.contains(navBackStackEntry3) && navBackStackEntry3.getMaxLifecycle().isAtLeast(Lifecycle.State.STARTED)) {
                arrayList3.add(navBackStackEntry2);
            }
        }
        CollectionsKt__MutableCollectionsKt.addAll(arrayList, arrayList3);
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (!(((NavBackStackEntry) obj2).getDestination() instanceof NavGraph)) {
                arrayList4.add(obj2);
            }
        }
        return arrayList4;
    }

    /* renamed from: q */
    public final void m5118q(Navigator<? extends NavDestination> navigator, List<NavBackStackEntry> list, NavOptions navOptions, Navigator.Extras extras, Function1<? super NavBackStackEntry, Unit> function1) {
        this.addToBackStackHandler = function1;
        navigator.navigate(list, navOptions, extras);
        this.addToBackStackHandler = null;
    }

    public void removeOnDestinationChangedListener(@NotNull OnDestinationChangedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onDestinationChangedListeners.remove(listener);
    }

    @CallSuper
    public void restoreState(@Nullable Bundle navState) {
        if (navState == null) {
            return;
        }
        navState.setClassLoader(this.context.getClassLoader());
        this.navigatorStateToRestore = navState.getBundle(f8365J);
        this.backStackToRestore = navState.getParcelableArray(f8367L);
        this.backStackStates.clear();
        int[] intArray = navState.getIntArray(f8368M);
        ArrayList<String> stringArrayList = navState.getStringArrayList(f8369N);
        if (intArray != null && stringArrayList != null) {
            int length = intArray.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                this.backStackMap.put(Integer.valueOf(intArray[i]), stringArrayList.get(i2));
                i++;
                i2++;
            }
        }
        ArrayList<String> stringArrayList2 = navState.getStringArrayList(f8370O);
        if (stringArrayList2 != null) {
            for (String id : stringArrayList2) {
                Parcelable[] parcelableArray = navState.getParcelableArray(f8371P + id);
                if (parcelableArray != null) {
                    Map<String, ArrayDeque<NavBackStackEntryState>> map = this.backStackStates;
                    Intrinsics.checkNotNullExpressionValue(id, "id");
                    ArrayDeque<NavBackStackEntryState> arrayDeque = new ArrayDeque<>(parcelableArray.length);
                    Iterator it2 = ArrayIteratorKt.iterator(parcelableArray);
                    while (it2.hasNext()) {
                        Parcelable parcelable = (Parcelable) it2.next();
                        Intrinsics.checkNotNull(parcelable, "null cannot be cast to non-null type androidx.navigation.NavBackStackEntryState");
                        arrayDeque.add((NavBackStackEntryState) parcelable);
                    }
                    map.put(id, arrayDeque);
                }
            }
        }
        this.deepLinkHandled = navState.getBoolean(KEY_DEEP_LINK_HANDLED);
    }

    @MainThread
    /* renamed from: s */
    public final void m5119s(Bundle startDestinationArgs) {
        Activity activity;
        ArrayList<String> stringArrayList;
        Bundle bundle = this.navigatorStateToRestore;
        if (bundle != null && (stringArrayList = bundle.getStringArrayList(f8366K)) != null) {
            Iterator<String> it2 = stringArrayList.iterator();
            while (it2.hasNext()) {
                String name = it2.next();
                NavigatorProvider navigatorProvider = this._navigatorProvider;
                Intrinsics.checkNotNullExpressionValue(name, "name");
                Navigator navigator = navigatorProvider.getNavigator(name);
                Bundle bundle2 = bundle.getBundle(name);
                if (bundle2 != null) {
                    navigator.onRestoreState(bundle2);
                }
            }
        }
        Parcelable[] parcelableArr = this.backStackToRestore;
        boolean z = false;
        if (parcelableArr != null) {
            for (Parcelable parcelable : parcelableArr) {
                Intrinsics.checkNotNull(parcelable, "null cannot be cast to non-null type androidx.navigation.NavBackStackEntryState");
                NavBackStackEntryState navBackStackEntryState = (NavBackStackEntryState) parcelable;
                NavDestination findDestination = findDestination(navBackStackEntryState.getDestinationId());
                if (findDestination == null) {
                    throw new IllegalStateException("Restoring the Navigation back stack failed: destination " + NavDestination.INSTANCE.getDisplayName(this.context, navBackStackEntryState.getDestinationId()) + " cannot be found from the current destination " + getCurrentDestination());
                }
                NavBackStackEntry instantiate = navBackStackEntryState.instantiate(this.context, findDestination, getHostLifecycleState$navigation_runtime_release(), this.viewModel);
                Navigator<? extends NavDestination> navigator2 = this._navigatorProvider.getNavigator(findDestination.getNavigatorName());
                Map<Navigator<? extends NavDestination>, NavControllerNavigatorState> map = this.navigatorState;
                NavControllerNavigatorState navControllerNavigatorState = map.get(navigator2);
                if (navControllerNavigatorState == null) {
                    navControllerNavigatorState = new NavControllerNavigatorState(this, navigator2);
                    map.put(navigator2, navControllerNavigatorState);
                }
                this.backQueue.add(instantiate);
                navControllerNavigatorState.m5125b(instantiate);
                NavGraph parent = instantiate.getDestination().getParent();
                if (parent != null) {
                    m5116o(instantiate, getBackStackEntry(parent.getId()));
                }
            }
            m5104E();
            this.backStackToRestore = null;
        }
        Collection<Navigator<? extends NavDestination>> values = this._navigatorProvider.getNavigators().values();
        ArrayList<Navigator<? extends NavDestination>> arrayList = new ArrayList();
        for (Object obj : values) {
            if (!((Navigator) obj).getIsAttached()) {
                arrayList.add(obj);
            }
        }
        for (Navigator<? extends NavDestination> navigator3 : arrayList) {
            Map<Navigator<? extends NavDestination>, NavControllerNavigatorState> map2 = this.navigatorState;
            NavControllerNavigatorState navControllerNavigatorState2 = map2.get(navigator3);
            if (navControllerNavigatorState2 == null) {
                navControllerNavigatorState2 = new NavControllerNavigatorState(this, navigator3);
                map2.put(navigator3, navControllerNavigatorState2);
            }
            navigator3.onAttach(navControllerNavigatorState2);
        }
        if (this._graph == null || !this.backQueue.isEmpty()) {
            m5108f();
            return;
        }
        if (!this.deepLinkHandled && (activity = this.activity) != null) {
            Intrinsics.checkNotNull(activity);
            if (handleDeepLink(activity.getIntent())) {
                z = true;
            }
        }
        if (z) {
            return;
        }
        NavGraph navGraph = this._graph;
        Intrinsics.checkNotNull(navGraph);
        m5117p(navGraph, startDestinationArgs, null, null);
    }

    @CallSuper
    @Nullable
    public Bundle saveState() {
        Bundle bundle;
        ArrayList<String> arrayList = new ArrayList<>();
        Bundle bundle2 = new Bundle();
        for (Map.Entry<String, Navigator<? extends NavDestination>> entry : this._navigatorProvider.getNavigators().entrySet()) {
            String key = entry.getKey();
            Bundle onSaveState = entry.getValue().onSaveState();
            if (onSaveState != null) {
                arrayList.add(key);
                bundle2.putBundle(key, onSaveState);
            }
        }
        if (!arrayList.isEmpty()) {
            bundle = new Bundle();
            bundle2.putStringArrayList(f8366K, arrayList);
            bundle.putBundle(f8365J, bundle2);
        } else {
            bundle = null;
        }
        if (!this.backQueue.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            Parcelable[] parcelableArr = new Parcelable[this.backQueue.size()];
            Iterator<NavBackStackEntry> it2 = this.backQueue.iterator();
            int i = 0;
            while (it2.hasNext()) {
                parcelableArr[i] = new NavBackStackEntryState(it2.next());
                i++;
            }
            bundle.putParcelableArray(f8367L, parcelableArr);
        }
        if (!this.backStackMap.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            int[] iArr = new int[this.backStackMap.size()];
            ArrayList<String> arrayList2 = new ArrayList<>();
            int i2 = 0;
            for (Map.Entry<Integer, String> entry2 : this.backStackMap.entrySet()) {
                int intValue = entry2.getKey().intValue();
                String value = entry2.getValue();
                iArr[i2] = intValue;
                arrayList2.add(value);
                i2++;
            }
            bundle.putIntArray(f8368M, iArr);
            bundle.putStringArrayList(f8369N, arrayList2);
        }
        if (!this.backStackStates.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            ArrayList<String> arrayList3 = new ArrayList<>();
            for (Map.Entry<String, ArrayDeque<NavBackStackEntryState>> entry3 : this.backStackStates.entrySet()) {
                String key2 = entry3.getKey();
                ArrayDeque<NavBackStackEntryState> value2 = entry3.getValue();
                arrayList3.add(key2);
                Parcelable[] parcelableArr2 = new Parcelable[value2.size()];
                int i3 = 0;
                for (NavBackStackEntryState navBackStackEntryState : value2) {
                    int i4 = i3 + 1;
                    if (i3 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    parcelableArr2[i3] = navBackStackEntryState;
                    i3 = i4;
                }
                bundle.putParcelableArray(f8371P + key2, parcelableArr2);
            }
            bundle.putStringArrayList(f8370O, arrayList3);
        }
        if (this.deepLinkHandled) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(KEY_DEEP_LINK_HANDLED, this.deepLinkHandled);
        }
        return bundle;
    }

    @CallSuper
    @MainThread
    public void setGraph(@NotNull NavGraph graph) {
        Intrinsics.checkNotNullParameter(graph, "graph");
        setGraph(graph, (Bundle) null);
    }

    public final void setHostLifecycleState$navigation_runtime_release(@NotNull Lifecycle.State state) {
        Intrinsics.checkNotNullParameter(state, "<set-?>");
        this.hostLifecycleState = state;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setLifecycleOwner(@NotNull LifecycleOwner owner) {
        Lifecycle lifecycle;
        Intrinsics.checkNotNullParameter(owner, "owner");
        if (Intrinsics.areEqual(owner, this.lifecycleOwner)) {
            return;
        }
        LifecycleOwner lifecycleOwner = this.lifecycleOwner;
        if (lifecycleOwner != null && (lifecycle = lifecycleOwner.getLifecycle()) != null) {
            lifecycle.removeObserver(this.lifecycleObserver);
        }
        this.lifecycleOwner = owner;
        owner.getLifecycle().addObserver(this.lifecycleObserver);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setNavigatorProvider(@NotNull NavigatorProvider navigatorProvider) {
        Intrinsics.checkNotNullParameter(navigatorProvider, "navigatorProvider");
        if (!this.backQueue.isEmpty()) {
            throw new IllegalStateException("NavigatorProvider must be set before setGraph call".toString());
        }
        this._navigatorProvider = navigatorProvider;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setOnBackPressedDispatcher(@NotNull OnBackPressedDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        if (Intrinsics.areEqual(dispatcher, this.onBackPressedDispatcher)) {
            return;
        }
        LifecycleOwner lifecycleOwner = this.lifecycleOwner;
        if (lifecycleOwner == null) {
            throw new IllegalStateException("You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()".toString());
        }
        this.onBackPressedCallback.remove();
        this.onBackPressedDispatcher = dispatcher;
        dispatcher.addCallback(lifecycleOwner, this.onBackPressedCallback);
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        lifecycle.removeObserver(this.lifecycleObserver);
        lifecycle.addObserver(this.lifecycleObserver);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setViewModelStore(@NotNull ViewModelStore viewModelStore) {
        Intrinsics.checkNotNullParameter(viewModelStore, "viewModelStore");
        NavControllerViewModel navControllerViewModel = this.viewModel;
        NavControllerViewModel.Companion companion = NavControllerViewModel.INSTANCE;
        if (Intrinsics.areEqual(navControllerViewModel, companion.getInstance(viewModelStore))) {
            return;
        }
        if (!this.backQueue.isEmpty()) {
            throw new IllegalStateException("ViewModelStore should be set before setGraph call".toString());
        }
        this.viewModel = companion.getInstance(viewModelStore);
    }

    /* renamed from: t */
    public final void m5120t(Navigator<? extends NavDestination> navigator, NavBackStackEntry navBackStackEntry, boolean z, Function1<? super NavBackStackEntry, Unit> function1) {
        this.popFromBackStackHandler = function1;
        navigator.popBackStack(navBackStackEntry, z);
        this.popFromBackStackHandler = null;
    }

    @MainThread
    /* renamed from: u */
    public final boolean m5121u(@IdRes int destinationId, boolean inclusive, boolean saveState) {
        List reversed;
        NavDestination navDestination;
        if (this.backQueue.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        reversed = CollectionsKt___CollectionsKt.reversed(this.backQueue);
        Iterator it2 = reversed.iterator();
        while (true) {
            if (!it2.hasNext()) {
                navDestination = null;
                break;
            }
            navDestination = ((NavBackStackEntry) it2.next()).getDestination();
            Navigator navigator = this._navigatorProvider.getNavigator(navDestination.getNavigatorName());
            if (inclusive || navDestination.getId() != destinationId) {
                arrayList.add(navigator);
            }
            if (navDestination.getId() == destinationId) {
                break;
            }
        }
        if (navDestination != null) {
            return m5109g(arrayList, navDestination, inclusive, saveState);
        }
        Log.i(f8364I, "Ignoring popBackStack to destination " + NavDestination.INSTANCE.getDisplayName(this.context, destinationId) + " as it was not found on the current back stack");
        return false;
    }

    @Nullable
    public final NavBackStackEntry unlinkChildFromParent$navigation_runtime_release(@NotNull NavBackStackEntry child) {
        Intrinsics.checkNotNullParameter(child, "child");
        NavBackStackEntry remove = this.childToParentEntries.remove(child);
        if (remove == null) {
            return null;
        }
        AtomicInteger atomicInteger = this.parentToChildCount.get(remove);
        Integer valueOf = atomicInteger != null ? Integer.valueOf(atomicInteger.decrementAndGet()) : null;
        if (valueOf != null && valueOf.intValue() == 0) {
            NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(this._navigatorProvider.getNavigator(remove.getDestination().getNavigatorName()));
            if (navControllerNavigatorState != null) {
                navControllerNavigatorState.markTransitionComplete(remove);
            }
            this.parentToChildCount.remove(remove);
        }
        return remove;
    }

    public final void updateBackStackLifecycle$navigation_runtime_release() {
        List<NavBackStackEntry> mutableList;
        Object last;
        List<NavBackStackEntry> reversed;
        Object first;
        Object removeFirst;
        Object firstOrNull;
        StateFlow<Set<NavBackStackEntry>> transitionsInProgress;
        Set<NavBackStackEntry> value;
        List reversed2;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.backQueue);
        if (mutableList.isEmpty()) {
            return;
        }
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) mutableList);
        NavDestination destination = ((NavBackStackEntry) last).getDestination();
        ArrayList arrayList = new ArrayList();
        if (destination instanceof FloatingWindow) {
            reversed2 = CollectionsKt___CollectionsKt.reversed(mutableList);
            Iterator it2 = reversed2.iterator();
            while (it2.hasNext()) {
                NavDestination destination2 = ((NavBackStackEntry) it2.next()).getDestination();
                arrayList.add(destination2);
                if (!(destination2 instanceof FloatingWindow) && !(destination2 instanceof NavGraph)) {
                    break;
                }
            }
        }
        HashMap hashMap = new HashMap();
        reversed = CollectionsKt___CollectionsKt.reversed(mutableList);
        for (NavBackStackEntry navBackStackEntry : reversed) {
            Lifecycle.State maxLifecycle = navBackStackEntry.getMaxLifecycle();
            NavDestination destination3 = navBackStackEntry.getDestination();
            if (destination == null || destination3.getId() != destination.getId()) {
                if (true ^ arrayList.isEmpty()) {
                    int id = destination3.getId();
                    first = CollectionsKt___CollectionsKt.first((List<? extends Object>) arrayList);
                    if (id == ((NavDestination) first).getId()) {
                        removeFirst = CollectionsKt__MutableCollectionsKt.removeFirst(arrayList);
                        NavDestination navDestination = (NavDestination) removeFirst;
                        if (maxLifecycle == Lifecycle.State.RESUMED) {
                            navBackStackEntry.setMaxLifecycle(Lifecycle.State.STARTED);
                        } else {
                            Lifecycle.State state = Lifecycle.State.STARTED;
                            if (maxLifecycle != state) {
                                hashMap.put(navBackStackEntry, state);
                            }
                        }
                        NavGraph parent = navDestination.getParent();
                        if (parent != null && !arrayList.contains(parent)) {
                            arrayList.add(parent);
                        }
                    }
                }
                navBackStackEntry.setMaxLifecycle(Lifecycle.State.CREATED);
            } else {
                Lifecycle.State state2 = Lifecycle.State.RESUMED;
                if (maxLifecycle != state2) {
                    NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(get_navigatorProvider().getNavigator(navBackStackEntry.getDestination().getNavigatorName()));
                    if (!Intrinsics.areEqual((navControllerNavigatorState == null || (transitionsInProgress = navControllerNavigatorState.getTransitionsInProgress()) == null || (value = transitionsInProgress.getValue()) == null) ? null : Boolean.valueOf(value.contains(navBackStackEntry)), Boolean.TRUE)) {
                        AtomicInteger atomicInteger = this.parentToChildCount.get(navBackStackEntry);
                        if (!(atomicInteger != null && atomicInteger.get() == 0)) {
                            hashMap.put(navBackStackEntry, state2);
                        }
                    }
                    hashMap.put(navBackStackEntry, Lifecycle.State.STARTED);
                }
                firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) arrayList);
                NavDestination navDestination2 = (NavDestination) firstOrNull;
                if (navDestination2 != null && navDestination2.getId() == destination3.getId()) {
                    CollectionsKt__MutableCollectionsKt.removeFirst(arrayList);
                }
                destination = destination.getParent();
            }
        }
        for (NavBackStackEntry navBackStackEntry2 : mutableList) {
            Lifecycle.State state3 = (Lifecycle.State) hashMap.get(navBackStackEntry2);
            if (state3 != null) {
                navBackStackEntry2.setMaxLifecycle(state3);
            } else {
                navBackStackEntry2.updateState();
            }
        }
    }

    /* renamed from: v */
    public final boolean m5122v(String route, boolean inclusive, boolean saveState) {
        NavBackStackEntry navBackStackEntry;
        if (this.backQueue.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        ArrayDeque<NavBackStackEntry> arrayDeque = this.backQueue;
        ListIterator<NavBackStackEntry> listIterator = arrayDeque.listIterator(arrayDeque.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                navBackStackEntry = null;
                break;
            }
            navBackStackEntry = listIterator.previous();
            NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
            boolean hasRoute = navBackStackEntry2.getDestination().hasRoute(route, navBackStackEntry2.getArguments());
            if (inclusive || !hasRoute) {
                arrayList.add(this._navigatorProvider.getNavigator(navBackStackEntry2.getDestination().getNavigatorName()));
            }
            if (hasRoute) {
                break;
            }
        }
        NavBackStackEntry navBackStackEntry3 = navBackStackEntry;
        NavDestination destination = navBackStackEntry3 != null ? navBackStackEntry3.getDestination() : null;
        if (destination != null) {
            return m5109g(arrayList, destination, inclusive, saveState);
        }
        Log.i(f8364I, "Ignoring popBackStack to route " + route + " as it was not found on the current back stack");
        return false;
    }

    /* renamed from: y */
    public final void m5123y(NavBackStackEntry popUpTo, boolean saveState, ArrayDeque<NavBackStackEntryState> savedState) {
        NavControllerViewModel navControllerViewModel;
        StateFlow<Set<NavBackStackEntry>> transitionsInProgress;
        Set<NavBackStackEntry> value;
        NavBackStackEntry last = this.backQueue.last();
        if (!Intrinsics.areEqual(last, popUpTo)) {
            throw new IllegalStateException(("Attempted to pop " + popUpTo.getDestination() + ", which is not the top of the back stack (" + last.getDestination() + ')').toString());
        }
        this.backQueue.removeLast();
        NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(get_navigatorProvider().getNavigator(last.getDestination().getNavigatorName()));
        boolean z = true;
        if (!((navControllerNavigatorState == null || (transitionsInProgress = navControllerNavigatorState.getTransitionsInProgress()) == null || (value = transitionsInProgress.getValue()) == null || !value.contains(last)) ? false : true) && !this.parentToChildCount.containsKey(last)) {
            z = false;
        }
        Lifecycle.State state = last.getLifecycle().getState();
        Lifecycle.State state2 = Lifecycle.State.CREATED;
        if (state.isAtLeast(state2)) {
            if (saveState) {
                last.setMaxLifecycle(state2);
                savedState.addFirst(new NavBackStackEntryState(last));
            }
            if (z) {
                last.setMaxLifecycle(state2);
            } else {
                last.setMaxLifecycle(Lifecycle.State.DESTROYED);
                unlinkChildFromParent$navigation_runtime_release(last);
            }
        }
        if (saveState || z || (navControllerViewModel = this.viewModel) == null) {
            return;
        }
        navControllerViewModel.clear(last.getId());
    }

    @JvmOverloads
    @MainThread
    public final void navigate(@NotNull String route, @Nullable NavOptions navOptions) {
        Intrinsics.checkNotNullParameter(route, "route");
        navigate$default(this, route, navOptions, null, 4, null);
    }

    @MainThread
    public boolean popBackStack() {
        if (this.backQueue.isEmpty()) {
            return false;
        }
        NavDestination currentDestination = getCurrentDestination();
        Intrinsics.checkNotNull(currentDestination);
        return popBackStack(currentDestination.getId(), true);
    }

    @CallSuper
    @MainThread
    public void setGraph(@NavigationRes int graphResId) {
        setGraph(getNavInflater().inflate(graphResId), (Bundle) null);
    }

    @MainThread
    public final boolean clearBackStack(@IdRes int destinationId) {
        return m5106d(destinationId) && m5108f();
    }

    @MainThread
    public void navigate(@IdRes int resId) {
        navigate(resId, (Bundle) null);
    }

    @CallSuper
    @MainThread
    public void setGraph(@NavigationRes int graphResId, @Nullable Bundle startDestinationArgs) {
        setGraph(getNavInflater().inflate(graphResId), startDestinationArgs);
    }

    @MainThread
    public void navigate(@IdRes int resId, @Nullable Bundle args) {
        navigate(resId, args, (NavOptions) null);
    }

    @MainThread
    public boolean popBackStack(@IdRes int destinationId, boolean inclusive) {
        return popBackStack(destinationId, inclusive, false);
    }

    @CallSuper
    @MainThread
    public void setGraph(@NotNull NavGraph graph, @Nullable Bundle startDestinationArgs) {
        List list;
        List<NavDestination> asReversed;
        Intrinsics.checkNotNullParameter(graph, "graph");
        if (!Intrinsics.areEqual(this._graph, graph)) {
            NavGraph navGraph = this._graph;
            if (navGraph != null) {
                for (Integer id : new ArrayList(this.backStackMap.keySet())) {
                    Intrinsics.checkNotNullExpressionValue(id, "id");
                    m5106d(id.intValue());
                }
                m5098x(this, navGraph.getId(), true, false, 4, null);
            }
            this._graph = graph;
            m5119s(startDestinationArgs);
            return;
        }
        int size = graph.getNodes().size();
        for (int i = 0; i < size; i++) {
            NavDestination valueAt = graph.getNodes().valueAt(i);
            NavGraph navGraph2 = this._graph;
            Intrinsics.checkNotNull(navGraph2);
            int keyAt = navGraph2.getNodes().keyAt(i);
            NavGraph navGraph3 = this._graph;
            Intrinsics.checkNotNull(navGraph3);
            navGraph3.getNodes().replace(keyAt, valueAt);
        }
        for (NavBackStackEntry navBackStackEntry : this.backQueue) {
            list = SequencesKt___SequencesKt.toList(NavDestination.INSTANCE.getHierarchy(navBackStackEntry.getDestination()));
            asReversed = CollectionsKt__ReversedViewsKt.asReversed(list);
            NavDestination navDestination = this._graph;
            Intrinsics.checkNotNull(navDestination);
            for (NavDestination navDestination2 : asReversed) {
                if (!Intrinsics.areEqual(navDestination2, this._graph) || !Intrinsics.areEqual(navDestination, graph)) {
                    if (navDestination instanceof NavGraph) {
                        navDestination = ((NavGraph) navDestination).findNode(navDestination2.getId());
                        Intrinsics.checkNotNull(navDestination);
                    }
                }
            }
            navBackStackEntry.setDestination(navDestination);
        }
    }

    @MainThread
    public void navigate(@IdRes int resId, @Nullable Bundle args, @Nullable NavOptions navOptions) {
        navigate(resId, args, navOptions, null);
    }

    @MainThread
    public boolean popBackStack(@IdRes int destinationId, boolean inclusive, boolean saveState) {
        return m5121u(destinationId, inclusive, saveState) && m5108f();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public final NavDestination findDestination(@NotNull String route) {
        NavGraph navGraph;
        NavGraph parent;
        Intrinsics.checkNotNullParameter(route, "route");
        NavGraph navGraph2 = this._graph;
        if (navGraph2 == null) {
            return null;
        }
        Intrinsics.checkNotNull(navGraph2);
        if (!Intrinsics.areEqual(navGraph2.getRoute(), route)) {
            NavGraph navGraph3 = this._graph;
            Intrinsics.checkNotNull(navGraph3);
            if (navGraph3.matchDeepLink(route) == null) {
                NavBackStackEntry lastOrNull = this.backQueue.lastOrNull();
                if (lastOrNull == null || (navGraph = lastOrNull.getDestination()) == null) {
                    navGraph = this._graph;
                    Intrinsics.checkNotNull(navGraph);
                }
                if (navGraph instanceof NavGraph) {
                    parent = navGraph;
                } else {
                    parent = navGraph.getParent();
                    Intrinsics.checkNotNull(parent);
                }
                return parent.findNode(route);
            }
        }
        return this._graph;
    }

    @MainThread
    public void navigate(@IdRes int resId, @Nullable Bundle args, @Nullable NavOptions navOptions, @Nullable Navigator.Extras navigatorExtras) {
        NavDestination destination;
        int i;
        if (this.backQueue.isEmpty()) {
            destination = this._graph;
        } else {
            destination = this.backQueue.last().getDestination();
        }
        if (destination != null) {
            NavAction action = destination.getAction(resId);
            Bundle bundle = null;
            if (action != null) {
                if (navOptions == null) {
                    navOptions = action.getNavOptions();
                }
                i = action.getDestinationId();
                Bundle defaultArguments = action.getDefaultArguments();
                if (defaultArguments != null) {
                    bundle = new Bundle();
                    bundle.putAll(defaultArguments);
                }
            } else {
                i = resId;
            }
            if (args != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putAll(args);
            }
            if (i == 0 && navOptions != null && (navOptions.getPopUpToId() != -1 || navOptions.getPopUpToRoute() != null)) {
                if (navOptions.getPopUpToRoute() != null) {
                    String popUpToRoute = navOptions.getPopUpToRoute();
                    Intrinsics.checkNotNull(popUpToRoute);
                    popBackStack$default(this, popUpToRoute, navOptions.getPopUpToInclusive(), false, 4, null);
                    return;
                } else {
                    if (navOptions.getPopUpToId() != -1) {
                        popBackStack(navOptions.getPopUpToId(), navOptions.getPopUpToInclusive());
                        return;
                    }
                    return;
                }
            }
            if (i != 0) {
                NavDestination findDestination = findDestination(i);
                if (findDestination == null) {
                    NavDestination.Companion companion = NavDestination.INSTANCE;
                    String displayName = companion.getDisplayName(this.context, i);
                    if (!(action == null)) {
                        throw new IllegalArgumentException(("Navigation destination " + displayName + " referenced from action " + companion.getDisplayName(this.context, resId) + " cannot be found from the current destination " + destination).toString());
                    }
                    throw new IllegalArgumentException("Navigation action/destination " + displayName + " cannot be found from the current destination " + destination);
                }
                m5117p(findDestination, bundle, navOptions, navigatorExtras);
                return;
            }
            throw new IllegalArgumentException("Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo".toString());
        }
        throw new IllegalStateException("No current destination found. Ensure a navigation graph has been set for NavController " + this + '.');
    }

    @JvmOverloads
    @MainThread
    public final boolean popBackStack(@NotNull String route, boolean inclusive, boolean saveState) {
        Intrinsics.checkNotNullParameter(route, "route");
        return m5122v(route, inclusive, saveState) && m5108f();
    }

    @NotNull
    public final NavBackStackEntry getBackStackEntry(@NotNull String route) {
        NavBackStackEntry navBackStackEntry;
        Intrinsics.checkNotNullParameter(route, "route");
        ArrayDeque<NavBackStackEntry> arrayDeque = this.backQueue;
        ListIterator<NavBackStackEntry> listIterator = arrayDeque.listIterator(arrayDeque.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                navBackStackEntry = null;
                break;
            }
            navBackStackEntry = listIterator.previous();
            NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
            if (navBackStackEntry2.getDestination().hasRoute(route, navBackStackEntry2.getArguments())) {
                break;
            }
        }
        NavBackStackEntry navBackStackEntry3 = navBackStackEntry;
        if (navBackStackEntry3 != null) {
            return navBackStackEntry3;
        }
        throw new IllegalArgumentException(("No destination with route " + route + " is on the NavController's back stack. The current destination is " + getCurrentDestination()).toString());
    }

    @MainThread
    public void navigate(@NotNull Uri deepLink) {
        Intrinsics.checkNotNullParameter(deepLink, "deepLink");
        navigate(new NavDeepLinkRequest(deepLink, null, null));
    }

    @MainThread
    public void navigate(@NotNull Uri deepLink, @Nullable NavOptions navOptions) {
        Intrinsics.checkNotNullParameter(deepLink, "deepLink");
        navigate(new NavDeepLinkRequest(deepLink, null, null), navOptions, (Navigator.Extras) null);
    }

    @MainThread
    public void navigate(@NotNull Uri deepLink, @Nullable NavOptions navOptions, @Nullable Navigator.Extras navigatorExtras) {
        Intrinsics.checkNotNullParameter(deepLink, "deepLink");
        navigate(new NavDeepLinkRequest(deepLink, null, null), navOptions, navigatorExtras);
    }

    @MainThread
    public void navigate(@NotNull NavDeepLinkRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        navigate(request, (NavOptions) null);
    }

    @MainThread
    public void navigate(@NotNull NavDeepLinkRequest request, @Nullable NavOptions navOptions) {
        Intrinsics.checkNotNullParameter(request, "request");
        navigate(request, navOptions, (Navigator.Extras) null);
    }

    @MainThread
    public void navigate(@NotNull NavDeepLinkRequest request, @Nullable NavOptions navOptions, @Nullable Navigator.Extras navigatorExtras) {
        Intrinsics.checkNotNullParameter(request, "request");
        NavGraph navGraph = this._graph;
        if (navGraph != null) {
            Intrinsics.checkNotNull(navGraph);
            NavDestination.DeepLinkMatch matchDeepLink = navGraph.matchDeepLink(request);
            if (matchDeepLink != null) {
                Bundle addInDefaultArgs = matchDeepLink.getCom.google.firebase.analytics.FirebaseAnalytics.Param.DESTINATION java.lang.String().addInDefaultArgs(matchDeepLink.getMatchingArgs());
                if (addInDefaultArgs == null) {
                    addInDefaultArgs = new Bundle();
                }
                NavDestination navDestination = matchDeepLink.getCom.google.firebase.analytics.FirebaseAnalytics.Param.DESTINATION java.lang.String();
                Intent intent = new Intent();
                intent.setDataAndType(request.getUri(), request.getMimeType());
                intent.setAction(request.getAction());
                addInDefaultArgs.putParcelable(KEY_DEEP_LINK_INTENT, intent);
                m5117p(navDestination, addInDefaultArgs, navOptions, navigatorExtras);
                return;
            }
            throw new IllegalArgumentException("Navigation destination that matches request " + request + " cannot be found in the navigation graph " + this._graph);
        }
        throw new IllegalArgumentException(("Cannot navigate to " + request + ". Navigation graph has not been set for NavController " + this + '.').toString());
    }

    @MainThread
    public void navigate(@NotNull NavDirections directions) {
        Intrinsics.checkNotNullParameter(directions, "directions");
        navigate(directions.getActionId(), directions.getAndroidx.fragment.app.e.m java.lang.String(), (NavOptions) null);
    }

    @MainThread
    public void navigate(@NotNull NavDirections directions, @Nullable NavOptions navOptions) {
        Intrinsics.checkNotNullParameter(directions, "directions");
        navigate(directions.getActionId(), directions.getAndroidx.fragment.app.e.m java.lang.String(), navOptions);
    }

    @MainThread
    public void navigate(@NotNull NavDirections directions, @NotNull Navigator.Extras navigatorExtras) {
        Intrinsics.checkNotNullParameter(directions, "directions");
        Intrinsics.checkNotNullParameter(navigatorExtras, "navigatorExtras");
        navigate(directions.getActionId(), directions.getAndroidx.fragment.app.e.m java.lang.String(), null, navigatorExtras);
    }

    @MainThread
    public final void navigate(@NotNull String route, @NotNull Function1<? super NavOptionsBuilder, Unit> builder) {
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(builder, "builder");
        navigate$default(this, route, NavOptionsBuilderKt.navOptions(builder), null, 4, null);
    }

    @JvmOverloads
    @MainThread
    public final void navigate(@NotNull String route, @Nullable NavOptions navOptions, @Nullable Navigator.Extras navigatorExtras) {
        Intrinsics.checkNotNullParameter(route, "route");
        NavDeepLinkRequest.Builder.Companion companion = NavDeepLinkRequest.Builder.INSTANCE;
        Uri parse = Uri.parse(NavDestination.INSTANCE.createRoute(route));
        Intrinsics.checkExpressionValueIsNotNull(parse, "Uri.parse(this)");
        navigate(companion.fromUri(parse).build(), navOptions, navigatorExtras);
    }
}
