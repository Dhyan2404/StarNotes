package com.twelvemonkeys.util;

/* loaded from: classes10.dex */
public interface DuplicateHandler<T> {
    public static final DuplicateHandler<?> USE_FIRST_VALUE = new C16997a();
    public static final DuplicateHandler<?> USE_LAST_VALUE = new C16998b();
    public static final DuplicateHandler<?> DUPLICATES_AS_ARRAY = new C16999c();
    public static final DuplicateHandler<String> DUPLICATES_AS_CSV = new C17000d();

    /* renamed from: com.twelvemonkeys.util.DuplicateHandler$a */
    /* loaded from: classes10.dex */
    public static class C16997a implements DuplicateHandler {
        @Override // com.twelvemonkeys.util.DuplicateHandler
        public Object resolve(Object obj, Object obj2) {
            return obj;
        }
    }

    /* renamed from: com.twelvemonkeys.util.DuplicateHandler$b */
    /* loaded from: classes10.dex */
    public static class C16998b implements DuplicateHandler {
        @Override // com.twelvemonkeys.util.DuplicateHandler
        public Object resolve(Object obj, Object obj2) {
            return obj2;
        }
    }

    /* renamed from: com.twelvemonkeys.util.DuplicateHandler$c */
    /* loaded from: classes10.dex */
    public static class C16999c implements DuplicateHandler {
        @Override // com.twelvemonkeys.util.DuplicateHandler
        public Object resolve(Object obj, Object obj2) {
            if (!(obj instanceof Object[])) {
                return new Object[]{obj, obj2};
            }
            Object[] objArr = (Object[]) obj;
            Object[] objArr2 = new Object[objArr.length + 1];
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
            objArr2[objArr.length] = obj2;
            return objArr2;
        }
    }

    /* renamed from: com.twelvemonkeys.util.DuplicateHandler$d */
    /* loaded from: classes10.dex */
    public static class C17000d implements DuplicateHandler<String> {
        @Override // com.twelvemonkeys.util.DuplicateHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String resolve(String str, String str2) {
            return String.valueOf(str) + ',' + str2;
        }
    }

    T resolve(T t, T t2);
}
