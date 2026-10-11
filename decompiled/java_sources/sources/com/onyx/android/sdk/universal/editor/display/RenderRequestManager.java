package com.onyx.android.sdk.universal.editor.display;

import androidx.core.app.NotificationCompat;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseBenchmarkRequest;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.reader.request.RenderContentRequest;
import com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt__ReversedViewsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\f\n\u0002\u0010%\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b0\u00101J\u0010\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\t\u001a\u00020\bJ\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0013\u001a\u00020\bJ\u0006\u0010\u0015\u001a\u00020\bJ\"\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\b\b\u0000\u0010\u0017*\u00020\u0016*\b\u0012\u0004\u0012\u00028\u00000\nH\u0002J\u0018\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\n*\b\u0012\u0004\u0012\u00020\u00190\nH\u0002J\u0018\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000b0\n*\b\u0012\u0004\u0012\u00020\u001b0\nH\u0002J\u0018\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000b0\n*\b\u0012\u0004\u0012\u00020\u00190\nH\u0002J*\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\b\b\u0000\u0010\u0017*\u00020\u0016*\b\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00190\n*\b\u0012\u0004\u0012\u00020\u00190\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J2\u0010#\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00172\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000 2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000 2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010%\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\bH\u0002J\u0016\u0010'\u001a\u00020\u00042\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010)\u001a\u00020\u00042\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002R\u001a\u0010+\u001a\b\u0012\u0004\u0012\u00020\u001b0 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010*R\u001a\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00190 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010*R \u0010/\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000b0-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010.¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;", "", "", "pendingRenderTaskMaxCount", "", "cancelLimitPendingRequestList", "cancelAllRequest", "cancelAllNoteRequest", "", CouchFieldKey.KEY_TOC_PAGE_ID, "", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "cancelNoteRequest", "cancelContentRequest", "Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;", PrivilegedApp.f6532i, "addPageRenderRequestInfo", "removePageRenderRequestInfo", "cancelPageRenderingRequestList", "cacheKey", "getRenderingSlice", "getDebugString", "Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;", "T", "b", "Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;", "a", "Lcom/onyx/android/sdk/reader/request/RenderContentRequest;", C6998g.f39679a, C6999h.f39688c, "e", "d", "", "pendingList", "cancelList", "c", NotificationCompat.CATEGORY_MESSAGE, C6997f.f39671c, "list", "j", "sliceInfoList", "i", "Ljava/util/List;", "contentRequestList", "noteActionList", "", "Ljava/util/Map;", "sliceMap", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRenderRequestManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderRequestManager.kt\ncom/onyx/android/sdk/universal/editor/display/RenderRequestManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,245:1\n766#2:246\n857#2,2:247\n2634#2:249\n766#2:251\n857#2,2:252\n2634#2:254\n1360#2:256\n1446#2,5:257\n1360#2:263\n1446#2,5:264\n766#2:269\n857#2,2:270\n766#2:272\n857#2,2:273\n766#2:275\n857#2,2:276\n766#2:278\n857#2,2:279\n766#2:281\n857#2,2:282\n766#2:284\n857#2,2:285\n1855#2,2:287\n1855#2,2:289\n1855#2,2:291\n1855#2,2:293\n1#3:250\n1#3:255\n1#3:262\n*S KotlinDebug\n*F\n+ 1 RenderRequestManager.kt\ncom/onyx/android/sdk/universal/editor/display/RenderRequestManager\n*L\n42#1:246\n42#1:247,2\n43#1:249\n47#1:251\n47#1:252,2\n48#1:254\n54#1:256\n54#1:257,5\n61#1:263\n61#1:264,5\n80#1:269\n80#1:270,2\n87#1:272\n87#1:273,2\n94#1:275\n94#1:276,2\n95#1:278\n95#1:279,2\n109#1:281\n109#1:282,2\n110#1:284\n110#1:285,2\n136#1:287,2\n139#1:289,2\n187#1:291,2\n194#1:293,2\n43#1:250\n48#1:255\n*E\n"})
/* loaded from: classes8.dex */
public final class RenderRequestManager {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<RenderContentRequest> contentRequestList = new ArrayList();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<RenderNotePageAction> noteActionList = new ArrayList();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Map<String, SliceInfo> sliceMap = new LinkedHashMap();

