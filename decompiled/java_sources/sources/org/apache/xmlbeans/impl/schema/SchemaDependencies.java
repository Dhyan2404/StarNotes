package org.apache.xmlbeans.impl.schema;

import com.sunia.HTREnginev2.dyo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.xmlbeans.impl.schema.SchemaDependencies;

/* loaded from: classes13.dex */
public class SchemaDependencies {
    private final Map<String, List<String>> _contributions = new HashMap();
    private final Map<String, Set<String>> _dependencies = new HashMap();

    public SchemaDependencies() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getNamespacesTouched$3(final Set set, Map.Entry entry) {
        Stream stream = ((List) entry.getValue()).stream();
        set.getClass();
        return stream.anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.g2m
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return set.contains((String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$isFileRepresented$2(String str, List list) {
        return list.contains(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$registerContribution$1(String str) {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Set lambda$registerDependency$0(String str) {
        return new HashSet();
    }

    public Set<String> computeTransitiveClosure(List<String> list) {
        ArrayList arrayList = new ArrayList(list);
        HashSet hashSet = new HashSet(list);
        for (int i = 0; i < arrayList.size(); i++) {
            Set<String> set = this._dependencies.get(arrayList.get(i));
            if (set != null) {
                for (String str : set) {
                    if (!hashSet.contains(str)) {
                        arrayList.add(str);
                        hashSet.add(str);
                    }
                }
            }
        }
        return hashSet;
    }

    public List<String> getFilesTouched(Set<String> set) {
        Stream<String> stream = set.stream();
        final Map<String, List<String>> map = this._contributions;
        map.getClass();
        return (List) stream.map(new Function() { // from class: com.sunia.HTREnginev2.i2m
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (List) map.get((String) obj);
            }
        }).filter(new Predicate() { // from class: com.sunia.HTREnginev2.j2m
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.nonNull((List) obj);
            }
        }).flatMap(new dyo()).collect(Collectors.toList());
    }

    public List<String> getNamespacesTouched(final Set<String> set) {
        return (List) this._contributions.entrySet().stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.d2m
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getNamespacesTouched$3;
                lambda$getNamespacesTouched$3 = SchemaDependencies.lambda$getNamespacesTouched$3(set, (Map.Entry) obj);
                return lambda$getNamespacesTouched$3;
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.e2m
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (String) ((Map.Entry) obj).getKey();
            }
        }).collect(Collectors.toList());
    }

    public boolean isFileRepresented(final String str) {
        return this._contributions.values().stream().anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.h2m
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$isFileRepresented$2;
                lambda$isFileRepresented$2 = SchemaDependencies.lambda$isFileRepresented$2(str, (List) obj);
                return lambda$isFileRepresented$2;
            }
        });
    }

    public void registerContribution(String str, String str2) {
        this._contributions.computeIfAbsent(str, new Function() { // from class: com.sunia.HTREnginev2.f2m
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                List lambda$registerContribution$1;
                lambda$registerContribution$1 = SchemaDependencies.lambda$registerContribution$1((String) obj);
                return lambda$registerContribution$1;
            }
        }).add(str2);
    }

    public void registerDependency(String str, String str2) {
        this._dependencies.computeIfAbsent(str2, new Function() { // from class: com.sunia.HTREnginev2.c2m
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Set lambda$registerDependency$0;
                lambda$registerDependency$0 = SchemaDependencies.lambda$registerDependency$0((String) obj);
                return lambda$registerDependency$0;
            }
        }).add(str);
    }

    public SchemaDependencies(SchemaDependencies schemaDependencies, Set<String> set) {
        for (String str : schemaDependencies._dependencies.keySet()) {
            if (!set.contains(str)) {
                HashSet hashSet = new HashSet();
                this._dependencies.put(str, hashSet);
                for (String str2 : schemaDependencies._dependencies.get(str)) {
                    if (!set.contains(str2)) {
                        hashSet.add(str2);
                    }
                }
            }
        }
        for (String str3 : schemaDependencies._contributions.keySet()) {
            if (!set.contains(str3)) {
                ArrayList arrayList = new ArrayList();
                this._contributions.put(str3, arrayList);
                arrayList.addAll(schemaDependencies._contributions.get(str3));
            }
        }
    }
}
