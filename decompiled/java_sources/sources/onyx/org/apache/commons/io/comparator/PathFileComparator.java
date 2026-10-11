package onyx.org.apache.commons.io.comparator;

import com.sunia.HTREnginev2.AbstractC13977k3;
import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
import onyx.org.apache.commons.io.IOCase;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class PathFileComparator extends AbstractC13977k3 implements Serializable {
    public static final Comparator<File> PATH_COMPARATOR;
    public static final Comparator<File> PATH_INSENSITIVE_COMPARATOR;
    public static final Comparator<File> PATH_INSENSITIVE_REVERSE;
    public static final Comparator<File> PATH_REVERSE;
    public static final Comparator<File> PATH_SYSTEM_COMPARATOR;
    public static final Comparator<File> PATH_SYSTEM_REVERSE;
    private static final long serialVersionUID = 6527501707585768673L;
    private final IOCase ioCase;

    static {
        PathFileComparator pathFileComparator = new PathFileComparator();
        PATH_COMPARATOR = pathFileComparator;
        PATH_REVERSE = new ReverseFileComparator(pathFileComparator);
        PathFileComparator pathFileComparator2 = new PathFileComparator(IOCase.INSENSITIVE);
        PATH_INSENSITIVE_COMPARATOR = pathFileComparator2;
        PATH_INSENSITIVE_REVERSE = new ReverseFileComparator(pathFileComparator2);
        PathFileComparator pathFileComparator3 = new PathFileComparator(IOCase.SYSTEM);
        PATH_SYSTEM_COMPARATOR = pathFileComparator3;
        PATH_SYSTEM_REVERSE = new ReverseFileComparator(pathFileComparator3);
    }

    public PathFileComparator() {
        this.ioCase = IOCase.SENSITIVE;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13977k3
    public /* bridge */ /* synthetic */ List sort(List list) {
        return super.sort((List<File>) list);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13977k3
    public String toString() {
        return super.toString() + "[ioCase=" + this.ioCase + IteratorUtils.f104924b;
    }

    @Override // java.util.Comparator
    public int compare(File file, File file2) {
        return this.ioCase.checkCompareTo(file.getPath(), file2.getPath());
    }

    @Override // com.sunia.HTREnginev2.AbstractC13977k3
    public /* bridge */ /* synthetic */ File[] sort(File[] fileArr) {
        return super.sort(fileArr);
    }

    public PathFileComparator(IOCase iOCase) {
        this.ioCase = IOCase.value(iOCase, IOCase.SENSITIVE);
    }
}
