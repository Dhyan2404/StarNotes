package com.onyx.android.sdk.base.scheduler;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.p018rx.RxBaseBenchmarkRequest;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u0000 $2\u00020\u0001:\u0001$B\u0007¢\u0006\u0004\b\"\u0010#J\u0012\u0010\u0005\u001a\u00020\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002J\u0018\u0010\b\u001a\u00020\u00042\u0010\u0010\u0007\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0006J\u0012\u0010\t\u001a\u00020\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002J\u0012\u0010\n\u001a\u00020\u00042\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006J7\u0010\u0010\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u00062%\u0010\u000f\u001a!\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0002¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0003\u0012\u0004\u0012\u00020\u000e0\u000bJ\u0010\u0010\u0011\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0006J$\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\b\b\u0000\u0010\u0013*\u00020\u00122\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014J2\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\b\b\u0000\u0010\u0013*\u00020\u0012*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u00062\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014J$\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018\"\b\b\u0000\u0010\u0013*\u00020\u00122\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014J$\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\b\b\u0000\u0010\u0013*\u00020\u00122\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014J\b\u0010\u001b\u001a\u00020\u0004H\u0002J\u0010\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0014\u0010\u001f\u001a\u00020\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002R\u001e\u0010!\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010 ¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/base/scheduler/RequestManager;", "", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", AbstractLogger.REQUEST, "", "addRequest", "", "list", "addRequestList", "removeRequest", "removeRequestList", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "", "requestFilter", "cancelRequests", "cancelAllRequests", "Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;", "T", "Lkotlin/reflect/KClass;", "clazz", "cancelPendingRequest", "toTypeList", "", "getPendingRequestList", "cancelRunningRequest", "a", "", NotificationCompat.CATEGORY_MESSAGE, "b", "c", "Ljava/util/List;", "requestList", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRequestManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestManager.kt\ncom/onyx/android/sdk/base/scheduler/RequestManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,129:1\n1477#2:130\n1502#2,3:131\n1505#2,3:141\n766#2:146\n857#2,2:147\n2634#2:149\n766#2:151\n857#2,2:152\n1549#2:154\n1620#2,3:155\n766#2:158\n857#2,2:159\n766#2:161\n857#2,2:162\n372#3,7:134\n215#4,2:144\n1#5:150\n*S KotlinDebug\n*F\n+ 1 RequestManager.kt\ncom/onyx/android/sdk/base/scheduler/RequestManager\n*L\n40#1:130\n40#1:131,3\n40#1:141,3\n69#1:146\n69#1:147,2\n70#1:149\n89#1:151\n89#1:152,2\n90#1:154\n90#1:155,3\n95#1:158\n95#1:159,2\n96#1:161\n96#1:162,2\n40#1:134,7\n40#1:144,2\n70#1:150\n*E\n"})
/* loaded from: classes7.dex */
public final class RequestManager {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int WARNING_REQUEST_COUNT_THRESHOLD = 20;

    /* renamed from: b */
    public static boolean f40828b;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<RxBaseRequest<?>> requestList = new ArrayList();

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/scheduler/RequestManager$Companion;", "", "()V", "DEBUG_REQUEST", "", "getDEBUG_REQUEST", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setDEBUG_REQUEST", "(Z)V", "WARNING_REQUEST_COUNT_THRESHOLD", "", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean getDEBUG_REQUEST() {
            return RequestManager.f40828b;
        }

        public final void setDEBUG_REQUEST(boolean z) {
            RequestManager.f40828b = z;
        }

