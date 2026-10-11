package com.onyx.android.sdk.base.utils;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Pair;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.RectSortResult;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.apache.commons.math3.linear.SymmLQ;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0013\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b(\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\b\u001a\bÆ\u0002\u0018\u00002\u00020\u0001B\u000b\b\u0002¢\u0006\u0006\b\u0093\u0001\u0010\u0094\u0001J \u0010\u0007\u001a\u00020\u00062\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0003H\u0002J\u0016\u0010\t\u001a\u00020\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\bH\u0002J\u0016\u0010\n\u001a\u00020\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\bH\u0002J\u0016\u0010\u000b\u001a\u00020\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\bH\u0002J\u0016\u0010\f\u001a\u00020\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\bH\u0002JZ\u0010\u0013\u001a\u00020\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\b2.\u0010\u0010\u001a*\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\rj\u0014\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002`\u000f2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00030\u0011H\u0002JZ\u0010\u0014\u001a\u00020\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\b2.\u0010\u0010\u001a*\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\rj\u0014\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002`\u000f2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00030\u0011H\u0002J\u0006\u0010\u0016\u001a\u00020\u0015J\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\bJ\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u0003J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u0003J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u0003J\"\u0010\u001e\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\b2\u0010\u0010\u001a\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\bJ\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u00032\b\u0010\u001a\u001a\u0004\u0018\u00010\u0017J(\u0010%\u001a\u0004\u0018\u00010\u00032\u0006\u0010 \u001a\u00020\u00032\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!2\u0006\u0010$\u001a\u00020!J\u0010\u0010(\u001a\u0004\u0018\u00010\u00032\u0006\u0010'\u001a\u00020&J\u0016\u0010*\u001a\u0004\u0018\u00010)2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\bJ\u0016\u0010+\u001a\u0004\u0018\u00010)2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\bJ\u0016\u0010,\u001a\u0004\u0018\u00010)2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\bJ\u0016\u0010-\u001a\u0004\u0018\u00010)2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\bJ\u0016\u0010.\u001a\u0004\u0018\u00010)2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\bJ\u0016\u0010/\u001a\u0004\u0018\u00010)2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\bJ\u001a\u00102\u001a\u00020!2\b\u00100\u001a\u0004\u0018\u00010\u00032\b\u00101\u001a\u0004\u0018\u00010\u0003J\u001a\u00103\u001a\u00020\u00152\b\u00100\u001a\u0004\u0018\u00010\u00172\b\u00101\u001a\u0004\u0018\u00010\u0017J\"\u00103\u001a\u00020\u00152\b\u00100\u001a\u0004\u0018\u00010\u00172\b\u00101\u001a\u0004\u0018\u00010\u00172\u0006\u00104\u001a\u00020\u000eJ*\u00107\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000305j\n\u0012\u0006\u0012\u0004\u0018\u00010\u0003`62\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\bJ\u001a\u00108\u001a\u00020\u00152\b\u00100\u001a\u0004\u0018\u00010\u00032\b\u00101\u001a\u0004\u0018\u00010\u0003J&\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\u001a\u001a\u00020\u00032\u0010\u00109\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\bJ\u0016\u0010;\u001a\u00020!2\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bJ \u0010?\u001a\u00020\u00062\b\u0010<\u001a\u0004\u0018\u00010\u00032\u0006\u0010=\u001a\u00020!2\u0006\u0010>\u001a\u00020!J \u0010?\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00172\u0006\u0010=\u001a\u00020\u000e2\u0006\u0010>\u001a\u00020\u000eJ(\u0010C\u001a\u00020\u00062\b\u0010<\u001a\u0004\u0018\u00010\u00032\u0006\u0010@\u001a\u00020!2\u0006\u0010A\u001a\u00020!2\u0006\u0010B\u001a\u00020\u0003J \u0010D\u001a\u00020\u00062\b\u0010<\u001a\u0004\u0018\u00010\u00032\u0006\u0010@\u001a\u00020!2\u0006\u0010A\u001a\u00020!J \u0010D\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00172\u0006\u0010@\u001a\u00020!2\u0006\u0010A\u001a\u00020!J\u0016\u0010E\u001a\u00020!2\u0006\u0010<\u001a\u00020\u00032\u0006\u0010@\u001a\u00020!J\u0016\u0010F\u001a\u00020!2\u0006\u0010<\u001a\u00020\u00032\u0006\u0010A\u001a\u00020!J\u000e\u0010H\u001a\u00020\u00062\u0006\u0010G\u001a\u00020\u0003J\u000e\u0010I\u001a\u00020\u00032\u0006\u0010G\u001a\u00020\u0003J\u0016\u0010J\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bJ\u001a\u0010M\u001a\u00020\u00152\b\u0010K\u001a\u0004\u0018\u00010\u00032\b\u0010L\u001a\u0004\u0018\u00010\u0003J\u001a\u0010N\u001a\u00020\u00152\b\u0010K\u001a\u0004\u0018\u00010\u00032\b\u0010L\u001a\u0004\u0018\u00010\u0003J\u001a\u0010M\u001a\u00020\u00152\b\u0010K\u001a\u0004\u0018\u00010\u00172\b\u0010L\u001a\u0004\u0018\u00010\u0017J\u0010\u0010O\u001a\u00020\u00152\b\u0010\u0005\u001a\u0004\u0018\u00010\u0017J\u0010\u0010O\u001a\u00020\u00152\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003J\u0010\u0010P\u001a\u00020\u00152\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003J\u001a\u0010S\u001a\u00020\u00152\b\u0010Q\u001a\u0004\u0018\u00010\u00172\b\u0010R\u001a\u0004\u0018\u00010\u0017J\u001a\u0010S\u001a\u00020\u00152\b\u0010Q\u001a\u0004\u0018\u00010\u00032\b\u0010R\u001a\u0004\u0018\u00010\u0003J\u001a\u0010V\u001a\u00020\u00152\b\u0010T\u001a\u0004\u0018\u00010\u00172\b\u0010U\u001a\u0004\u0018\u00010\u0017J \u0010Z\u001a\u0004\u0018\u00010\u00032\u0006\u0010W\u001a\u00020\u00032\u0006\u0010X\u001a\u00020\u00032\u0006\u0010Y\u001a\u00020\u0003J\u001a\u0010[\u001a\u00020\u00152\b\u0010T\u001a\u0004\u0018\u00010\u00032\b\u0010U\u001a\u0004\u0018\u00010\u0003J&\u0010]\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\\\u001a\u00020\u000eJ\u0014\u0010`\u001a\u00020_2\f\u0010^\u001a\b\u0012\u0004\u0012\u00020\u00030\bJ\u0016\u0010a\u001a\u00020_2\u000e\u0010^\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bJ\"\u0010c\u001a\u00020\u00152\b\u0010K\u001a\u0004\u0018\u00010\u00032\b\u0010L\u001a\u0004\u0018\u00010\u00032\u0006\u0010b\u001a\u00020\u000eJ\u001a\u0010d\u001a\u00020!2\b\u0010T\u001a\u0004\u0018\u00010\u00032\b\u0010U\u001a\u0004\u0018\u00010\u0003J\u001a\u0010e\u001a\u00020\u00152\b\u0010K\u001a\u0004\u0018\u00010\u00032\b\u0010L\u001a\u0004\u0018\u00010\u0003J\u001a\u0010f\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\bJ.\u0010i\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\b2\u000e\u0010g\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\b2\u000e\u0010h\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002J.\u0010k\u001a\u00020\u00062\u0006\u0010j\u001a\u00020\u00032\u000e\u0010g\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\u000e\u0010h\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002J\u001e\u0010n\u001a\u00020\u00062\u0006\u0010j\u001a\u00020\u00032\u000e\u0010m\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030lJ\u001a\u0010n\u001a\u00020\u00062\b\u0010j\u001a\u0004\u0018\u00010\u00032\b\u0010o\u001a\u0004\u0018\u00010\u0003J\u0016\u0010n\u001a\u00020\u00032\u000e\u0010m\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030lJ\u000e\u0010p\u001a\u00020!2\u0006\u0010<\u001a\u00020\u0003J\u000e\u0010q\u001a\u00020\u00062\u0006\u0010<\u001a\u00020\u0003J(\u0010u\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010)0\b2\b\u0010s\u001a\u0004\u0018\u00010r2\u000e\u0010t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010)0\bJ\"\u0010u\u001a\u0004\u0018\u00010)2\b\u0010s\u001a\u0004\u0018\u00010r2\u0006\u0010v\u001a\u00020!2\u0006\u0010w\u001a\u00020!J\u001a\u0010u\u001a\u00020\u00062\b\u0010s\u001a\u0004\u0018\u00010r2\b\u0010x\u001a\u0004\u0018\u00010)J\u000e\u0010y\u001a\u00020\u00032\u0006\u0010<\u001a\u00020\u0003J?\u0010}\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\b2\u000e\u0010z\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00022\u0016\u0010|\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00170{\"\u0004\u0018\u00010\u0017¢\u0006\u0004\b}\u0010~J \u0010\u007f\u001a\u0004\u0018\u00010\u00032\u0006\u0010<\u001a\u00020\u00032\u0006\u0010v\u001a\u00020!2\u0006\u0010w\u001a\u00020!J \u0010\u007f\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0005\u001a\u00020\u00172\u0006\u0010v\u001a\u00020\u000e2\u0006\u0010w\u001a\u00020\u000eJ\u0017\u0010\u0080\u0001\u001a\u00020\u00152\u0006\u0010<\u001a\u00020\u00032\u0006\u0010w\u001a\u00020!J\u0017\u0010\u0081\u0001\u001a\u00020\u00152\u0006\u0010<\u001a\u00020\u00032\u0006\u0010v\u001a\u00020!J=\u0010\u0088\u0001\u001a\u00020)2\u0007\u0010\u0082\u0001\u001a\u00020\u00032\u0007\u0010\u0083\u0001\u001a\u00020!2\u0007\u0010\u0084\u0001\u001a\u00020!2\u0007\u0010\u0085\u0001\u001a\u00020\u000e2\u0007\u0010\u0086\u0001\u001a\u00020\u000e2\u0007\u0010\u0087\u0001\u001a\u00020)R\u0017\u0010\u0089\u0001\u001a\u00020\u00188\u0006X\u0086T¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R\u0016\u0010\u008c\u0001\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0007\n\u0005\b0\u0010\u008b\u0001R\u0017\u0010\u008d\u0001\u001a\u00020\u000e8\u0006X\u0086T¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008e\u0001R\u001b\u0010\u0092\u0001\u001a\u00020\u00038\u0006¢\u0006\u000f\n\u0005\b1\u0010\u008f\u0001\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001¨\u0006\u0095\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/RectUtils;", "", "", "Landroid/graphics/RectF;", "list", "rect", "", C6997f.f39671c, "", "l", GoogleApiAvailabilityLight.f29016b, "m", C4921e.f26528e, "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "columnMap", "", "columnBoundingRectMap", "q", "p", "", "isDebug", "Landroid/graphics/Rect;", "", "toString", "source", "toRect", "toRectByCeil", "toRectByFloor", "toRectList", "toRectF", "parent", "", "childTop", "childHeight", "spacing", SyncConstant.SYNC_ACTION_REMOVE, "", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, UniversalShapeTypeConst.RECTANGLE, "Landroid/graphics/PointF;", "getBeginRightTop", "getBeginLeftTop", "getBeginLeftBottom", "getEndRightBottom", "getEndRightTop", "getEndLeftBottom", "a", "b", "getDistance", "isSameCenterWithinErrorRange", "errorRange", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "mergeAdjacentRectangles", "canMerge", "excluding", "cutRectByExcludingRegions", "square", "rectF", "dx", "dy", "translate", "sx", "sy", "relativelyRectF", "directionScale", "scale", "getDistanceXAfterScale", "getDistanceYAfterScale", "region", "normalize", "normalizedOf", "boundingRect", "o1", "o2", "intersect", "intersects", "isNullOrEmpty", "isNotBlank", gon.f71270W, "subset", Keywords.FUNC_CONTAINS_STRING, "rect1", "rect2", "hasEdgesOverlap", "compareParentRect", "compareRect", "parentRect", "computeRelativeRect", "isSameSize", "distanceThreshold", "mergeRectanglesByDistance", "inputRectList", "Lcom/onyx/android/sdk/base/data/RectSortResult;", "sortTBLR", "sortTBRL", SymmLQ.f108603e, "isDistanceInThreshold", "getDistanceByQuadrant", "isIntersect", "cleanEmptyRect", "rectList1", "rectList2", "loadEqualRectList", Constants.ELEMNAME_OUTPUT_STRING, "unionDiffRectList", "", "inputList", "union", "input", "getRectFSize", "roundRect", "Landroid/graphics/Matrix;", "matrix", "pointList", "mapPoints", "x", "y", "pointF", "roundExpandRectF", "rectList", "", "rects", "addNonEmptyRect", "(Ljava/util/List;[Landroid/graphics/Rect;)Ljava/util/List;", TypedValues.CycleType.S_WAVE_OFFSET, "inVerticalRect", "inHorizontalRect", "limitRect", "oldX", "oldY", "width", "height", "offsetXY", "limitOffsetInLimitRect", "TAG", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "debug", "DEFAULT_RECT_CENTER_DISTANCE_ERROR_RANGE", "I", "Landroid/graphics/RectF;", "getSMALLEST_RECT", "()Landroid/graphics/RectF;", "SMALLEST_RECT", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRectUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RectUtils.kt\ncom/onyx/android/sdk/base/utils/RectUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1084:1\n2661#2,7:1085\n1855#2,2:1096\n215#3,2:1092\n215#3,2:1094\n*S KotlinDebug\n*F\n+ 1 RectUtils.kt\ncom/onyx/android/sdk/base/utils/RectUtils\n*L\n492#1:1085,7\n942#1:1096,2\n659#1:1092,2\n676#1:1094,2\n*E\n"})
/* loaded from: classes7.dex */
public final class RectUtils {
    public static final int DEFAULT_RECT_CENTER_DISTANCE_ERROR_RANGE = 2;

