package com.onyx.android.sdk.base.common.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u0012\u0012\u0004\u0012\u0002H\u00010\u0002j\b\u0012\u0004\u0012\u0002H\u0001`\u0003B2\u0012!\u0010\u0004\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0016J\u001d\u0010\u0013\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0019J\u001e\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u000b2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001cH\u0016J\u0016\u0010\u001a\u001a\u00020\u00142\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001cH\u0016J\u0006\u0010\u001d\u001a\u00020\u0014J\b\u0010\u001e\u001a\u00020\u0017H\u0016J\b\u0010\u001f\u001a\u00020\u0017H\u0002J\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\u0006\u0010!\u001a\u00020\tJ\u001c\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0000\u0018\u00010#2\u0006\u0010$\u001a\u00020\tJ\u0015\u0010%\u001a\u0004\u0018\u00018\u00002\u0006\u0010$\u001a\u00020\t¢\u0006\u0002\u0010&J\u000e\u0010'\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020\tJ\u001f\u0010(\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00018\u0000H\u0002¢\u0006\u0002\u0010\u0019J\b\u0010)\u001a\u00020\u0017H\u0002J\u001a\u0010*\u001a\u00020\u00172\u0006\u0010+\u001a\u00020\u000b2\b\b\u0002\u0010,\u001a\u00020\u000bH\u0002J\u0015\u0010-\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0016J\u0016\u0010.\u001a\u00020\u00142\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001cH\u0016J\u0015\u0010/\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u000bH\u0016¢\u0006\u0002\u00100J\u0018\u00101\u001a\u00020\u00142\u000e\u00102\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u000003H\u0016J\u0017\u00104\u001a\u00020\u00172\b\u0010\u0015\u001a\u0004\u0018\u00018\u0000H\u0002¢\u0006\u0002\u00105J\u001f\u00104\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00018\u0000H\u0002¢\u0006\u0002\u0010\u0019J\u0018\u00106\u001a\u00020\u00172\u0006\u0010+\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u000bH\u0002J\u0018\u00107\u001a\u00020\u00172\u0006\u00108\u001a\u00020\u000b2\u0006\u00109\u001a\u00020\u000bH\u0014J\u001c\u0010:\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0000\u0018\u00010#2\u0006\u0010$\u001a\u00020\tJ\u001e\u0010;\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010<J\u0016\u0010=\u001a\u00020\u00142\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001cH\u0002R*\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00028\u00000\u000ej\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00028\u0000`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\u000ej\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R,\u0010\u0004\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006>"}, m61528d2 = {"Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;", "E", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "stringIndexGenerator", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "e", "", "initialCapacity", "", "(Lkotlin/jvm/functions/Function1;I)V", "idToElementMap", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "idToIndexMap", "getStringIndexGenerator", "()Lkotlin/jvm/functions/Function1;", "add", "", "element", "(Ljava/lang/Object;)Z", "", FirebaseAnalytics.Param.INDEX, "(ILjava/lang/Object;)V", "addAll", Constants.ATTRNAME_ELEMENTS, "", "checkIndexSize", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.CLEAR_ATTRIBUTES, "clearAllIndex", "copy", "getDebugString", "getIndexElementPairWithId", "Lkotlin/Pair;", "id", "getWithId", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.GET_PARAMETER_SIG, "indexOfId", "putIndex", "rebuildAllIndex", "rebuildRangeIndex", "from", "to", SyncConstant.SYNC_ACTION_REMOVE, "removeAll", "removeAt", "(I)Ljava/lang/Object;", "removeIf", "filter", "Ljava/util/function/Predicate;", "removeIndex", "(Ljava/lang/Object;)V", "removeIndexRange", "removeRange", ApiBroadCastReceiver.ARGS_FROM_INDEX, ApiBroadCastReceiver.ARGS_TO_INDEX, "removeWithId", ExtensionNamespaceContext.EXSLT_SET_PREFIX, "(ILjava/lang/Object;)Ljava/lang/Object;", "superAddAll", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nStringIndexedArrayList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringIndexedArrayList.kt\ncom/onyx/android/sdk/base/common/collections/StringIndexedArrayList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,192:1\n1864#2,3:193\n*S KotlinDebug\n*F\n+ 1 StringIndexedArrayList.kt\ncom/onyx/android/sdk/base/common/collections/StringIndexedArrayList\n*L\n57#1:193,3\n*E\n"})
/* loaded from: classes7.dex */
public final class StringIndexedArrayList<E> extends ArrayList<E> {

    @NotNull
    private final HashMap<String, E> idToElementMap;

    @NotNull
    private final HashMap<String, Integer> idToIndexMap;

    @NotNull
    private final Function1<E, String> stringIndexGenerator;

