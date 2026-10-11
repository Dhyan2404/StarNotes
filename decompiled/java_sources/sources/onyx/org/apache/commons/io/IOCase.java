package onyx.org.apache.commons.io;

import java.util.Objects;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Stream;
import onyx.org.apache.commons.io.IOCase;

/* loaded from: classes11.dex */
public enum IOCase {
    SENSITIVE("Sensitive", true),
    INSENSITIVE("Insensitive", false),
    SYSTEM("System", FileSystem.getCurrent().isCaseSensitive());

    private static final long serialVersionUID = -6343169151696340687L;
    private final String name;
    private final transient boolean sensitive;

    IOCase(String str, boolean z) {
        this.name = str;
        this.sensitive = z;
    }

    public static IOCase forName(final String str) {
        return (IOCase) Stream.of((Object[]) values()).filter(new Predicate() { // from class: com.sunia.HTREnginev2.rci
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$forName$0;
                lambda$forName$0 = IOCase.lambda$forName$0(str, (IOCase) obj);
                return lambda$forName$0;
            }
        }).findFirst().orElseThrow(new Supplier() { // from class: com.sunia.HTREnginev2.sci
            @Override // java.util.function.Supplier
            public final Object get() {
                IllegalArgumentException lambda$forName$1;
                lambda$forName$1 = IOCase.lambda$forName$1(str);
                return lambda$forName$1;
            }
        });
    }

    public static boolean isCaseSensitive(IOCase iOCase) {
        return iOCase != null && iOCase.isCaseSensitive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$forName$0(String str, IOCase iOCase) {
        return iOCase.getName().equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ IllegalArgumentException lambda$forName$1(String str) {
        return new IllegalArgumentException("Illegal IOCase name: " + str);
    }

    private Object readResolve() {
        return forName(this.name);
    }

    public static IOCase value(IOCase iOCase, IOCase iOCase2) {
        return iOCase != null ? iOCase : iOCase2;
    }

    public int checkCompareTo(String str, String str2) {
        Objects.requireNonNull(str, "str1");
        Objects.requireNonNull(str2, "str2");
        return this.sensitive ? str.compareTo(str2) : str.compareToIgnoreCase(str2);
    }

    public boolean checkEndsWith(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        int length = str2.length();
        return str.regionMatches(!this.sensitive, str.length() - length, str2, 0, length);
    }

    public boolean checkEquals(String str, String str2) {
        return str == str2 || (str != null && (!this.sensitive ? !str.equalsIgnoreCase(str2) : !str.equals(str2)));
    }

    public int checkIndexOf(String str, int i, String str2) {
        int length;
        if (str == null || str2 == null || (length = str.length() - str2.length()) < i) {
            return -1;
        }
        while (i <= length) {
            if (checkRegionMatches(str, i, str2)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public boolean checkRegionMatches(String str, int i, String str2) {
        return (str == null || str2 == null || !str.regionMatches(this.sensitive ^ true, i, str2, 0, str2.length())) ? false : true;
    }

    public boolean checkStartsWith(String str, String str2) {
        return (str == null || str2 == null || !str.regionMatches(this.sensitive ^ true, 0, str2, 0, str2.length())) ? false : true;
    }

    public String getName() {
        return this.name;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }

    public boolean isCaseSensitive() {
        return this.sensitive;
    }
}