    public static /* synthetic */ void cancelLimitPendingRequestList$default(RenderRequestManager renderRequestManager, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = AppConfig.INSTANCE.getPendingRenderTaskMaxCount();
        }
        renderRequestManager.cancelLimitPendingRequestList(i);
    }

    /* renamed from: a */
    public final List<RenderNotePageAction> m40780a(List<RenderNotePageAction> list) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!((RenderNotePageAction) obj).getIsAbort()) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((RenderNotePageAction) it2.next()).setAbort();
        }
        return arrayList;
    }

    public final void addPageRenderRequestInfo(@NotNull PageRenderRequestInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        RenderContentRequest contentRequest = info.getContentRequest();
        if (contentRequest != null) {
            this.contentRequestList.add(contentRequest);
            m40789j(info.getContentRenderArgs().getSliceInfoList());
        }
        RenderNotePageAction noteAction = info.getNoteAction();
        if (noteAction != null) {
            this.noteActionList.add(noteAction);
            m40789j(info.getNoteRenderArgs().noteSliceList());
        }
    }

    /* renamed from: b */
    public final <T extends RxBaseBenchmarkRequest> List<T> m40781b(List<? extends T> list) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!((RxBaseBenchmarkRequest) obj).getAbort()) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((RxBaseBenchmarkRequest) it2.next()).setAbort();
        }
        return arrayList;
    }

    /* renamed from: c */
    public final <T> void m40782c(List<T> pendingList, List<T> cancelList, int pendingRenderTaskMaxCount) {
    }

    public final void cancelAllNoteRequest() {
        m40787h(m40780a(this.noteActionList));
    }

    public final void cancelAllRequest() {
        m40786g(m40781b(this.contentRequestList));
        cancelAllNoteRequest();
    }

    @NotNull
    public final List<SliceInfo> cancelContentRequest(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        List<RenderContentRequest> list = this.contentRequestList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (Intrinsics.areEqual(pageId, ((RenderContentRequest) obj).getReaderRenderArgs().getVirtualPageId())) {
                arrayList.add(obj);
            }
        }
        return m40786g(m40781b(arrayList));
    }

    public final void cancelLimitPendingRequestList(int pendingRenderTaskMaxCount) {
        m40786g(m40781b(m40784e(this.contentRequestList, pendingRenderTaskMaxCount)));
        m40787h(m40780a(m40783d(this.noteActionList, pendingRenderTaskMaxCount)));
    }

    @NotNull
    public final List<SliceInfo> cancelNoteRequest(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        List<RenderNotePageAction> list = this.noteActionList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (Intrinsics.areEqual(pageId, ((RenderNotePageAction) obj).getNoteRenderArgs().getVirtualPageBoxInfo().getId())) {
                arrayList.add(obj);
            }
        }
        return m40787h(m40780a(arrayList));
    }

    public final void cancelPageRenderingRequestList(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        List<SliceInfo> cancelNoteRequest = cancelNoteRequest(pageId);
        List<SliceInfo> cancelContentRequest = cancelContentRequest(pageId);
        if ((!cancelNoteRequest.isEmpty()) || (!cancelContentRequest.isEmpty())) {
            m40785f("cancelPageRenderingRequestList, " + pageId + ", noteCancelList = " + cancelNoteRequest.size() + ", contentCancelList = " + cancelContentRequest.size());
        }
    }

    /* renamed from: d */
    public final List<RenderNotePageAction> m40783d(List<RenderNotePageAction> list, int i) {
        List mutableList;
        List asReversedMutable;
        List<RenderNotePageAction> asReversedMutable2;
        List<RenderNotePageAction> emptyList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!((RenderNotePageAction) obj).getIsAbort()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (!((RenderNotePageAction) obj2).getRunning().get()) {
                arrayList2.add(obj2);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        asReversedMutable = CollectionsKt__ReversedViewsKt.asReversedMutable(mutableList);
        asReversedMutable2 = CollectionsKt__ReversedViewsKt.asReversedMutable(CollectionKt.safelySubList(asReversedMutable, i, mutableList.size()));
        if (asReversedMutable2.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        m40782c(mutableList, asReversedMutable2, i);
        return asReversedMutable2;
    }

    /* renamed from: e */
    public final <T extends RxBaseBenchmarkRequest> List<T> m40784e(List<? extends T> list, int i) {
        List mutableList;
        List asReversedMutable;
        List<T> asReversedMutable2;
        List<T> emptyList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!((RxBaseBenchmarkRequest) obj).getAbort()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (!((RxBaseBenchmarkRequest) obj2).getRunning().get()) {
                arrayList2.add(obj2);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        asReversedMutable = CollectionsKt__ReversedViewsKt.asReversedMutable(mutableList);
        asReversedMutable2 = CollectionsKt__ReversedViewsKt.asReversedMutable(CollectionKt.safelySubList(asReversedMutable, i, mutableList.size()));
        if (asReversedMutable2.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        m40782c(mutableList, asReversedMutable2, i);
        return asReversedMutable2;
    }

    /* renamed from: f */
    public final void m40785f(String msg) {
    }

    /* renamed from: g */
    public final List<SliceInfo> m40786g(List<RenderContentRequest> list) {
        this.contentRequestList.removeAll(list);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, ((RenderContentRequest) it2.next()).getReaderRenderArgs().getSliceInfoList());
        }
        m40788i(arrayList);
        return arrayList;
    }

    @NotNull
    public final String getDebugString() {
        StringBuilder sb = new StringBuilder();
        sb.append("sliceMap = " + this.sliceMap.size() + '\n');
        sb.append(", contentRequestList = " + this.contentRequestList.size() + '\n');
        sb.append(", noteActionList = " + this.noteActionList.size() + '\n');
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @Nullable
    public final SliceInfo getRenderingSlice(@NotNull String cacheKey) {
        Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
        return this.sliceMap.get(cacheKey);
    }

    /* renamed from: h */
    public final List<SliceInfo> m40787h(List<RenderNotePageAction> list) {
        this.noteActionList.removeAll(list);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, ((RenderNotePageAction) it2.next()).getNoteRenderArgs().noteSliceList());
        }
        m40788i(arrayList);
        return arrayList;
    }

    /* renamed from: i */
    public final void m40788i(List<SliceInfo> sliceInfoList) {
        Iterator<T> it2 = sliceInfoList.iterator();
        while (it2.hasNext()) {
            this.sliceMap.remove(((SliceInfo) it2.next()).cacheKey());
        }
    }

    /* renamed from: j */
    public final void m40789j(List<SliceInfo> list) {
        for (SliceInfo sliceInfo : list) {
            sliceInfo.updateState(SliceInfo.State.RENDERING);
            this.sliceMap.put(sliceInfo.getCacheKey(), sliceInfo.copy());
        }
    }

    public final void removePageRenderRequestInfo(@NotNull PageRenderRequestInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        RenderContentRequest contentRequest = info.getContentRequest();
        if (contentRequest != null && this.contentRequestList.remove(contentRequest)) {
            m40788i(info.getContentRenderArgs().getSliceInfoList());
        }
        RenderNotePageAction noteAction = info.getNoteAction();
        if (noteAction == null || !this.noteActionList.remove(noteAction)) {
            return;
        }
        m40788i(info.getNoteRenderArgs().noteSliceList());
    }
}
