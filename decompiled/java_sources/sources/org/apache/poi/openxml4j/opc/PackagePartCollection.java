package org.apache.poi.openxml4j.opc;

import com.zaxxer.sparsebits.SparseBitSet;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Set;
import java.util.TreeMap;
import java.util.function.BiConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.exceptions.InvalidOperationException;
import org.apache.poi.openxml4j.opc.PackagePartCollection;
import org.apache.poi.openxml4j.opc.PackagePartName;

/* loaded from: classes12.dex */
public final class PackagePartCollection implements Serializable {
    private static final long serialVersionUID = 2515031135957635517L;
    private final Set<String> registerPartNameStr = new HashSet();
    private final TreeMap<String, PackagePart> packagePartLookup = new TreeMap<>(new Comparator() { // from class: com.sunia.HTREnginev2.lrk
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return PackagePartName.compare((String) obj, (String) obj2);
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$getUnusedPartIndex$0(Pattern pattern, String str) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.matches()) {
            return Integer.parseInt(matcher.group(1));
        }
        return 0;
    }

    public boolean containsKey(PackagePartName packagePartName) {
        return packagePartName != null && this.packagePartLookup.containsKey(packagePartName.getName());
    }

    public PackagePart get(PackagePartName packagePartName) {
        if (packagePartName == null) {
            return null;
        }
        return this.packagePartLookup.get(packagePartName.getName());
    }

    public int getUnusedPartIndex(String str) throws InvalidFormatException {
        if (str == null || !str.contains("#")) {
            throw new InvalidFormatException("name template must not be null and contain an index char (#)");
        }
        final Pattern compile = Pattern.compile(str.replace("#", "([0-9]+)"));
        return ((SparseBitSet) this.packagePartLookup.keySet().stream().mapToInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.mrk
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                int lambda$getUnusedPartIndex$0;
                lambda$getUnusedPartIndex$0 = PackagePartCollection.lambda$getUnusedPartIndex$0(compile, (String) obj);
                return lambda$getUnusedPartIndex$0;
            }
        }).collect(new Supplier() { // from class: com.sunia.HTREnginev2.nrk
            @Override // java.util.function.Supplier
            public final Object get() {
                return new SparseBitSet();
            }
        }, new ObjIntConsumer() { // from class: com.sunia.HTREnginev2.ork
            @Override // java.util.function.ObjIntConsumer
            public final void accept(Object obj, int i) {
                ((SparseBitSet) obj).set(i);
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.prk
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((SparseBitSet) obj).m60866or((SparseBitSet) obj2);
            }
        })).nextClearBit(1);
    }

    public PackagePart put(PackagePartName packagePartName, PackagePart packagePart) {
        String name = packagePartName.getName();
        StringBuilder sb = new StringBuilder();
        for (String str : name.split("(?=[/])")) {
            sb.append(str);
            if (this.registerPartNameStr.contains(sb.toString())) {
                throw new InvalidOperationException("You can't add a part with a part name derived from another part ! [M1.11]");
            }
        }
        this.registerPartNameStr.add(name);
        return this.packagePartLookup.put(name, packagePart);
    }

    public PackagePart remove(PackagePartName packagePartName) {
        if (packagePartName == null) {
            return null;
        }
        String name = packagePartName.getName();
        PackagePart remove = this.packagePartLookup.remove(name);
        if (remove != null) {
            this.registerPartNameStr.remove(name);
        }
        return remove;
    }

    public int size() {
        return this.packagePartLookup.size();
    }

    public Collection<PackagePart> sortedValues() {
        return Collections.unmodifiableCollection(this.packagePartLookup.values());
    }
}
