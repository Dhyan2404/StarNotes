package onyx.org.apache.commons.io.comparator;

import com.sunia.HTREnginev2.AbstractC13977k3;
import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
import onyx.org.apache.commons.io.FilenameUtils;
import onyx.org.apache.commons.io.IOCase;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class ExtensionFileComparator extends AbstractC13977k3 implements Serializable {
    public static final Comparator<File> EXTENSION_COMPARATOR;
    public static final Comparator<File> EXTENSION_INSENSITIVE_COMPARATOR;
    public static final Comparator<File> EXTENSION_INSENSITIVE_REVERSE;
    public static final Comparator<File> EXTENSION_REVERSE;
    public static final Comparator<File> EXTENSION_SYSTEM_COMPARATOR;
    public static final Comparator<File> EXTENSION_SYSTEM_REVERSE;
    private static final long serialVersionUID = 1928235200184222815L;
    private final IOCase ioCase;

    static {
        ExtensionFileComparator extensionFileComparator = new ExtensionFileComparator();
        EXTENSION_COMPARATOR = extensionFileComparator;
        EXTENSION_REVERSE = new ReverseFileComparator(extensionFileComparator);
        ExtensionFileComparator extensionFileComparator2 = new ExtensionFileComparator(IOCase.INSENSITIVE);
        EXTENSION_INSENSITIVE_COMPARATOR = extensionFileComparator2;
        EXTENSION_INSENSITIVE_REVERSE = new ReverseFileComparator(extensionFileComparator2);
        ExtensionFileComparator extensionFileComparator3 = new ExtensionFileComparator(IOCase.SYSTEM);
        EXTENSION_SYSTEM_COMPARATOR = extensionFileComparator3;
        EXTENSION_SYSTEM_REVERSE = new ReverseFileComparator(extensionFileComparator3);
    }

    public ExtensionFileComparator() {
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
        return this.ioCase.checkCompareTo(FilenameUtils.getExtension(file.getName()), FilenameUtils.getExtension(file2.getName()));
    }

    @Override // com.sunia.HTREnginev2.AbstractC13977k3
    public /* bridge */ /* synthetic */ File[] sort(File[] fileArr) {
        return super.sort(fileArr);
    }

    public ExtensionFileComparator(IOCase iOCase) {
        this.ioCase = IOCase.value(iOCase, IOCase.SENSITIVE);
    }
}
