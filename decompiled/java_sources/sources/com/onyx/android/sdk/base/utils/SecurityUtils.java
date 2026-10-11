package com.onyx.android.sdk.base.utils;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\f\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u0012\u0010\b\u001a\u0004\u0018\u00010\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00022\b\u0010\t\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u0012\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u000f*\u00020\u0002H\u0002R\u0014\u0010\u0012\u001a\u00020\u00118\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/SecurityUtils;", "", "", "data", "mask", "email", "maskEmail", "phone", "maskPhone", "name", "maskUsername", "input", "", "b", "c", "Lkotlin/sequences/Sequence;", "a", "", "maskChar", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class SecurityUtils {

    @NotNull
    public static final SecurityUtils INSTANCE = new SecurityUtils();
    public static final char maskChar = '*';

    /* renamed from: a */
    public final Sequence<String> m32155a(String str) {
        Sequence<String> sequence;
        sequence = SequencesKt__SequenceBuilderKt.sequence(new SecurityUtils$codePointSequence$1(str, null));
        return sequence;
    }

    /* renamed from: b */
    public final boolean m32156b(String input) {
        return new Regex("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$").matches(input);
    }

    /* renamed from: c */
    public final boolean m32157c(String input) {
        return new Regex("^(\\+?86)?\\s*1[3-9]\\d{9}$").matches(input);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x000f  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String mask(@org.jetbrains.annotations.Nullable java.lang.String r2) {
        /*
            r1 = this;
            if (r2 == 0) goto Lb
            boolean r0 = kotlin.text.StringsKt.isBlank(r2)
            if (r0 == 0) goto L9
            goto Lb
        L9:
            r0 = 0
            goto Lc
        Lb:
            r0 = 1
        Lc:
            if (r0 == 0) goto Lf
            return r2
        Lf:
            java.lang.CharSequence r2 = kotlin.text.StringsKt.trim(r2)
            java.lang.String r2 = r2.toString()
            boolean r0 = r1.m32156b(r2)
            if (r0 == 0) goto L22
            java.lang.String r1 = r1.maskEmail(r2)
            goto L31
        L22:
            boolean r0 = r1.m32157c(r2)
            if (r0 == 0) goto L2d
            java.lang.String r1 = r1.maskPhone(r2)
            goto L31
        L2d:
            java.lang.String r1 = r1.maskUsername(r2)
        L31:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.utils.SecurityUtils.mask(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0064  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String maskEmail(@org.jetbrains.annotations.Nullable java.lang.String r9) {
        /*
            r8 = this;
            r8 = 1
            r0 = 0
            if (r9 == 0) goto Ld
            boolean r1 = kotlin.text.StringsKt.isBlank(r9)
            if (r1 == 0) goto Lb
            goto Ld
        Lb:
            r1 = r0
            goto Le
        Ld:
            r1 = r8
        Le:
            if (r1 == 0) goto L11
            return r9
        L11:
            r3 = 64
            r4 = 0
            r5 = 0
            r6 = 6
            r7 = 0
            r2 = r9
            int r1 = kotlin.text.StringsKt.indexOf$default(r2, r3, r4, r5, r6, r7)
            if (r1 > 0) goto L1f
            return r9
        L1f:
            java.lang.String r2 = r9.substring(r0, r1)
            java.lang.String r3 = "this as java.lang.String…ing(startIndex, endIndex)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            java.lang.String r9 = r9.substring(r1)
            java.lang.String r1 = "this as java.lang.String).substring(startIndex)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r1)
            int r4 = r2.length()
            r5 = 4
            java.lang.String r6 = "*"
            r7 = 3
            if (r4 > r5) goto L64
            if (r4 < r7) goto L44
            java.lang.String r2 = r2.substring(r0, r7)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
        L44:
            int r8 = r2.length()
            int r4 = r4 - r8
            int r8 = kotlin.ranges.RangesKt.coerceAtLeast(r4, r0)
            java.lang.String r8 = kotlin.text.StringsKt.repeat(r6, r8)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r2)
            r0.append(r8)
            r0.append(r9)
            java.lang.String r8 = r0.toString()
            return r8
        L64:
            java.lang.String r0 = r2.substring(r0, r7)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r3)
            int r3 = r4 + (-1)
            java.lang.String r2 = r2.substring(r3)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r1)
            int r4 = r4 - r7
            int r4 = r4 - r8
            java.lang.String r8 = kotlin.text.StringsKt.repeat(r6, r4)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            r1.append(r8)
            r1.append(r2)
            r1.append(r9)
            java.lang.String r8 = r1.toString()
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.utils.SecurityUtils.maskEmail(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0010 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0011  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String maskPhone(@org.jetbrains.annotations.Nullable java.lang.String r7) {
        /*
            r6 = this;
            r6 = 1
            r0 = 0
            if (r7 == 0) goto Ld
            boolean r1 = kotlin.text.StringsKt.isBlank(r7)
            if (r1 == 0) goto Lb
            goto Ld
        Lb:
            r1 = r0
            goto Le
        Ld:
            r1 = r6
        Le:
            if (r1 == 0) goto L11
            return r7
        L11:
            java.lang.CharSequence r7 = kotlin.text.StringsKt.trim(r7)
            java.lang.String r7 = r7.toString()
            int r1 = r7.length()
            r2 = 7
            java.lang.String r3 = "this as java.lang.String).substring(startIndex)"
            java.lang.String r4 = "this as java.lang.String…ing(startIndex, endIndex)"
            java.lang.String r5 = "*"
            if (r1 > r2) goto L5a
            r2 = 2
            if (r1 > r2) goto L2e
            java.lang.String r6 = kotlin.text.StringsKt.repeat(r5, r1)
            return r6
        L2e:
            java.lang.String r6 = r7.substring(r0, r6)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r4)
            int r4 = r1 + (-1)
            java.lang.String r7 = r7.substring(r4)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r3)
            int r1 = r1 - r2
            int r0 = kotlin.ranges.RangesKt.coerceAtLeast(r1, r0)
            java.lang.String r0 = kotlin.text.StringsKt.repeat(r5, r0)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r6)
            r1.append(r0)
            r1.append(r7)
            java.lang.String r6 = r1.toString()
            return r6
        L5a:
            r6 = 3
            java.lang.String r0 = r7.substring(r0, r6)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r4)
            int r2 = r1 + (-4)
            java.lang.String r7 = r7.substring(r2)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r3)
            int r1 = r1 - r6
            int r1 = r1 + (-4)
            java.lang.String r6 = kotlin.text.StringsKt.repeat(r5, r1)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            r1.append(r6)
            r1.append(r7)
            java.lang.String r6 = r1.toString()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.utils.SecurityUtils.maskPhone(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0010  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String maskUsername(@org.jetbrains.annotations.Nullable java.lang.String r14) {
        /*
            r13 = this;
            r0 = 1
            if (r14 == 0) goto Lc
            boolean r1 = kotlin.text.StringsKt.isBlank(r14)
            if (r1 == 0) goto La
            goto Lc
        La:
            r1 = 0
            goto Ld
        Lc:
            r1 = r0
        Ld:
            if (r1 == 0) goto L10
            return r14
        L10:
            kotlin.sequences.Sequence r13 = r13.m32155a(r14)
            java.util.List r13 = kotlin.sequences.SequencesKt.toList(r13)
            int r14 = r13.size()
            java.lang.String r1 = "*"
            if (r14 != r0) goto L21
            return r1
        L21:
            r0 = 4
            if (r0 < r14) goto L2a
            int r0 = r14 + (-1)
            int r2 = r0 / 2
            int r0 = r0 - r2
            goto L2c
        L2a:
            r2 = 2
            r0 = r2
        L2c:
            r3 = r13
            java.lang.Iterable r3 = (java.lang.Iterable) r3
            java.util.List r3 = kotlin.collections.CollectionsKt.take(r3, r0)
            r4 = r3
            java.lang.Iterable r4 = (java.lang.Iterable) r4
            java.lang.String r5 = ""
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 62
            r12 = 0
            java.lang.String r3 = kotlin.collections.CollectionsKt.joinToString$default(r4, r5, r6, r7, r8, r9, r10, r11, r12)
            java.util.List r13 = kotlin.collections.CollectionsKt.takeLast(r13, r2)
            r4 = r13
            java.lang.Iterable r4 = (java.lang.Iterable) r4
            java.lang.String r5 = ""
            java.lang.String r13 = kotlin.collections.CollectionsKt.joinToString$default(r4, r5, r6, r7, r8, r9, r10, r11, r12)
            int r14 = r14 - r0
            int r14 = r14 - r2
            java.lang.String r14 = kotlin.text.StringsKt.repeat(r1, r14)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r3)
            r0.append(r14)
            r0.append(r13)
            java.lang.String r13 = r0.toString()
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.utils.SecurityUtils.maskUsername(java.lang.String):java.lang.String");
    }
}
