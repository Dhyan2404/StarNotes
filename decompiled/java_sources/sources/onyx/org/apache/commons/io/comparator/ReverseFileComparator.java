package onyx.org.apache.commons.io.comparator;

import com.sunia.HTREnginev2.AbstractC13977k3;
import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Objects;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
final class ReverseFileComparator extends AbstractC13977k3 implements Serializable {
    private static final long serialVersionUID = -4808255005272229056L;
    private final Comparator<File> delegate;

    public ReverseFileComparator(Comparator<File> comparator) {
        Objects.requireNonNull(comparator, "delegate");
        this.delegate = comparator;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13977k3
    public String toString() {
        return super.toString() + IteratorUtils.f104923a + this.delegate.toString() + IteratorUtils.f104924b;
    }

    @Override // java.util.Comparator
    public int compare(File file, File file2) {
        return this.delegate.compare(file2, file);
    }
}
