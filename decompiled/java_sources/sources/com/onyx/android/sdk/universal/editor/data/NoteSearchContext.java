package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.base.data.DelegatedValueProvider;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.data.NoteSearchContext;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u001d\u001a\u00020\u001eJ\u001c\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00050 2\u000e\b\u0002\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00050\"J\u000e\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0005J\u001a\u0010&\u001a\b\u0012\u0004\u0012\u00020\u001c0 2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00050\"J\u0014\u0010'\u001a\u00020\u001e2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0004R!\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R \u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\rR \u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0007\"\u0004\b\u0010\u0010\rR \u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0007\"\u0004\b\u0013\u0010\rR \u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0007\"\u0004\b\u0016\u0010\rR \u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0007\"\u0004\b\u0019\u0010\rR\u001a\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001c0\u001bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;", "", "()V", "allPageIds", "", "", "getAllPageIds", "()Ljava/util/Set;", "allPageIds$delegate", "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;", "pageIdsForBuildIndex", "getPageIdsForBuildIndex", "setPageIdsForBuildIndex", "(Ljava/util/Set;)V", "pageIdsForSearchReader", "getPageIdsForSearchReader", "setPageIdsForSearchReader", "pageIdsForSearchScribble", "getPageIdsForSearchScribble", "setPageIdsForSearchScribble", "pageIdsForSearchTextBox", "getPageIdsForSearchTextBox", "setPageIdsForSearchTextBox", "shapeIdsForSearchTextBox", "getShapeIdsForSearchTextBox", "setShapeIdsForSearchTextBox", "virtualPageMap", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", Constants.CLEAR_ATTRIBUTES, "", "filterPageIdsForBuildIndex", "", "pageIds", "", "getPageIndex", "", CouchFieldKey.KEY_TOC_PAGE_ID, "getVirtualPageList", "updateVirtualPageList", "list", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteSearchContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteSearchContext.kt\ncom/onyx/android/sdk/universal/editor/data/NoteSearchContext\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,44:1\n97#2:45\n1603#3,9:46\n1855#3:55\n1856#3:57\n1612#3:58\n766#3:59\n857#3,2:60\n1#4:56\n*S KotlinDebug\n*F\n+ 1 NoteSearchContext.kt\ncom/onyx/android/sdk/universal/editor/data/NoteSearchContext\n*L\n16#1:45\n25#1:46,9\n25#1:55\n25#1:57\n25#1:58\n33#1:59\n33#1:60,2\n25#1:56\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteSearchContext {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(NoteSearchContext.class, "allPageIds", "getAllPageIds()Ljava/util/Set;", 0))};

    @NotNull
    private Map<String, VirtualPage> virtualPageMap = new LinkedHashMap();

    @NotNull
    private Set<String> pageIdsForBuildIndex = new LinkedHashSet();

    @NotNull
    private Set<String> pageIdsForSearchReader = new LinkedHashSet();

    @NotNull
    private Set<String> pageIdsForSearchTextBox = new LinkedHashSet();

    @NotNull
    private Set<String> shapeIdsForSearchTextBox = new LinkedHashSet();

    @NotNull
    private Set<String> pageIdsForSearchScribble = new LinkedHashSet();

    /* renamed from: allPageIds$delegate, reason: from kotlin metadata */
    @NotNull
    private final DelegatedValueProvider allPageIds = new DelegatedValueProvider() { // from class: com.onyx.android.sdk.universal.editor.data.NoteSearchContext$special$$inlined$delegate$1
        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        public RESULT getValue(CONTEXT context, @NotNull KProperty<?> kProperty) {
            return (RESULT) DelegatedValueProvider.DefaultImpls.getValue(this, context, kProperty);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        public final Set<String> provideValue(CONTEXT context) {
            Map map;
            map = ((NoteSearchContext) context).virtualPageMap;
            return map.keySet();
        }
    };

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ List filterPageIdsForBuildIndex$default(NoteSearchContext noteSearchContext, Collection collection, int i, Object obj) {
        if ((i & 1) != 0) {
            collection = noteSearchContext.getAllPageIds();
        }
        return noteSearchContext.filterPageIdsForBuildIndex(collection);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String updateVirtualPageList$lambda$1(VirtualPage it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        return it2.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId();
    }

    public final void clear() {
        this.virtualPageMap.clear();
        this.pageIdsForBuildIndex.clear();
        this.pageIdsForSearchReader.clear();
        this.pageIdsForSearchTextBox.clear();
        this.shapeIdsForSearchTextBox.clear();
        this.pageIdsForSearchScribble.clear();
    }

    @NotNull
    public final List<String> filterPageIdsForBuildIndex(@NotNull Collection<String> pageIds) {
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        Set<String> set = this.pageIdsForBuildIndex;
        ArrayList arrayList = new ArrayList();
        for (Object obj : set) {
            if (pageIds.contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final Set<String> getAllPageIds() {
        return (Set) this.allPageIds.getValue(this, $$delegatedProperties[0]);
    }

    @NotNull
    public final Set<String> getPageIdsForBuildIndex() {
        return this.pageIdsForBuildIndex;
    }

    @NotNull
    public final Set<String> getPageIdsForSearchReader() {
        return this.pageIdsForSearchReader;
    }

    @NotNull
    public final Set<String> getPageIdsForSearchScribble() {
        return this.pageIdsForSearchScribble;
    }

    @NotNull
    public final Set<String> getPageIdsForSearchTextBox() {
        return this.pageIdsForSearchTextBox;
    }

    public final int getPageIndex(@NotNull String pageId) {
        int indexOf;
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        indexOf = CollectionsKt___CollectionsKt.indexOf((Iterable<? extends String>) ((Iterable<? extends Object>) getAllPageIds()), pageId);
        return indexOf;
    }

    @NotNull
    public final Set<String> getShapeIdsForSearchTextBox() {
        return this.shapeIdsForSearchTextBox;
    }

    @NotNull
    public final List<VirtualPage> getVirtualPageList(@NotNull Collection<String> pageIds) {
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = pageIds.iterator();
        while (it2.hasNext()) {
            VirtualPage virtualPage = this.virtualPageMap.get((String) it2.next());
            if (virtualPage != null) {
                arrayList.add(virtualPage);
            }
        }
        return arrayList;
    }

    public final void setPageIdsForBuildIndex(@NotNull Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.pageIdsForBuildIndex = set;
    }

    public final void setPageIdsForSearchReader(@NotNull Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.pageIdsForSearchReader = set;
    }

    public final void setPageIdsForSearchScribble(@NotNull Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.pageIdsForSearchScribble = set;
    }

    public final void setPageIdsForSearchTextBox(@NotNull Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.pageIdsForSearchTextBox = set;
    }

    public final void setShapeIdsForSearchTextBox(@NotNull Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.shapeIdsForSearchTextBox = set;
    }

    public final void updateVirtualPageList(@NotNull Set<VirtualPage> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.virtualPageMap = CollectionKt.toMutableMap(list, new Function() { // from class: com.sunia.HTREnginev2.w1k
            @Override // io.reactivex.rxjava3.functions.Function
            public final Object apply(Object obj) {
                String updateVirtualPageList$lambda$1;
                updateVirtualPageList$lambda$1 = NoteSearchContext.updateVirtualPageList$lambda$1((VirtualPage) obj);
                return updateVirtualPageList$lambda$1;
            }
        });
    }
}
