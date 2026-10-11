package onyx.org.apache.commons.io.comparator;

import com.sunia.HTREnginev2.AbstractC13977k3;
import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes11.dex */
public class DefaultFileComparator extends AbstractC13977k3 implements Serializable {
    public static final Comparator<File> DEFAULT_COMPARATOR;
    public static final Comparator<File> DEFAULT_REVERSE;
    private static final long serialVersionUID = 3260141861365313518L;

    static {
        DefaultFileComparator defaultFileComparator = new DefaultFileComparator();
        DEFAULT_COMPARATOR = defaultFileComparator;
        DEFAULT_REVERSE = new ReverseFileComparator(defaultFileComparator);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13977k3
    public /* bridge */ /* synthetic */ List sort(List list) {
        return super.sort((List<File>) list);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13977k3
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // java.util.Comparator
    public int compare(File file, File file2) {
        return file.compareTo(file2);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13977k3
    public /* bridge */ /* synthetic */ File[] sort(File[] fileArr) {
        return super.sort(fileArr);
    }
}
