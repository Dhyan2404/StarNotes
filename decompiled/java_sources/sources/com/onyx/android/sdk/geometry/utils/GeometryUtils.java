package com.onyx.android.sdk.geometry.utils;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.MotionEvent;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.BooleanKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RangeKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.algorithm.FarthestPointAlgorithm;
import com.onyx.android.sdk.geometry.data.AnglePoints;
import com.onyx.android.sdk.geometry.data.BoundCollision;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.onyx.android.sdk.geometry.data.RotatedRect;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt__RangesKt;
import kotlin.ranges.RangesKt___RangesKt;
import org.apache.commons.math3.linear.SymmLQ;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u0004\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b/\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u0016\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004J\u0016\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004J\u0016\u0010\u0014\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ\u001d\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004¢\u0006\u0002\u0010\u0018J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ\u0016\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u001cJ\u0016\u0010!\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u001cJ&\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010'\u001a\u00020\u0004J\u000e\u0010(\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0004J\u0016\u0010*\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\t2\u0006\u0010,\u001a\u00020\tJ\u000e\u0010-\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u000e\u0010.\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0004J\u0012\u0010/\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u0004J\u001c\u00100\u001a\u00020\u001a*\u00020%2\u0006\u00101\u001a\u00020%2\b\b\u0002\u00102\u001a\u00020\u0004J\u0018\u00103\u001a\u00020\u0004*\u00020\t2\f\u00104\u001a\b\u0012\u0004\u0012\u00020\t05J\n\u00106\u001a\u00020%*\u00020\u001cJ\u0012\u00106\u001a\u00020%*\n\u0012\u0004\u0012\u00020\t\u0018\u000105J\u001a\u00107\u001a\u00020%*\u00020\t2\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u0004J\n\u0010\b\u001a\u00020\t*\u00020%J\u001e\u0010:\u001a\b\u0012\u0004\u0012\u00020\t05*\b\u0012\u0004\u0012\u00020\t052\u0006\u0010;\u001a\u00020<J*\u0010=\u001a\b\u0012\u0004\u0012\u00020\t05*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010>\u001a\u00020\u00042\b\b\u0002\u0010?\u001a\u00020@J\u0012\u0010A\u001a\u00020\u0004*\u00020\u001c2\u0006\u00101\u001a\u00020\u001cJ4\u0010B\u001a\u00020C*\b\u0012\u0004\u0012\u00020\t052\u0006\u0010+\u001a\u00020\t2\u0006\u0010D\u001a\u00020\t2\b\b\u0002\u0010E\u001a\u00020\t2\b\b\u0002\u0010F\u001a\u00020\u001aJ\u0018\u0010G\u001a\b\u0012\u0004\u0012\u00020\t05*\u00020\u001c2\u0006\u0010H\u001a\u00020<J3\u0010I\u001a\b\u0012\u0004\u0012\u00020\t05*\b\u0012\u0004\u0012\u00020\t052\u0016\u0010J\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010C0K\"\u0004\u0018\u00010C¢\u0006\u0002\u0010LJ\u0016\u0010M\u001a\b\u0012\u0004\u0012\u00020\t05*\b\u0012\u0004\u0012\u00020\t05J\u001a\u0010N\u001a\u00020\t*\u00020\t2\u0006\u0010O\u001a\u00020<2\u0006\u0010P\u001a\u00020<J\n\u0010Q\u001a\u00020R*\u00020RJ\u0010\u0010S\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u001c05J\u0012\u0010T\u001a\u00020\u0004*\u00020%2\u0006\u00101\u001a\u00020%J\u0012\u0010T\u001a\u00020\u0004*\u00020\t2\u0006\u00101\u001a\u00020\tJ\u0010\u0010U\u001a\u00020\u001c*\b\u0012\u0004\u0012\u00020\t05J \u0010V\u001a\b\u0012\u0004\u0012\u00020\t05*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010W\u001a\u00020<J \u0010X\u001a\b\u0012\u0004\u0012\u00020Y05*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010Z\u001a\u00020\u001aJ \u0010[\u001a\b\u0012\u0004\u0012\u00020\u001c05*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010Z\u001a\u00020\u001aJH\u0010\\\u001a\b\u0012\u0004\u0012\u00020\t05*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010;\u001a\u00020<2\b\b\u0002\u0010]\u001a\u00020\u001a2\b\b\u0002\u0010^\u001a\u00020<2\b\b\u0002\u0010_\u001a\u00020\u001a2\b\b\u0002\u0010`\u001a\u00020\u001aJ\u0018\u0010a\u001a\u00020\t*\u00020\t2\f\u00104\u001a\b\u0012\u0004\u0012\u00020\t05J\u001c\u0010b\u001a\u0004\u0018\u00010\t*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010;\u001a\u00020<J\u0018\u0010c\u001a\u00020@*\b\u0012\u0004\u0012\u00020\t052\u0006\u0010d\u001a\u00020\tJ \u0010e\u001a\b\u0012\u0004\u0012\u00020\t05*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010f\u001a\u00020<J\u001c\u0010g\u001a\b\u0012\u0004\u0012\u00020\t05*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0505J3\u0010h\u001a\u00020@*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010Z\u001a\u00020\u001a2\u0017\u0010i\u001a\u0013\u0012\u0004\u0012\u00020Y\u0012\u0004\u0012\u00020\u001a0j¢\u0006\u0002\bkJ\u0012\u0010l\u001a\u0004\u0018\u00010\t*\b\u0012\u0004\u0012\u00020\t05J\u001a\u0010m\u001a\u00020\t*\u00020\t2\u0006\u0010\u0014\u001a\u00020<2\u0006\u0010\u0016\u001a\u00020<J\u0012\u0010n\u001a\u00020\t*\u00020\t2\u0006\u0010\b\u001a\u00020\tJ\u001c\u0010o\u001a\u0004\u0018\u00010\t*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010;\u001a\u00020<J\u001c\u0010p\u001a\u0004\u0018\u00010\t*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010;\u001a\u00020<J\u0018\u0010q\u001a\u00020r*\b\u0012\u0004\u0012\u00020\t052\u0006\u0010$\u001a\u00020%J\n\u0010s\u001a\u00020\u0004*\u00020YJ\u0010\u0010t\u001a\u00020\u001c*\b\u0012\u0004\u0012\u00020\t05J\u0012\u0010u\u001a\u00020v*\u00020\t2\u0006\u00101\u001a\u00020\tJ\u001a\u0010w\u001a\u00020%*\u00020\t2\u0006\u00108\u001a\u00020<2\u0006\u00109\u001a\u00020<J\u0010\u0010x\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\t05J\u001c\u0010y\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0505*\b\u0012\u0004\u0012\u00020\t05J*\u0010z\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0505*\b\u0012\u0004\u0012\u00020\t052\f\u0010{\u001a\b\u0012\u0004\u0012\u00020\t05J\u001c\u0010|\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0505*\b\u0012\u0004\u0012\u00020\t05J\u001c\u0010}\u001a\u0004\u0018\u00010Y*\u00020Y2\u0006\u0010\u0014\u001a\u00020<2\u0006\u0010~\u001a\u00020\u001aJ\u0010\u0010\u007f\u001a\u00020\t*\b\u0012\u0004\u0012\u00020\t05J\u0014\u0010\u0080\u0001\u001a\u00020\u001a*\u00020Y2\u0007\u0010\u0081\u0001\u001a\u00020YJ&\u0010\u0082\u0001\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010Z\u001a\u00020\u001a2\t\b\u0002\u0010\u0083\u0001\u001a\u00020<J/\u0010\u0084\u0001\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010;\u001a\u00020<2\b\b\u0002\u0010]\u001a\u00020\u001a2\b\b\u0002\u0010^\u001a\u00020<J\u0019\u0010\u0085\u0001\u001a\u00020\u001a*\u00020\t2\f\u00104\u001a\b\u0012\u0004\u0012\u00020\t05J\u0013\u0010\u0086\u0001\u001a\u00020\u001a*\u00020%2\u0006\u00101\u001a\u00020%J\u001d\u0010\u0087\u0001\u001a\u00020\u0004*\u00020\t2\u0007\u0010\u0088\u0001\u001a\u00020\t2\u0007\u0010\u0089\u0001\u001a\u00020\tJ\u0014\u0010\u0087\u0001\u001a\u00020\u0004*\u00020\u001c2\u0007\u0010\u0081\u0001\u001a\u00020\u001cJ&\u0010\u008a\u0001\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010Z\u001a\u00020\u001a2\t\b\u0002\u0010\u0083\u0001\u001a\u00020<J4\u0010\u008b\u0001\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010Z\u001a\u00020\u001a2\u0017\u0010i\u001a\u0013\u0012\u0004\u0012\u00020Y\u0012\u0004\u0012\u00020\u001a0j¢\u0006\u0002\bkJ&\u0010\u008c\u0001\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010Z\u001a\u00020\u001a2\t\b\u0002\u0010\u0083\u0001\u001a\u00020<J&\u0010\u008d\u0001\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010Z\u001a\u00020\u001a2\t\b\u0002\u0010\u0083\u0001\u001a\u00020<J\u001b\u0010\u008e\u0001\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010;\u001a\u00020<J\u001b\u0010\u008f\u0001\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010;\u001a\u00020<J\u0016\u0010\u0090\u0001\u001a\u00020\u001a*\u00020Y2\t\b\u0002\u0010\u0083\u0001\u001a\u00020<J\u0016\u0010\u0091\u0001\u001a\u00020\u001a*\u00020Y2\t\b\u0002\u0010\u0083\u0001\u001a\u00020<J\u0016\u0010\u0092\u0001\u001a\u00020\u001a*\u00020Y2\t\b\u0002\u0010\u0083\u0001\u001a\u00020<J\u0016\u0010\u0093\u0001\u001a\u00020\u001a*\u00020\u001c2\t\b\u0002\u0010\u0083\u0001\u001a\u00020<J*\u0010\u0094\u0001\u001a\u00020\u001a*\u00020\u001c2\u0007\u0010\u0081\u0001\u001a\u00020\u001c2\t\b\u0002\u0010\u0083\u0001\u001a\u00020<2\t\b\u0002\u0010\u0095\u0001\u001a\u00020\u001aJ\u001f\u0010\u0096\u0001\u001a\u00020\u001a*\u00020\u001c2\u0007\u0010\u0081\u0001\u001a\u00020\u001c2\t\b\u0002\u0010\u0083\u0001\u001a\u00020<J\u001b\u0010\u0097\u0001\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010;\u001a\u00020<J\u0016\u0010\u0098\u0001\u001a\u00020\u001a*\u00020\u001c2\t\b\u0002\u0010\u0083\u0001\u001a\u00020<J\u0011\u0010\u0099\u0001\u001a\u00020\t*\b\u0012\u0004\u0012\u00020\t05J\u0011\u0010\u009a\u0001\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\t05J\u0011\u0010\u009b\u0001\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\t05J\u0011\u0010\u009c\u0001\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\t05J\u001d\u0010\u009d\u0001\u001a\u00020\u001a*\u00020\t2\u0007\u0010\u009e\u0001\u001a\u00020<2\u0007\u0010\u009f\u0001\u001a\u00020<J\u001d\u0010 \u0001\u001a\u00020\u001a*\u00020\t2\u0007\u0010¡\u0001\u001a\u00020<2\u0007\u0010¢\u0001\u001a\u00020<J\u001f\u0010£\u0001\u001a\b\u0012\u0004\u0012\u00020\t05*\b\u0012\u0004\u0012\u00020\t052\u0006\u0010;\u001a\u00020\u0004J:\u0010¤\u0001\u001a\b\u0012\u0004\u0012\u00020\t05*\b\u0012\u0004\u0012\u00020\t052\b\b\u0002\u0010W\u001a\u00020<2\u0017\b\u0002\u0010¥\u0001\u001a\u0010\u0012\u0005\u0012\u00030¦\u0001\u0012\u0005\u0012\u00030§\u00010jJ\u0011\u0010¨\u0001\u001a\u00020\t*\b\u0012\u0004\u0012\u00020\t05J\u0014\u0010©\u0001\u001a\u00020\u0004*\u00020\u001c2\u0007\u0010\u0081\u0001\u001a\u00020\u001cJ\u001c\u0010ª\u0001\u001a\u00020\t*\u00020\t2\u0006\u0010\b\u001a\u00020\t2\u0007\u0010«\u0001\u001a\u00020\u0004J(\u0010ª\u0001\u001a\b\u0012\u0004\u0012\u00020\t05*\b\u0012\u0004\u0012\u00020\t052\u0006\u0010\b\u001a\u00020\t2\u0007\u0010«\u0001\u001a\u00020\u0004J\u0017\u0010¬\u0001\u001a\u00030\u00ad\u0001*\u00020\t2\t\b\u0002\u0010®\u0001\u001a\u00020@J\u0011\u0010¯\u0001\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\t05J\"\u0010°\u0001\u001a\b\u0012\u0004\u0012\u00020\t05*\b\u0012\u0004\u0012\u00020\t052\t\u0010±\u0001\u001a\u0004\u0018\u00010CJ\u001b\u0010²\u0001\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010\u0014\u001a\u00020<2\u0006\u00101\u001a\u00020\tJ\u0011\u0010³\u0001\u001a\b\u0012\u0004\u0012\u00020\t05*\u00020%J\u001c\u0010´\u0001\u001a\u00020\u001a*\u00020\t2\u0007\u0010µ\u0001\u001a\u00020\t2\u0006\u0010O\u001a\u00020<J\u001c\u0010¶\u0001\u001a\u00020\u001a*\u00020\t2\u0007\u0010µ\u0001\u001a\u00020\t2\u0006\u0010P\u001a\u00020<R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006·\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;", "", "()V", "ANY_LENGTH", "", "LITTLE_LENGTH", "LITTLE_PIXEL_SIZE", "ONE_PIXEL", "center", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "p1", "p2", "degreeToRad", "degree", "deltaDegree", "degree1", "degree2", "deltaRad", "rad1", "rad2", "distance", "getNearestStandardDirection", "directionInRad", "mistakeRangeInRad", "(FF)Ljava/lang/Float;", "isClockwise", "", "startDir", "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;", "endDir", "lengthDifferRateToShorter", "a", "b", "longer", "nearBoundRect", "point", "bound", "Landroid/graphics/RectF;", "dxThreshold", "dyThreshold", "radToDegree", "rad", "slope", "startPoint", "endPoint", "toUnsignedDegree", "toUnsignedRad", "adjustToStandardDirectionIfPossible", "atSameLine", "target", "mistakeRangeInPercent", "averageDistance", PointConstant.POINT_FILE_END, "", "boundRect", "boundRectFromCenter", "rx", "ry", "cleanClosePoints", SymmLQ.f108603e, "", "cleanEdgePoints", Constants.ATTRNAME_PERCENT, "minSize", "", "computeLengthScale", "computeRectAdjustMatrix", "Landroid/graphics/Matrix;", "stopPoint", "anchorPoint", "keepAspectRatio", "computeRectByHeight", "height", "concatTransform", "matrixs", "", "(Ljava/util/List;[Landroid/graphics/Matrix;)Ljava/util/List;", "copy", "copyAndOffset", "dx", "dy", "correctDirection", "Lcom/onyx/android/sdk/geometry/data/RotatedRect;", "differRate", "distanceTo", "farthestPointPair", "filterBySpacing", "spacing", "findAllAngles", "Lcom/onyx/android/sdk/geometry/data/AnglePoints;", "makePathClose", "findAllSides", "findAllTurningPoints", "requireMinLength", "minLength", "includeStartPoint", "includeEndPoint", "findFarthestPoint", "findFirstTurningPoint", "findIndexByAddress", "element", "findKneePoints", "kneePointDeltaDegree", "findLongestSegment", "findMatchedAngleCount", "featurePredicate", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "findPathCenter", "findPointByDistance", "findSymmetricalPoint", "findTurningPointFromCenterToEnd", "findTurningPointFromCenterToStart", "getBoundCollision", "Lcom/onyx/android/sdk/geometry/data/BoundCollision;", "getClockwiseAngle", "getLongestEdge", "getOffsetTo", "", "getOvalRect", "getResampleSpacing", "getSegmentsByKneePoints", "getSegmentsBySplitPoints", "splitPoints", "getSegmentsByTurningPoints", "getStrokedAnglePoints", "isInnerStroke", "gravityCenter", "hasDirectionChanged", Constants.ATTRVAL_OTHER, "hasRightAngle", "mistakeRange", "hasTurningPoint", "insideClosure", "intersectedWith", "intersectionAngle", "previous", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.NEXT, "isAllAngleAcute", "isAllAngleMatches", "isAllAngleObtuse", "isAllAngleRight", "isAllSegmentsCurvy", "isAllSegmentsStraight", "isAngleAcute", "isAngleObtuse", "isAngleRight", "isHorizontal", "isParallelTo", "ignoreDirection", "isPerpendicularTo", "isSegmentStraight", "isVertical", "leftTop", "length", "maxDeltaDegree", "maxDeltaRad", "onSameXSide", "x1", "x2", "onSameYSide", "y1", "y2", "removeEqualsEndPoint", "resample", "compose", "Landroid/graphics/Path;", "", "rightBottom", "rotationAngleForParallel", "rotationTransform", "rotationInRad", "toMotionEvent", "Landroid/view/MotionEvent;", "action", "totalLineLength", Constants.ELEMNAME_TRANSFORM_STRING, "matrix", "translateAlongPointDirection", "vertexPoints", "willXSideChangeAfterOffset", "p", "willYSideChangeAfterOffset", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeometryUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeometryUtils.kt\ncom/onyx/android/sdk/geometry/utils/GeometryUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,1094:1\n1#2:1095\n350#3,7:1096\n1549#3:1103\n1620#3,3:1104\n766#3:1107\n857#3,2:1108\n1045#3:1110\n1855#3,2:1111\n1549#3:1113\n1620#3,3:1114\n1549#3:1117\n1620#3,3:1118\n1549#3:1121\n1620#3,3:1122\n1549#3:1125\n1620#3,3:1126\n1549#3:1129\n1620#3,3:1130\n1855#3,2:1133\n766#3:1136\n857#3:1137\n1747#3,3:1139\n858#3:1142\n766#3:1143\n857#3,2:1144\n1549#3:1146\n1620#3,3:1147\n288#3,2:1150\n1774#3,4:1152\n1774#3,4:1156\n1940#3,14:1174\n1855#3,2:1188\n1855#3,2:1190\n1855#3,2:1192\n1855#3:1194\n1855#3,2:1195\n1856#3:1197\n1549#3:1198\n1620#3,3:1199\n1855#3,2:1202\n699#4:1135\n679#4:1138\n657#4,14:1160\n*S KotlinDebug\n*F\n+ 1 GeometryUtils.kt\ncom/onyx/android/sdk/geometry/utils/GeometryUtils\n*L\n119#1:1096,7\n124#1:1103\n124#1:1104,3\n203#1:1107\n203#1:1108,2\n281#1:1110\n288#1:1111,2\n405#1:1113\n405#1:1114,3\n406#1:1117\n406#1:1118,3\n412#1:1121\n412#1:1122,3\n416#1:1125\n416#1:1126,3\n420#1:1129\n420#1:1130,3\n450#1:1133,2\n529#1:1136\n529#1:1137\n529#1:1139,3\n529#1:1142\n649#1:1143\n649#1:1144,2\n661#1:1146\n661#1:1147,3\n673#1:1150,2\n754#1:1152,4\n762#1:1156,4\n823#1:1174,14\n836#1:1188,2\n846#1:1190,2\n856#1:1192,2\n872#1:1194\n873#1:1195,2\n872#1:1197\n954#1:1198\n954#1:1199,3\n1079#1:1202,2\n529#1:1135\n529#1:1138\n810#1:1160,14\n*E\n"})
/* loaded from: classes7.dex */
public final class GeometryUtils {
    public static final float ANY_LENGTH = 100.0f;

