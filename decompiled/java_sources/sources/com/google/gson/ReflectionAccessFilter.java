package com.google.gson;

import com.google.gson.internal.ReflectionAccessFilterHelper;

/* loaded from: classes6.dex */
public interface ReflectionAccessFilter {
    public static final ReflectionAccessFilter BLOCK_INACCESSIBLE_JAVA = new C6497a();
    public static final ReflectionAccessFilter BLOCK_ALL_JAVA = new C6498b();
    public static final ReflectionAccessFilter BLOCK_ALL_ANDROID = new C6499c();
    public static final ReflectionAccessFilter BLOCK_ALL_PLATFORM = new C6500d();

    /* loaded from: classes6.dex */
    public enum FilterResult {
        ALLOW,
        INDECISIVE,
        BLOCK_INACCESSIBLE,
        BLOCK_ALL
    }

    /* renamed from: com.google.gson.ReflectionAccessFilter$a */
    /* loaded from: classes6.dex */
    public class C6497a implements ReflectionAccessFilter {
        @Override // com.google.gson.ReflectionAccessFilter
        public FilterResult check(Class<?> cls) {
            return ReflectionAccessFilterHelper.isJavaType(cls) ? FilterResult.BLOCK_INACCESSIBLE : FilterResult.INDECISIVE;
        }

        public String toString() {
            return "ReflectionAccessFilter#BLOCK_INACCESSIBLE_JAVA";
        }
    }

    /* renamed from: com.google.gson.ReflectionAccessFilter$b */
    /* loaded from: classes6.dex */
    public class C6498b implements ReflectionAccessFilter {
        @Override // com.google.gson.ReflectionAccessFilter
        public FilterResult check(Class<?> cls) {
            return ReflectionAccessFilterHelper.isJavaType(cls) ? FilterResult.BLOCK_ALL : FilterResult.INDECISIVE;
        }

        public String toString() {
            return "ReflectionAccessFilter#BLOCK_ALL_JAVA";
        }
    }

    /* renamed from: com.google.gson.ReflectionAccessFilter$c */
    /* loaded from: classes6.dex */
    public class C6499c implements ReflectionAccessFilter {
        @Override // com.google.gson.ReflectionAccessFilter
        public FilterResult check(Class<?> cls) {
            return ReflectionAccessFilterHelper.isAndroidType(cls) ? FilterResult.BLOCK_ALL : FilterResult.INDECISIVE;
        }

        public String toString() {
            return "ReflectionAccessFilter#BLOCK_ALL_ANDROID";
        }
    }

    /* renamed from: com.google.gson.ReflectionAccessFilter$d */
    /* loaded from: classes6.dex */
    public class C6500d implements ReflectionAccessFilter {
        @Override // com.google.gson.ReflectionAccessFilter
        public FilterResult check(Class<?> cls) {
            return ReflectionAccessFilterHelper.isAnyPlatformType(cls) ? FilterResult.BLOCK_ALL : FilterResult.INDECISIVE;
        }

        public String toString() {
            return "ReflectionAccessFilter#BLOCK_ALL_PLATFORM";
        }
    }

    FilterResult check(Class<?> cls);
}