    @NotNull
    public static final String TAG = "RectUtils";

    /* renamed from: a, reason: from kotlin metadata */
    public static final boolean debug = false;

    @NotNull
    public static final RectUtils INSTANCE = new RectUtils();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final RectF SMALLEST_RECT = new RectF(0.0f, 0.0f, 1.0E-6f, 1.0E-6f);

    /* renamed from: g */
    public static final int m32116g(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* renamed from: h */
    public static final int m32117h(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* renamed from: i */
    public static final int m32118i(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* renamed from: j */
    public static final int m32119j(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* renamed from: k */
    public static final int m32120k(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    @Nullable
    public final List<Rect> addNonEmptyRect(@NotNull List<Rect> rectList, @NotNull Rect... rects) {
        Intrinsics.checkNotNullParameter(rectList, "rectList");
        Intrinsics.checkNotNullParameter(rects, "rects");
        if (rects.length <= 0) {
            return rectList;
        }
        for (Rect rect : rects) {
            if (!isNullOrEmpty(rect)) {
                rectList.add(rect);
            }
        }
        return rectList;
    }

    @NotNull
    public final RectF boundingRect(@Nullable List<? extends RectF> list) {
        if (CollectionKt.isNullOrEmpty(list)) {
            return new RectF();
        }
        Iterator<T> it2 = list.iterator();
        if (!it2.hasNext()) {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        Object next = it2.next();
        while (it2.hasNext()) {
            RectF rectF = (RectF) it2.next();
            RectF rectF2 = new RectF((RectF) next);
            rectF2.union(rectF);
            next = rectF2;
        }
        return (RectF) next;
    }

    public final boolean canMerge(@Nullable RectF a, @Nullable RectF b) {
        Intrinsics.checkNotNull(a);
        float f = a.left;
        Intrinsics.checkNotNull(b);
        if (f <= b.right) {
            float f2 = b.left;
            if (f2 <= a.right && a.top <= b.bottom && b.top <= a.bottom && ((Float.compare(a.left, f2) == 0 && Float.compare(a.right, b.right) == 0) || (Float.compare(a.top, b.top) == 0 && Float.compare(a.bottom, b.bottom) == 0))) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final List<RectF> cleanEmptyRect(@NotNull List<? extends RectF> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        ArrayList arrayList = new ArrayList();
        for (RectF rectF : list) {
            if (!rectF.isEmpty()) {
                arrayList.add(rectF);
            }
        }
        return arrayList;
    }

    @Nullable
    public final RectF computeRelativeRect(@NotNull RectF compareParentRect, @NotNull RectF compareRect, @NotNull RectF parentRect) {
        Intrinsics.checkNotNullParameter(compareParentRect, "compareParentRect");
        Intrinsics.checkNotNullParameter(compareRect, "compareRect");
        Intrinsics.checkNotNullParameter(parentRect, "parentRect");
        float width = (parentRect.width() * compareRect.left) / compareParentRect.width();
        float height = (parentRect.height() * compareRect.top) / compareParentRect.height();
        return new RectF(width, height, ((parentRect.width() * compareRect.width()) / compareParentRect.width()) + width, ((parentRect.height() * compareRect.height()) / compareParentRect.height()) + height);
    }

    public final boolean contains(@Nullable Rect container, @Nullable Rect subset) {
        return container != null && subset != null && container.left <= subset.left && container.top <= subset.top && container.right >= subset.right && container.bottom >= subset.bottom;
    }

    @NotNull
    public final List<RectF> cutRectByExcludingRegions(@NotNull RectF source, @Nullable List<? extends RectF> excluding) {
        RectF rectF;
        boolean z;
        Intrinsics.checkNotNullParameter(source, "source");
        ArrayList arrayList = new ArrayList();
        if (excluding == null || excluding.isEmpty()) {
            arrayList.add(normalizedOf(source));
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<? extends RectF> it2 = excluding.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            RectF next = it2.next();
            if (next != null) {
                if (!(next.left == next.right)) {
                    if (!(next.top == next.bottom)) {
                        arrayList2.add(normalizedOf(next));
                    }
                }
            }
        }
        if (arrayList2.size() <= 0) {
            arrayList.add(normalizedOf(source));
            return arrayList;
        }
        final RectUtils$cutRectByExcludingRegions$1 rectUtils$cutRectByExcludingRegions$1 = new Function2<RectF, RectF, Integer>() { // from class: com.onyx.android.sdk.base.utils.RectUtils$cutRectByExcludingRegions$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(RectF rectF2, RectF rectF3) {
                return Integer.valueOf(Float.compare(rectF2.left, rectF3.left));
            }
        };
        CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList2, new Comparator() { // from class: com.sunia.HTREnginev2.mhl
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m32116g;
                m32116g = RectUtils.m32116g(Function2.this, obj, obj2);
                return m32116g;
            }
        });
        RectF rectF2 = new RectF(source);
        do {
            RectF rectF3 = (RectF) arrayList2.get(0);
            RectF rectF4 = new RectF((RectF) arrayList2.get(0));
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                rectF4.union((RectF) it3.next());
            }
            if (rectF4.left > rectF2.left) {
                arrayList.add(new RectF(rectF2.left, rectF2.top, rectF4.left, rectF2.bottom));
            }
            if (rectF4.right < rectF2.right) {
                arrayList.add(new RectF(rectF4.right, rectF2.top, rectF2.right, rectF2.bottom));
            }
            if (rectF4.top > rectF2.top) {
                arrayList.add(new RectF(rectF4.left, rectF2.top, rectF4.right, rectF4.top));
            }
            if (rectF4.bottom < rectF2.bottom) {
                arrayList.add(new RectF(rectF4.left, rectF4.bottom, rectF4.right, rectF2.bottom));
            }
            ArrayList<RectF> arrayList3 = new ArrayList();
            Iterator it4 = arrayList2.iterator();
            while (true) {
                if (!it4.hasNext()) {
                    rectF = null;
                    break;
                }
                rectF = (RectF) it4.next();
                if (!(rectF.left == rectF3.left)) {
                    break;
                }
                arrayList3.add(rectF);
            }
            if (arrayList3.isEmpty()) {
                break;
            }
            final RectUtils$cutRectByExcludingRegions$2 rectUtils$cutRectByExcludingRegions$2 = new Function2<RectF, RectF, Integer>() { // from class: com.onyx.android.sdk.base.utils.RectUtils$cutRectByExcludingRegions$2
                @Override // kotlin.jvm.functions.Function2
                @NotNull
                public final Integer invoke(RectF rectF5, RectF rectF6) {
                    return Integer.valueOf(Float.compare(rectF5.right, rectF6.right));
                }
            };
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList3, new Comparator() { // from class: com.sunia.HTREnginev2.nhl
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m32117h;
                    m32117h = RectUtils.m32117h(Function2.this, obj, obj2);
                    return m32117h;
                }
            });
            float f = ((RectF) arrayList3.get(0)).right;
            if (rectF != null) {
                f = Math.min(f, rectF.left);
            }
            ArrayList<RectF> arrayList4 = new ArrayList(arrayList3);
            final RectUtils$cutRectByExcludingRegions$3 rectUtils$cutRectByExcludingRegions$3 = new Function2<RectF, RectF, Integer>() { // from class: com.onyx.android.sdk.base.utils.RectUtils$cutRectByExcludingRegions$3
                @Override // kotlin.jvm.functions.Function2
                @NotNull
                public final Integer invoke(RectF rectF5, RectF rectF6) {
                    return Integer.valueOf(Float.compare(rectF5.top, rectF6.top));
                }
            };
            CollectionsKt___CollectionsKt.sortedWith(arrayList4, new Comparator() { // from class: com.sunia.HTREnginev2.ohl
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m32118i;
                    m32118i = RectUtils.m32118i(Function2.this, obj, obj2);
                    return m32118i;
                }
            });
            ArrayList arrayList5 = new ArrayList();
            for (RectF rectF5 : arrayList4) {
                if (arrayList5.isEmpty()) {
                    arrayList5.add(new Pair(new AtomicReference(Float.valueOf(rectF5.top)), new AtomicReference(Float.valueOf(rectF5.bottom))));
                } else {
                    Iterator it5 = arrayList5.iterator();
                    while (true) {
                        if (!it5.hasNext()) {
                            z = false;
                            break;
                        }
                        Pair pair = (Pair) it5.next();
                        float f2 = rectF5.bottom;
                        Object obj = ((AtomicReference) pair.first).get();
                        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
                        if (f2 >= ((Number) obj).floatValue()) {
                            float f3 = rectF5.top;
                            Object obj2 = ((AtomicReference) pair.second).get();
                            Intrinsics.checkNotNullExpressionValue(obj2, "get(...)");
                            if (f3 <= ((Number) obj2).floatValue()) {
                                float f4 = rectF5.top;
                                Object obj3 = ((AtomicReference) pair.first).get();
                                Intrinsics.checkNotNullExpressionValue(obj3, "get(...)");
                                if (f4 < ((Number) obj3).floatValue()) {
                                    ((AtomicReference) pair.first).set(Float.valueOf(rectF5.top));
                                }
                                float f5 = rectF5.bottom;
                                Object obj4 = ((AtomicReference) pair.second).get();
                                Intrinsics.checkNotNullExpressionValue(obj4, "get(...)");
                                if (f5 > ((Number) obj4).floatValue()) {
                                    ((AtomicReference) pair.second).set(Float.valueOf(rectF5.bottom));
                                }
                                z = true;
                            }
                        }
                    }
                    if (!z) {
                        arrayList5.add(new Pair(new AtomicReference(Float.valueOf(rectF5.top)), new AtomicReference(Float.valueOf(rectF5.bottom))));
                    }
                }
            }
            final RectUtils$cutRectByExcludingRegions$4 rectUtils$cutRectByExcludingRegions$4 = new Function2<Pair<AtomicReference<Float>, AtomicReference<Float>>, Pair<AtomicReference<Float>, AtomicReference<Float>>, Integer>() { // from class: com.onyx.android.sdk.base.utils.RectUtils$cutRectByExcludingRegions$4
                @Override // kotlin.jvm.functions.Function2
                @NotNull
                public final Integer invoke(Pair<AtomicReference<Float>, AtomicReference<Float>> pair2, Pair<AtomicReference<Float>, AtomicReference<Float>> pair3) {
                    float floatValue = ((Number) ((AtomicReference) pair2.first).get()).floatValue();
                    Object obj5 = ((AtomicReference) pair3.first).get();
                    Intrinsics.checkNotNullExpressionValue(obj5, "get(...)");
                    return Integer.valueOf(Float.compare(floatValue, ((Number) obj5).floatValue()));
                }
            };
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList5, new Comparator() { // from class: com.sunia.HTREnginev2.phl
                @Override // java.util.Comparator
                public final int compare(Object obj5, Object obj6) {
                    int m32119j;
                    m32119j = RectUtils.m32119j(Function2.this, obj5, obj6);
                    return m32119j;
                }
            });
            Object obj5 = arrayList5.get(0);
            Intrinsics.checkNotNullExpressionValue(obj5, "get(...)");
            Pair pair2 = (Pair) obj5;
            Object obj6 = ((AtomicReference) pair2.first).get();
            Intrinsics.checkNotNullExpressionValue(obj6, "get(...)");
            if (((Number) obj6).floatValue() > rectF4.top) {
                float f6 = rectF4.left;
                float f7 = rectF4.top;
                Object obj7 = ((AtomicReference) pair2.first).get();
                Intrinsics.checkNotNullExpressionValue(obj7, "get(...)");
                arrayList.add(new RectF(f6, f7, f, ((Number) obj7).floatValue()));
            }
            int size = arrayList5.size();
            for (int i = 1; i < size; i++) {
                Object obj8 = arrayList5.get(i - 1);
                Intrinsics.checkNotNullExpressionValue(obj8, "get(...)");
                Pair pair3 = (Pair) obj8;
                Object obj9 = arrayList5.get(i);
                Intrinsics.checkNotNullExpressionValue(obj9, "get(...)");
                Pair pair4 = (Pair) obj9;
                Object obj10 = ((AtomicReference) pair4.first).get();
                Intrinsics.checkNotNullExpressionValue(obj10, "get(...)");
                float floatValue = ((Number) obj10).floatValue();
                Object obj11 = ((AtomicReference) pair3.second).get();
                Intrinsics.checkNotNullExpressionValue(obj11, "get(...)");
                if (floatValue > ((Number) obj11).floatValue()) {
                    float f8 = rectF4.left;
                    Object obj12 = ((AtomicReference) pair3.second).get();
                    Intrinsics.checkNotNullExpressionValue(obj12, "get(...)");
                    float floatValue2 = ((Number) obj12).floatValue();
                    Object obj13 = ((AtomicReference) pair4.first).get();
                    Intrinsics.checkNotNullExpressionValue(obj13, "get(...)");
                    arrayList.add(new RectF(f8, floatValue2, f, ((Number) obj13).floatValue()));
                }
            }
            final RectUtils$cutRectByExcludingRegions$5 rectUtils$cutRectByExcludingRegions$5 = new Function2<Pair<AtomicReference<Float>, AtomicReference<Float>>, Pair<AtomicReference<Float>, AtomicReference<Float>>, Integer>() { // from class: com.onyx.android.sdk.base.utils.RectUtils$cutRectByExcludingRegions$5
                @Override // kotlin.jvm.functions.Function2
                @NotNull
                public final Integer invoke(Pair<AtomicReference<Float>, AtomicReference<Float>> pair5, Pair<AtomicReference<Float>, AtomicReference<Float>> pair6) {
                    float floatValue3 = ((Number) ((AtomicReference) pair5.second).get()).floatValue();
                    Object obj14 = ((AtomicReference) pair6.second).get();
                    Intrinsics.checkNotNullExpressionValue(obj14, "get(...)");
                    return Integer.valueOf(Float.compare(floatValue3, ((Number) obj14).floatValue()));
                }
            };
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList5, new Comparator() { // from class: com.sunia.HTREnginev2.qhl
                @Override // java.util.Comparator
                public final int compare(Object obj14, Object obj15) {
                    int m32120k;
                    m32120k = RectUtils.m32120k(Function2.this, obj14, obj15);
                    return m32120k;
                }
            });
            Object obj14 = arrayList5.get(arrayList5.size() - 1);
            Intrinsics.checkNotNullExpressionValue(obj14, "get(...)");
            Pair pair5 = (Pair) obj14;
            Object obj15 = ((AtomicReference) pair5.second).get();
            Intrinsics.checkNotNullExpressionValue(obj15, "get(...)");
            if (((Number) obj15).floatValue() < rectF4.bottom) {
                float f9 = rectF4.left;
                Object obj16 = ((AtomicReference) pair5.second).get();
                Intrinsics.checkNotNullExpressionValue(obj16, "get(...)");
                arrayList.add(new RectF(f9, ((Number) obj16).floatValue(), f, rectF4.bottom));
            }
            ArrayList arrayList6 = new ArrayList();
            for (RectF rectF6 : arrayList3) {
                if (Float.compare(rectF6.right, f) <= 0) {
                    arrayList6.add(rectF6);
                } else {
                    rectF6.left = f;
                }
            }
            Iterator it6 = arrayList6.iterator();
            while (it6.hasNext()) {
                arrayList2.remove((RectF) it6.next());
            }
            rectF2 = new RectF(rectF4);
            rectF2.left = f;
        } while (arrayList2.size() > 0);
        return arrayList;
    }

    public final void directionScale(@Nullable RectF rectF, float sx, float sy, @NotNull RectF relativelyRectF) {
        Intrinsics.checkNotNullParameter(relativelyRectF, "relativelyRectF");
        if (rectF == null) {
            return;
        }
        float distanceXAfterScale = getDistanceXAfterScale(relativelyRectF, sx);
        float distanceYAfterScale = getDistanceYAfterScale(relativelyRectF, sy);
        scale(rectF, Math.abs(sx), Math.abs(sx));
        translate(rectF, -distanceXAfterScale, -distanceYAfterScale);
    }

    /* renamed from: f */
    public final void m32121f(List<RectF> list, RectF rect) {
        boolean z;
        Intrinsics.checkNotNull(list);
        Iterator<RectF> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            RectF next = it2.next();
            if (next.left == rect.left) {
                if (next.top == rect.top) {
                    if (next.right == rect.right) {
                        if (next.bottom == rect.bottom) {
                            z = true;
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
        if (z) {
            return;
        }
        list.add(rect);
    }

    @Nullable
    public final PointF getBeginLeftBottom(@NotNull List<? extends RectF> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        RectF rectF = list.get(0);
        return new PointF(rectF.left, rectF.bottom);
    }

    @Nullable
    public final PointF getBeginLeftTop(@NotNull List<? extends RectF> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        RectF rectF = list.get(0);
        return new PointF(rectF.left, rectF.top);
    }

    @Nullable
    public final PointF getBeginRightTop(@NotNull List<? extends RectF> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        RectF rectF = list.get(0);
        return new PointF(rectF.right, rectF.top);
    }

    public final float getDistance(@Nullable RectF a, @Nullable RectF b) {
        Intrinsics.checkNotNull(a);
        float centerX = a.centerX();
        Intrinsics.checkNotNull(b);
        float centerX2 = centerX - b.centerX();
        float centerY = a.centerY() - b.centerY();
        return (float) Math.sqrt((centerX2 * centerX2) + (centerY * centerY));
    }

    public final float getDistanceByQuadrant(@Nullable RectF rect1, @Nullable RectF rect2) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        if (isIntersect(rect1, rect2)) {
            return 0.0f;
        }
        Intrinsics.checkNotNull(rect1);
        float f6 = rect1.bottom;
        Intrinsics.checkNotNull(rect2);
        float f7 = rect2.bottom;
        if (f6 < f7) {
            f = rect1.left;
            if (f > rect2.left) {
                f5 = rect2.right;
                f4 = rect2.top;
                f3 = rect1.bottom;
                if (f3 > f4) {
                    return f - f5;
                }
                if (f < f5) {
                    return f4 - f3;
                }
            } else {
                f2 = rect2.right;
                f3 = rect1.top;
                if (f3 > f7) {
                    return f2 - f;
                }
                if (f > f2) {
                    return f7 - f3;
                }
                f5 = f2;
                f4 = f7;
            }
        } else {
            f = rect1.left;
            float f8 = rect2.left;
            if (f < f8) {
                f = rect1.right;
                f3 = rect1.top;
                if (f3 < f7) {
                    return f8 - f;
                }
                if (f > f8) {
                    return f3 - f7;
                }
                f4 = f7;
                f5 = f8;
            } else {
                f2 = rect2.right;
                f3 = rect1.top;
                if (f3 < f7) {
                    return f - f2;
                }
                if (f < f2) {
                    return f3 - f7;
                }
                f5 = f2;
                f4 = f7;
            }
        }
        float f9 = f - f5;
        float f10 = f3 - f4;
        return (float) Math.sqrt((f9 * f9) + (f10 * f10));
    }

    public final float getDistanceXAfterScale(@NotNull RectF rectF, float sx) {
        float abs;
        float f;
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        if (sx > 0.0f) {
            abs = rectF.left * Math.abs(sx);
            f = rectF.left;
        } else {
            abs = rectF.right * Math.abs(sx);
            f = rectF.right;
        }
        return abs - f;
    }

    public final float getDistanceYAfterScale(@NotNull RectF rectF, float sy) {
        float abs;
        float f;
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        if (sy > 0.0f) {
            abs = rectF.top * Math.abs(sy);
            f = rectF.top;
        } else {
            abs = rectF.bottom * Math.abs(sy);
            f = rectF.bottom;
        }
        return abs - f;
    }

    @Nullable
    public final PointF getEndLeftBottom(@NotNull List<? extends RectF> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        RectF rectF = list.get(list.size() - 1);
        return new PointF(rectF.left, rectF.bottom);
    }

    @Nullable
    public final PointF getEndRightBottom(@NotNull List<? extends RectF> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        RectF rectF = list.get(list.size() - 1);
        return new PointF(rectF.right, rectF.bottom);
    }

    @Nullable
    public final PointF getEndRightTop(@NotNull List<? extends RectF> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        RectF rectF = list.get(list.size() - 1);
        return new PointF(rectF.right, rectF.top);
    }

    public final float getRectFSize(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        return rectF.width() * rectF.height();
    }

    @NotNull
    public final RectF getSMALLEST_RECT() {
        return SMALLEST_RECT;
    }

    public final boolean hasEdgesOverlap(@Nullable Rect rect1, @Nullable Rect rect2) {
        if (rect1 == null || rect2 == null) {
            return false;
        }
        return rect1.left == rect2.left || rect1.top == rect2.top || rect1.right == rect2.right || rect1.bottom == rect2.bottom;
    }

    public final boolean inHorizontalRect(@NotNull RectF rectF, float x) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        return x > rectF.left && x < rectF.right;
    }

    public final boolean inVerticalRect(@NotNull RectF rectF, float y) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        return y > rectF.top && y < rectF.bottom;
    }

    public final boolean intersect(@Nullable RectF o1, @Nullable RectF o2) {
        if (o1 == null || o2 == null) {
            return false;
        }
        return o1.intersect(o2);
    }

    public final boolean intersects(@Nullable RectF o1, @Nullable RectF o2) {
        if (o1 == null || o2 == null) {
            return false;
        }
        return RectF.intersects(o1, o2);
    }

    public final boolean isDebug() {
        return false;
    }

    public final boolean isDistanceInThreshold(@Nullable RectF o1, @Nullable RectF o2, int threshold) {
        float distanceByQuadrant = getDistanceByQuadrant(o1, o2);
        if (distanceByQuadrant < 0.0f) {
            Debug.INSTANCE.m32047e(TAG, "getDistanceByQuadrant = " + distanceByQuadrant + ", o1 = " + o1 + ", o2 = " + o2, new Object[0]);
        }
        return distanceByQuadrant <= ((float) threshold);
    }

    public final boolean isIntersect(@Nullable RectF o1, @Nullable RectF o2) {
        Intrinsics.checkNotNull(o1);
        float f = o1.left;
        Intrinsics.checkNotNull(o2);
        return f < o2.right && o2.left < o1.right && o1.top < o2.bottom && o2.top < o1.bottom;
    }

    public final boolean isNotBlank(@Nullable RectF rect) {
        return !isNullOrEmpty(rect);
    }

    public final boolean isNullOrEmpty(@Nullable Rect rect) {
        if (rect != null) {
            return rect.isEmpty();
        }
        return true;
    }

    public final boolean isSameCenterWithinErrorRange(@Nullable Rect a, @Nullable Rect b) {
        return isSameCenterWithinErrorRange(a, b, 2);
    }

    public final boolean isSameSize(@Nullable RectF rect1, @Nullable RectF rect2) {
        if (rect1 == null || rect2 == null) {
            return false;
        }
        if (rect1.width() == rect2.width()) {
            return (rect2.height() > rect2.height() ? 1 : (rect2.height() == rect2.height() ? 0 : -1)) == 0;
        }
        return false;
    }

    /* renamed from: l */
    public final void m32122l(List<? extends RectF> list) {
        Collections.sort(list, new Comparator<RectF>() { // from class: com.onyx.android.sdk.base.utils.RectUtils$sort$1
            @Override // java.util.Comparator
            public int compare(@NotNull RectF o1, @NotNull RectF o2) {
                Intrinsics.checkNotNullParameter(o1, "o1");
                Intrinsics.checkNotNullParameter(o2, "o2");
                float f = o1.left;
                float f2 = o2.left;
                if (f - f2 > 0.0f) {
                    return 1;
                }
                if (f - f2 < 0.0f) {
                    return -1;
                }
                float f3 = o1.top;
                float f4 = o2.top;
                if (f3 - f4 > 0.0f) {
                    return 1;
                }
                if (f3 - f4 < 0.0f) {
                    return -1;
                }
                float f5 = o1.right;
                float f6 = o2.right;
                if (f5 - f6 > 0.0f) {
                    return 1;
                }
                if (f5 - f6 < 0.0f) {
                    return -1;
                }
                float f7 = o1.bottom;
                float f8 = o2.bottom;
                if (f7 - f8 > 0.0f) {
                    return 1;
                }
                return f7 - f8 < 0.0f ? -1 : 0;
            }
        });
    }

    @NotNull
    public final PointF limitOffsetInLimitRect(@NotNull RectF limitRect, float oldX, float oldY, int width, int height, @NotNull PointF offsetXY) {
        Intrinsics.checkNotNullParameter(limitRect, "limitRect");
        Intrinsics.checkNotNullParameter(offsetXY, "offsetXY");
        float f = offsetXY.x;
        float f2 = offsetXY.y;
        int i = (int) (oldX + f);
        int i2 = (int) (oldY + f2);
        float f3 = i;
        float f4 = i2;
        float f5 = i + width;
        float f6 = i2 + height;
        if (limitRect.contains(f3, f4, f5, f6)) {
            return offsetXY;
        }
        float f7 = limitRect.left;
        if (f7 >= f3 && f < 0.0f) {
            if (f7 < oldX) {
                offsetXY.x = (int) (f7 - oldX);
            } else {
                offsetXY.x = 0.0f;
            }
        }
        float f8 = limitRect.right;
        if (f8 <= f5 && f > 0.0f) {
            if (f8 > oldX + width) {
                offsetXY.x = (int) ((f8 - oldX) - r7);
            } else {
                offsetXY.x = 0.0f;
            }
        }
        float f9 = limitRect.top;
        if (f9 >= f4 && f2 < 0.0f) {
            if (f9 < oldY) {
                offsetXY.y = (int) (f9 - oldY);
            } else {
                offsetXY.y = 0.0f;
            }
        }
        float f10 = limitRect.bottom;
        if (f10 <= f6 && f2 > 0.0f) {
            if (f10 > oldY + height) {
                offsetXY.y = (int) ((f10 - oldY) - r8);
            } else {
                offsetXY.y = 0.0f;
            }
        }
        return offsetXY;
    }

    @NotNull
    public final List<RectF> loadEqualRectList(@NotNull List<? extends RectF> rectList1, @NotNull List<RectF> rectList2) {
        RectF rectF;
        Intrinsics.checkNotNullParameter(rectList1, "rectList1");
        Intrinsics.checkNotNullParameter(rectList2, "rectList2");
        ArrayList arrayList = new ArrayList();
        for (RectF rectF2 : rectList1) {
            Iterator<RectF> it2 = rectList2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    rectF = null;
                    break;
                }
                rectF = it2.next();
                if (Intrinsics.areEqual(rectF2, rectF)) {
                    arrayList.add(rectF);
                    break;
                }
            }
            if (rectF != null) {
                rectList2.remove(rectF);
            }
        }
        return arrayList;
    }

    /* renamed from: m */
    public final void m32123m(List<? extends RectF> list) {
        Collections.sort(list, new Comparator<RectF>() { // from class: com.onyx.android.sdk.base.utils.RectUtils$sortLR$1
            @Override // java.util.Comparator
            public int compare(@NotNull RectF o1, @NotNull RectF o2) {
                Intrinsics.checkNotNullParameter(o1, "o1");
                Intrinsics.checkNotNullParameter(o2, "o2");
                float f = o1.left;
                float f2 = o2.left;
                if (f - f2 < 0.0f) {
                    return -1;
                }
                if (f - f2 > 0.0f) {
                    return 1;
                }
                float f3 = o1.right;
                float f4 = o2.right;
                if (f3 - f4 < 0.0f) {
                    return -1;
                }
                if (f3 - f4 > 0.0f) {
                    return 1;
                }
                float f5 = o1.top;
                float f6 = o2.top;
                if (f5 - f6 > 0.0f) {
                    return 1;
                }
                if (f5 - f6 < 0.0f) {
                    return -1;
                }
                float f7 = o1.bottom;
                float f8 = o2.bottom;
                if (f7 - f8 > 0.0f) {
                    return 1;
                }
                return f7 - f8 < 0.0f ? -1 : 0;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final List<PointF> mapPoints(@Nullable Matrix matrix, @NotNull List<? extends PointF> pointList) {
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        if (matrix == null || pointList.isEmpty()) {
            return pointList;
        }
        ArrayList arrayList = new ArrayList();
        for (PointF pointF : pointList) {
            Intrinsics.checkNotNull(pointF);
            arrayList.add(mapPoints(matrix, pointF.x, pointF.y));
        }
        return arrayList;
    }

    @NotNull
    public final ArrayList<RectF> mergeAdjacentRectangles(@NotNull List<? extends RectF> list) {
        boolean z;
        Intrinsics.checkNotNullParameter(list, "list");
        ArrayList<RectF> arrayList = new ArrayList<>();
        if (list.isEmpty()) {
            return arrayList;
        }
        for (RectF rectF : list) {
            Iterator<RectF> it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = false;
                    break;
                }
                RectF next = it2.next();
                if (canMerge(rectF, next)) {
                    Intrinsics.checkNotNull(next);
                    Intrinsics.checkNotNull(rectF);
                    next.union(rectF);
                    z = true;
                    break;
                }
            }
            if (z) {
                arrayList = mergeAdjacentRectangles(arrayList);
            } else {
                arrayList.add(new RectF(rectF));
            }
        }
        return arrayList;
    }

    @Nullable
    public final List<RectF> mergeRectanglesByDistance(@NotNull List<RectF> list, int distanceThreshold) {
        int i;
        Intrinsics.checkNotNullParameter(list, "list");
        if (list.isEmpty()) {
            return list;
        }
        int size = list.size();
        Benchmark benchmark = new Benchmark();
        m32122l(list);
        long duration = benchmark.duration();
        benchmark.restart();
        int i2 = 0;
        do {
            int size2 = list.size();
            i = -1;
            for (int i3 = 0; i3 < size2; i3++) {
                RectF rectF = list.get(i3);
                int i4 = 0;
                while (true) {
                    if (i4 >= size2) {
                        break;
                    }
                    i2++;
                    if (i3 != i4) {
                        RectF rectF2 = list.get(i4);
                        if (!Intrinsics.areEqual(rectF, rectF2) && isDistanceInThreshold(rectF, rectF2, distanceThreshold)) {
                            rectF.union(rectF2);
                            i = i4;
                            break;
                        }
                    }
                    i4++;
                }
                if (i >= 0) {
                    break;
                }
            }
            if (i >= 0) {
                list.remove(i);
            }
        } while (i >= 0);
        Debug debug2 = Debug.INSTANCE;
        if (debug2.getDebug()) {
            debug2.m32038d(TAG, "mergeRectanglesByDistance compare count = " + i2 + ", raw input size = " + size + ", output size = " + list.size() + ", sort time = " + duration + " ms, merge time = " + benchmark.duration() + " ms", new Object[0]);
            for (RectF rectF3 : list) {
                Debug debug3 = Debug.INSTANCE;
                StringBuilder sb = new StringBuilder();
                sb.append("output rect = ");
                Intrinsics.checkNotNull(rectF3);
                sb.append(rectF3.toShortString());
                sb.append(", width = ");
                sb.append(rectF3.width());
                sb.append(", height = ");
                sb.append(rectF3.height());
                debug3.m32057v(TAG, sb.toString(), new Object[0]);
            }
        }
        return list;
    }

    /* renamed from: n */
    public final void m32124n(List<? extends RectF> list) {
        Collections.sort(list, new Comparator<RectF>() { // from class: com.onyx.android.sdk.base.utils.RectUtils$sortRL$1
            @Override // java.util.Comparator
            public int compare(@NotNull RectF o1, @NotNull RectF o2) {
                Intrinsics.checkNotNullParameter(o1, "o1");
                Intrinsics.checkNotNullParameter(o2, "o2");
                float f = o1.right;
                float f2 = o2.right;
                if (f - f2 > 0.0f) {
                    return -1;
                }
                if (f - f2 < 0.0f) {
                    return 1;
                }
                float f3 = o1.left;
                float f4 = o2.left;
                if (f3 - f4 > 0.0f) {
                    return -1;
                }
                if (f3 - f4 < 0.0f) {
                    return 1;
                }
                float f5 = o1.top;
                float f6 = o2.top;
                if (f5 - f6 > 0.0f) {
                    return 1;
                }
                if (f5 - f6 < 0.0f) {
                    return -1;
                }
                float f7 = o1.bottom;
                float f8 = o2.bottom;
                if (f7 - f8 > 0.0f) {
                    return 1;
                }
                return f7 - f8 < 0.0f ? -1 : 0;
            }
        });
    }

    public final void normalize(@NotNull RectF region) {
        float coerceAtMost;
        float coerceAtLeast;
        float coerceAtMost2;
        float coerceAtLeast2;
        Intrinsics.checkNotNullParameter(region, "region");
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(region.left, region.right);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(region.left, region.right);
        coerceAtMost2 = RangesKt___RangesKt.coerceAtMost(region.top, region.bottom);
        coerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast(region.top, region.bottom);
        region.set(coerceAtMost, coerceAtMost2, coerceAtLeast, coerceAtLeast2);
    }

    @NotNull
    public final RectF normalizedOf(@NotNull RectF region) {
        Intrinsics.checkNotNullParameter(region, "region");
        return new RectF(Math.min(region.left, region.right), Math.min(region.top, region.bottom), Math.max(region.left, region.right), Math.max(region.top, region.bottom));
    }

    /* renamed from: o */
    public final void m32125o(List<? extends RectF> list) {
        Collections.sort(list, new Comparator<RectF>() { // from class: com.onyx.android.sdk.base.utils.RectUtils$sortTB$1
            @Override // java.util.Comparator
            public int compare(@NotNull RectF o1, @NotNull RectF o2) {
                Intrinsics.checkNotNullParameter(o1, "o1");
                Intrinsics.checkNotNullParameter(o2, "o2");
                float f = o1.top;
                float f2 = o2.top;
                if (f - f2 > 0.0f) {
                    return 1;
                }
                if (f - f2 < 0.0f) {
                    return -1;
                }
                float f3 = o1.bottom;
                float f4 = o2.bottom;
                if (f3 - f4 > 0.0f) {
                    return 1;
                }
                if (f3 - f4 < 0.0f) {
                    return -1;
                }
                float f5 = o1.right;
                float f6 = o2.right;
                if (f5 - f6 > 0.0f) {
                    return -1;
                }
                if (f5 - f6 < 0.0f) {
                    return 1;
                }
                float f7 = o1.left;
                float f8 = o2.left;
                if (f7 - f8 > 0.0f) {
                    return -1;
                }
                return f7 - f8 < 0.0f ? 1 : 0;
            }
        });
    }

    @Nullable
    public final RectF offset(@NotNull RectF rectF, float x, float y) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        rectF.offset(x, y);
        return rectF;
    }

    /* renamed from: p */
    public final void m32126p(List<? extends RectF> list, HashMap<Integer, List<RectF>> columnMap, Map<Integer, RectF> columnBoundingRectMap) {
        int i = -1;
        RectF rectF = null;
        for (RectF rectF2 : list) {
            if (rectF == null || rectF.right < rectF2.left) {
                i++;
                rectF = new RectF(rectF2);
                columnBoundingRectMap.put(Integer.valueOf(i), rectF);
            } else {
                rectF = columnBoundingRectMap.get(Integer.valueOf(i));
                Intrinsics.checkNotNull(rectF);
                rectF.union(rectF2);
            }
            CollectionKt.ensureList((HashMap<Integer, List<V>>) columnMap, Integer.valueOf(i)).add(rectF2);
        }
    }

    /* renamed from: q */
    public final void m32127q(List<? extends RectF> list, HashMap<Integer, List<RectF>> columnMap, Map<Integer, RectF> columnBoundingRectMap) {
        int i = -1;
        RectF rectF = null;
        for (RectF rectF2 : list) {
            if (rectF == null || rectF.left > rectF2.right) {
                i++;
                rectF = new RectF(rectF2);
                columnBoundingRectMap.put(Integer.valueOf(i), rectF);
            } else {
                rectF = columnBoundingRectMap.get(Integer.valueOf(i));
                Intrinsics.checkNotNull(rectF);
                rectF.union(rectF2);
            }
            CollectionKt.ensureList((HashMap<Integer, List<V>>) columnMap, Integer.valueOf(i)).add(rectF2);
        }
    }

    @Nullable
    public final RectF rectangle(@NotNull double[] result) {
        Intrinsics.checkNotNullParameter(result, "result");
        return new RectF((float) result[0], (float) result[1], (float) result[2], (float) result[3]);
    }

    @Nullable
    public final RectF remove(@NotNull RectF parent, float childTop, float childHeight, float spacing) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        float f = childTop + childHeight + spacing;
        if (f >= parent.bottom) {
            return null;
        }
        return new RectF(parent.left, f, parent.right, parent.bottom);
    }

    @NotNull
    public final RectF roundExpandRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        return new RectF((float) Math.floor(rectF.left), (float) Math.floor(rectF.top), (float) Math.ceil(rectF.right), (float) Math.ceil(rectF.bottom));
    }

    public final void roundRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        rectF.left = Math.round(rectF.left);
        rectF.top = Math.round(rectF.top);
        rectF.right = Math.round(rectF.right);
        rectF.bottom = Math.round(rectF.bottom);
    }

    public final void scale(@Nullable RectF rectF, float sx, float sy) {
        if (rectF == null) {
            return;
        }
        rectF.set(rectF.left * sx, rectF.top * sy, rectF.right * sx, rectF.bottom * sy);
    }

    @NotNull
    public final RectSortResult sortTBLR(@NotNull List<? extends RectF> inputRectList) {
        Intrinsics.checkNotNullParameter(inputRectList, "inputRectList");
        ArrayList arrayList = new ArrayList(inputRectList);
        m32123m(arrayList);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        m32126p(arrayList, linkedHashMap, linkedHashMap2);
        ArrayList arrayList2 = new ArrayList();
        arrayList.clear();
        for (Map.Entry<Integer, List<RectF>> entry : linkedHashMap.entrySet()) {
            INSTANCE.m32125o(entry.getValue());
            CollectionKt.safeAdd(arrayList2, linkedHashMap2.get(entry.getKey()));
            arrayList.addAll(entry.getValue());
        }
        return new RectSortResult(arrayList2, arrayList);
    }

    @NotNull
    public final RectSortResult sortTBRL(@Nullable List<? extends RectF> inputRectList) {
        ArrayList arrayList = new ArrayList(inputRectList);
        ArrayList arrayList2 = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        m32124n(arrayList);
        m32127q(arrayList, linkedHashMap, linkedHashMap2);
        arrayList.clear();
        for (Map.Entry<Integer, List<RectF>> entry : linkedHashMap.entrySet()) {
            INSTANCE.m32125o(entry.getValue());
            CollectionKt.safeAdd(arrayList2, linkedHashMap2.get(entry.getKey()));
            arrayList.addAll(entry.getValue());
        }
        return new RectSortResult(arrayList2, arrayList);
    }

    public final float square(@Nullable List<? extends RectF> list) {
        float f = 0.0f;
        if (list == null || list.size() <= 0) {
            return 0.0f;
        }
        for (RectF rectF : list) {
            Debug.INSTANCE.m32044e(RectUtils.class, "square rect -> " + rectF, new Object[0]);
        }
        if (list.size() == 1) {
            float width = list.get(0).width() * list.get(0).height();
            Debug.INSTANCE.m32044e(RectUtils.class, "square result -> " + width, new Object[0]);
            return width;
        }
        HashMap hashMap = new HashMap();
        int size = list.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            int size2 = list.size();
            for (int i3 = i2; i3 < size2; i3++) {
                RectF rectF2 = new RectF(list.get(i));
                if (rectF2.intersect(new RectF(list.get(i3)))) {
                    Debug.INSTANCE.m32044e(RectUtils.class, "intersects: %d, %d -> %s", Integer.valueOf(i), Integer.valueOf(i3), rectF2.toString());
                    if (hashMap.get(Integer.valueOf(i)) == null) {
                        hashMap.put(Integer.valueOf(i), new ArrayList());
                    }
                    m32121f((List) hashMap.get(Integer.valueOf(i)), rectF2);
                    if (hashMap.get(Integer.valueOf(i3)) == null) {
                        hashMap.put(Integer.valueOf(i3), new ArrayList());
                    }
                    m32121f((List) hashMap.get(Integer.valueOf(i3)), rectF2);
                }
            }
            RectF rectF3 = list.get(i);
            float width2 = rectF3.width() * rectF3.height();
            float square = square((List) hashMap.get(Integer.valueOf(i)));
            f += width2 - square;
            Debug.INSTANCE.m32044e(RectUtils.class, "%s -> %f, intersections -> %f, square -> %f", rectF3.toString(), Float.valueOf(width2), Float.valueOf(square), Float.valueOf(f));
            i = i2;
        }
        ArrayList arrayList = new ArrayList();
        for (List list2 : hashMap.values()) {
            Intrinsics.checkNotNull(list2);
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                m32121f(arrayList, (RectF) it2.next());
            }
        }
        float square2 = square(arrayList);
        Debug debug2 = Debug.INSTANCE;
        debug2.m32044e(RectUtils.class, "intersections square -> " + square2, new Object[0]);
        float f2 = f + square2;
        debug2.m32044e(RectUtils.class, "square result -> " + f2, new Object[0]);
        return f2;
    }

    @Nullable
    public final Rect toRect(@Nullable RectF source) {
        if (source == null) {
            return null;
        }
        return new Rect((int) source.left, (int) source.top, (int) source.right, (int) source.bottom);
    }

    @Nullable
    public final Rect toRectByCeil(@Nullable RectF source) {
        if (source == null) {
            return null;
        }
        return new Rect((int) Math.ceil(source.left), (int) Math.ceil(source.top), (int) Math.ceil(source.right), (int) Math.ceil(source.bottom));
    }

    @Nullable
    public final Rect toRectByFloor(@Nullable RectF source) {
        if (source == null) {
            return null;
        }
        return new Rect((int) Math.floor(source.left), (int) Math.floor(source.top), (int) Math.floor(source.right), (int) Math.floor(source.bottom));
    }

    @Nullable
    public final RectF toRectF(@Nullable Rect source) {
        if (source == null) {
            return null;
        }
        return new RectF(source.left, source.top, source.right, source.bottom);
    }

    @Nullable
    public final List<Rect> toRectList(@Nullable List<? extends RectF> source) {
        if (source == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<? extends RectF> it2 = source.iterator();
        while (it2.hasNext()) {
            arrayList.add(toRect(it2.next()));
        }
        return arrayList;
    }

    @Nullable
    public final String toString(@Nullable List<Rect> list) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Rect rect : list) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(rect.toString());
            z = false;
        }
        return sb.toString();
    }

    public final void translate(@Nullable RectF rectF, float dx, float dy) {
        if (rectF == null) {
            return;
        }
        rectF.offset(dx, dy);
    }

    public final void union(@NotNull RectF output, @NotNull Collection<? extends RectF> inputList) {
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(inputList, "inputList");
        if (inputList.isEmpty()) {
            return;
        }
        Iterator<T> it2 = inputList.iterator();
        while (it2.hasNext()) {
            INSTANCE.union(output, (RectF) it2.next());
        }
    }

    public final void unionDiffRectList(@NotNull RectF output, @NotNull List<RectF> rectList1, @NotNull List<RectF> rectList2) {
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(rectList1, "rectList1");
        Intrinsics.checkNotNullParameter(rectList2, "rectList2");
        List<RectF> loadEqualRectList = loadEqualRectList(rectList2, rectList1);
        rectList2.removeAll(loadEqualRectList);
        rectList1.removeAll(loadEqualRectList);
        union(output, rectList2);
        union(output, rectList1);
    }

    public final boolean contains(@Nullable RectF container, @Nullable RectF subset) {
        return container != null && subset != null && container.left <= subset.left && container.top <= subset.top && container.right >= subset.right && container.bottom >= subset.bottom;
    }

    public final boolean intersect(@Nullable Rect o1, @Nullable Rect o2) {
        if (o1 == null || o2 == null) {
            return false;
        }
        return o1.intersect(o2);
    }

    public final boolean isNullOrEmpty(@Nullable RectF rect) {
        if (rect != null) {
            return rect.isEmpty();
        }
        return true;
    }

    public final boolean isSameCenterWithinErrorRange(@Nullable Rect a, @Nullable Rect b, int errorRange) {
        float distance = getDistance(toRectF(a), toRectF(b));
        boolean z = distance <= ((float) errorRange);
        if (!z) {
            Debug.INSTANCE.m32037d("isSameCenterWithinErrorRange, two rect center distance = " + distance);
        }
        return z;
    }

    @Nullable
    public final Rect offset(@NotNull Rect rect, int x, int y) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        rect.offset(x, y);
        return rect;
    }

    public final void translate(@Nullable Rect rect, int dx, int dy) {
        if (rect == null) {
            return;
        }
        rect.offset(dx, dy);
    }

    @Nullable
    public final PointF mapPoints(@Nullable Matrix matrix, float x, float y) {
        float[] fArr = {x, y};
        if (matrix != null) {
            matrix.mapPoints(fArr);
        }
        return new PointF(fArr[0], fArr[1]);
    }

    public final void union(@Nullable RectF output, @Nullable RectF input) {
        if (output == null || input == null) {
            return;
        }
        output.union(input);
    }

    public final void scale(@Nullable Rect rect, float sx, float sy) {
        if (rect == null) {
            return;
        }
        rect.set((int) (rect.left * sx), (int) (rect.top * sy), (int) (rect.right * sx), (int) (rect.bottom * sy));
    }

    @NotNull
    public final RectF union(@NotNull Collection<? extends RectF> inputList) {
        Intrinsics.checkNotNullParameter(inputList, "inputList");
        RectF rectF = new RectF();
        union(rectF, inputList);
        return rectF;
    }

    public final void mapPoints(@Nullable Matrix matrix, @Nullable PointF pointF) {
        if (pointF == null) {
            return;
        }
        float[] fArr = {pointF.x, pointF.y};
        if (matrix != null) {
            matrix.mapPoints(fArr);
        }
        pointF.x = fArr[0];
        pointF.y = fArr[1];
    }
}
