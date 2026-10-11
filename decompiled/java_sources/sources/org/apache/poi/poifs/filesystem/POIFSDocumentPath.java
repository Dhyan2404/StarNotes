package org.apache.poi.poifs.filesystem;

import java.io.File;
import java.util.Arrays;
import java.util.Objects;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Stream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.poifs.filesystem.POIFSDocumentPath;

/* loaded from: classes12.dex */
public class POIFSDocumentPath {
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) POIFSDocumentPath.class);
    private final String[] components;
    private int hashcode;

    public POIFSDocumentPath() {
        this.components = new String[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$new$0(String str) {
        return str == null || str.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$new$1(int i) {
        return new String[i];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        return Arrays.equals(this.components, ((POIFSDocumentPath) obj).components);
    }

    public String getComponent(int i) throws ArrayIndexOutOfBoundsException {
        return this.components[i];
    }

    public String getName() {
        String[] strArr = this.components;
        return strArr.length == 0 ? "" : strArr[strArr.length - 1];
    }

    public POIFSDocumentPath getParent() {
        String[] strArr = this.components;
        if (strArr.length == 0) {
            return null;
        }
        return new POIFSDocumentPath((String[]) Arrays.copyOf(strArr, strArr.length - 1));
    }

    public int hashCode() {
        int i = this.hashcode;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.components);
        this.hashcode = hashCode;
        return hashCode;
    }

    public int length() {
        return this.components.length;
    }

    public String toString() {
        return File.separatorChar + String.join(String.valueOf(File.separatorChar), this.components);
    }

    public POIFSDocumentPath(String[] strArr) throws IllegalArgumentException {
        this(null, strArr);
    }

    public POIFSDocumentPath(POIFSDocumentPath pOIFSDocumentPath, String[] strArr) throws IllegalArgumentException {
        String[] strArr2 = pOIFSDocumentPath == null ? new String[0] : pOIFSDocumentPath.components;
        strArr = strArr == null ? new String[0] : strArr;
        if (!Stream.of((Object[]) strArr).anyMatch(pOIFSDocumentPath != null ? new Predicate() { // from class: com.sunia.HTREnginev2.gkk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.isNull((String) obj);
            }
        } : new Predicate() { // from class: com.sunia.HTREnginev2.hkk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$new$0;
                lambda$new$0 = POIFSDocumentPath.lambda$new$0((String) obj);
                return lambda$new$0;
            }
        })) {
            this.components = (String[]) Stream.concat(Stream.of((Object[]) strArr2), Stream.of((Object[]) strArr)).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.ikk
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    String[] lambda$new$1;
                    lambda$new$1 = POIFSDocumentPath.lambda$new$1(i);
                    return lambda$new$1;
                }
            });
            return;
        }
        throw new IllegalArgumentException("components cannot contain null or empty strings");
    }
}
