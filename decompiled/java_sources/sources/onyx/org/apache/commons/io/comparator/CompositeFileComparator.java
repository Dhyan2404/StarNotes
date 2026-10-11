package onyx.org.apache.commons.io.comparator;

import com.sunia.HTREnginev2.AbstractC13977k3;
import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import onyx.org.apache.commons.io.comparator.CompositeFileComparator;

/* loaded from: classes11.dex */
public class CompositeFileComparator extends AbstractC13977k3 implements Serializable {
    private static final Comparator<?>[] EMPTY_COMPARATOR_ARRAY = new Comparator[0];
    private static final long serialVersionUID = -2224170307287243428L;
    private final Comparator<File>[] delegates;

    public CompositeFileComparator(Comparator<File>... comparatorArr) {
        this.delegates = comparatorArr == null ? emptyArray() : (Comparator[]) comparatorArr.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Comparator<File>[] emptyArray() {
        return EMPTY_COMPARATOR_ARRAY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$compare$1(File file, File file2, Comparator comparator) {
        return Integer.valueOf(comparator.compare(file, file2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$compare$2(Integer num) {
        return num.intValue() != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Comparator[] lambda$new$0(int i) {
        return new Comparator[i];
    }

    @Override // com.sunia.HTREnginev2.AbstractC13977k3
    public /* bridge */ /* synthetic */ List sort(List list) {
        return super.sort((List<File>) list);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13977k3
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append('{');
        for (int i = 0; i < this.delegates.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(this.delegates[i]);
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Comparator
    public int compare(final File file, final File file2) {
        return ((Integer) Stream.of((Object[]) this.delegates).map(new Function() { // from class: com.sunia.HTREnginev2.k7e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Integer lambda$compare$1;
                lambda$compare$1 = CompositeFileComparator.lambda$compare$1(file, file2, (Comparator) obj);
                return lambda$compare$1;
            }
        }).filter(new Predicate() { // from class: com.sunia.HTREnginev2.l7e
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$compare$2;
                lambda$compare$2 = CompositeFileComparator.lambda$compare$2((Integer) obj);
                return lambda$compare$2;
            }
        }).findFirst().orElse(0)).intValue();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13977k3
    public /* bridge */ /* synthetic */ File[] sort(File[] fileArr) {
        return super.sort(fileArr);
    }

    public CompositeFileComparator(Iterable<Comparator<File>> iterable) {
        Comparator<File>[] comparatorArr;
        if (iterable == null) {
            comparatorArr = emptyArray();
        } else {
            comparatorArr = (Comparator[]) StreamSupport.stream(iterable.spliterator(), false).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.m7e
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    Comparator[] lambda$new$0;
                    lambda$new$0 = CompositeFileComparator.lambda$new$0(i);
                    return lambda$new$0;
                }
            });
        }
        this.delegates = comparatorArr;
    }
}
