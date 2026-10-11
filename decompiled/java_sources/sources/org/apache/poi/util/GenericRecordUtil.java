package org.apache.poi.util;

import com.sunia.HTREnginev2.gon;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import java.util.stream.Collectors;
import org.apache.poi.util.BitField;
import org.apache.poi.util.GenericRecordUtil;

@Internal
/* loaded from: classes13.dex */
public final class GenericRecordUtil {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* loaded from: classes13.dex */
    public static class AnnotatedFlag {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final boolean exactMatch;
        private final Map<Integer, String> masks = new LinkedHashMap();
        private final Supplier<Number> value;

        public AnnotatedFlag(Supplier<Number> supplier, int[] iArr, String[] strArr, boolean z) {
            this.value = supplier;
            this.exactMatch = z;
            for (int i = 0; i < iArr.length; i++) {
                this.masks.put(Integer.valueOf(iArr[i]), strArr[i]);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$getDescription$0(int i, Map.Entry entry) {
            return match(i, ((Integer) entry.getKey()).intValue());
        }

        private boolean match(int i, int i2) {
            if (this.exactMatch) {
                if (i == i2) {
                    return true;
                }
            } else if ((i & i2) == i2) {
                return true;
            }
            return false;
        }

        public String getDescription() {
            final int intValue = this.value.get().intValue();
            return (String) this.masks.entrySet().stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.zzg
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$getDescription$0;
                    lambda$getDescription$0 = GenericRecordUtil.AnnotatedFlag.this.lambda$getDescription$0(intValue, (Map.Entry) obj);
                    return lambda$getDescription$0;
                }
            }).map(new Function() { // from class: com.sunia.HTREnginev2.a0h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return (String) ((Map.Entry) obj).getValue();
                }
            }).collect(Collectors.joining(" | "));
        }

        public Supplier<Number> getValue() {
            return this.value;
        }
    }

    private GenericRecordUtil() {
    }

    public static Supplier<AnnotatedFlag> getBitsAsString(final Supplier<Number> supplier, BitField[] bitFieldArr, final String[] strArr) {
        final int[] array = Arrays.stream(bitFieldArr).mapToInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.uzg
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((BitField) obj).getMask();
            }
        }).toArray();
        return new Supplier() { // from class: com.sunia.HTREnginev2.vzg
            @Override // java.util.function.Supplier
            public final Object get() {
                GenericRecordUtil.AnnotatedFlag lambda$getBitsAsString$1;
                lambda$getBitsAsString$1 = GenericRecordUtil.lambda$getBitsAsString$1(supplier, array, strArr);
                return lambda$getBitsAsString$1;
            }
        };
    }

    public static Supplier<AnnotatedFlag> getEnumBitsAsString(final Supplier<Number> supplier, final int[] iArr, final String[] strArr) {
        return new Supplier() { // from class: com.sunia.HTREnginev2.xzg
            @Override // java.util.function.Supplier
            public final Object get() {
                GenericRecordUtil.AnnotatedFlag lambda$getEnumBitsAsString$3;
                lambda$getEnumBitsAsString$3 = GenericRecordUtil.lambda$getEnumBitsAsString$3(supplier, iArr, strArr);
                return lambda$getEnumBitsAsString$3;
            }
        };
    }

    public static Map<String, Supplier<?>> getGenericProperties(String str, Supplier<?> supplier) {
        return Collections.singletonMap(str, supplier);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ AnnotatedFlag lambda$getBitsAsString$1(Supplier supplier, int[] iArr, String[] strArr) {
        return new AnnotatedFlag(supplier, iArr, strArr, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ AnnotatedFlag lambda$getBitsAsString$2(Supplier supplier, int[] iArr, String[] strArr) {
        return new AnnotatedFlag(supplier, iArr, strArr, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ AnnotatedFlag lambda$getEnumBitsAsString$3(Supplier supplier, int[] iArr, String[] strArr) {
        return new AnnotatedFlag(supplier, iArr, strArr, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Enum lambda$safeEnum$0(int i, Enum[] enumArr, Enum r3) {
        return (i < 0 || i >= enumArr.length) ? r3 : enumArr[i];
    }

    public static <T extends Enum<?>> Supplier<T> safeEnum(T[] tArr, Supplier<Number> supplier) {
        return safeEnum(tArr, supplier, null);
    }

    public static Map<String, Supplier<?>> getGenericProperties(String str, Supplier<?> supplier, String str2, Supplier<?> supplier2) {
        return getGenericProperties(str, supplier, str2, supplier2, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
    }

    public static <T extends Enum<?>> Supplier<T> safeEnum(final T[] tArr, Supplier<Number> supplier, final T t) {
        final int intValue = supplier.get().intValue();
        return new Supplier() { // from class: com.sunia.HTREnginev2.wzg
            @Override // java.util.function.Supplier
            public final Object get() {
                Enum lambda$safeEnum$0;
                lambda$safeEnum$0 = GenericRecordUtil.lambda$safeEnum$0(intValue, tArr, t);
                return lambda$safeEnum$0;
            }
        };
    }

    public static Supplier<AnnotatedFlag> getBitsAsString(final Supplier<Number> supplier, final int[] iArr, final String[] strArr) {
        return new Supplier() { // from class: com.sunia.HTREnginev2.yzg
            @Override // java.util.function.Supplier
            public final Object get() {
                GenericRecordUtil.AnnotatedFlag lambda$getBitsAsString$2;
                lambda$getBitsAsString$2 = GenericRecordUtil.lambda$getBitsAsString$2(supplier, iArr, strArr);
                return lambda$getBitsAsString$2;
            }
        };
    }

    public static Map<String, Supplier<?>> getGenericProperties(String str, Supplier<?> supplier, String str2, Supplier<?> supplier2, String str3, Supplier<?> supplier3) {
        return getGenericProperties(str, supplier, str2, supplier2, str3, supplier3, null, null, null, null, null, null, null, null, null, null, null, null);
    }

    public static Map<String, Supplier<?>> getGenericProperties(String str, Supplier<?> supplier, String str2, Supplier<?> supplier2, String str3, Supplier<?> supplier3, String str4, Supplier<?> supplier4) {
        return getGenericProperties(str, supplier, str2, supplier2, str3, supplier3, str4, supplier4, null, null, null, null, null, null, null, null, null, null);
    }

    public static Map<String, Supplier<?>> getGenericProperties(String str, Supplier<?> supplier, String str2, Supplier<?> supplier2, String str3, Supplier<?> supplier3, String str4, Supplier<?> supplier4, String str5, Supplier<?> supplier5) {
        return getGenericProperties(str, supplier, str2, supplier2, str3, supplier3, str4, supplier4, str5, supplier5, null, null, null, null, null, null, null, null);
    }

    public static Map<String, Supplier<?>> getGenericProperties(String str, Supplier<?> supplier, String str2, Supplier<?> supplier2, String str3, Supplier<?> supplier3, String str4, Supplier<?> supplier4, String str5, Supplier<?> supplier5, String str6, Supplier<?> supplier6) {
        return getGenericProperties(str, supplier, str2, supplier2, str3, supplier3, str4, supplier4, str5, supplier5, str6, supplier6, null, null, null, null, null, null);
    }

    public static Map<String, Supplier<?>> getGenericProperties(String str, Supplier<?> supplier, String str2, Supplier<?> supplier2, String str3, Supplier<?> supplier3, String str4, Supplier<?> supplier4, String str5, Supplier<?> supplier5, String str6, Supplier<?> supplier6, String str7, Supplier<?> supplier7) {
        return getGenericProperties(str, supplier, str2, supplier2, str3, supplier3, str4, supplier4, str5, supplier5, str6, supplier6, str7, supplier7, null, null, null, null);
    }

    public static Map<String, Supplier<?>> getGenericProperties(String str, Supplier<?> supplier, String str2, Supplier<?> supplier2, String str3, Supplier<?> supplier3, String str4, Supplier<?> supplier4, String str5, Supplier<?> supplier5, String str6, Supplier<?> supplier6, String str7, Supplier<?> supplier7, String str8, Supplier<?> supplier8) {
        return getGenericProperties(str, supplier, str2, supplier2, str3, supplier3, str4, supplier4, str5, supplier5, str6, supplier6, str7, supplier7, str8, supplier8, null, null);
    }

    public static Map<String, Supplier<?>> getGenericProperties(String str, Supplier<?> supplier, String str2, Supplier<?> supplier2, String str3, Supplier<?> supplier3, String str4, Supplier<?> supplier4, String str5, Supplier<?> supplier5, String str6, Supplier<?> supplier6, String str7, Supplier<?> supplier7, String str8, Supplier<?> supplier8, String str9, Supplier<?> supplier9) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String[] strArr = {str, str2, str3, str4, str5, str6, str7, str8, str9};
        Supplier[] supplierArr = {supplier, supplier2, supplier3, supplier4, supplier5, supplier6, supplier7, supplier8, supplier9};
        for (int i = 0; i < 9; i++) {
            String str10 = strArr[i];
            if (str10 == null) {
                break;
            }
            if (gon.f71271X.equals(str10)) {
                linkedHashMap.putAll((Map) supplierArr[i].get());
            } else {
                linkedHashMap.put(strArr[i], supplierArr[i]);
            }
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }
}
