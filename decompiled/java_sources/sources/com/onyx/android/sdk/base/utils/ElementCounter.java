package com.onyx.android.sdk.base.utils;

import androidx.lifecycle.SavedStateHandle;
import com.onyx.android.sdk.base.utils.ElementCounter;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u0000*\u0004\b\u0000\u0010\u00012\u001e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00030\u0002j\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u0003`\u0004B\u0005¢\u0006\u0002\u0010\u0005J\u0016\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\bJ\u0016\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\fH\u0002J\u0006\u0010\r\u001a\u00020\nJ\u0006\u0010\u000e\u001a\u00020\nJ\u0013\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000¢\u0006\u0002\u0010\u0010J\u001d\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00020\u0003H\u0016¢\u0006\u0002\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\bJ\u0013\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00028\u0000¢\u0006\u0002\u0010\u0016J\u0014\u0010\u0017\u001a\u00020\u00152\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\fJ\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\fJ\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\f¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/ElementCounter;", "T", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "()V", "get", "key", "(Ljava/lang/Object;)Ljava/lang/Integer;", "listInfo", "", "list", "", "printAscList", "printDescList", "put", "(Ljava/lang/Object;)I", "appendCount", "(Ljava/lang/Object;I)Ljava/lang/Integer;", SyncConstant.SYNC_ACTION_REMOVE, Constants.RESET, "", "(Ljava/lang/Object;)V", "resetAll", SavedStateHandle.f7923g, "toAscList", "toDescList", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nElementCounter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ElementCounter.kt\ncom/onyx/android/sdk/base/utils/ElementCounter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,75:1\n1855#2,2:76\n1855#2,2:78\n*S KotlinDebug\n*F\n+ 1 ElementCounter.kt\ncom/onyx/android/sdk/base/utils/ElementCounter\n*L\n35#1:76,2\n67#1:78,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ElementCounter<T> extends HashMap<T, Integer> {
    private final String listInfo(List<? extends T> list) {
        Iterator<T> it2 = list.iterator();
        String str = "";
        while (it2.hasNext()) {
            str = str + ",\"" + it2.next() + '\"';
        }
        if (!(str.length() > 0)) {
            return str;
        }
        String substring = str.substring(1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        return substring;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int toAscList$lambda$1(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int toDescList$lambda$2(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    public /* bridge */ boolean containsValue(Integer num) {
        return super.containsValue((Object) num);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<Map.Entry<T, Integer>> entrySet() {
        return (Set<Map.Entry<T, Integer>>) getEntries();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Object get(Object obj) {
        return get((ElementCounter<T>) obj);
    }

    public /* bridge */ Set<Map.Entry<Object, Integer>> getEntries() {
        return super.entrySet();
    }

    public /* bridge */ Set<Object> getKeys() {
        return super.keySet();
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    public /* bridge */ Collection<Integer> getValues() {
        return super.values();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<T> keySet() {
        return (Set<T>) getKeys();
    }

    @NotNull
    public final String printAscList() {
        return listInfo(toAscList());
    }

    @NotNull
    public final String printDescList() {
        return listInfo(toDescList());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return put((ElementCounter<T>) obj, ((Number) obj2).intValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Object remove(Object obj) {
        return remove((ElementCounter<T>) obj);
    }

    public final void reset(T key) {
        put((ElementCounter<T>) key, 0);
    }

    public final void resetAll(@NotNull List<? extends T> keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        Iterator<T> it2 = keys.iterator();
        while (it2.hasNext()) {
            put((ElementCounter<T>) it2.next(), 0);
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @NotNull
    public final List<T> toAscList() {
        List list;
        List<T> sortedWith;
        Set<T> keySet = keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        list = CollectionsKt___CollectionsKt.toList(keySet);
        final Function2<T, T, Integer> function2 = new Function2<T, T, Integer>(this) { // from class: com.onyx.android.sdk.base.utils.ElementCounter$toAscList$1
            final /* synthetic */ ElementCounter<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
                this.this$0 = this;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(T t, T t2) {
                return Integer.valueOf(((Number) this.this$0.get((Object) t)).intValue() - ((Number) this.this$0.get((Object) t2)).intValue());
            }
        };
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new Comparator() { // from class: com.sunia.HTREnginev2.rmf
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int ascList$lambda$1;
                ascList$lambda$1 = ElementCounter.toAscList$lambda$1(Function2.this, obj, obj2);
                return ascList$lambda$1;
            }
        });
        return sortedWith;
    }

    @NotNull
    public final List<T> toDescList() {
        List list;
        List<T> sortedWith;
        Set<T> keySet = keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        list = CollectionsKt___CollectionsKt.toList(keySet);
        final Function2<T, T, Integer> function2 = new Function2<T, T, Integer>(this) { // from class: com.onyx.android.sdk.base.utils.ElementCounter$toDescList$1
            final /* synthetic */ ElementCounter<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
                this.this$0 = this;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(T t, T t2) {
                return Integer.valueOf(((Number) this.this$0.get((Object) t2)).intValue() - ((Number) this.this$0.get((Object) t)).intValue());
            }
        };
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new Comparator() { // from class: com.sunia.HTREnginev2.smf
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int descList$lambda$2;
                descList$lambda$2 = ElementCounter.toDescList$lambda$2(Function2.this, obj, obj2);
                return descList$lambda$2;
            }
        });
        return sortedWith;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Collection<Integer> values() {
        return getValues();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof Integer) {
            return containsValue((Integer) obj);
        }
        return false;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    @NotNull
    public Integer get(T key) {
        Integer num = (Integer) super.get((Object) key);
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public final int put(T key) {
        return put((ElementCounter<T>) key, 1).intValue();
    }

    public /* bridge */ boolean remove(Object obj, Integer num) {
        return super.remove(obj, (Object) num);
    }

    @NotNull
    public Integer put(T key, int appendCount) {
        int intValue = ((Number) get((Object) key)).intValue() + appendCount;
        Integer num = (Integer) super.put((ElementCounter<T>) key, (T) Integer.valueOf(intValue));
        if (num != null) {
            intValue = num.intValue();
        }
        return Integer.valueOf(intValue);
    }

    @Override // java.util.HashMap, java.util.Map
    public final /* bridge */ boolean remove(Object obj, Object obj2) {
        if (obj2 instanceof Integer) {
            return remove(obj, (Integer) obj2);
        }
        return false;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    @NotNull
    public Integer remove(T key) {
        Integer num = (Integer) super.remove((Object) key);
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }
}
