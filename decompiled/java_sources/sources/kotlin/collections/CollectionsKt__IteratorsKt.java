package kotlin.collections;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m61527d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a0\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u0005H\u0086\bø\u0001\u0000\u001a\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0087\n\u001a\"\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\b0\u0003\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\t"}, m61528d2 = {"forEach", "", "T", "", "operation", "Lkotlin/Function1;", Constants.ITERATOR_PNAME, "withIndex", "Lkotlin/collections/IndexedValue;", "kotlin-stdlib"}, m61529k = 5, m61530mv = {1, 9, 0}, m61532xi = 49, m61533xs = "kotlin/collections/CollectionsKt")
/* loaded from: classes7.dex */
public class CollectionsKt__IteratorsKt extends CollectionsKt__IteratorsJVMKt {
    public static final <T> void forEach(@NotNull Iterator<? extends T> it2, @NotNull Function1<? super T, Unit> operation) {
        Intrinsics.checkNotNullParameter(it2, "<this>");
        Intrinsics.checkNotNullParameter(operation, "operation");
        while (it2.hasNext()) {
            operation.invoke(it2.next());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InlineOnly
    private static final <T> Iterator<T> iterator(Iterator<? extends T> it2) {
        Intrinsics.checkNotNullParameter(it2, "<this>");
        return it2;
    }

    @NotNull
    public static <T> Iterator<IndexedValue<T>> withIndex(@NotNull Iterator<? extends T> it2) {
        Intrinsics.checkNotNullParameter(it2, "<this>");
        return new IndexingIterator(it2);
    }
}
