package com.onyx.android.sdk.hwr.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006*\u00020\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/utils/HWROutputUtils;", "", "()V", "extractTextLines", "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRTextLine;", "Lkotlin/collections/ArrayList;", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nHWROutputUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWROutputUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWROutputUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1864#2,3:36\n*S KotlinDebug\n*F\n+ 1 HWROutputUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWROutputUtils\n*L\n16#1:36,3\n*E\n"})
/* loaded from: classes7.dex */
public final class HWROutputUtils {

    @NotNull
    public static final HWROutputUtils INSTANCE = new HWROutputUtils();

    /* JADX WARN: Removed duplicated region for block: B:24:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0093 A[SYNTHETIC] */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList<com.onyx.android.sdk.hwr.data.bean.HWRTextLine> extractTextLines(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.hwr.data.bean.HWROutput r10) {
        /*
            r9 = this;
            java.lang.String r9 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r9)
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            com.onyx.android.sdk.hwr.data.bean.HWRConvertBean r2 = r10.getCom.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING java.lang.String()
            if (r2 == 0) goto L95
            java.util.List r2 = r2.getChars()
            if (r2 == 0) goto L95
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            java.util.Iterator r2 = r2.iterator()
            r3 = 0
            r4 = r3
        L28:
            boolean r5 = r2.hasNext()
            if (r5 == 0) goto L95
            java.lang.Object r5 = r2.next()
            int r6 = r4 + 1
            if (r4 >= 0) goto L39
            kotlin.collections.CollectionsKt.throwIndexOverflow()
        L39:
            com.onyx.android.sdk.hwr.data.bean.HWRChar r5 = (com.onyx.android.sdk.hwr.data.bean.HWRChar) r5
            java.lang.String r7 = r5.getLabel()
            java.lang.String r8 = "\n"
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r7)
            java.lang.String r8 = "toString(...)"
            if (r7 == 0) goto L63
            com.onyx.android.sdk.hwr.data.bean.HWRTextLine r4 = new com.onyx.android.sdk.hwr.data.bean.HWRTextLine
            java.lang.String r1 = r1.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r8)
            r4.<init>(r1, r0)
            r9.add(r4)
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            goto L93
        L63:
            r0.add(r5)
            java.lang.String r5 = r5.getLabel()
            r1.append(r5)
            com.onyx.android.sdk.hwr.data.bean.HWRConvertBean r5 = r10.getCom.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING java.lang.String()
            if (r5 == 0) goto L81
            java.util.List r5 = r5.getChars()
            if (r5 == 0) goto L81
            int r5 = kotlin.collections.CollectionsKt.getLastIndex(r5)
            if (r4 != r5) goto L81
            r4 = 1
            goto L82
        L81:
            r4 = r3
        L82:
            if (r4 == 0) goto L93
            com.onyx.android.sdk.hwr.data.bean.HWRTextLine r4 = new com.onyx.android.sdk.hwr.data.bean.HWRTextLine
            java.lang.String r5 = r1.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r8)
            r4.<init>(r5, r0)
            r9.add(r4)
        L93:
            r4 = r6
            goto L28
        L95:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.hwr.utils.HWROutputUtils.extractTextLines(com.onyx.android.sdk.hwr.data.bean.HWROutput):java.util.ArrayList");
    }
}