    public /* synthetic */ StringIndexedArrayList(Function1 function1, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1, (i2 & 2) != 0 ? 0 : i);
    }

    private final void clearAllIndex() {
        this.idToElementMap.clear();
        this.idToIndexMap.clear();
    }

    private final void putIndex(int index, E element) {
        if (element == null) {
            return;
        }
        String invoke = this.stringIndexGenerator.invoke(element);
        this.idToElementMap.put(invoke, element);
        this.idToIndexMap.put(invoke, Integer.valueOf(index));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void rebuildAllIndex() {
        clearAllIndex();
        int i = 0;
        for (Object obj : this) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            putIndex(i, obj);
            i = i2;
        }
    }

    private final void rebuildRangeIndex(int from, int to) {
        if (from >= size()) {
            return;
        }
        while (from < to) {
            putIndex(from, get(from));
            from++;
        }
    }

    public static /* synthetic */ void rebuildRangeIndex$default(StringIndexedArrayList stringIndexedArrayList, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = stringIndexedArrayList.size();
        }
        stringIndexedArrayList.rebuildRangeIndex(i, i2);
    }

    private final void removeIndex(int index, E element) {
        if (element == null) {
            return;
        }
        String invoke = this.stringIndexGenerator.invoke(element);
        this.idToElementMap.remove(invoke);
        this.idToIndexMap.remove(invoke);
        rebuildRangeIndex$default(this, index, 0, 2, null);
    }

    private final void removeIndexRange(int from, int to) {
        for (int i = from; i < to; i++) {
            String invoke = this.stringIndexGenerator.invoke(get(i));
            this.idToElementMap.remove(invoke);
            this.idToIndexMap.remove(invoke);
        }
        rebuildRangeIndex$default(this, from, 0, 2, null);
    }

    private final boolean superAddAll(Collection<? extends E> elements) {
        return super.addAll(elements);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E element) {
        int size = size();
        boolean add = super.add(element);
        if (add) {
            putIndex(size, element);
        }
        return add;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int size = size();
        boolean addAll = super.addAll(elements);
        if (addAll) {
            rebuildRangeIndex$default(this, size, 0, 2, null);
        }
        return addAll;
    }

    public final boolean checkIndexSize() {
        return size() == this.idToElementMap.size() && size() == this.idToIndexMap.size();
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        clearAllIndex();
        super.clear();
    }

    @NotNull
    public final StringIndexedArrayList<E> copy() {
        StringIndexedArrayList<E> stringIndexedArrayList = new StringIndexedArrayList<>(this.stringIndexGenerator, size());
        stringIndexedArrayList.superAddAll(this);
        stringIndexedArrayList.idToElementMap.putAll(this.idToElementMap);
        stringIndexedArrayList.idToIndexMap.putAll(this.idToIndexMap);
        return stringIndexedArrayList;
    }

    @NotNull
    public final String getDebugString() {
        return AnyKt.toSimpleNameString(this) + ", list.size = " + size() + ", idToElementMap.size = " + this.idToElementMap.size() + ", idToIndexMap.size = " + this.idToIndexMap.size();
    }

    @Nullable
    public final Pair<Integer, E> getIndexElementPairWithId(@NotNull String id) {
        Integer num;
        Intrinsics.checkNotNullParameter(id, "id");
        E e = this.idToElementMap.get(id);
        if (e == null || (num = this.idToIndexMap.get(id)) == null) {
            return null;
        }
        return TuplesKt.m61535to(Integer.valueOf(num.intValue()), e);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    @NotNull
    public final Function1<E, String> getStringIndexGenerator() {
        return this.stringIndexGenerator;
    }

    @Nullable
    public final E getWithId(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return this.idToElementMap.get(id);
    }

    public final int indexOfId(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Integer num = this.idToIndexMap.get(id);
        if (num == null) {
            num = -1;
        }
        return num.intValue();
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ E remove(int i) {
        return removeAt(i);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean removeAll = super.removeAll(elements);
        if (removeAll) {
            rebuildAllIndex();
        }
        return removeAll;
    }

    public E removeAt(int index) {
        E e = (E) super.remove(index);
        removeIndex(index, e);
        return e;
    }

    @Override // java.util.ArrayList, java.util.Collection
    public boolean removeIf(@NotNull Predicate<? super E> filter) {
        Intrinsics.checkNotNullParameter(filter, "filter");
        boolean removeIf = super.removeIf(filter);
        if (removeIf) {
            rebuildAllIndex();
        }
        return removeIf;
    }

    @Override // java.util.ArrayList, java.util.AbstractList
    public void removeRange(int fromIndex, int toIndex) {
        super.removeRange(fromIndex, toIndex);
        removeIndexRange(fromIndex, toIndex);
    }

    @Nullable
    public final Pair<Integer, E> removeWithId(@NotNull String id) {
        Integer num;
        Intrinsics.checkNotNullParameter(id, "id");
        E remove = this.idToElementMap.remove(id);
        if (remove == null || (num = this.idToIndexMap.get(id)) == null) {
            return null;
        }
        int intValue = num.intValue();
        remove(intValue);
        return TuplesKt.m61535to(Integer.valueOf(intValue), remove);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public E set(int index, E element) {
        putIndex(index, element);
        E e = (E) super.set(index, element);
        removeIndex(e);
        return e;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public StringIndexedArrayList(@NotNull Function1<? super E, String> stringIndexGenerator, int i) {
        super(i);
        Intrinsics.checkNotNullParameter(stringIndexGenerator, "stringIndexGenerator");
        this.stringIndexGenerator = stringIndexGenerator;
        this.idToElementMap = new HashMap<>(i);
        this.idToIndexMap = new HashMap<>(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object element) {
        boolean remove = super.remove(element);
        if (remove) {
            removeIndex(element);
        }
        return remove;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public void add(int index, E element) {
        super.add(index, element);
        rebuildRangeIndex$default(this, index, 0, 2, null);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public boolean addAll(int index, @NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean addAll = super.addAll(index, elements);
        if (addAll) {
            rebuildRangeIndex$default(this, index, 0, 2, null);
        }
        return addAll;
    }

    private final void removeIndex(E element) {
        if (element == null) {
            return;
        }
        Integer num = this.idToIndexMap.get(this.stringIndexGenerator.invoke(element));
        if (num != null) {
            removeIndex(num.intValue(), element);
        }
    }
}
