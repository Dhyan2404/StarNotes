package com.onyx.android.sdk.base.extension;

import Abdullah.hook;
import android.util.SparseArray;
import androidx.core.math.MathUtils;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.internal.bind.TypeAdapters;
import com.onyx.android.sdk.base.data.Copier;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.ElementCounter;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.HTREnginev2.gon;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Ò\u0001\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u001f\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u001c\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010&\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\bC\n\u0002\u0010\u000f\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\u001a\u001e\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003\u001a7\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b\u0000\u0010\u00072\u001e\u0010\b\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u0002H\u00070\n0\t\"\b\u0012\u0004\u0012\u0002H\u00070\n¢\u0006\u0002\u0010\u000b\u001a\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f\u001a'\u0010\u0011\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0007*\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u0001H\u0007¢\u0006\u0002\u0010\u0015\u001a(\u0010\u0016\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0007*\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010\u00132\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010\n\u001a>\u0010\u0018\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0007\"\u0004\b\u0001\u0010\u0019*\b\u0012\u0004\u0012\u0002H\u00070\u00132\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u0002H\u00070\n2\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u00190\u001c\u001a1\u0010\u001d\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00132\u0006\u0010\u001e\u001a\u0002H\u00072\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00010 ¢\u0006\u0002\u0010!\u001a#\u0010\"\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00132\u0006\u0010#\u001a\u0002H\u0007¢\u0006\u0002\u0010\u0015\u001a$\u0010\"\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00132\f\u0010$\u001a\b\u0012\u0004\u0012\u0002H\u00070\n\u001a?\u0010%\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u00070&0\u0006\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0086\b\u001a\u001d\u0010'\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b\u0000\u0010\u0007*\u0004\u0018\u0001H\u0007¢\u0006\u0002\u0010(\u001a\u001d\u0010)\u001a\b\u0012\u0004\u0012\u0002H\u00070*\"\u0004\b\u0000\u0010\u0007*\u0004\u0018\u0001H\u0007¢\u0006\u0002\u0010(\u001a\u001e\u0010+\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020,0\u00062\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020,0\u0006\u001a!\u0010-\u001a\u00020\u0001*\n\u0012\u0004\u0012\u00020,\u0018\u00010\t2\b\u0010.\u001a\u0004\u0018\u00010,¢\u0006\u0002\u0010/\u001a\u0018\u0010-\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020,0\n2\u0006\u00100\u001a\u00020,\u001a\"\u00101\u001a\u00020\u0001*\n\u0012\u0004\u0012\u00020,\u0018\u00010\n2\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010\n\u001a*\u00101\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u0007022\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020\u00010\u001c\u001aB\u00101\u001a\u00020\u0001\"\u0004\b\u0000\u00103\"\u0004\b\u0001\u00104*\u000e\u0012\u0004\u0012\u0002H3\u0012\u0004\u0012\u0002H4052\u001e\u0010\u001f\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H3\u0012\u0004\u0012\u0002H406\u0012\u0004\u0012\u00020\u00010\u001c\u001a*\u00107\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u0007022\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020\u00010\u001c\u001a$\u00108\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\n2\f\u00109\u001a\b\u0012\u0004\u0012\u0002H\u00070\n\u001a/\u0010:\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u0007022\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00070\t\"\u0002H\u0007¢\u0006\u0002\u0010;\u001a&\u0010<\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\u0006\u0010\u001e\u001a\u0002H\u0007H\u0086\b¢\u0006\u0002\u0010=\u001a\u001e\u0010>\u001a\b\u0012\u0004\u0012\u0002H\u00070*\"\u0004\b\u0000\u0010\u0007*\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010\u0006\u001a \u0010?\u001a\b\u0012\u0004\u0012\u0002H\u00070*\"\b\b\u0000\u0010\u0007*\u00020@*\b\u0012\u0004\u0012\u0002H\u00070\u0006\u001a3\u0010A\u001a\u00020\u000f\"\b\b\u0000\u0010\u0007*\u00020B*\b\u0012\u0004\u0012\u0002H\u00070\u00062\b\u0010C\u001a\u0004\u0018\u0001H\u00072\b\u0010D\u001a\u0004\u0018\u0001H\u0007¢\u0006\u0002\u0010E\u001a*\u0010F\u001a\b\u0012\u0004\u0012\u0002H\u00070G\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070G2\f\u0010H\u001a\b\u0012\u0004\u0012\u0002H\u00070G\u001a@\u0010F\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070G2\f\u0010H\u001a\b\u0012\u0004\u0012\u0002H\u00070G2\f\u0010I\u001a\b\u0012\u0004\u0012\u0002H\u00070J2\f\u0010K\u001a\b\u0012\u0004\u0012\u0002H\u00070J\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0002\b\u0003\u0018\u00010\n2\f\u00109\u001a\b\u0012\u0002\b\u0003\u0018\u00010\n\u001aa\u0010L\u001a\u00020\u0012\"\u0004\b\u0000\u00103\"\u0004\b\u0001\u00104\"\u000e\b\u0002\u0010M*\b\u0012\u0004\u0012\u0002H40\u0013*\u000e\u0012\u0004\u0012\u0002H3\u0012\u0004\u0012\u0002HM0N2\u0006\u0010O\u001a\u0002H32\u0012\u0010P\u001a\u000e\u0012\u0004\u0012\u0002H3\u0012\u0004\u0012\u0002H40\u001c2\f\u0010Q\u001a\b\u0012\u0004\u0012\u0002HM0 ¢\u0006\u0002\u0010R\u001a*\u0010S\u001a\b\u0012\u0004\u0012\u0002H\u00070*\"\u0004\b\u0000\u0010\u0007*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00070*0T2\u0006\u0010O\u001a\u00020\u000f\u001aQ\u0010S\u001a\b\u0012\u0004\u0012\u0002H40*\"\u0004\b\u0000\u00103\"\u0004\b\u0001\u00104**\u0012\u0004\u0012\u0002H3\u0012\n\u0012\b\u0012\u0004\u0012\u0002H40*0Uj\u0014\u0012\u0004\u0012\u0002H3\u0012\n\u0012\b\u0012\u0004\u0012\u0002H40*`V2\u0006\u0010O\u001a\u0002H3¢\u0006\u0002\u0010W\u001a\u001e\u0010S\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b\u0000\u0010\u0007*\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010\u0006\u001a\u001e\u0010X\u001a\b\u0012\u0004\u0012\u0002H\u00070*\"\u0004\b\u0000\u0010\u0007*\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010*\u001aQ\u0010Y\u001a\b\u0012\u0004\u0012\u0002H40J\"\u0004\b\u0000\u00103\"\u0004\b\u0001\u00104**\u0012\u0004\u0012\u0002H3\u0012\n\u0012\b\u0012\u0004\u0012\u0002H40J0Uj\u0014\u0012\u0004\u0012\u0002H3\u0012\n\u0012\b\u0012\u0004\u0012\u0002H40J`V2\u0006\u0010O\u001a\u0002H3¢\u0006\u0002\u0010Z\u001a0\u0010[\u001a\u000e\u0012\u0004\u0012\u0002H3\u0012\u0004\u0012\u0002H405\"\u0004\b\u0000\u00103\"\u0004\b\u0001\u00104*\u0010\u0012\u0004\u0012\u0002H3\u0012\u0006\u0012\u0004\u0018\u0001H405\u001a(\u0010\\\u001a\u0004\u0018\u0001H\u0007\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\u0006\u0010\u001e\u001a\u0002H\u0007H\u0086\b¢\u0006\u0002\u0010]\u001a&\u0010^\u001a\u00020\u000f\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\u0006\u0010\u001e\u001a\u0002H\u0007H\u0086\b¢\u0006\u0002\u0010_\u001a\u0010\u0010`\u001a\u00020,*\b\u0012\u0004\u0012\u00020,0\u0006\u001a)\u0010a\u001a\u0002H\u0007\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070*2\f\u0010b\u001a\b\u0012\u0004\u0012\u0002H\u00070 ¢\u0006\u0002\u0010c\u001ah\u0010d\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f26\u0010e\u001a2\u0012\u0013\u0012\u0011H\u0007¢\u0006\f\bg\u0012\b\bh\u0012\u0004\b\b(i\u0012\u0013\u0012\u0011H\u0007¢\u0006\f\bg\u0012\b\bh\u0012\u0004\b\b(j\u0012\u0004\u0012\u00020\u00120fH\u0086\bø\u0001\u0000\u001a'\u0010k\u001a\u0004\u0018\u0001H\u0007\"\u0004\b\u0000\u0010\u0007*\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010\u00062\u0006\u0010l\u001a\u00020\u000f¢\u0006\u0002\u0010m\u001a/\u0010k\u001a\u0004\u0018\u0001H\u0007\"\u0004\b\u0000\u0010\u0007*\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010\u00062\u0006\u0010l\u001a\u00020\u000f2\u0006\u0010n\u001a\u00020\u0001¢\u0006\u0002\u0010o\u001a!\u0010p\u001a\u0004\u0018\u0001H\u0007\"\u0004\b\u0000\u0010\u0007*\f\u0012\u0006\u0012\u0004\u0018\u0001H\u0007\u0018\u00010\n¢\u0006\u0002\u0010q\u001a!\u0010r\u001a\u0004\u0018\u0001H\u0007\"\u0004\b\u0000\u0010\u0007*\f\u0012\u0006\u0012\u0004\u0018\u0001H\u0007\u0018\u00010\u0006¢\u0006\u0002\u0010s\u001a!\u0010t\u001a\u0004\u0018\u0001H\u0007\"\b\b\u0000\u0010\u0007*\u00020B*\b\u0012\u0004\u0012\u0002H\u00070\n¢\u0006\u0002\u0010q\u001a%\u0010u\u001a\u0004\u0018\u0001H\u0007\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\u0006\u0010\u001e\u001a\u0002H\u0007¢\u0006\u0002\u0010]\u001a;\u0010v\u001a\u0002H\u0007\"\u0004\b\u0000\u0010\u0007*\f\u0012\u0006\u0012\u0004\u0018\u0001H\u0007\u0018\u00010\u00062\u0006\u0010w\u001a\u00020\u000f2\u0012\u0010b\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u0002H\u00070\u001c¢\u0006\u0002\u0010x\u001a)\u0010y\u001a\u0004\u0018\u0001H\u0007\"\u0004\b\u0000\u0010\u0007*\f\u0012\u0006\u0012\u0004\u0018\u0001H\u0007\u0018\u00010\u00062\u0006\u0010w\u001a\u00020\u000f¢\u0006\u0002\u0010m\u001a%\u0010z\u001a\u0004\u0018\u0001H\u0007\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\u0006\u0010\u001e\u001a\u0002H\u0007¢\u0006\u0002\u0010]\u001a\u0015\u0010{\u001a\u00020\u000f*\b\u0012\u0002\b\u0003\u0018\u00010\t¢\u0006\u0002\u0010|\u001a\u0010\u0010{\u001a\u00020\u000f*\b\u0012\u0002\b\u0003\u0018\u00010\n\u001a\u0014\u0010{\u001a\u00020\u000f*\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u000105\u001a\\\u0010}\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00070\u00060\u0006\"\u0004\b\u0000\u0010\u0007*\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010\u000626\u0010~\u001a2\u0012\u0013\u0012\u0011H\u0007¢\u0006\f\bg\u0012\b\bh\u0012\u0004\b\b(\u007f\u0012\u0013\u0012\u0011H\u0007¢\u0006\f\bg\u0012\b\bh\u0012\u0004\b\b(j\u0012\u0004\u0012\u00020\u00010f\u001a<\u0010\u0080\u0001\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0007\"\u000e\b\u0001\u0010M*\b\u0012\u0004\u0012\u0002H\u00070\n*\u0002HM2\u0013\u0010\u0081\u0001\u001a\u000e\u0012\u0004\u0012\u0002HM\u0012\u0004\u0012\u00020\u00120\u001c¢\u0006\u0003\u0010\u0082\u0001\u001a\u0019\u0010\u0083\u0001\u001a\u00020\u000f*\b\u0012\u0004\u0012\u00020,0\u00062\u0006\u00100\u001a\u00020,\u001a1\u0010\u0084\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0006\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\n2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020\u00010\u001c\u001a\u0019\u0010\u0085\u0001\u001a\u00020\u0001*\b\u0012\u0002\b\u0003\u0018\u00010\u00062\u0006\u0010w\u001a\u00020\u000f\u001a(\u0010\u0085\u0001\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0007*\f\u0012\u0006\u0012\u0004\u0018\u0001H\u0007\u0018\u00010\u00062\u0006\u0010#\u001a\u0002H\u0007¢\u0006\u0002\u0010=\u001a\u0019\u0010\u0086\u0001\u001a\u00020\u0001*\b\u0012\u0002\b\u0003\u0018\u00010\u00062\u0006\u0010w\u001a\u00020\u000f\u001a(\u0010\u0086\u0001\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0007*\f\u0012\u0006\u0012\u0004\u0018\u0001H\u0007\u0018\u00010\u00062\u0006\u0010#\u001a\u0002H\u0007¢\u0006\u0002\u0010=\u001a\"\u0010\u0087\u0001\u001a\u00020\u0001*\b\u0012\u0002\b\u0003\u0018\u00010T\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0000\u001a\u0004\b\u0003\u0010\u0000\u001a\"\u0010\u0087\u0001\u001a\u00020\u0001*\b\u0012\u0002\b\u0003\u0018\u00010\n\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0000\u001a\u0004\b\u0003\u0010\u0000\u001a&\u0010\u0087\u0001\u001a\u00020\u0001*\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u000105\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0000\u001a\u0004\b\u0003\u0010\u0000\u001a\"\u0010\u0088\u0001\u001a\u00020\u0001*\b\u0012\u0002\b\u0003\u0018\u00010T\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a\"\u0010\u0088\u0001\u001a\u00020\u0001*\b\u0012\u0002\b\u0003\u0018\u00010\n\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a&\u0010\u0088\u0001\u001a\u00020\u0001*\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u000105\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a\u0019\u0010\u0089\u0001\u001a\u00020\u0001*\b\u0012\u0002\b\u0003\u0018\u00010\n2\u0006\u0010w\u001a\u00020\u000f\u001a\u0011\u0010\u008a\u0001\u001a\u00020\u0001*\b\u0012\u0002\b\u0003\u0018\u00010\n\u001as\u0010\u008b\u0001\u001a\u0010\u0012\u0005\u0012\u0003H\u008c\u0001\u0012\u0005\u0012\u0003H\u008d\u000105\"\u0005\b\u0000\u0010\u008e\u0001\"\u0005\b\u0001\u0010\u008f\u0001\"\u0005\b\u0002\u0010\u008c\u0001\"\u0005\b\u0003\u0010\u008d\u0001*\u0012\u0012\u0005\u0012\u0003H\u008e\u0001\u0012\u0005\u0012\u0003H\u008f\u0001\u0018\u0001052\u0015\u0010\u0090\u0001\u001a\u0010\u0012\u0005\u0012\u0003H\u008e\u0001\u0012\u0005\u0012\u0003H\u008c\u00010\u001c2\u0015\u0010\u0091\u0001\u001a\u0010\u0012\u0005\u0012\u0003H\u008f\u0001\u0012\u0005\u0012\u0003H\u008d\u00010\u001c\u001a+\u0010\u0092\u0001\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0007*\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010*2\u0007\u0010\u0093\u0001\u001a\u00020\u000f2\u0007\u0010\u0094\u0001\u001a\u00020\u000f\u001a)\u0010\u0095\u0001\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0007*\u0002H\u00072\r\u0010\u0096\u0001\u001a\b\u0012\u0004\u0012\u0002H\u00070\nH\u0086\f¢\u0006\u0003\u0010\u0097\u0001\u001a.\u0010\u0098\u0001\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006H\u0086\b\u001a.\u0010\u0099\u0001\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\u0006\u0010\u001e\u001a\u0002H\u0007H\u0086\b¢\u0006\u0003\u0010\u009a\u0001\u001a4\u0010\u009b\u0001\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00132\u0007\u0010\u009c\u0001\u001a\u00020\u00012\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020\u00010\u001c\u001a@\u0010\u009d\u0001\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0007\"\u0004\b\u0001\u0010\u0019*\b\u0012\u0004\u0012\u0002H\u00070*2\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00070\n2\u0013\u0010\u009e\u0001\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u00190\u001c\u001aP\u0010\u009f\u0001\u001a\u00020\u0012\"\u0004\b\u0000\u00103\"\b\b\u0001\u00104*\u00020B*\b\u0012\u0004\u0012\u0002H40*2\u0013\u0010 \u0001\u001a\u000e\u0012\u0004\u0012\u0002H3\u0012\u0004\u0012\u0002H4052\u0018\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u0002H3\u0012\u0004\u0012\u0002H4\u0012\u0004\u0012\u00020\u00010f\u001a0\u0010\u009f\u0001\u001a\u00020\u0012\"\b\b\u0000\u00104*\u00020B*\b\u0012\u0004\u0012\u0002H40*2\u0013\u0010 \u0001\u001a\u000e\u0012\u0004\u0012\u0002H4\u0012\u0004\u0012\u0002H405\u001a+\u0010¡\u0001\u001a\b\u0012\u0004\u0012\u0002H\u00070\n\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00132\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00070\n\u001a1\u0010¢\u0001\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00010 H\u0086\bø\u0001\u0000\u001a(\u0010£\u0001\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0007*\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u0001H\u0007¢\u0006\u0002\u0010\u0015\u001a1\u0010£\u0001\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0007*\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010*2\u0006\u0010w\u001a\u00020\u000f2\b\u0010\u0014\u001a\u0004\u0018\u0001H\u0007¢\u0006\u0003\u0010¤\u0001\u001a)\u0010¥\u0001\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0007*\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010\u00132\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010\n\u001a3\u0010¦\u0001\u001a\b\u0012\u0004\u0012\u0002H\u00070*\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070*2\t\b\u0002\u0010§\u0001\u001a\u00020\u000f2\t\b\u0002\u0010¨\u0001\u001a\u00020\u000f\u001a0\u0010©\u0001\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00132\u000e\u0010ª\u0001\u001a\t\u0012\u0004\u0012\u0002H\u00070«\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u0001\u001a5\u0010¬\u0001\u001a\b\u0012\u0004\u0012\u0002H\u00070*\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\u0007\u0010\u00ad\u0001\u001a\u0002H\u00072\u0007\u0010®\u0001\u001a\u0002H\u0007¢\u0006\u0003\u0010¯\u0001\u001a&\u0010¬\u0001\u001a\b\u0012\u0004\u0012\u0002H\u00070*\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\u0007\u0010§\u0001\u001a\u00020\u000f\u001a/\u0010¬\u0001\u001a\b\u0012\u0004\u0012\u0002H\u00070*\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\u0007\u0010§\u0001\u001a\u00020\u000f2\u0007\u0010¨\u0001\u001a\u00020\u000f\u001a,\u0010°\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00070\u00060\u0006\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\u0007\u0010±\u0001\u001a\u00020\u000f\u001a3\u0010²\u0001\u001a\u00030³\u0001\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u0007022\u0013\u0010\u001b\u001a\u000f\u0012\u0004\u0012\u0002H\u0007\u0012\u0005\u0012\u00030³\u00010\u001cH\u0086\bø\u0001\u0000\u001aF\u0010´\u0001\u001a\u000e\u0012\u0004\u0012\u0002H3\u0012\u0004\u0012\u0002H405\"\b\b\u0000\u00103*\u00020B\"\b\b\u0001\u00104*\u00020B*\b\u0012\u0004\u0012\u0002H40\n2\u0013\u0010µ\u0001\u001a\u000e\u0012\u0004\u0012\u0002H4\u0012\u0004\u0012\u0002H30\u001c\u001ad\u0010´\u0001\u001a\u000e\u0012\u0004\u0012\u0002H3\u0012\u0004\u0012\u0002H\u001905\"\b\b\u0000\u00103*\u00020B\"\b\b\u0001\u00104*\u00020B\"\b\b\u0002\u0010\u0019*\u00020B*\b\u0012\u0004\u0012\u0002H40\n2\u0013\u0010µ\u0001\u001a\u000e\u0012\u0004\u0012\u0002H4\u0012\u0004\u0012\u0002H30\u001c2\u0012\u0010P\u001a\u000e\u0012\u0004\u0012\u0002H4\u0012\u0004\u0012\u0002H\u00190\u001c\u001aG\u0010´\u0001\u001a\u000e\u0012\u0004\u0012\u0002H3\u0012\u0004\u0012\u0002H405\"\b\b\u0000\u00103*\u00020B\"\b\b\u0001\u00104*\u00020B*\b\u0012\u0004\u0012\u0002H40\n2\u0014\u0010¶\u0001\u001a\u000f\u0012\u0004\u0012\u0002H4\u0012\u0004\u0012\u0002H30·\u0001\u001a~\u0010¸\u0001\u001a\u000f\u0012\u0005\u0012\u0003H¹\u0001\u0012\u0004\u0012\u0002HM05\"\u0005\b\u0000\u0010º\u0001\"\u0005\b\u0001\u0010¹\u0001\"\u0004\b\u0002\u00104\"\u000e\b\u0003\u0010M*\b\u0012\u0004\u0012\u0002H40\u0013*\t\u0012\u0005\u0012\u0003Hº\u00010\n2\u0015\u0010µ\u0001\u001a\u0010\u0012\u0005\u0012\u0003Hº\u0001\u0012\u0005\u0012\u0003H¹\u00010\u001c2\u0014\u0010»\u0001\u001a\u000f\u0012\u0005\u0012\u0003Hº\u0001\u0012\u0004\u0012\u0002H40\u001c2\f\u0010Q\u001a\b\u0012\u0004\u0012\u0002HM0 \u001af\u0010¼\u0001\u001a\u0015\u0012\u0005\u0012\u0003H¹\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H40\u000605\"\u0005\b\u0000\u0010º\u0001\"\u0005\b\u0001\u0010¹\u0001\"\u0004\b\u0002\u00104*\t\u0012\u0005\u0012\u0003Hº\u00010\n2\u0015\u0010µ\u0001\u001a\u0010\u0012\u0005\u0012\u0003Hº\u0001\u0012\u0005\u0012\u0003H¹\u00010\u001c2\u0014\u0010½\u0001\u001a\u000f\u0012\u0005\u0012\u0003Hº\u0001\u0012\u0004\u0012\u0002H40\u001c\u001aD\u0010¼\u0001\u001a\u0014\u0012\u0004\u0012\u0002H3\u0012\n\u0012\b\u0012\u0004\u0012\u0002H40\u000605\"\u0004\b\u0000\u00103\"\u0004\b\u0001\u00104*\b\u0012\u0004\u0012\u0002H30\n2\u0013\u0010½\u0001\u001a\u000e\u0012\u0004\u0012\u0002H3\u0012\u0004\u0012\u0002H40\u001c\u001af\u0010¾\u0001\u001a\u0015\u0012\u0005\u0012\u0003H¹\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H40G05\"\u0005\b\u0000\u0010º\u0001\"\u0005\b\u0001\u0010¹\u0001\"\u0004\b\u0002\u00104*\t\u0012\u0005\u0012\u0003Hº\u00010\n2\u0015\u0010µ\u0001\u001a\u0010\u0012\u0005\u0012\u0003Hº\u0001\u0012\u0005\u0012\u0003H¹\u00010\u001c2\u0014\u0010½\u0001\u001a\u000f\u0012\u0005\u0012\u0003Hº\u0001\u0012\u0004\u0012\u0002H40\u001c\u001aD\u0010¾\u0001\u001a\u0014\u0012\u0004\u0012\u0002H3\u0012\n\u0012\b\u0012\u0004\u0012\u0002H40G05\"\u0004\b\u0000\u00103\"\u0004\b\u0001\u00104*\b\u0012\u0004\u0012\u0002H30\n2\u0013\u0010½\u0001\u001a\u000e\u0012\u0004\u0012\u0002H3\u0012\u0004\u0012\u0002H40\u001c\u001aG\u0010¿\u0001\u001a\u000e\u0012\u0004\u0012\u0002H3\u0012\u0004\u0012\u0002H40N\"\b\b\u0000\u00103*\u00020B\"\b\b\u0001\u00104*\u00020B*\b\u0012\u0004\u0012\u0002H40\n2\u0014\u0010¶\u0001\u001a\u000f\u0012\u0004\u0012\u0002H4\u0012\u0004\u0012\u0002H30·\u0001\u001a(\u0010À\u0001\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0007*\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u0001H\u0007¢\u0006\u0002\u0010\u0015\u001a \u0010Á\u0001\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070*2\u0007\u0010Â\u0001\u001a\u00020\u000f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006Ã\u0001"}, m61528d2 = {"elementsEqual", "", "iterator1", "", "iterator2", "mergeList", "", "T", FirebaseAnalytics.Param.ITEMS, "", "", "([Ljava/util/Collection;)Ljava/util/List;", "swapIndexAsc", "", "startIndex", "", "endIndex", "add", "", "", "target", "(Ljava/util/Collection;Ljava/lang/Object;)V", "addAll", "targetList", "addDistinctBy", "R", Constants.ATTRNAME_ELEMENTS, IStyleSheet.CLASS_SELECTOR, "Lkotlin/Function1;", "addIf", "item", "predicate", "Lkotlin/Function0;", "(Ljava/util/Collection;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V", "addIfNotContains", "t", "list", "allPairs", "Lkotlin/Pair;", "asList", "(Ljava/lang/Object;)Ljava/util/List;", "asMutableList", "", "containAnyIgnoreCase", "", "containIgnoreCase", "string", "([Ljava/lang/String;Ljava/lang/String;)Z", "element", Keywords.FUNC_CONTAINS_STRING, "", "K", "V", "", "", "containsAll", "containsAny", Constants.ATTRVAL_OTHER, "containsAnyElement", "(Ljava/lang/Iterable;[Ljava/lang/Object;)Z", "containsByInstance", "(Ljava/util/List;Ljava/lang/Object;)Z", "copy", "copyList", "Lcom/onyx/android/sdk/base/data/Copier;", "deltaIndex", "", "currentElement", "targetElement", "(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)I", "diff", "", TypeAdapters.C6590r.f36278f, "firstOnly", "", "secondOnly", "ensureAdd", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "", "key", "valueFunc", "collectionGenerator", "(Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "ensureList", "Landroid/util/SparseArray;", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "(Ljava/util/HashMap;Ljava/lang/Object;)Ljava/util/List;", "ensureMutableList", "ensureSet", "(Ljava/util/HashMap;Ljava/lang/Object;)Ljava/util/Set;", "filterNotNullValues", "findByInstance", "(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;", "findIndexByInstance", "(Ljava/util/List;Ljava/lang/Object;)I", "firstOrEmpty", "firstOrPut", "defaultValue", "(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "forEachPair", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.TRANSLET_OUTPUT_PNAME, "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "previous", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.NEXT, "getElement", "currentIndex", "(Ljava/util/List;I)Ljava/lang/Object;", "preElement", "(Ljava/util/List;IZ)Ljava/lang/Object;", "getFirst", "(Ljava/util/Collection;)Ljava/lang/Object;", "getLast", "(Ljava/util/List;)Ljava/lang/Object;", "getMostUsedItem", "getNextItem", "getOrElse", FirebaseAnalytics.Param.INDEX, "(Ljava/util/List;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "getOrFirst", "getPreviousItem", "getSize", "([Ljava/lang/Object;)I", "group", "grouper", "prev", "ifNotEmpty", "action", "(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V", "indexIgnoreCase", "indexesOf", "isFirstElement", "isLastElement", "isNonBlank", "isNullOrEmpty", "isOutOfRange", "isSingle", "mapKeyAndValue", "T2", "R2", "T1", "R1", "keyMapper", "valueMapper", "moveTo", "from", "to", gon.f71278e0, "collection", "(Ljava/lang/Object;Ljava/util/Collection;)Z", "removeAllByInstance", "removeByInstance", "(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;", "removeIf", "abortFirstMatched", "removeItemsByKey", "keyTransform", "replace", Constant.MAP_TAG, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.RESET, "reverseIf", "safeAdd", "(Ljava/util/List;ILjava/lang/Object;)V", "safeAddAll", "safelyDetachList", ApiBroadCastReceiver.ARGS_FROM_INDEX, ApiBroadCastReceiver.ARGS_TO_INDEX, "safelyRemove", "comparable", "", "safelySubList", gon.f71290o0, "end", "(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;", "split", "batch", "sumOf", "", "toMap", "keyFunc", Constants.EXSLT_ELEMNAME_FUNCTION_STRING, "Lio/reactivex/rxjava3/functions/Function;", "toMapCollection", "K2", "K1", "valFunc", "toMapList", "func", "toMapSet", "toMutableMap", "toggle", "trimToMaxSize", "maxSize", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCollection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,745:1\n679#1:879\n468#2:746\n414#2:747\n453#2:752\n403#2:753\n372#2,7:834\n1238#3,4:748\n1238#3,4:754\n350#3,7:758\n350#3,7:765\n1549#3:784\n1620#3,3:785\n1549#3:788\n1620#3,3:789\n1549#3:792\n1620#3,3:793\n1855#3,2:796\n1855#3,2:798\n288#3,2:800\n1747#3,3:802\n766#3:805\n857#3,2:806\n1747#3,3:808\n1855#3,2:813\n1549#3:815\n1620#3,3:816\n1655#3,8:819\n819#3:827\n847#3,2:828\n1855#3,2:830\n1855#3,2:832\n350#3,7:842\n1747#3,3:864\n350#3,7:867\n766#3:874\n857#3,2:875\n766#3:877\n857#3:878\n1747#3,3:880\n858#3:883\n1620#3,3:884\n41#4,5:772\n41#4,5:777\n41#4,5:887\n13309#5,2:782\n215#6,2:811\n215#6:841\n216#6:849\n135#6,9:850\n215#6:859\n216#6:862\n144#6:863\n1#7:860\n1#7:861\n*S KotlinDebug\n*F\n+ 1 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n699#1:879\n82#1:746\n82#1:747\n83#1:752\n83#1:753\n579#1:834,7\n82#1:748,4\n83#1:754,4\n125#1:758,7\n133#1:765,7\n341#1:784\n341#1:785,3\n345#1:788\n345#1:789,3\n349#1:792\n349#1:793,3\n375#1:796,2\n380#1:798,2\n438#1:800,2\n442#1:802,3\n447#1:805\n447#1:806,2\n452#1:808,3\n514#1:813,2\n518#1:815\n518#1:816,3\n520#1:819,8\n521#1:827\n521#1:828,2\n563#1:830,2\n569#1:832,2\n622#1:842,7\n679#1:864,3\n689#1:867,7\n694#1:874\n694#1:875,2\n699#1:877\n699#1:878\n699#1:880,3\n699#1:883\n717#1:884,3\n288#1:772,5\n295#1:777,5\n725#1:887,5\n303#1:782,2\n456#1:811,2\n621#1:841\n621#1:849\n632#1:850,9\n632#1:859\n632#1:862\n632#1:863\n632#1:861\n*E\n"})
/* loaded from: classes7.dex */
public final class CollectionKt {
    public static final <T> void add(@Nullable Collection<T> collection, @Nullable T t) {
        if (collection == null || t == null) {
            return;
        }
        collection.add(t);
    }

    public static final <T> void addAll(@Nullable Collection<T> collection, @Nullable Collection<? extends T> collection2) {
        if (collection == null || isNullOrEmpty(collection2)) {
            return;
        }
        collection.addAll(collection2);
    }

    public static final <T, R> void addDistinctBy(@NotNull Collection<T> collection, @NotNull Collection<? extends T> elements, @NotNull Function1<? super T, ? extends R> selector) {
        int collectionSizeOrDefault;
        HashSet hashSet;
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        Intrinsics.checkNotNullParameter(selector, "selector");
        Collection<T> collection2 = collection;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(collection2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = collection2.iterator();
        while (it2.hasNext()) {
            arrayList.add(selector.invoke(it2.next()));
        }
        hashSet = CollectionsKt___CollectionsKt.toHashSet(arrayList);
        HashSet hashSet2 = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (T t : elements) {
            if (hashSet2.add(selector.invoke(t))) {
                arrayList2.add(t);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (T t2 : arrayList2) {
            if (!hashSet.contains(selector.invoke(t2))) {
                arrayList3.add(t2);
            }
        }
        collection.addAll(arrayList3);
    }

    public static final <T> void addIf(@NotNull Collection<T> collection, T t, @NotNull Function0<Boolean> predicate) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        if (predicate.invoke().booleanValue()) {
            collection.add(t);
        }
    }

    public static final <T> void addIfNotContains(@NotNull Collection<T> collection, T t) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        if (collection.contains(t)) {
            return;
        }
        safeAdd(collection, t);
    }

    @NotNull
    public static final <T> List<Pair<T, T>> allPairs(@NotNull List<? extends T> list, int i, int i2) {
        List<Pair<T, T>> emptyList;
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (i2 > list.size() - 1 || i >= i2) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        while (i < i2) {
            T t = list.get(i);
            i++;
            arrayList.add(new Pair(t, list.get(i)));
        }
        return arrayList;
    }

    public static /* synthetic */ List allPairs$default(List list, int i, int i2, int i3, Object obj) {
        List emptyList;
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = list.size() - 1;
        }
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (i2 > list.size() - 1 || i >= i2) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        while (i < i2) {
            Object obj2 = list.get(i);
            i++;
            arrayList.add(new Pair(obj2, list.get(i)));
        }
        return arrayList;
    }

    @NotNull
    public static final <T> List<T> asList(@Nullable T t) {
        List<T> emptyList;
        List<T> listOf;
        if (t != null) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(t);
            return listOf;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @NotNull
    public static final <T> List<T> asMutableList(@Nullable T t) {
        List<T> mutableListOf;
        if (!(t != null)) {
            return new ArrayList();
        }
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(t);
        return mutableListOf;
    }

    public static final boolean containAnyIgnoreCase(@NotNull List<String> list, @NotNull List<String> elements) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        List<String> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            String lowerCase = ((String) it2.next()).toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            arrayList.add(lowerCase);
        }
        List<String> list3 = elements;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = list3.iterator();
        while (it3.hasNext()) {
            String lowerCase2 = ((String) it3.next()).toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            arrayList2.add(lowerCase2);
        }
        return contains(arrayList, arrayList2);
    }

    public static final boolean containIgnoreCase(@NotNull Collection<String> collection, @NotNull String element) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(element, "element");
        Collection<String> collection2 = collection;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(collection2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = collection2.iterator();
        while (it2.hasNext()) {
            String lowerCase = ((String) it2.next()).toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            arrayList.add(lowerCase);
        }
        String lowerCase2 = element.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return arrayList.contains(lowerCase2);
    }

    public static final boolean contains(@Nullable Collection<String> collection, @Nullable Collection<String> collection2) {
        if (collection == null && collection2 == null) {
            return true;
        }
        if (collection != null && collection2 != null) {
            Iterator<String> it2 = collection2.iterator();
            while (it2.hasNext()) {
                if (collection.contains(it2.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final <T> boolean containsAll(@NotNull Iterable<? extends T> iterable, @NotNull Function1<? super T, Boolean> predicate) {
        int count;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        count = CollectionsKt___CollectionsKt.count(iterable);
        ArrayList arrayList = new ArrayList();
        for (T t : iterable) {
            if (predicate.invoke(t).booleanValue()) {
                arrayList.add(t);
            }
        }
        return getSize(arrayList) == count;
    }

    public static final <T> boolean containsAny(@NotNull Collection<? extends T> collection, @NotNull Collection<? extends T> other) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        Collection<? extends T> collection2 = other;
        if (collection2.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = collection2.iterator();
        while (it2.hasNext()) {
            if (collection.contains(it2.next())) {
                return true;
            }
        }
        return false;
    }

    public static final <T> boolean containsAnyElement(@NotNull Iterable<? extends T> iterable, @NotNull T... items) {
        boolean contains;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            return false;
        }
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            contains = ArraysKt___ArraysKt.contains(items, it2.next());
            if (contains) {
                return true;
            }
        }
        return false;
    }

    public static final <T> boolean containsByInstance(@NotNull List<? extends T> list, T t) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<? extends T> list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            if (it2.next() == t) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:2:0x0002, code lost:
    
        r0 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r0);
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.util.List<T> copy(@org.jetbrains.annotations.Nullable java.util.List<? extends T> r0) {
        /*
            if (r0 == 0) goto La
            java.util.Collection r0 = (java.util.Collection) r0
            java.util.List r0 = kotlin.collections.CollectionsKt.toMutableList(r0)
            if (r0 != 0) goto Lf
        La:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        Lf:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.extension.CollectionKt.copy(java.util.List):java.util.List");
    }

    @NotNull
    public static final <T extends Copier> List<T> copyList(@NotNull List<? extends T> list) {
        Sequence asSequence;
        Sequence map;
        List<T> mutableList;
        Intrinsics.checkNotNullParameter(list, "<this>");
        asSequence = CollectionsKt___CollectionsKt.asSequence(list);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<T, T>() { // from class: com.onyx.android.sdk.base.extension.CollectionKt$copyList$1
            /* JADX WARN: Incorrect return type in method signature: (TT;)TT; */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Copier invoke(@NotNull Copier it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Object copy = it2.copy();
                Intrinsics.checkNotNull(copy, "null cannot be cast to non-null type T of com.onyx.android.sdk.base.extension.CollectionKt.copyList");
                return (Copier) copy;
            }
        });
        mutableList = SequencesKt___SequencesKt.toMutableList(map);
        return mutableList;
    }

    /* renamed from: d */
    public static final List m31906d(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    public static final <T> int deltaIndex(@NotNull List<? extends T> list, @Nullable T t, @Nullable T t2) {
        int indexOf;
        int indexOf2;
        Intrinsics.checkNotNullParameter(list, "<this>");
        indexOf = CollectionsKt___CollectionsKt.indexOf((List) ((List<? extends Object>) list), (Object) t);
        indexOf2 = CollectionsKt___CollectionsKt.indexOf((List) ((List<? extends Object>) list), (Object) t2);
        return indexOf - indexOf2;
    }

    @NotNull
    public static final <T> Set<T> diff(@NotNull Set<? extends T> set, @NotNull Set<? extends T> second) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(second, "second");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        diff(set, second, linkedHashSet, new LinkedHashSet());
        return linkedHashSet;
    }

    /* renamed from: e */
    public static final Set m31907e(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Set) tmp0.invoke(obj);
    }

    public static final boolean elementsEqual(@Nullable Collection<?> collection, @Nullable Collection<?> collection2) {
        if (isNullOrEmpty(collection) && isNullOrEmpty(collection2)) {
            return true;
        }
        if (isNullOrEmpty(collection) || isNullOrEmpty(collection2) || getSize(collection) != getSize(collection2)) {
            return false;
        }
        return elementsEqual(collection.iterator(), collection2.iterator());
    }

    public static final <K, V, C extends Collection<V>> void ensureAdd(@NotNull Map<K, C> map, K k, @NotNull Function1<? super K, ? extends V> valueFunc, @NotNull Function0<? extends C> collectionGenerator) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(valueFunc, "valueFunc");
        Intrinsics.checkNotNullParameter(collectionGenerator, "collectionGenerator");
        C c = map.get(k);
        if (c == null) {
            c = collectionGenerator.invoke();
            map.put(k, c);
        }
        safeAdd(c, valueFunc.invoke(k));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> List<T> ensureList(@Nullable List<? extends T> list) {
        return list == 0 ? new ArrayList() : list;
    }

    @NotNull
    public static final <T> List<T> ensureMutableList(@Nullable List<T> list) {
        return list == null ? new ArrayList() : list;
    }

    @NotNull
    public static final <K, V> Set<V> ensureSet(@NotNull HashMap<K, Set<V>> hashMap, K k) {
        Intrinsics.checkNotNullParameter(hashMap, "<this>");
        final CollectionKt$ensureSet$1 collectionKt$ensureSet$1 = new Function1<K, Set<V>>() { // from class: com.onyx.android.sdk.base.extension.CollectionKt$ensureSet$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke((CollectionKt$ensureSet$1<K, V>) obj);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Set<V> invoke(K k2) {
                return new LinkedHashSet();
            }
        };
        Set<V> computeIfAbsent = hashMap.computeIfAbsent(k, new Function() { // from class: com.sunia.HTREnginev2.x0e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Set m31907e;
                m31907e = CollectionKt.m31907e(Function1.this, obj);
                return m31907e;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    /* renamed from: f */
    public static final boolean m31908f(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    @NotNull
    public static final <K, V> Map<K, V> filterNotNullValues(@NotNull Map<K, ? extends V> map) {
        Map<K, V> map2;
        Intrinsics.checkNotNullParameter(map, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<K, ? extends V> entry : map.entrySet()) {
            K key = entry.getKey();
            V value = entry.getValue();
            Pair m61535to = value != null ? TuplesKt.m61535to(key, value) : null;
            if (m61535to != null) {
                arrayList.add(m61535to);
            }
        }
        map2 = MapsKt__MapsKt.toMap(arrayList);
        return map2;
    }

    @Nullable
    public static final <T> T findByInstance(@NotNull List<? extends T> list, T t) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            T next = it2.next();
            if (next == t) {
                return next;
            }
        }
        return null;
    }

    public static final <T> int findIndexByInstance(@NotNull List<? extends T> list, T t) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Iterator<? extends T> it2 = list.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next() == t) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @NotNull
    public static final String firstOrEmpty(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return list.isEmpty() ? "" : list.get(0);
    }

    public static final <T> T firstOrPut(@NotNull List<T> list, @NotNull Function0<? extends T> defaultValue) {
        Object first;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        if (list.isEmpty()) {
            safeAdd(list, defaultValue.invoke());
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
        return (T) first;
    }

    public static final <T> void forEachPair(@NotNull List<? extends T> list, int i, int i2, @NotNull Function2<? super T, ? super T, Unit> handler) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(handler, "handler");
        if (i2 > list.size() - 1 || i >= i2) {
            return;
        }
        while (i < i2) {
            T t = list.get(i);
            i++;
            handler.invoke(t, list.get(i));
        }
    }

    public static /* synthetic */ void forEachPair$default(List list, int i, int i2, Function2 handler, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = list.size() - 1;
        }
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(handler, "handler");
        if (i2 > list.size() - 1 || i >= i2) {
            return;
        }
        while (i < i2) {
            Object obj2 = list.get(i);
            i++;
            handler.invoke(obj2, list.get(i));
        }
    }

    @Nullable
    public static final <T> T getElement(@Nullable List<? extends T> list, int i, boolean z) {
        Object orNull;
        int i2 = z ? i - 1 : i + 1;
        if (list == null) {
            return null;
        }
        orNull = CollectionsKt___CollectionsKt.getOrNull(list, i2);
        return (T) orNull;
    }

    @Nullable
    public static final <T> T getFirst(@Nullable Collection<? extends T> collection) {
        if (isNullOrEmpty(collection)) {
            return null;
        }
        return collection.iterator().next();
    }

    @Nullable
    public static final <T> T getLast(@Nullable List<? extends T> list) {
        if (isNullOrEmpty(list)) {
            return null;
        }
        return list.get(getSize(r0) - 1);
    }

    @Nullable
    public static final <T> T getMostUsedItem(@NotNull Collection<? extends T> collection) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(collection, "<this>");
        ElementCounter elementCounter = new ElementCounter();
        Iterator<T> it2 = collection.iterator();
        while (it2.hasNext()) {
            elementCounter.put(it2.next());
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) elementCounter.toDescList());
        return (T) firstOrNull;
    }

    @Nullable
    public static final <T> T getNextItem(@NotNull List<? extends T> list, T t) {
        Object orNull;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Iterator<? extends T> it2 = list.iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            }
            if (it2.next() == t) {
                break;
            }
            i++;
        }
        if (i < 0 || i >= list.size() - 1) {
            return null;
        }
        orNull = CollectionsKt___CollectionsKt.getOrNull(list, i + 1);
        return (T) orNull;
    }

    public static final <T> T getOrElse(@Nullable List<? extends T> list, int i, @NotNull Function1<? super Integer, ? extends T> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        T t = (T) getElement(list, i);
        return t == null ? defaultValue.invoke(Integer.valueOf(i)) : t;
    }

    @Nullable
    public static final <T> T getOrFirst(@Nullable final List<? extends T> list, int i) {
        return (T) getOrElse(list, i, new Function1<Integer, T>() { // from class: com.onyx.android.sdk.base.extension.CollectionKt$getOrFirst$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Nullable
            public final T invoke(int i2) {
                return (T) CollectionKt.getFirst(list);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                return invoke(num.intValue());
            }
        });
    }

    @Nullable
    public static final <T> T getPreviousItem(@NotNull List<? extends T> list, T t) {
        Object orNull;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Iterator<? extends T> it2 = list.iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            }
            if (it2.next() == t) {
                break;
            }
            i++;
        }
        if (i <= 0) {
            return null;
        }
        orNull = CollectionsKt___CollectionsKt.getOrNull(list, i - 1);
        return (T) orNull;
    }

    public static final int getSize(@Nullable Collection<?> collection) {
        if (collection != null) {
            return collection.size();
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
    
        r5 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r5);
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.util.List<java.util.List<T>> group(@org.jetbrains.annotations.Nullable java.util.List<? extends T> r5, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super T, ? super T, java.lang.Boolean> r6) {
        /*
            java.lang.String r0 = "grouper"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            r0 = 0
            r1 = 1
            if (r5 == 0) goto Lb
            r2 = r1
            goto Lc
        Lb:
            r2 = r0
        Lc:
            if (r2 == 0) goto L19
            r2 = r5
            java.util.Collection r2 = (java.util.Collection) r2
            boolean r2 = r2.isEmpty()
            r2 = r2 ^ r1
            if (r2 == 0) goto L19
            r0 = r1
        L19:
            if (r0 == 0) goto L1c
            goto L1d
        L1c:
            r5 = 0
        L1d:
            if (r5 == 0) goto L6d
            java.util.Collection r5 = (java.util.Collection) r5
            java.util.List r5 = kotlin.collections.CollectionsKt.toMutableList(r5)
            if (r5 == 0) goto L6d
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.lang.Object r3 = kotlin.collections.CollectionsKt.removeFirstOrNull(r5)
            if (r3 != 0) goto L38
            return r0
        L38:
            r2.add(r3)
            r0.add(r2)
        L3e:
            r4 = r5
            java.util.Collection r4 = (java.util.Collection) r4
            boolean r4 = r4.isEmpty()
            r4 = r4 ^ r1
            if (r4 == 0) goto L6c
            java.lang.Object r4 = kotlin.collections.CollectionsKt.removeFirstOrNull(r5)
            if (r4 != 0) goto L4f
            return r0
        L4f:
            java.lang.Object r3 = r6.invoke(r3, r4)
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            if (r3 == 0) goto L5f
            r2.add(r4)
            goto L6a
        L5f:
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r2.add(r4)
            r0.add(r2)
        L6a:
            r3 = r4
            goto L3e
        L6c:
            return r0
        L6d:
            java.util.List r5 = kotlin.collections.CollectionsKt.emptyList()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.extension.CollectionKt.group(java.util.List, kotlin.jvm.functions.Function2):java.util.List");
    }

    public static final <T, C extends Collection<? extends T>> void ifNotEmpty(@NotNull C c, @NotNull Function1<? super C, Unit> action) {
        Intrinsics.checkNotNullParameter(c, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        if (!c.isEmpty()) {
            action.invoke(c);
        }
    }

    public static final int indexIgnoreCase(@NotNull List<String> list, @NotNull String element) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(element, "element");
        List<String> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            String lowerCase = ((String) it2.next()).toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            arrayList.add(lowerCase);
        }
        String lowerCase2 = element.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return arrayList.indexOf(lowerCase2);
    }

    @NotNull
    public static final <T> List<Integer> indexesOf(@NotNull Collection<? extends T> collection, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends T> it2 = collection.iterator();
        int i = 0;
        while (it2.hasNext()) {
            int i2 = i + 1;
            if (predicate.invoke(it2.next()).booleanValue()) {
                arrayList.add(Integer.valueOf(i));
            }
            i = i2;
        }
        return arrayList;
    }

    public static final boolean isFirstElement(@Nullable List<?> list, int i) {
        return !isNullOrEmpty(list) && i == 0;
    }

    public static final boolean isLastElement(@Nullable List<?> list, int i) {
        return i + 1 == getSize(list);
    }

    public static final boolean isNonBlank(@Nullable Collection<?> collection) {
        return !isNullOrEmpty(collection);
    }

    public static final boolean isNullOrEmpty(@Nullable Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static final boolean isOutOfRange(@Nullable Collection<?> collection, int i) {
        return i < 0 || i >= getSize(collection);
    }

    public static final boolean isSingle(@Nullable Collection<?> collection) {
        return collection != null && getSize(collection) == 1;
    }

    @NotNull
    public static final <T1, R1, T2, R2> Map<T2, R2> mapKeyAndValue(@Nullable Map<T1, ? extends R1> map, @NotNull Function1<? super T1, ? extends T2> keyMapper, @NotNull Function1<? super R1, ? extends R2> valueMapper) {
        int mapCapacity;
        int mapCapacity2;
        Map<T2, R2> emptyMap;
        Intrinsics.checkNotNullParameter(keyMapper, "keyMapper");
        Intrinsics.checkNotNullParameter(valueMapper, "valueMapper");
        if (map == null) {
            emptyMap = MapsKt__MapsKt.emptyMap();
            return emptyMap;
        }
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(map.size());
        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
        Iterator<T> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            linkedHashMap.put(keyMapper.invoke((Object) entry.getKey()), entry.getValue());
        }
        mapCapacity2 = MapsKt__MapsJVMKt.mapCapacity(linkedHashMap.size());
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(mapCapacity2);
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry2.getKey(), valueMapper.invoke((Object) entry2.getValue()));
        }
        return linkedHashMap2;
    }

    @NotNull
    public static final <T> List<T> mergeList(@NotNull Collection<? extends T>... items) {
        Intrinsics.checkNotNullParameter(items, "items");
        ArrayList arrayList = new ArrayList();
        for (Collection<? extends T> collection : items) {
            arrayList.addAll(collection);
        }
        return arrayList;
    }

    public static final <T> void moveTo(@Nullable List<T> list, int i, int i2) {
        if (list == null) {
            return;
        }
        List<T> list2 = list;
        if (isNullOrEmpty(list2) || isOutOfRange(list2, i) || isOutOfRange(list2, i2) || i == i2) {
            return;
        }
        list.add(i2, list.remove(i));
    }

    public static final <T> boolean outside(T t, @NotNull Collection<? extends T> collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        return !collection.contains(t);
    }

    @NotNull
    public static final <T> List<T> removeAllByInstance(@NotNull List<? extends T> list, @NotNull List<? extends T> items) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            T next = it2.next();
            List<? extends T> list2 = items;
            boolean z = false;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                Iterator<T> it3 = list2.iterator();
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
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    @NotNull
    public static final <T> List<T> removeByInstance(@NotNull List<? extends T> list, T t) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            T next = it2.next();
            if (next != t) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public static final <T> boolean removeIf(@NotNull Collection<T> collection, boolean z, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Iterator<T> it2 = collection.iterator();
        boolean z2 = false;
        while (it2.hasNext()) {
            if (predicate.invoke(it2.next()).booleanValue()) {
                it2.remove();
                z2 = true;
                if (z) {
                    break;
                }
            }
        }
        return z2;
    }

    public static final <T, R> void removeItemsByKey(@NotNull List<T> list, @NotNull Collection<? extends T> items, @NotNull final Function1<? super T, ? extends R> keyTransform) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(keyTransform, "keyTransform");
        final HashSet hashSet = new HashSet();
        Iterator<T> it2 = items.iterator();
        while (it2.hasNext()) {
            hashSet.add(keyTransform.invoke(it2.next()));
        }
        final Function1<T, Boolean> function1 = new Function1<T, Boolean>() { // from class: com.onyx.android.sdk.base.extension.CollectionKt$removeItemsByKey$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(T t) {
                return Boolean.valueOf(hashSet.contains(keyTransform.invoke(t)));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
                return invoke((CollectionKt$removeItemsByKey$1<T>) obj);
            }
        };
        list.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.z0e
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m31908f;
                m31908f = CollectionKt.m31908f(Function1.this, obj);
                return m31908f;
            }
        });
    }

    public static final <V> void replace(@NotNull List<V> list, @NotNull Map<V, ? extends V> map) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        replace(list, map, new Function2<V, V, Boolean>() { // from class: com.onyx.android.sdk.base.extension.CollectionKt$replace$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Boolean invoke(@NotNull V k, @NotNull V v) {
                Intrinsics.checkNotNullParameter(k, "k");
                Intrinsics.checkNotNullParameter(v, "v");
                return Boolean.valueOf(Intrinsics.areEqual(k, v));
            }
        });
    }

    @NotNull
    public static final <T> Collection<T> reset(@NotNull Collection<T> collection, @NotNull Collection<? extends T> items) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        collection.clear();
        collection.addAll(items);
        return collection;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> List<T> reverseIf(@NotNull List<? extends T> list, @NotNull Function0<Boolean> predicate) {
        List<T> reversed;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        if (!predicate.invoke().booleanValue()) {
            return list;
        }
        reversed = CollectionsKt___CollectionsKt.reversed(list);
        return reversed;
    }

    public static final <T> void safeAdd(@Nullable Collection<T> collection, @Nullable T t) {
        add(collection, t);
    }

    public static final <T> void safeAddAll(@Nullable Collection<T> collection, @Nullable Collection<? extends T> collection2) {
        addAll(collection, collection2);
    }

    @NotNull
    public static final <T> List<T> safelyDetachList(@NotNull List<T> list, int i, int i2) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<T> safelySubList = safelySubList(list, i, i2);
        list.removeAll(safelySubList);
        return safelySubList;
    }

    public static /* synthetic */ List safelyDetachList$default(List list, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = getSize(list);
        }
        return safelyDetachList(list, i, i2);
    }

    public static final <T> boolean safelyRemove(@NotNull Collection<T> collection, @NotNull final Comparable<? super T> comparable, boolean z) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(comparable, "comparable");
        return removeIf(collection, z, new Function1<T, Boolean>() { // from class: com.onyx.android.sdk.base.extension.CollectionKt$safelyRemove$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
                return invoke((CollectionKt$safelyRemove$1<T>) obj);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(T t) {
                return Boolean.valueOf(comparable.compareTo(t) == 0);
            }
        });
    }

    @NotNull
    public static final <T> List<T> safelySubList(@NotNull List<? extends T> list, T t, T t2) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        int indexOf = list.indexOf(t);
        int indexOf2 = list.indexOf(t2);
        if (indexOf > indexOf2) {
            return safelySubList(list, indexOf2, indexOf);
        }
        return safelySubList(list, indexOf, indexOf2);
    }

    @NotNull
    public static final <T> List<List<T>> split(@NotNull List<? extends T> list, int i) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        int size = list.size() / i;
        if (list.size() % i != 0) {
            size++;
        }
        for (int i2 = 0; i2 < size; i2++) {
            int i3 = i2 * i;
            arrayList.add(list.subList(i3, Math.min(i3 + i, list.size())));
        }
        return arrayList;
    }

    public static final <T> float sumOf(@NotNull Iterable<? extends T> iterable, @NotNull Function1<? super T, Float> selector) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(selector, "selector");
        Iterator<? extends T> it2 = iterable.iterator();
        float f = 0.0f;
        while (it2.hasNext()) {
            f += selector.invoke(it2.next()).floatValue();
        }
        return f;
    }

    @NotNull
    public static final int[] swapIndexAsc(int i, int i2) {
        return i <= i2 ? new int[]{i, i2} : new int[]{i2, i};
    }

    @NotNull
    public static final <K, V> Map<K, V> toMap(@NotNull Collection<? extends V> collection, @NotNull io.reactivex.rxjava3.functions.Function<V, K> function) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(function, "function");
        return toMutableMap(collection, function);
    }

    @NotNull
    public static final <K1, K2, V, C extends Collection<V>> Map<K2, C> toMapCollection(@NotNull Collection<? extends K1> collection, @NotNull Function1<? super K1, ? extends K2> keyFunc, @NotNull final Function1<? super K1, ? extends V> valFunc, @NotNull Function0<? extends C> collectionGenerator) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(keyFunc, "keyFunc");
        Intrinsics.checkNotNullParameter(valFunc, "valFunc");
        Intrinsics.checkNotNullParameter(collectionGenerator, "collectionGenerator");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> it2 = collection.iterator();
        while (it2.hasNext()) {
            final hook.C0007h c0007h = (Object) it2.next();
            ensureAdd(linkedHashMap, keyFunc.invoke(c0007h), new Function1<K2, V>() { // from class: com.onyx.android.sdk.base.extension.CollectionKt$toMapCollection$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final V invoke(K2 k2) {
                    return valFunc.invoke(c0007h);
                }
            }, collectionGenerator);
        }
        return linkedHashMap;
    }

    @NotNull
    public static final <K, V> Map<K, List<V>> toMapList(@NotNull Collection<? extends K> collection, @NotNull Function1<? super K, ? extends V> func) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(func, "func");
        return toMapList(collection, new Function1<K, K>() { // from class: com.onyx.android.sdk.base.extension.CollectionKt$toMapList$1
            @Override // kotlin.jvm.functions.Function1
            public final K invoke(K k) {
                return k;
            }
        }, func);
    }

    @NotNull
    public static final <K, V> Map<K, Set<V>> toMapSet(@NotNull Collection<? extends K> collection, @NotNull Function1<? super K, ? extends V> func) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(func, "func");
        return toMapSet(collection, new Function1<K, K>() { // from class: com.onyx.android.sdk.base.extension.CollectionKt$toMapSet$1
            @Override // kotlin.jvm.functions.Function1
            public final K invoke(K k) {
                return k;
            }
        }, func);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V> Map<K, V> toMutableMap(@NotNull Collection<? extends V> collection, @NotNull io.reactivex.rxjava3.functions.Function<V, K> function) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(function, "function");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (isNonBlank(collection)) {
            for (V v : collection) {
                Object applySafety = RxjavaKt.applySafety(function, v);
                if (applySafety != null) {
                    linkedHashMap.put(applySafety, v);
                }
            }
        }
        return linkedHashMap;
    }

    public static final <T> void toggle(@Nullable Collection<T> collection, @Nullable T t) {
        if (collection == null || TypeIntrinsics.asMutableCollection(collection).remove(t)) {
            return;
        }
        safeAdd(collection, t);
    }

    public static final <T> void trimToMaxSize(@NotNull List<T> list, int i) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        list.removeAll(safelySubList(list, i, list.size()));
    }

    @NotNull
    public static final <K, V> List<V> ensureList(@NotNull HashMap<K, List<V>> hashMap, K k) {
        Intrinsics.checkNotNullParameter(hashMap, "<this>");
        final CollectionKt$ensureList$1 collectionKt$ensureList$1 = new Function1<K, List<V>>() { // from class: com.onyx.android.sdk.base.extension.CollectionKt$ensureList$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke((CollectionKt$ensureList$1<K, V>) obj);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<V> invoke(K k2) {
                return new ArrayList();
            }
        };
        List<V> computeIfAbsent = hashMap.computeIfAbsent(k, new Function() { // from class: com.sunia.HTREnginev2.y0e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                List m31906d;
                m31906d = CollectionKt.m31906d(Function1.this, obj);
                return m31906d;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @Nullable
    public static final <T> T getElement(@Nullable List<? extends T> list, int i) {
        Object orNull;
        if (isOutOfRange(list, i) || list == null) {
            return null;
        }
        orNull = CollectionsKt___CollectionsKt.getOrNull(list, i);
        return (T) orNull;
    }

    public static final int getSize(@Nullable Map<?, ?> map) {
        if (map != null) {
            return map.size();
        }
        return 0;
    }

    public static final <T> boolean isFirstElement(@Nullable List<? extends T> list, T t) {
        return !isNullOrEmpty(list) && list.indexOf(t) == 0;
    }

    public static final <T> boolean isLastElement(@Nullable List<? extends T> list, T t) {
        int indexOf;
        return !isNullOrEmpty(list) && (indexOf = list.indexOf(t)) >= 0 && indexOf + 1 == getSize(list);
    }

    public static final boolean isNonBlank(@Nullable SparseArray<?> sparseArray) {
        return !isNullOrEmpty(sparseArray);
    }

    public static final boolean isNullOrEmpty(@Nullable SparseArray<?> sparseArray) {
        return sparseArray == null || sparseArray.size() <= 0;
    }

    public static final <K, V> void replace(@NotNull List<V> list, @NotNull Map<K, ? extends V> map, @NotNull Function2<? super K, ? super V, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        for (Map.Entry<K, ? extends V> entry : map.entrySet()) {
            Iterator<V> it2 = list.iterator();
            int i = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i = -1;
                    break;
                }
                if (predicate.invoke(entry.getKey(), it2.next()).booleanValue()) {
                    break;
                } else {
                    i++;
                }
            }
            if (i >= 0) {
                list.set(i, entry.getValue());
            }
        }
    }

    public static final <T> void safeAdd(@Nullable List<T> list, int i, @Nullable T t) {
        if (t == null || list == null) {
            return;
        }
        list.add(MathUtils.clamp(i, 0, Math.max(0, list.size())), t);
    }

    @NotNull
    public static final <K, V> Map<K, V> toMap(@NotNull Collection<? extends V> collection, @NotNull Function1<? super V, ? extends K> keyFunc) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(keyFunc, "keyFunc");
        return toMap(collection, keyFunc, new Function1<V, V>() { // from class: com.onyx.android.sdk.base.extension.CollectionKt$toMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final V invoke(@NotNull V it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        });
    }

    @NotNull
    public static final <K1, K2, V> Map<K2, List<V>> toMapList(@NotNull Collection<? extends K1> collection, @NotNull Function1<? super K1, ? extends K2> keyFunc, @NotNull Function1<? super K1, ? extends V> func) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(keyFunc, "keyFunc");
        Intrinsics.checkNotNullParameter(func, "func");
        return toMapCollection(collection, keyFunc, func, new Function0<List<V>>() { // from class: com.onyx.android.sdk.base.extension.CollectionKt$toMapList$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<V> invoke() {
                return new ArrayList();
            }
        });
    }

    @NotNull
    public static final <K1, K2, V> Map<K2, Set<V>> toMapSet(@NotNull Collection<? extends K1> collection, @NotNull Function1<? super K1, ? extends K2> keyFunc, @NotNull Function1<? super K1, ? extends V> func) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(keyFunc, "keyFunc");
        Intrinsics.checkNotNullParameter(func, "func");
        return toMapCollection(collection, keyFunc, func, new Function0<Set<V>>() { // from class: com.onyx.android.sdk.base.extension.CollectionKt$toMapSet$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Set<V> invoke() {
                return new LinkedHashSet();
            }
        });
    }

    public static final <T> void addIfNotContains(@NotNull Collection<T> collection, @NotNull Collection<? extends T> list) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            addIfNotContains(collection, it2.next());
        }
    }

    public static final <T> boolean contains(@NotNull Iterable<? extends T> iterable, @NotNull Function1<? super T, Boolean> predicate) {
        T t;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Iterator<? extends T> it2 = iterable.iterator();
        while (true) {
            if (!it2.hasNext()) {
                t = (T) null;
                break;
            }
            t = it2.next();
            if (predicate.invoke(t).booleanValue()) {
                break;
            }
        }
        return t != null;
    }

    public static final <T> void diff(@NotNull Set<? extends T> set, @NotNull Set<? extends T> second, @NotNull Set<T> firstOnly, @NotNull Set<T> secondOnly) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(second, "second");
        Intrinsics.checkNotNullParameter(firstOnly, "firstOnly");
        Intrinsics.checkNotNullParameter(secondOnly, "secondOnly");
        for (T t : second) {
            if (!set.contains(t)) {
                secondOnly.add(t);
            }
        }
        for (T t2 : set) {
            if (!second.contains(t2)) {
                firstOnly.add(t2);
            }
        }
    }

    @NotNull
    public static final <T> List<T> ensureList(@NotNull SparseArray<List<T>> sparseArray, int i) {
        Intrinsics.checkNotNullParameter(sparseArray, "<this>");
        List<T> list = sparseArray.get(i);
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        sparseArray.put(i, arrayList);
        return arrayList;
    }

    public static final int getSize(@Nullable Object[] objArr) {
        if (objArr != null) {
            return objArr.length;
        }
        return 0;
    }

    public static final boolean isNonBlank(@Nullable Map<?, ?> map) {
        return !isNullOrEmpty(map);
    }

    public static final boolean isNullOrEmpty(@Nullable Map<?, ?> map) {
        return map == null || map.isEmpty();
    }

    @NotNull
    public static final <K, V, R> Map<K, R> toMap(@NotNull Collection<? extends V> collection, @NotNull Function1<? super V, ? extends K> keyFunc, @NotNull Function1<? super V, ? extends R> valueFunc) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(keyFunc, "keyFunc");
        Intrinsics.checkNotNullParameter(valueFunc, "valueFunc");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (isNonBlank(collection)) {
            for (V v : collection) {
                linkedHashMap.put(keyFunc.invoke(v), valueFunc.invoke(v));
            }
        }
        return linkedHashMap;
    }

    public static final <K, V> boolean contains(@NotNull Map<K, ? extends V> map, @NotNull Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Iterator<Map.Entry<K, ? extends V>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            if (predicate.invoke(it2.next()).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public static final <T> List<T> safelySubList(@NotNull List<? extends T> list, int i, int i2) {
        List<T> mutableList;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<? extends T> list2 = list;
        if (isNullOrEmpty(list2)) {
            return new ArrayList();
        }
        if (i > i2) {
            return new ArrayList();
        }
        int size = getSize(list2);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list.subList(MathUtils.clamp(i, 0, size), MathUtils.clamp(i2, 0, size)));
        return mutableList;
    }

    public static final boolean elementsEqual(@NotNull Iterator<?> iterator1, @NotNull Iterator<?> iterator2) {
        Intrinsics.checkNotNullParameter(iterator1, "iterator1");
        Intrinsics.checkNotNullParameter(iterator2, "iterator2");
        while (iterator1.hasNext()) {
            if (!iterator2.hasNext() || !Intrinsics.areEqual(iterator1.next(), iterator2.next())) {
                return false;
            }
        }
        return !iterator2.hasNext();
    }

    public static final boolean containIgnoreCase(@Nullable String[] strArr, @Nullable String str) {
        List list;
        if (strArr == null || str == null) {
            return false;
        }
        list = ArraysKt___ArraysKt.toList(strArr);
        return containIgnoreCase(list, str);
    }

    @NotNull
    public static final <T> List<T> safelySubList(@NotNull List<? extends T> list, int i) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return safelySubList(list, i, getSize(list));
    }
}
