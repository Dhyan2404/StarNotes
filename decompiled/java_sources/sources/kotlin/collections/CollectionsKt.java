package kotlin.collections;

import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"kotlin/collections/CollectionsKt__CollectionsJVMKt", "kotlin/collections/CollectionsKt__CollectionsKt", "kotlin/collections/CollectionsKt__IterablesKt", "kotlin/collections/CollectionsKt__IteratorsJVMKt", "kotlin/collections/CollectionsKt__IteratorsKt", "kotlin/collections/CollectionsKt__MutableCollectionsJVMKt", "kotlin/collections/CollectionsKt__MutableCollectionsKt", "kotlin/collections/CollectionsKt__ReversedViewsKt", "kotlin/collections/CollectionsKt___CollectionsJvmKt", "kotlin/collections/CollectionsKt___CollectionsKt"}, m61529k = 4, m61530mv = {1, 9, 0}, m61532xi = 49)
/* loaded from: classes7.dex */
public final class CollectionsKt extends CollectionsKt___CollectionsKt {
    private CollectionsKt() {
    }

    public static /* bridge */ /* synthetic */ boolean addAll(@NotNull Collection collection, @NotNull Iterable iterable) {
        return CollectionsKt__MutableCollectionsKt.addAll(collection, iterable);
    }

    @PublishedApi
    public static /* bridge */ /* synthetic */ int collectionSizeOrDefault(@NotNull Iterable iterable, int i) {
        return CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, i);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ List drop(@NotNull Iterable iterable, int i) {
        return CollectionsKt___CollectionsKt.drop(iterable, i);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ List emptyList() {
        return CollectionsKt__CollectionsKt.emptyList();
    }

    public static /* bridge */ /* synthetic */ Appendable joinTo$default(Iterable iterable, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, Function1 function1, int i2, Object obj) {
        Appendable joinTo;
        joinTo = CollectionsKt___CollectionsKt.joinTo(iterable, appendable, (r14 & 2) != 0 ? ", " : charSequence, (r14 & 4) != 0 ? "" : charSequence2, (r14 & 8) == 0 ? charSequence3 : "", (r14 & 16) != 0 ? -1 : i, (r14 & 32) != 0 ? RemoveAudioAction.f58149k : charSequence4, (r14 & 64) != 0 ? null : function1);
        return joinTo;
    }

    public static /* bridge */ /* synthetic */ String joinToString$default(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, Function1 function1, int i2, Object obj) {
        return CollectionsKt___CollectionsKt.joinToString$default(iterable, charSequence, charSequence2, charSequence3, i, charSequence4, function1, i2, obj);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ List listOf(Object obj) {
        return CollectionsKt__CollectionsJVMKt.listOf(obj);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ List mutableListOf(@NotNull Object... objArr) {
        return CollectionsKt__CollectionsKt.mutableListOf(objArr);
    }

    public static /* bridge */ /* synthetic */ boolean retainAll(@NotNull Iterable iterable, @NotNull Function1 function1) {
        return CollectionsKt__MutableCollectionsKt.retainAll(iterable, function1);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ List sortedWith(@NotNull Iterable iterable, @NotNull Comparator comparator) {
        return CollectionsKt___CollectionsKt.sortedWith(iterable, comparator);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ List take(@NotNull Iterable iterable, int i) {
        return CollectionsKt___CollectionsKt.take(iterable, i);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    public static /* bridge */ /* synthetic */ void throwIndexOverflow() {
        CollectionsKt__CollectionsKt.throwIndexOverflow();
    }

    @NotNull
    public static /* bridge */ /* synthetic */ List toList(@NotNull Iterable iterable) {
        return CollectionsKt___CollectionsKt.toList(iterable);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ List toMutableList(@NotNull Collection collection) {
        return CollectionsKt___CollectionsKt.toMutableList(collection);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Set toMutableSet(@NotNull Iterable iterable) {
        return CollectionsKt___CollectionsKt.toMutableSet(iterable);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Set toSet(@NotNull Iterable iterable) {
        return CollectionsKt___CollectionsKt.toSet(iterable);
    }

    public static /* bridge */ /* synthetic */ Object last(@NotNull List list) {
        return CollectionsKt___CollectionsKt.last(list);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ List listOf(@NotNull Object... objArr) {
        return CollectionsKt__CollectionsKt.listOf(objArr);
    }
}