        public Companion() {
        }
    }

    /* renamed from: a */
    public final void m32006a() {
        if (f40828b) {
            if (this.requestList.size() <= 20) {
                Debug.INSTANCE.m32058v(Reflection.getOrCreateKotlinClass(RequestManager.class), "requestCount = " + this.requestList.size(), new Object[0]);
                return;
            }
            StringBuilder sb = new StringBuilder("requestCount = " + this.requestList.size() + ", check running request, maybe thread blocked?");
            sb.append("\n");
            sb.append("dump detail start");
            List<RxBaseRequest<?>> list = this.requestList;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : list) {
                String simpleName = ((RxBaseRequest) obj).getClass().getSimpleName();
                Object obj2 = linkedHashMap.get(simpleName);
                if (obj2 == null) {
                    obj2 = new ArrayList();
                    linkedHashMap.put(simpleName, obj2);
                }
                ((List) obj2).add(obj);
            }
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                String str = (String) entry.getKey();
                List list2 = (List) entry.getValue();
                sb.append("\n");
                sb.append("key = " + str + ", count = " + list2.size());
            }
            sb.append("\n");
            sb.append("dump detail finish");
            Debug.INSTANCE.m32064w(Reflection.getOrCreateKotlinClass(RequestManager.class), sb.toString(), new Object[0]);
        }
    }

    public final void addRequest(@NotNull RxBaseRequest<?> request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.requestList.add(request);
        m32006a();
    }

    public final void addRequestList(@NotNull List<? extends RxBaseRequest<?>> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.requestList.addAll(list);
        m32006a();
    }

    /* renamed from: b */
    public final void m32007b(String msg) {
        if (f40828b) {
            Debug.INSTANCE.m32057v(AnyKt.toSimpleNameString(this), msg, new Object[0]);
        }
    }

    /* renamed from: c */
    public final void m32008c(RxBaseRequest<?> request) {
        if (f40828b) {
            Debug.INSTANCE.m32035d(RequestManager.class, AnyKt.toSimpleNameString(request) + " is cancelled", new Object[0]);
        }
    }

    @NotNull
    public final List<RxBaseRequest<?>> cancelAllRequests() {
        return cancelRequests(new Function1<RxBaseRequest<?>, Boolean>() { // from class: com.onyx.android.sdk.base.scheduler.RequestManager$cancelAllRequests$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RxBaseRequest<?> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.TRUE;
            }
        });
    }

    @NotNull
    public final <T extends RxBaseBenchmarkRequest> List<T> cancelPendingRequest(@NotNull final KClass<T> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return toTypeList(cancelRequests(new Function1<RxBaseRequest<?>, Boolean>() { // from class: com.onyx.android.sdk.base.scheduler.RequestManager$cancelPendingRequest$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RxBaseRequest<?> request) {
                Intrinsics.checkNotNullParameter(request, "request");
                boolean z = false;
                if (clazz.isInstance(request) && !((RxBaseBenchmarkRequest) request).getRunning().get()) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        }), clazz);
    }

    @NotNull
    public final List<RxBaseRequest<?>> cancelRequests(@NotNull Function1<? super RxBaseRequest<?>, Boolean> requestFilter) {
        Intrinsics.checkNotNullParameter(requestFilter, "requestFilter");
        List<RxBaseRequest<?>> list = this.requestList;
        ArrayList<RxBaseRequest<?>> arrayList = new ArrayList();
        for (Object obj : list) {
            RxBaseRequest rxBaseRequest = (RxBaseRequest) obj;
            if (!rxBaseRequest.getAbort() && requestFilter.invoke(rxBaseRequest).booleanValue()) {
                arrayList.add(obj);
            }
        }
        for (RxBaseRequest<?> rxBaseRequest2 : arrayList) {
            rxBaseRequest2.setAbort();
            m32008c(rxBaseRequest2);
        }
        return arrayList;
    }

    @NotNull
    public final <T extends RxBaseBenchmarkRequest> List<T> cancelRunningRequest(@NotNull final KClass<T> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return toTypeList(cancelRequests(new Function1<RxBaseRequest<?>, Boolean>() { // from class: com.onyx.android.sdk.base.scheduler.RequestManager$cancelRunningRequest$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RxBaseRequest<?> request) {
                Intrinsics.checkNotNullParameter(request, "request");
                return Boolean.valueOf(clazz.isInstance(request) ? ((RxBaseBenchmarkRequest) request).getRunning().get() : false);
            }
        }), clazz);
    }

    @NotNull
    public final <T extends RxBaseBenchmarkRequest> List<T> getPendingRequestList(@NotNull KClass<T> clazz) {
        List<T> mutableList;
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        List<RxBaseRequest<?>> list = this.requestList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (true ^ ((RxBaseRequest) obj).getAbort()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            RxBaseRequest rxBaseRequest = (RxBaseRequest) obj2;
            boolean z = false;
            if (clazz.isInstance(rxBaseRequest)) {
                Intrinsics.checkNotNull(rxBaseRequest, "null cannot be cast to non-null type T of com.onyx.android.sdk.base.scheduler.RequestManager.getPendingRequestList$lambda$7");
                if (!((RxBaseBenchmarkRequest) rxBaseRequest).getRunning().get()) {
                    z = true;
                }
            }
            if (z) {
                arrayList2.add(obj2);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) toTypeList(arrayList2, clazz));
        return mutableList;
    }

    public final void removeRequest(@NotNull RxBaseRequest<?> request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.requestList.remove(request);
        m32006a();
    }

    public final void removeRequestList(@NotNull List<?> list) {
        Set set;
        Intrinsics.checkNotNullParameter(list, "list");
        List<RxBaseRequest<?>> list2 = this.requestList;
        set = CollectionsKt___CollectionsKt.toSet(list);
        TypeIntrinsics.asMutableCollection(list2).removeAll(set);
        m32007b("removeRequestList, size = " + list.size());
        m32006a();
    }

    @NotNull
    public final <T extends RxBaseBenchmarkRequest> List<T> toTypeList(@NotNull List<? extends RxBaseRequest<?>> list, @NotNull KClass<T> clazz) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        ArrayList<RxBaseRequest> arrayList = new ArrayList();
        for (Object obj : list) {
            if (clazz.isInstance((RxBaseRequest) obj)) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (RxBaseRequest rxBaseRequest : arrayList) {
            Intrinsics.checkNotNull(rxBaseRequest, "null cannot be cast to non-null type T of com.onyx.android.sdk.base.scheduler.RequestManager.toTypeList$lambda$5");
            arrayList2.add((RxBaseBenchmarkRequest) rxBaseRequest);
        }
        return arrayList2;
    }
}