    @NotNull
    public static final GeometryUtils INSTANCE = new GeometryUtils();
    public static final float LITTLE_LENGTH = 0.5f;
    public static final float LITTLE_PIXEL_SIZE = 0.1f;
    public static final float ONE_PIXEL = 1.0f;

    public static /* synthetic */ boolean atSameLine$default(GeometryUtils geometryUtils, RectF rectF, RectF rectF2, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        return geometryUtils.atSameLine(rectF, rectF2, f);
    }

    public static /* synthetic */ List cleanEdgePoints$default(GeometryUtils geometryUtils, List list, float f, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            f = 0.1f;
        }
        if ((i2 & 2) != 0) {
            i = 10;
        }
        return geometryUtils.cleanEdgePoints(list, f, i);
    }

    public static /* synthetic */ Matrix computeRectAdjustMatrix$default(GeometryUtils geometryUtils, List list, TouchPoint touchPoint, TouchPoint touchPoint2, TouchPoint touchPoint3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            touchPoint3 = (TouchPoint) list.get((list.indexOf(touchPoint) + 2) % 4);
        }
        TouchPoint touchPoint4 = touchPoint3;
        if ((i & 8) != 0) {
            z = false;
        }
        return geometryUtils.computeRectAdjustMatrix(list, touchPoint, touchPoint2, touchPoint4, z);
    }

    public static /* synthetic */ List filterBySpacing$default(GeometryUtils geometryUtils, List list, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(0.0f);
        }
        return geometryUtils.filterBySpacing(list, number);
    }

    public static /* synthetic */ List findAllAngles$default(GeometryUtils geometryUtils, List list, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return geometryUtils.findAllAngles(list, z);
    }

    public static /* synthetic */ List findAllSides$default(GeometryUtils geometryUtils, List list, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return geometryUtils.findAllSides(list, z);
    }

    public static /* synthetic */ List findAllTurningPoints$default(GeometryUtils geometryUtils, List list, Number number, boolean z, Number number2, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(GeometryConfigurations.INSTANCE.getTurningPointThresholdPercent() * 3.1415927f);
        }
        Number number3 = number;
        boolean z4 = (i & 2) != 0 ? false : z;
        if ((i & 4) != 0) {
            number2 = Float.valueOf(0.0f);
        }
        return geometryUtils.findAllTurningPoints(list, number3, z4, number2, (i & 8) != 0 ? false : z2, (i & 16) != 0 ? false : z3);
    }

    public static /* synthetic */ TouchPoint findFirstTurningPoint$default(GeometryUtils geometryUtils, List list, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(GeometryConfigurations.INSTANCE.getTurningPointThresholdPercent() * 3.1415927f);
        }
        return geometryUtils.findFirstTurningPoint(list, number);
    }

    public static /* synthetic */ List findKneePoints$default(GeometryUtils geometryUtils, List list, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(15.0f);
        }
        return geometryUtils.findKneePoints(list, number);
    }

    public static /* synthetic */ int findMatchedAngleCount$default(GeometryUtils geometryUtils, List list, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return geometryUtils.findMatchedAngleCount(list, z, function1);
    }

    public static /* synthetic */ TouchPoint findTurningPointFromCenterToEnd$default(GeometryUtils geometryUtils, List list, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(GeometryConfigurations.INSTANCE.getTurningPointThresholdPercent() * 3.1415927f);
        }
        return geometryUtils.findTurningPointFromCenterToEnd(list, number);
    }

    public static /* synthetic */ TouchPoint findTurningPointFromCenterToStart$default(GeometryUtils geometryUtils, List list, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(GeometryConfigurations.INSTANCE.getTurningPointThresholdPercent() * 3.1415927f);
        }
        return geometryUtils.findTurningPointFromCenterToStart(list, number);
    }

    public static /* synthetic */ boolean hasRightAngle$default(GeometryUtils geometryUtils, List list, boolean z, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            number = Float.valueOf(0.15707964f);
        }
        return geometryUtils.hasRightAngle(list, z, number);
    }

    public static /* synthetic */ boolean hasTurningPoint$default(GeometryUtils geometryUtils, List list, Number number, boolean z, Number number2, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(GeometryConfigurations.INSTANCE.getTurningPointThresholdPercent() * 3.1415927f);
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            number2 = Float.valueOf(0.0f);
        }
        return geometryUtils.hasTurningPoint(list, number, z, number2);
    }

    public static /* synthetic */ boolean isAllAngleAcute$default(GeometryUtils geometryUtils, List list, boolean z, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            number = Float.valueOf(0.15707964f);
        }
        return geometryUtils.isAllAngleAcute(list, z, number);
    }

    public static /* synthetic */ boolean isAllAngleMatches$default(GeometryUtils geometryUtils, List list, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return geometryUtils.isAllAngleMatches(list, z, function1);
    }

    public static /* synthetic */ boolean isAllAngleObtuse$default(GeometryUtils geometryUtils, List list, boolean z, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            number = Float.valueOf(0.15707964f);
        }
        return geometryUtils.isAllAngleObtuse(list, z, number);
    }

    public static /* synthetic */ boolean isAllAngleRight$default(GeometryUtils geometryUtils, List list, boolean z, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            number = Float.valueOf(0.15707964f);
        }
        return geometryUtils.isAllAngleRight(list, z, number);
    }

    public static /* synthetic */ boolean isAllSegmentsCurvy$default(GeometryUtils geometryUtils, List list, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(-1.0f);
        }
        return geometryUtils.isAllSegmentsCurvy(list, number);
    }

    public static /* synthetic */ boolean isAllSegmentsStraight$default(GeometryUtils geometryUtils, List list, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(-1.0f);
        }
        return geometryUtils.isAllSegmentsStraight(list, number);
    }

    public static /* synthetic */ boolean isAngleAcute$default(GeometryUtils geometryUtils, AnglePoints anglePoints, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            number = 0;
        }
        return geometryUtils.isAngleAcute(anglePoints, number);
    }

    public static /* synthetic */ boolean isAngleObtuse$default(GeometryUtils geometryUtils, AnglePoints anglePoints, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            number = 0;
        }
        return geometryUtils.isAngleObtuse(anglePoints, number);
    }

    public static /* synthetic */ boolean isAngleRight$default(GeometryUtils geometryUtils, AnglePoints anglePoints, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(0.19634955f);
        }
        return geometryUtils.isAngleRight(anglePoints, number);
    }

    public static /* synthetic */ boolean isHorizontal$default(GeometryUtils geometryUtils, TouchPointPair touchPointPair, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(GeometryConfigurations.INSTANCE.getParallelDefaultMistakeThreshold());
        }
        return geometryUtils.isHorizontal(touchPointPair, number);
    }

    public static /* synthetic */ boolean isParallelTo$default(GeometryUtils geometryUtils, TouchPointPair touchPointPair, TouchPointPair touchPointPair2, Number number, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            number = Float.valueOf(0.19634955f);
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return geometryUtils.isParallelTo(touchPointPair, touchPointPair2, number, z);
    }

    public static /* synthetic */ boolean isPerpendicularTo$default(GeometryUtils geometryUtils, TouchPointPair touchPointPair, TouchPointPair touchPointPair2, Number number, int i, Object obj) {
        if ((i & 2) != 0) {
            number = Float.valueOf(0.19634955f);
        }
        return geometryUtils.isPerpendicularTo(touchPointPair, touchPointPair2, number);
    }

    public static /* synthetic */ boolean isSegmentStraight$default(GeometryUtils geometryUtils, List list, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(-1.0f);
        }
        return geometryUtils.isSegmentStraight(list, number);
    }

    public static /* synthetic */ boolean isVertical$default(GeometryUtils geometryUtils, TouchPointPair touchPointPair, Number number, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(GeometryConfigurations.INSTANCE.getParallelDefaultMistakeThreshold());
        }
        return geometryUtils.isVertical(touchPointPair, number);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ List resample$default(GeometryUtils geometryUtils, final List list, Number number, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            number = Float.valueOf(geometryUtils.getResampleSpacing(list));
        }
        if ((i & 2) != 0) {
            function1 = new Function1<Path, Unit>() { // from class: com.onyx.android.sdk.geometry.utils.GeometryUtils$resample$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Path path) {
                    invoke2(path);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Path it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    PathKt.lineTo(it2, list);
                }
            };
        }
        return geometryUtils.resample(list, number, function1);
    }

    public static /* synthetic */ MotionEvent toMotionEvent$default(GeometryUtils geometryUtils, TouchPoint touchPoint, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 2;
        }
        return geometryUtils.toMotionEvent(touchPoint, i);
    }

    @NotNull
    public final TouchPointPair adjustToStandardDirectionIfPossible(@NotNull TouchPointPair touchPointPair, float f) {
        Intrinsics.checkNotNullParameter(touchPointPair, "<this>");
        float direction = touchPointPair.direction();
        Float nearestStandardDirection = getNearestStandardDirection(direction, f);
        if (nearestStandardDirection == null) {
            return touchPointPair;
        }
        return touchPointPair.rotate(touchPointPair.center(), Float.valueOf(nearestStandardDirection.floatValue() - direction));
    }

    public final boolean atSameLine(@NotNull RectF rectF, @NotNull RectF target, float f) {
        float coerceIn;
        ClosedFloatingPointRange rangeTo;
        ClosedFloatingPointRange rangeTo2;
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        coerceIn = RangesKt___RangesKt.coerceIn(f, -0.5f, 0.5f);
        float height = rectF.height() * coerceIn;
        float height2 = target.height() * coerceIn;
        rangeTo = RangesKt__RangesKt.rangeTo(rectF.top + height, rectF.bottom - height);
        rangeTo2 = RangesKt__RangesKt.rangeTo(target.top + height2, target.bottom - height2);
        return RangeKt.intersected(rangeTo, rangeTo2);
    }

    public final float averageDistance(@NotNull TouchPoint touchPoint, @NotNull List<TouchPoint> points) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        Intrinsics.checkNotNullParameter(points, "points");
        Iterator<T> it2 = points.iterator();
        float f = 0.0f;
        while (it2.hasNext()) {
            f += INSTANCE.distance(touchPoint, (TouchPoint) it2.next());
        }
        return f / points.size();
    }

    @NotNull
    public final RectF boundRect(@Nullable List<TouchPoint> list) {
        if (list == null) {
            return new RectF();
        }
        return new TouchPointList(list).getBoundingRect();
    }

    @NotNull
    public final RectF boundRectFromCenter(@NotNull TouchPoint touchPoint, float f, float f2) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        RectF rectF = new RectF();
        rectF.left = touchPoint.getX() - f;
        rectF.right = touchPoint.getX() + f;
        rectF.top = touchPoint.getY() - f2;
        rectF.bottom = touchPoint.getY() + f2;
        return rectF;
    }

    @NotNull
    public final TouchPoint center(@NotNull TouchPoint p1, @NotNull TouchPoint p2) {
        Intrinsics.checkNotNullParameter(p1, "p1");
        Intrinsics.checkNotNullParameter(p2, "p2");
        TouchPoint touchPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        float f = 2;
        touchPoint.setX((p1.getX() + p2.getX()) / f);
        touchPoint.setY((p1.getY() + p2.getY()) / f);
        return touchPoint;
    }

    @NotNull
    public final List<TouchPoint> cleanClosePoints(@NotNull List<TouchPoint> list, @NotNull Number threshold) {
        List mutableList;
        Object first;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(threshold, "threshold");
        if (list.isEmpty()) {
            return list;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
        ArrayList arrayList = new ArrayList();
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) mutableList);
        TouchPoint touchPoint = (TouchPoint) first;
        int size = mutableList.size();
        for (int i = 1; i < size; i++) {
            TouchPoint touchPoint2 = (TouchPoint) mutableList.get(i);
            if (distance(touchPoint, touchPoint2) < threshold.floatValue()) {
                arrayList.add(touchPoint2);
            } else {
                touchPoint = touchPoint2;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = mutableList.iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            boolean z = false;
            if (!arrayList.isEmpty()) {
                Iterator it3 = arrayList.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    }
                    if (it3.next() == next) {
                        z = true;
                        break;
                    }
                }
            }
            if (!z) {
                arrayList2.add(next);
            }
        }
        return arrayList2;
    }

    @NotNull
    public final List<TouchPoint> cleanEdgePoints(@NotNull List<TouchPoint> list, float f, int i) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return list.size() < i ? list : CollectionKt.safelySubList(list, (int) (list.size() * f), (int) (list.size() * (1 - f)));
    }

    public final float computeLengthScale(@NotNull TouchPointPair touchPointPair, @NotNull TouchPointPair target) {
        Intrinsics.checkNotNullParameter(touchPointPair, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        float length = touchPointPair.length() / target.length();
        return isParallelTo$default(this, touchPointPair, target, null, false, 2, null) ^ true ? -length : length;
    }

    @NotNull
    public final Matrix computeRectAdjustMatrix(@NotNull List<TouchPoint> list, @NotNull TouchPoint startPoint, @NotNull TouchPoint stopPoint, @NotNull TouchPoint anchorPoint, boolean z) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        Intrinsics.checkNotNullParameter(stopPoint, "stopPoint");
        Intrinsics.checkNotNullParameter(anchorPoint, "anchorPoint");
        int findIndexByAddress = findIndexByAddress(list, startPoint);
        if (findIndexByAddress < 0 || list.size() != 4) {
            return new Matrix();
        }
        TouchPoint findCrossPoint = new TouchPointPair(list.get(((findIndexByAddress - 1) + 4) % 4), startPoint).findCrossPoint(anchorPoint);
        TouchPointPair touchPointPair = new TouchPointPair(findCrossPoint, startPoint);
        TouchPointPair touchPointPair2 = new TouchPointPair(anchorPoint, findCrossPoint);
        TouchPoint findCrossPoint2 = touchPointPair2.findCrossPoint(stopPoint);
        TouchPointPair touchPointPair3 = new TouchPointPair(anchorPoint, findCrossPoint2);
        TouchPointPair touchPointPair4 = new TouchPointPair(findCrossPoint2, stopPoint);
        float computeLengthScale = computeLengthScale(touchPointPair3, touchPointPair2);
        float computeLengthScale2 = computeLengthScale(touchPointPair4, touchPointPair);
        if (z) {
            float min = Math.min(Math.abs(computeLengthScale), Math.abs(computeLengthScale2));
            MathUtils mathUtils = MathUtils.INSTANCE;
            computeLengthScale = mathUtils.signFactor(Float.valueOf(computeLengthScale)) * min;
            computeLengthScale2 = mathUtils.signFactor(Float.valueOf(computeLengthScale2)) * min;
        }
        Matrix matrix = new Matrix();
        float radToDegree = radToDegree(touchPointPair2.direction());
        matrix.postRotate(-radToDegree, anchorPoint.getX(), anchorPoint.getY());
        matrix.postScale(computeLengthScale, computeLengthScale2, anchorPoint.getX(), anchorPoint.getY());
        matrix.postRotate(radToDegree, anchorPoint.getX(), anchorPoint.getY());
        return matrix;
    }

    @NotNull
    public final List<TouchPoint> computeRectByHeight(@NotNull TouchPointPair touchPointPair, @NotNull Number height) {
        List<TouchPoint> listOf;
        Intrinsics.checkNotNullParameter(touchPointPair, "<this>");
        Intrinsics.checkNotNullParameter(height, "height");
        float floatValue = height.floatValue() / 2;
        float direction = touchPointPair.direction() + 1.5707964f;
        TouchPoint findPointByDistance = findPointByDistance(touchPointPair.getP1(), Float.valueOf(floatValue), Float.valueOf(direction));
        TouchPoint findPointByDistance2 = findPointByDistance(touchPointPair.getP2(), Float.valueOf(floatValue), Float.valueOf(direction));
        float f = -floatValue;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{findPointByDistance, findPointByDistance2, findPointByDistance(touchPointPair.getP2(), Float.valueOf(f), Float.valueOf(direction)), findPointByDistance(touchPointPair.getP1(), Float.valueOf(f), Float.valueOf(direction))});
        return listOf;
    }

    @NotNull
    public final List<TouchPoint> concatTransform(@NotNull List<TouchPoint> list, @NotNull Matrix... matrixs) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(matrixs, "matrixs");
        List<TouchPoint> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TouchPoint) it2.next()).concatTransform((Matrix[]) Arrays.copyOf(matrixs, matrixs.length)));
        }
        return arrayList;
    }

    @NotNull
    public final List<TouchPoint> copy(@NotNull List<TouchPoint> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<TouchPoint> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TouchPoint) it2.next()).m72173clone());
        }
        return arrayList;
    }

    @NotNull
    public final TouchPoint copyAndOffset(@NotNull TouchPoint touchPoint, @NotNull Number dx, @NotNull Number dy) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        Intrinsics.checkNotNullParameter(dx, "dx");
        Intrinsics.checkNotNullParameter(dy, "dy");
        TouchPoint copy = touchPoint.copy();
        copy.offset(dx.floatValue(), dy.floatValue());
        return copy;
    }

    @NotNull
    public final RotatedRect correctDirection(@NotNull RotatedRect rotatedRect) {
        Intrinsics.checkNotNullParameter(rotatedRect, "<this>");
        RotatedRect copy = rotatedRect.copy();
        Float nearestStandardDirection = getNearestStandardDirection(rotatedRect.getRotationInRad(), GeometryConfigurations.INSTANCE.getParallelMistakenRad());
        if (nearestStandardDirection != null) {
            copy.setRotationInRad(nearestStandardDirection.floatValue());
        }
        return copy;
    }

    public final float degreeToRad(float degree) {
        return (float) ((degree * 3.141592653589793d) / 180.0f);
    }

    public final float deltaDegree(float degree1, float degree2) {
        float abs = Math.abs(degree2 - degree1) % 360.0f;
        return abs > 180.0f ? 360.0f - abs : abs;
    }

    public final float deltaRad(float rad1, float rad2) {
        float abs = Math.abs(rad2 - rad1);
        float f = 2 * 3.1415927f;
        float f2 = abs % f;
        return f2 > 3.1415927f ? f - f2 : f2;
    }

    public final float differRate(@NotNull List<? extends TouchPointPair> list) {
        int collectionSizeOrDefault;
        float m73059maxOrThrow;
        float m73067minOrThrow;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<? extends TouchPointPair> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(Float.valueOf(((TouchPointPair) it2.next()).length()));
        }
        MathUtils mathUtils = MathUtils.INSTANCE;
        m73059maxOrThrow = CollectionsKt___CollectionsKt.m73059maxOrThrow((Iterable<Float>) arrayList);
        Float valueOf = Float.valueOf(m73059maxOrThrow);
        m73067minOrThrow = CollectionsKt___CollectionsKt.m73067minOrThrow((Iterable<Float>) arrayList);
        return mathUtils.differRateToShorter(valueOf, Float.valueOf(m73067minOrThrow));
    }

    public final float distance(@NotNull TouchPoint p1, @NotNull TouchPoint p2) {
        Intrinsics.checkNotNullParameter(p1, "p1");
        Intrinsics.checkNotNullParameter(p2, "p2");
        double d = 2;
        return (float) Math.sqrt(((float) Math.pow(p1.getX() - p2.getX(), d)) + ((float) Math.pow(p1.getY() - p2.getY(), d)));
    }

    public final float distanceTo(@NotNull TouchPoint touchPoint, @NotNull TouchPoint target) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        return distance(touchPoint, target);
    }

    @NotNull
    public final TouchPointPair farthestPointPair(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return FarthestPointAlgorithm.INSTANCE.findFarthestPointPair(list);
    }

    @NotNull
    public final List<TouchPoint> filterBySpacing(@NotNull List<TouchPoint> list, @NotNull Number spacing) {
        Object first;
        Object last;
        Object last2;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(spacing, "spacing");
        if (list.size() <= 2) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
        TouchPoint touchPoint = (TouchPoint) first;
        arrayList.add(touchPoint);
        int size = list.size();
        for (int i = 1; i < size; i++) {
            TouchPoint touchPoint2 = list.get(i);
            if (new TouchPointPair(touchPoint2, touchPoint).length() >= spacing.floatValue()) {
                arrayList.add(touchPoint2);
                touchPoint = touchPoint2;
            }
        }
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) list);
        if (!arrayList.contains(last)) {
            last2 = CollectionsKt___CollectionsKt.last((List<? extends Object>) list);
            arrayList.add(last2);
        }
        return arrayList;
    }

    @NotNull
    public final List<AnglePoints> findAllAngles(@NotNull List<TouchPoint> list, boolean z) {
        Object first;
        Object last;
        Object last2;
        Object first2;
        List<AnglePoints> emptyList;
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (list.size() < 3) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        int size = list.size() - 1;
        int i = 1;
        while (i < size) {
            TouchPoint touchPoint = list.get(i);
            TouchPoint touchPoint2 = list.get(i - 1);
            i++;
            arrayList.add(new AnglePoints(touchPoint, touchPoint2, list.get(i)));
        }
        if (z) {
            last2 = CollectionsKt___CollectionsKt.last((List<? extends Object>) list);
            TouchPoint touchPoint3 = list.get(list.size() - 2);
            first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
            arrayList.add(new AnglePoints((TouchPoint) last2, touchPoint3, (TouchPoint) first2));
        }
        if (z) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) list);
            arrayList.add(new AnglePoints((TouchPoint) first, (TouchPoint) last, list.get(1)));
        }
        return arrayList;
    }

    @NotNull
    public final List<TouchPointPair> findAllSides(@NotNull List<TouchPoint> list, boolean z) {
        Object last;
        Object first;
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        int size = list.size() - 1;
        int i = 0;
        while (i < size) {
            TouchPoint touchPoint = list.get(i);
            i++;
            arrayList.add(new TouchPointPair(touchPoint, list.get(i)));
        }
        if (z) {
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) list);
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
            arrayList.add(new TouchPointPair((TouchPoint) last, (TouchPoint) first));
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x005d, code lost:
    
        if (r5.totalLineLength(com.onyx.android.sdk.base.extension.CollectionKt.safelySubList(r9, r4, r9.size())) < r12.floatValue()) goto L16;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0071 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x001f A[SYNTHETIC] */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.onyx.android.sdk.base.data.TouchPoint> findAllTurningPoints(@org.jetbrains.annotations.NotNull java.util.List<com.onyx.android.sdk.base.data.TouchPoint> r9, @org.jetbrains.annotations.NotNull java.lang.Number r10, boolean r11, @org.jetbrains.annotations.NotNull java.lang.Number r12, boolean r13, boolean r14) {
        /*
            r8 = this;
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "threshold"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "minLength"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            r0 = 0
            java.util.List r8 = r8.findAllAngles(r9, r0)
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r8 = r8.iterator()
        L1f:
            boolean r2 = r8.hasNext()
            if (r2 == 0) goto L75
            java.lang.Object r2 = r8.next()
            r3 = r2
            com.onyx.android.sdk.geometry.data.AnglePoints r3 = (com.onyx.android.sdk.geometry.data.AnglePoints) r3
            if (r11 == 0) goto L60
            com.onyx.android.sdk.base.data.TouchPoint r4 = r3.getCenter()
            int r4 = r9.indexOf(r4)
            com.onyx.android.sdk.geometry.utils.GeometryUtils r5 = com.onyx.android.sdk.geometry.utils.GeometryUtils.INSTANCE
            int r6 = r4 + 1
            java.util.List r6 = com.onyx.android.sdk.base.extension.CollectionKt.safelySubList(r9, r0, r6)
            float r6 = r5.totalLineLength(r6)
            float r7 = r12.floatValue()
            int r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r6 >= 0) goto L4b
            goto L6e
        L4b:
            int r6 = r9.size()
            java.util.List r4 = com.onyx.android.sdk.base.extension.CollectionKt.safelySubList(r9, r4, r6)
            float r4 = r5.totalLineLength(r4)
            float r5 = r12.floatValue()
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 >= 0) goto L60
            goto L6e
        L60:
            float r3 = r3.absoluteAngle()
            float r4 = r10.floatValue()
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 >= 0) goto L6e
            r3 = 1
            goto L6f
        L6e:
            r3 = r0
        L6f:
            if (r3 == 0) goto L1f
            r1.add(r2)
            goto L1f
        L75:
            java.util.ArrayList r8 = new java.util.ArrayList
            r10 = 10
            int r10 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r1, r10)
            r8.<init>(r10)
            java.util.Iterator r10 = r1.iterator()
        L84:
            boolean r11 = r10.hasNext()
            if (r11 == 0) goto L98
            java.lang.Object r11 = r10.next()
            com.onyx.android.sdk.geometry.data.AnglePoints r11 = (com.onyx.android.sdk.geometry.data.AnglePoints) r11
            com.onyx.android.sdk.base.data.TouchPoint r11 = r11.getCenter()
            r8.add(r11)
            goto L84
        L98:
            java.util.List r8 = kotlin.collections.CollectionsKt.toMutableList(r8)
            r10 = 3
            if (r13 == 0) goto Lac
            int r11 = r9.size()
            if (r11 < r10) goto Lac
            java.lang.Object r11 = kotlin.collections.CollectionsKt.first(r9)
            r8.add(r0, r11)
        Lac:
            if (r14 == 0) goto Lbb
            int r11 = r9.size()
            if (r11 < r10) goto Lbb
            java.lang.Object r9 = kotlin.collections.CollectionsKt.last(r9)
            r8.add(r9)
        Lbb:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.geometry.utils.GeometryUtils.findAllTurningPoints(java.util.List, java.lang.Number, boolean, java.lang.Number, boolean, boolean):java.util.List");
    }

    @NotNull
    public final TouchPoint findFarthestPoint(@NotNull final TouchPoint touchPoint, @NotNull List<TouchPoint> points) {
        List sortedWith;
        Object last;
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        Intrinsics.checkNotNullParameter(points, "points");
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(points, new Comparator() { // from class: com.onyx.android.sdk.geometry.utils.GeometryUtils$findFarthestPoint$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Float.valueOf(geometryUtils.distanceTo((TouchPoint) t, TouchPoint.this)), Float.valueOf(geometryUtils.distanceTo((TouchPoint) t2, TouchPoint.this)));
                return compareValues;
            }
        });
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) sortedWith);
        return (TouchPoint) last;
    }

    @Nullable
    public final TouchPoint findFirstTurningPoint(@NotNull List<TouchPoint> list, @NotNull Number threshold) {
        Object obj;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(threshold, "threshold");
        Iterator<T> it2 = findAllAngles(list, false).iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((AnglePoints) obj).absoluteAngle() < threshold.floatValue()) {
                break;
            }
        }
        AnglePoints anglePoints = (AnglePoints) obj;
        if (anglePoints != null) {
            return anglePoints.getCenter();
        }
        return null;
    }

    public final int findIndexByAddress(@NotNull List<TouchPoint> list, @NotNull TouchPoint element) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(element, "element");
        Iterator<TouchPoint> it2 = list.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next() == element) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @NotNull
    public final List<TouchPoint> findKneePoints(@NotNull List<TouchPoint> list, @NotNull Number kneePointDeltaDegree) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(kneePointDeltaDegree, "kneePointDeltaDegree");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Float valueOf = Float.valueOf(0.0f);
        arrayList2.add(valueOf);
        arrayList3.add(valueOf);
        int size = list.size() - 1;
        int i = 1;
        while (i < size) {
            TouchPoint touchPoint = list.get(i - 1);
            TouchPoint touchPoint2 = list.get(i);
            i++;
            TouchPoint touchPoint3 = list.get(i);
            float direction = new TouchPointPair(touchPoint, touchPoint2).direction();
            float direction2 = new TouchPointPair(touchPoint2, touchPoint3).direction();
            float radToDegree = radToDegree(direction);
            float deltaDegree = deltaDegree(radToDegree, radToDegree(direction2));
            arrayList2.add(Float.valueOf(radToDegree));
            arrayList3.add(Float.valueOf(deltaDegree));
        }
        arrayList2.add(valueOf);
        arrayList3.add(valueOf);
        int i2 = 3;
        int size2 = arrayList3.size() - 3;
        while (i2 < size2) {
            boolean z = ((Number) arrayList3.get(i2)).floatValue() > kneePointDeltaDegree.floatValue();
            boolean z2 = ((Number) arrayList3.get(i2 + (-1))).floatValue() < ((Number) arrayList3.get(i2)).floatValue();
            int i3 = i2 + 1;
            boolean z3 = ((Number) arrayList3.get(i3)).floatValue() < ((Number) arrayList3.get(i2)).floatValue();
            boolean z4 = ((Number) arrayList3.get(i2 + (-2))).floatValue() < ((Number) arrayList3.get(i2)).floatValue();
            boolean z5 = ((Number) arrayList3.get(i2 + 2)).floatValue() < ((Number) arrayList3.get(i2)).floatValue();
            if (z && z2 && z3 && z4 && z5) {
                arrayList.add(list.get(i2));
            }
            i2 = i3;
        }
        RectF boundRect = boundRect(arrayList);
        return cleanClosePoints(arrayList, Float.valueOf(((float) Math.sqrt(boundRect.width() * boundRect.height())) * GeometryConfigurations.INSTANCE.getPathResampleSpacingPercent()));
    }

    @NotNull
    public final List<TouchPoint> findLongestSegment(@NotNull List<? extends List<TouchPoint>> list) {
        Object first;
        Object last;
        Object first2;
        Object last2;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Iterator<T> it2 = list.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it2.next();
        if (it2.hasNext()) {
            List list2 = (List) next;
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list2);
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) list2);
            float length = new TouchPointPair((TouchPoint) first, (TouchPoint) last).length();
            do {
                Object next2 = it2.next();
                List list3 = (List) next2;
                first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) list3);
                last2 = CollectionsKt___CollectionsKt.last((List<? extends Object>) list3);
                float length2 = new TouchPointPair((TouchPoint) first2, (TouchPoint) last2).length();
                if (Float.compare(length, length2) < 0) {
                    next = next2;
                    length = length2;
                }
            } while (it2.hasNext());
        }
        return (List) next;
    }

    public final int findMatchedAngleCount(@NotNull List<TouchPoint> list, boolean z, @NotNull Function1<? super AnglePoints, Boolean> featurePredicate) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(featurePredicate, "featurePredicate");
        List<AnglePoints> findAllAngles = findAllAngles(list, z);
        int i = 0;
        if (!(findAllAngles instanceof Collection) || !findAllAngles.isEmpty()) {
            Iterator<T> it2 = findAllAngles.iterator();
            while (it2.hasNext()) {
                if (featurePredicate.invoke((AnglePoints) it2.next()).booleanValue() && (i = i + 1) < 0) {
                    CollectionsKt__CollectionsKt.throwCountOverflow();
                }
            }
        }
        return i;
    }

    @Nullable
    public final TouchPoint findPathCenter(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (list.size() <= 2) {
            return null;
        }
        List<TouchPoint> findLongestSegment = findLongestSegment(getSegmentsByTurningPoints(list));
        if (findLongestSegment.size() <= 2) {
            return null;
        }
        return findLongestSegment.get(findLongestSegment.size() / 2);
    }

    @NotNull
    public final TouchPoint findPointByDistance(@NotNull TouchPoint touchPoint, @NotNull Number distance, @NotNull Number directionInRad) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        Intrinsics.checkNotNullParameter(distance, "distance");
        Intrinsics.checkNotNullParameter(directionInRad, "directionInRad");
        return new TouchPoint((float) (touchPoint.getX() + (distance.doubleValue() * Math.cos(directionInRad.doubleValue()))), (float) (touchPoint.getY() + (distance.doubleValue() * Math.sin(directionInRad.doubleValue()))));
    }

    @NotNull
    public final TouchPoint findSymmetricalPoint(@NotNull TouchPoint touchPoint, @NotNull TouchPoint center) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        Intrinsics.checkNotNullParameter(center, "center");
        float f = 2;
        return new TouchPoint((center.getX() * f) - touchPoint.getX(), (f * center.getY()) - touchPoint.getY());
    }

    @Nullable
    public final TouchPoint findTurningPointFromCenterToEnd(@NotNull List<TouchPoint> list, @NotNull Number threshold) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(threshold, "threshold");
        TouchPoint findPathCenter = findPathCenter(list);
        if (findPathCenter == null) {
            return null;
        }
        return findFirstTurningPoint(CollectionKt.safelySubList(list, list.indexOf(findPathCenter), list.size()), threshold);
    }

    @Nullable
    public final TouchPoint findTurningPointFromCenterToStart(@NotNull List<TouchPoint> list, @NotNull Number threshold) {
        List<TouchPoint> reversed;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(threshold, "threshold");
        TouchPoint findPathCenter = findPathCenter(list);
        if (findPathCenter == null) {
            return null;
        }
        reversed = CollectionsKt___CollectionsKt.reversed(CollectionKt.safelySubList(list, 0, list.indexOf(findPathCenter)));
        return findFirstTurningPoint(reversed, threshold);
    }

    @NotNull
    public final BoundCollision getBoundCollision(@NotNull List<TouchPoint> list, @NotNull RectF bound) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(bound, "bound");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (TouchPoint touchPoint : list) {
            if (touchPoint.getX() == bound.left) {
                arrayList.add(touchPoint);
            } else if (touchPoint.getX() == bound.right) {
                arrayList2.add(touchPoint);
            } else if (touchPoint.getY() == bound.top) {
                arrayList3.add(touchPoint);
            } else if (touchPoint.getY() == bound.bottom) {
                arrayList4.add(touchPoint);
            }
        }
        return new BoundCollision(arrayList, arrayList2, arrayList3, arrayList4);
    }

    public final float getClockwiseAngle(@NotNull AnglePoints anglePoints) {
        Intrinsics.checkNotNullParameter(anglePoints, "<this>");
        float direction = new TouchPointPair(anglePoints.getCenter(), anglePoints.getNext()).rotate(anglePoints.getCenter(), Float.valueOf(-new TouchPointPair(anglePoints.getCenter(), anglePoints.getPrevious()).direction())).direction();
        return direction < 0.0f ? direction + 6.2831855f : direction;
    }

    @NotNull
    public final TouchPointPair getLongestEdge(@NotNull List<TouchPoint> list) {
        List mutableList;
        Intrinsics.checkNotNullParameter(list, "<this>");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
        int i = 0;
        mutableList.add(mutableList.get(0));
        TouchPoint.Companion companion = TouchPoint.INSTANCE;
        TouchPoint empty = companion.getEmpty();
        TouchPoint empty2 = companion.getEmpty();
        int size = mutableList.size() - 1;
        float f = 0.0f;
        while (i < size) {
            TouchPoint touchPoint = (TouchPoint) mutableList.get(i);
            i++;
            TouchPoint touchPoint2 = (TouchPoint) mutableList.get(i);
            float distance = distance(touchPoint, touchPoint2);
            if (distance > f) {
                empty = touchPoint;
                empty2 = touchPoint2;
                f = distance;
            }
        }
        return new TouchPointPair(empty, empty2);
    }

    @Nullable
    public final Float getNearestStandardDirection(float directionInRad, float mistakeRangeInRad) {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(0.0f), Float.valueOf(1.5707964f), Float.valueOf(2 * 1.5707964f), Float.valueOf(3 * 1.5707964f), Float.valueOf(4 * 1.5707964f)});
        float unsignedRad = toUnsignedRad(directionInRad);
        Iterator it2 = listOf.iterator();
        while (it2.hasNext()) {
            float floatValue = ((Number) it2.next()).floatValue();
            if (Math.abs(unsignedRad - floatValue) < mistakeRangeInRad) {
                return Float.valueOf(floatValue);
            }
        }
        return null;
    }

    @NotNull
    public final float[] getOffsetTo(@NotNull TouchPoint touchPoint, @NotNull TouchPoint target) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        return new float[]{target.getX() - touchPoint.getX(), target.getY() - touchPoint.getY()};
    }

    @NotNull
    public final RectF getOvalRect(@NotNull TouchPoint touchPoint, @NotNull Number rx, @NotNull Number ry) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        Intrinsics.checkNotNullParameter(rx, "rx");
        Intrinsics.checkNotNullParameter(ry, "ry");
        RectF rectF = new RectF();
        rectF.left = touchPoint.getX() - rx.floatValue();
        rectF.right = touchPoint.getX() + rx.floatValue();
        rectF.top = touchPoint.getY() - ry.floatValue();
        rectF.bottom = touchPoint.getY() + ry.floatValue();
        return rectF;
    }

    public final float getResampleSpacing(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        float shorterSize = RectKt.shorterSize(boundRect(list));
        GeometryConfigurations geometryConfigurations = GeometryConfigurations.INSTANCE;
        return ((Number) MathUtils.INSTANCE.atMost(Float.valueOf(geometryConfigurations.getPathResampleSpacing()), Float.valueOf(shorterSize * geometryConfigurations.getPathResampleMaxSpacingPercent()))).floatValue();
    }

    @NotNull
    public final List<List<TouchPoint>> getSegmentsByKneePoints(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return getSegmentsBySplitPoints(list, findKneePoints$default(this, list, null, 1, null));
    }

    @NotNull
    public final List<List<TouchPoint>> getSegmentsBySplitPoints(@NotNull List<TouchPoint> list, @NotNull List<TouchPoint> splitPoints) {
        List mutableList;
        Object first;
        Object last;
        List<List<TouchPoint>> listOf;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(splitPoints, "splitPoints");
        if (list.size() <= 2) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(list);
            return listOf;
        }
        ArrayList arrayList = new ArrayList();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) splitPoints);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
        int i = 0;
        mutableList.add(0, first);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) list);
        mutableList.add(last);
        int size = mutableList.size() - 1;
        if (size <= mutableList.size() - 1 && size > 0) {
            while (i < size) {
                Object obj = mutableList.get(i);
                i++;
                List safelySubList = CollectionKt.safelySubList(list, list.indexOf((TouchPoint) obj), list.indexOf((TouchPoint) mutableList.get(i)) + 1);
                if (safelySubList.size() >= 2) {
                    arrayList.add(safelySubList);
                }
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<List<TouchPoint>> getSegmentsByTurningPoints(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return getSegmentsBySplitPoints(list, findAllTurningPoints$default(this, list, null, false, null, false, false, 31, null));
    }

    @Nullable
    public final AnglePoints getStrokedAnglePoints(@NotNull AnglePoints anglePoints, @NotNull Number distance, boolean z) {
        List<TouchPoint> listOf;
        Intrinsics.checkNotNullParameter(anglePoints, "<this>");
        Intrinsics.checkNotNullParameter(distance, "distance");
        if (anglePoints.absoluteAngle() < 0.017453292f) {
            return null;
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{anglePoints.getPrevious(), anglePoints.getCenter(), anglePoints.getNext()});
        TouchPoint gravityCenter = gravityCenter(listOf);
        if (!z) {
            gravityCenter = findSymmetricalPoint(gravityCenter, anglePoints.getCenter());
        }
        TouchPointPair centerLine = anglePoints.centerLine();
        TouchPointPair translateAlongPointDirection = translateAlongPointDirection(new TouchPointPair(anglePoints.getCenter(), anglePoints.getPrevious()), distance, gravityCenter);
        TouchPointPair translateAlongPointDirection2 = translateAlongPointDirection(new TouchPointPair(anglePoints.getCenter(), anglePoints.getNext()), distance, gravityCenter);
        if (centerLine.isSameSide(anglePoints.getPrevious(), translateAlongPointDirection.getP2()) && centerLine.isSameSide(anglePoints.getNext(), translateAlongPointDirection2.getP2())) {
            return new AnglePoints(translateAlongPointDirection.findCrossPoint(translateAlongPointDirection2), translateAlongPointDirection.findPointOnVector(translateAlongPointDirection.length(), translateAlongPointDirection.getP1()), translateAlongPointDirection2.findPointOnVector(translateAlongPointDirection2.length(), translateAlongPointDirection2.getP1()));
        }
        return null;
    }

    @NotNull
    public final TouchPoint gravityCenter(@NotNull List<TouchPoint> list) {
        int collectionSizeOrDefault;
        double averageOfFloat;
        int collectionSizeOrDefault2;
        double averageOfFloat2;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<TouchPoint> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(Float.valueOf(((TouchPoint) it2.next()).getX()));
        }
        averageOfFloat = CollectionsKt___CollectionsKt.averageOfFloat(arrayList);
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = list2.iterator();
        while (it3.hasNext()) {
            arrayList2.add(Float.valueOf(((TouchPoint) it3.next()).getY()));
        }
        averageOfFloat2 = CollectionsKt___CollectionsKt.averageOfFloat(arrayList2);
        return new TouchPoint((float) averageOfFloat, (float) averageOfFloat2);
    }

    public final boolean hasDirectionChanged(@NotNull AnglePoints anglePoints, @NotNull AnglePoints other) {
        Intrinsics.checkNotNullParameter(anglePoints, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return !(Math.signum(anglePoints.previousDirection() - anglePoints.nextDirection()) == Math.signum(other.previousDirection() - other.nextDirection()));
    }

    public final boolean hasRightAngle(@NotNull List<TouchPoint> list, boolean z, @NotNull final Number mistakeRange) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(mistakeRange, "mistakeRange");
        return findMatchedAngleCount(list, z, new Function1<AnglePoints, Boolean>() { // from class: com.onyx.android.sdk.geometry.utils.GeometryUtils$hasRightAngle$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull AnglePoints findMatchedAngleCount) {
                Intrinsics.checkNotNullParameter(findMatchedAngleCount, "$this$findMatchedAngleCount");
                return Boolean.valueOf(GeometryUtils.INSTANCE.isAngleRight(findMatchedAngleCount, mistakeRange));
            }
        }) > 0;
    }

    public final boolean hasTurningPoint(@NotNull final List<TouchPoint> list, @NotNull final Number threshold, final boolean z, @NotNull final Number minLength) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(threshold, "threshold");
        Intrinsics.checkNotNullParameter(minLength, "minLength");
        return CollectionKt.contains(findAllAngles(list, false), new Function1<AnglePoints, Boolean>() { // from class: com.onyx.android.sdk.geometry.utils.GeometryUtils$hasTurningPoint$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull AnglePoints it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                if (z) {
                    int indexOf = list.indexOf(it2.getCenter());
                    GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
                    if (geometryUtils.totalLineLength(CollectionKt.safelySubList(list, 0, indexOf + 1)) < minLength.floatValue()) {
                        return Boolean.FALSE;
                    }
                    List<TouchPoint> list2 = list;
                    if (geometryUtils.totalLineLength(CollectionKt.safelySubList(list2, indexOf, list2.size())) < minLength.floatValue()) {
                        return Boolean.FALSE;
                    }
                }
                return Boolean.valueOf(it2.absoluteAngle() < threshold.floatValue());
            }
        });
    }

    public final boolean insideClosure(@NotNull TouchPoint touchPoint, @NotNull List<TouchPoint> points) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        Intrinsics.checkNotNullParameter(points, "points");
        int size = points.size() - 1;
        final Ref.IntRef intRef = new Ref.IntRef();
        int i = size;
        for (int i2 = 0; i2 < points.size(); i2++) {
            BooleanKt.takeIfTrue(Boolean.valueOf(((points.get(i2).getY() > touchPoint.getY() ? 1 : (points.get(i2).getY() == touchPoint.getY() ? 0 : -1)) > 0) != ((points.get(i).getY() > touchPoint.getY() ? 1 : (points.get(i).getY() == touchPoint.getY() ? 0 : -1)) > 0) && touchPoint.getX() < (((points.get(i).getX() - points.get(i2).getX()) * (touchPoint.getY() - points.get(i2).getY())) / (points.get(i).getY() - points.get(i2).getY())) + points.get(i2).getX()), new Function0<Unit>() { // from class: com.onyx.android.sdk.geometry.utils.GeometryUtils$insideClosure$1
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
                    Ref.IntRef.this.element++;
                }
            });
            i = i2;
        }
        return intRef.element % 2 == 1;
    }

    public final boolean intersectedWith(@NotNull RectF rectF, @NotNull RectF target) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        return RectFKt.copy(rectF).intersect(target);
    }

    public final float intersectionAngle(@NotNull TouchPoint touchPoint, @NotNull TouchPoint previous, @NotNull TouchPoint next) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        Intrinsics.checkNotNullParameter(previous, "previous");
        Intrinsics.checkNotNullParameter(next, "next");
        return intersectionAngle(new TouchPointPair(touchPoint, previous), new TouchPointPair(touchPoint, next));
    }

    public final boolean isAllAngleAcute(@NotNull List<TouchPoint> list, boolean z, @NotNull Number mistakeRange) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(mistakeRange, "mistakeRange");
        return isAllAngleMatches(list, z, new Function1<AnglePoints, Boolean>() { // from class: com.onyx.android.sdk.geometry.utils.GeometryUtils$isAllAngleAcute$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull AnglePoints isAllAngleMatches) {
                Intrinsics.checkNotNullParameter(isAllAngleMatches, "$this$isAllAngleMatches");
                return Boolean.valueOf(GeometryUtils.isAngleAcute$default(GeometryUtils.INSTANCE, isAllAngleMatches, null, 1, null));
            }
        });
    }

    public final boolean isAllAngleMatches(@NotNull List<TouchPoint> list, boolean z, @NotNull Function1<? super AnglePoints, Boolean> featurePredicate) {
        int i;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(featurePredicate, "featurePredicate");
        List<AnglePoints> findAllAngles = findAllAngles(list, z);
        List<AnglePoints> list2 = findAllAngles;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            i = 0;
        } else {
            Iterator<T> it2 = list2.iterator();
            i = 0;
            while (it2.hasNext()) {
                if (featurePredicate.invoke((AnglePoints) it2.next()).booleanValue() && (i = i + 1) < 0) {
                    CollectionsKt__CollectionsKt.throwCountOverflow();
                }
            }
        }
        return i == findAllAngles.size();
    }

    public final boolean isAllAngleObtuse(@NotNull List<TouchPoint> list, boolean z, @NotNull Number mistakeRange) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(mistakeRange, "mistakeRange");
        return isAllAngleMatches(list, z, new Function1<AnglePoints, Boolean>() { // from class: com.onyx.android.sdk.geometry.utils.GeometryUtils$isAllAngleObtuse$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull AnglePoints isAllAngleMatches) {
                Intrinsics.checkNotNullParameter(isAllAngleMatches, "$this$isAllAngleMatches");
                return Boolean.valueOf(GeometryUtils.isAngleObtuse$default(GeometryUtils.INSTANCE, isAllAngleMatches, null, 1, null));
            }
        });
    }

    public final boolean isAllAngleRight(@NotNull List<TouchPoint> list, boolean z, @NotNull final Number mistakeRange) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(mistakeRange, "mistakeRange");
        return isAllAngleMatches(list, z, new Function1<AnglePoints, Boolean>() { // from class: com.onyx.android.sdk.geometry.utils.GeometryUtils$isAllAngleRight$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull AnglePoints isAllAngleMatches) {
                Intrinsics.checkNotNullParameter(isAllAngleMatches, "$this$isAllAngleMatches");
                return Boolean.valueOf(GeometryUtils.INSTANCE.isAngleRight(isAllAngleMatches, mistakeRange));
            }
        });
    }

    public final boolean isAllSegmentsCurvy(@NotNull List<TouchPoint> list, @NotNull Number threshold) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(threshold, "threshold");
        Iterator<T> it2 = getSegmentsByKneePoints(list).iterator();
        while (it2.hasNext()) {
            if (INSTANCE.isSegmentStraight((List) it2.next(), threshold)) {
                return false;
            }
        }
        return true;
    }

    public final boolean isAllSegmentsStraight(@NotNull List<TouchPoint> list, @NotNull Number threshold) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(threshold, "threshold");
        Iterator<T> it2 = getSegmentsByKneePoints(list).iterator();
        while (it2.hasNext()) {
            if (!INSTANCE.isSegmentStraight((List) it2.next(), threshold)) {
                return false;
            }
        }
        return true;
    }

    public final boolean isAngleAcute(@NotNull AnglePoints anglePoints, @NotNull Number mistakeRange) {
        Intrinsics.checkNotNullParameter(anglePoints, "<this>");
        Intrinsics.checkNotNullParameter(mistakeRange, "mistakeRange");
        return anglePoints.absoluteAngle() < mistakeRange.floatValue() + 1.5707964f;
    }

    public final boolean isAngleObtuse(@NotNull AnglePoints anglePoints, @NotNull Number mistakeRange) {
        Intrinsics.checkNotNullParameter(anglePoints, "<this>");
        Intrinsics.checkNotNullParameter(mistakeRange, "mistakeRange");
        return anglePoints.absoluteAngle() > 1.5707964f - mistakeRange.floatValue();
    }

    public final boolean isAngleRight(@NotNull AnglePoints anglePoints, @NotNull Number mistakeRange) {
        Intrinsics.checkNotNullParameter(anglePoints, "<this>");
        Intrinsics.checkNotNullParameter(mistakeRange, "mistakeRange");
        return Math.abs(anglePoints.absoluteAngle() - 1.5707964f) < mistakeRange.floatValue();
    }

    public final boolean isClockwise(@NotNull TouchPointPair startDir, @NotNull TouchPointPair endDir) {
        Intrinsics.checkNotNullParameter(startDir, "startDir");
        Intrinsics.checkNotNullParameter(endDir, "endDir");
        float direction = endDir.direction() - startDir.direction();
        if (direction > 3.1415927f) {
            direction -= 6.2831855f;
        } else if (direction < -3.1415927f) {
            direction += 6.2831855f;
        }
        return direction > 0.0f;
    }

    public final boolean isHorizontal(@NotNull TouchPointPair touchPointPair, @NotNull Number mistakeRange) {
        Intrinsics.checkNotNullParameter(touchPointPair, "<this>");
        Intrinsics.checkNotNullParameter(mistakeRange, "mistakeRange");
        return isParallelTo(touchPointPair, new TouchPointPair(new TouchPoint(0.0f, 0.0f), new TouchPoint(100.0f, 0.0f)), mistakeRange, true);
    }

    public final boolean isParallelTo(@NotNull TouchPointPair touchPointPair, @NotNull TouchPointPair other, @NotNull Number mistakeRange, boolean z) {
        boolean inRange;
        Intrinsics.checkNotNullParameter(touchPointPair, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        Intrinsics.checkNotNullParameter(mistakeRange, "mistakeRange");
        float deltaRad = deltaRad(touchPointPair.direction(), other.direction());
        if (!z) {
            return deltaRad < mistakeRange.floatValue();
        }
        inRange = MathUtils.INSTANCE.inRange(Float.valueOf(deltaRad), Float.valueOf(mistakeRange.floatValue()), Float.valueOf(3.1415927f - mistakeRange.floatValue()), (r16 & 4) != 0, (r16 & 8) != 0, (r16 & 16) != 0 ? false : false);
        return !inRange;
    }

    public final boolean isPerpendicularTo(@NotNull TouchPointPair touchPointPair, @NotNull TouchPointPair other, @NotNull Number mistakeRange) {
        Intrinsics.checkNotNullParameter(touchPointPair, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        Intrinsics.checkNotNullParameter(mistakeRange, "mistakeRange");
        return deltaRad(deltaRad(touchPointPair.direction(), other.direction()), 1.5707964f) < mistakeRange.floatValue();
    }

    public final boolean isSegmentStraight(@NotNull List<TouchPoint> list, @NotNull Number threshold) {
        Object first;
        Object last;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(threshold, "threshold");
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) list);
        TouchPointPair touchPointPair = new TouchPointPair((TouchPoint) first, (TouchPoint) last);
        float floatValue = threshold.floatValue();
        if (floatValue <= 0.0f) {
            float length = touchPointPair.length();
            GeometryConfigurations geometryConfigurations = GeometryConfigurations.INSTANCE;
            float lineDefaultMistakePercent = length * geometryConfigurations.getLineDefaultMistakePercent();
            MathUtils mathUtils = MathUtils.INSTANCE;
            floatValue = ((Number) mathUtils.atMost(mathUtils.atLeast(Float.valueOf(lineDefaultMistakePercent), Float.valueOf(geometryConfigurations.getLineMinMistakenDistance())), Float.valueOf(geometryConfigurations.getLineMaxMistakenDistance()))).floatValue();
        }
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            if (touchPointPair.distance((TouchPoint) it2.next()) > floatValue) {
                return false;
            }
        }
        return true;
    }

    public final boolean isVertical(@NotNull TouchPointPair touchPointPair, @NotNull Number mistakeRange) {
        Intrinsics.checkNotNullParameter(touchPointPair, "<this>");
        Intrinsics.checkNotNullParameter(mistakeRange, "mistakeRange");
        return isParallelTo(touchPointPair, new TouchPointPair(new TouchPoint(0.0f, 0.0f), new TouchPoint(0.0f, 100.0f)), mistakeRange, true);
    }

    @NotNull
    public final TouchPoint leftTop(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<TouchPoint> list2 = list;
        Iterator<T> it2 = list2.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        float x = ((TouchPoint) it2.next()).getX();
        while (it2.hasNext()) {
            x = Math.min(x, ((TouchPoint) it2.next()).getX());
        }
        Iterator<T> it3 = list2.iterator();
        if (!it3.hasNext()) {
            throw new NoSuchElementException();
        }
        float y = ((TouchPoint) it3.next()).getY();
        while (it3.hasNext()) {
            y = Math.min(y, ((TouchPoint) it3.next()).getY());
        }
        return new TouchPoint(x, y);
    }

    public final float length(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        int size = list.size();
        float f = 0.0f;
        for (int i = 1; i < size; i++) {
            f += new TouchPointPair(list.get(i - 1), list.get(i)).length();
        }
        return f;
    }

    public final float lengthDifferRateToShorter(@NotNull TouchPointPair a, @NotNull TouchPointPair b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        return MathUtils.INSTANCE.differRateToShorter(Float.valueOf(a.length()), Float.valueOf(b.length()));
    }

    @NotNull
    public final TouchPointPair longer(@NotNull TouchPointPair a, @NotNull TouchPointPair b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        return a.length() > b.length() ? a : b;
    }

    public final float maxDeltaDegree(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return radToDegree(maxDeltaRad(list));
    }

    public final float maxDeltaRad(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        float f = 0.0f;
        if (list.size() < 3) {
            return 0.0f;
        }
        float direction = new TouchPointPair(list.get(0), list.get(1)).direction();
        List<TouchPoint> list2 = list;
        float f2 = 0.0f;
        for (TouchPoint touchPoint : list2) {
            for (TouchPoint touchPoint2 : list2) {
                if (list.indexOf(touchPoint2) > list.indexOf(touchPoint)) {
                    float direction2 = new TouchPointPair(touchPoint, touchPoint2).direction();
                    float deltaRad = INSTANCE.deltaRad(direction, direction2) * BooleanKt.toSignInteger(Boolean.valueOf(r9.isClockwise(r10, r8)));
                    if (deltaRad < f2) {
                        f2 = deltaRad;
                    }
                    if (deltaRad > f) {
                        f = deltaRad;
                    }
                }
            }
        }
        return f - f2;
    }

    public final boolean nearBoundRect(@NotNull TouchPoint point, @NotNull RectF bound, float dxThreshold, float dyThreshold) {
        Intrinsics.checkNotNullParameter(point, "point");
        Intrinsics.checkNotNullParameter(bound, "bound");
        return Math.abs(point.getX() - bound.left) < dxThreshold || Math.abs(point.getX() - bound.right) < dxThreshold || Math.abs(point.getY() - bound.top) < dyThreshold || Math.abs(point.getY() - bound.bottom) < dyThreshold;
    }

    public final boolean onSameXSide(@NotNull TouchPoint touchPoint, @NotNull Number x1, @NotNull Number x2) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        Intrinsics.checkNotNullParameter(x1, "x1");
        Intrinsics.checkNotNullParameter(x2, "x2");
        float x = touchPoint.getX() - x1.floatValue();
        float x3 = touchPoint.getX() - x2.floatValue();
        MathUtils mathUtils = MathUtils.INSTANCE;
        return mathUtils.signFactor(Float.valueOf(x)) == mathUtils.signFactor(Float.valueOf(x3));
    }

    public final boolean onSameYSide(@NotNull TouchPoint touchPoint, @NotNull Number y1, @NotNull Number y2) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        Intrinsics.checkNotNullParameter(y1, "y1");
        Intrinsics.checkNotNullParameter(y2, "y2");
        float y = touchPoint.getY() - y1.floatValue();
        float y3 = touchPoint.getY() - y2.floatValue();
        MathUtils mathUtils = MathUtils.INSTANCE;
        return mathUtils.signFactor(Float.valueOf(y)) == mathUtils.signFactor(Float.valueOf(y3));
    }

    public final float radToDegree(float rad) {
        return (float) ((rad * 180.0f) / 3.141592653589793d);
    }

    @NotNull
    public final List<TouchPoint> removeEqualsEndPoint(@NotNull List<TouchPoint> list, float f) {
        List<TouchPoint> mutableList;
        Object first;
        Object last;
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (list.size() <= 3) {
            return list;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) mutableList);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) mutableList);
        TouchPoint touchPoint = (TouchPoint) last;
        if (distance((TouchPoint) first, touchPoint) < f) {
            mutableList.remove(touchPoint);
        }
        return mutableList;
    }

    @NotNull
    public final List<TouchPoint> resample(@NotNull List<TouchPoint> list, @NotNull Number spacing, @NotNull Function1<? super Path, Unit> compose) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(spacing, "spacing");
        Intrinsics.checkNotNullParameter(compose, "compose");
        return PathKt.resample(PathKt.createPathFrom(list, compose), spacing);
    }

    @NotNull
    public final TouchPoint rightBottom(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<TouchPoint> list2 = list;
        Iterator<T> it2 = list2.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        float x = ((TouchPoint) it2.next()).getX();
        while (it2.hasNext()) {
            x = Math.max(x, ((TouchPoint) it2.next()).getX());
        }
        Iterator<T> it3 = list2.iterator();
        if (!it3.hasNext()) {
            throw new NoSuchElementException();
        }
        float y = ((TouchPoint) it3.next()).getY();
        while (it3.hasNext()) {
            y = Math.max(y, ((TouchPoint) it3.next()).getY());
        }
        return new TouchPoint(x, y);
    }

    public final float rotationAngleForParallel(@NotNull TouchPointPair touchPointPair, @NotNull TouchPointPair other) {
        Intrinsics.checkNotNullParameter(touchPointPair, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        float intersectionAngle = intersectionAngle(touchPointPair, other);
        return Math.abs(intersectionAngle) > 1.5707964f ? (-Math.signum(intersectionAngle)) * (3.1415927f - Math.abs(intersectionAngle)) : intersectionAngle;
    }

    @NotNull
    public final TouchPoint rotationTransform(@NotNull TouchPoint touchPoint, @NotNull TouchPoint center, float f) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        Intrinsics.checkNotNullParameter(center, "center");
        TouchPoint touchPoint2 = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        double d = f;
        touchPoint2.setX((((touchPoint.getX() - center.getX()) * ((float) Math.cos(d))) - ((touchPoint.getY() - center.getY()) * ((float) Math.sin(d)))) + center.getX());
        touchPoint2.setY(((touchPoint.getY() - center.getY()) * ((float) Math.cos(d))) + ((touchPoint.getX() - center.getX()) * ((float) Math.sin(d))) + center.getY());
        touchPoint2.m72174setTimestamp(touchPoint.getTimestamp());
        touchPoint2.setPressure(touchPoint.getPressure());
        return touchPoint2;
    }

    public final float slope(@NotNull TouchPoint startPoint, @NotNull TouchPoint endPoint) {
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        Intrinsics.checkNotNullParameter(endPoint, "endPoint");
        float x = endPoint.getX() - startPoint.getX();
        float y = endPoint.getY() - startPoint.getY();
        return (x > 0.0f ? 1 : (x == 0.0f ? 0 : -1)) == 0 ? Math.signum(y) * 1.7014117E38f : y / x;
    }

    @NotNull
    public final MotionEvent toMotionEvent(@NotNull TouchPoint touchPoint, int i) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        MotionEvent obtain = MotionEvent.obtain(0L, touchPoint.getTimestamp(), i, touchPoint.getX(), touchPoint.getY(), 0);
        Intrinsics.checkNotNullExpressionValue(obtain, "obtain(...)");
        return obtain;
    }

    public final float toUnsignedDegree(float degree) {
        return degree >= 0.0f ? degree : degree + 360;
    }

    public final float toUnsignedRad(float rad) {
        return rad >= 0.0f ? rad : rad + 6.2831855f;
    }

    public final float totalLineLength(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        double d = 0.0d;
        while (findAllSides(list, false).iterator().hasNext()) {
            d += ((TouchPointPair) r4.next()).length();
        }
        return (float) d;
    }

    @NotNull
    public final List<TouchPoint> transform(@NotNull List<TouchPoint> list, @Nullable Matrix matrix) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<TouchPoint> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TouchPoint) it2.next()).transform(matrix));
        }
        return arrayList;
    }

    @NotNull
    public final TouchPointPair translateAlongPointDirection(@NotNull TouchPointPair touchPointPair, @NotNull Number distance, @NotNull TouchPoint target) {
        Intrinsics.checkNotNullParameter(touchPointPair, "<this>");
        Intrinsics.checkNotNullParameter(distance, "distance");
        Intrinsics.checkNotNullParameter(target, "target");
        float direction = new TouchPointPair(touchPointPair.findCrossPoint(target), target).direction();
        return new TouchPointPair(findPointByDistance(touchPointPair.getP1(), distance, Float.valueOf(direction)), findPointByDistance(touchPointPair.getP2(), distance, Float.valueOf(direction)));
    }

    @NotNull
    public final List<TouchPoint> vertexPoints(@NotNull RectF rectF) {
        List<TouchPoint> listOf;
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{new TouchPoint(rectF.left, rectF.top), new TouchPoint(rectF.right, rectF.top), new TouchPoint(rectF.right, rectF.bottom), new TouchPoint(rectF.left, rectF.bottom)});
        return listOf;
    }

    public final boolean willXSideChangeAfterOffset(@NotNull TouchPoint touchPoint, @NotNull TouchPoint p, @NotNull Number dx) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        Intrinsics.checkNotNullParameter(p, "p");
        Intrinsics.checkNotNullParameter(dx, "dx");
        return !onSameXSide(touchPoint, Float.valueOf(p.getX()), Float.valueOf(p.getX() + dx.floatValue()));
    }

    public final boolean willYSideChangeAfterOffset(@NotNull TouchPoint touchPoint, @NotNull TouchPoint p, @NotNull Number dy) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        Intrinsics.checkNotNullParameter(p, "p");
        Intrinsics.checkNotNullParameter(dy, "dy");
        return !onSameYSide(touchPoint, Float.valueOf(p.getY()), Float.valueOf(p.getY() + dy.floatValue()));
    }

    public final float distanceTo(@NotNull RectF rectF, @NotNull RectF target) {
        List listOf;
        float m73059maxOrThrow;
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        if (intersectedWith(rectF, target)) {
            return 0.0f;
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(target.left - rectF.right), Float.valueOf(rectF.left - target.right), Float.valueOf(target.top - rectF.bottom), Float.valueOf(rectF.top - target.bottom)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listOf) {
            if (((Number) obj).floatValue() >= 0.0f) {
                arrayList.add(obj);
            }
        }
        m73059maxOrThrow = CollectionsKt___CollectionsKt.m73059maxOrThrow((Iterable<Float>) arrayList);
        return m73059maxOrThrow;
    }

    @NotNull
    public final RectF boundRect(@NotNull TouchPointPair touchPointPair) {
        List<TouchPoint> listOf;
        Intrinsics.checkNotNullParameter(touchPointPair, "<this>");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPointPair.getP1(), touchPointPair.getP2()});
        return boundRect(listOf);
    }

    @NotNull
    public final TouchPoint center(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        TouchPoint touchPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        touchPoint.setX(rectF.centerX());
        touchPoint.setY(rectF.centerY());
        return touchPoint;
    }

    public final float intersectionAngle(@NotNull TouchPointPair touchPointPair, @NotNull TouchPointPair other) {
        Intrinsics.checkNotNullParameter(touchPointPair, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        float direction = other.direction() - touchPointPair.direction();
        if (direction < -3.1415927f) {
            direction += 6.2831855f;
        }
        return direction > 3.1415927f ? 6.2831855f - direction : direction;
    }

    @NotNull
    public final List<TouchPoint> rotationTransform(@NotNull List<TouchPoint> list, @NotNull TouchPoint center, float f) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(center, "center");
        List<TouchPoint> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(INSTANCE.rotationTransform((TouchPoint) it2.next(), center, f));
        }
        return arrayList;
    }
}
