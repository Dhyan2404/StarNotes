package androidx.room.util;

import androidx.annotation.RestrictTo;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\u001a\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\u001a\u0018\u0010\f\u001a\u0004\u0018\u00010\u00022\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u000e\u001a\u0006\u0010\u000f\u001a\u00020\t\u001a\u0018\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0002\" \u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00018\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0005\u0012\u0004\b\u0003\u0010\u0004¨\u0006\u0011"}, m61528d2 = {"EMPTY_STRING_ARRAY", "", "", "getEMPTY_STRING_ARRAY$annotations", "()V", "[Ljava/lang/String;", "appendPlaceholders", "", "builder", "Ljava/lang/StringBuilder;", "count", "", "joinIntoString", "input", "", "newStringBuilder", "splitToIntList", "room-runtime_release"}, m61529k = 2, m61530mv = {1, 7, 1}, m61532xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@JvmName(name = "StringUtil")
/* loaded from: classes3.dex */
public final class StringUtil {

    @JvmField
    @NotNull
    public static final String[] EMPTY_STRING_ARRAY = new String[0];

    public static final void appendPlaceholders(@NotNull StringBuilder builder, int i) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        for (int i2 = 0; i2 < i; i2++) {
            builder.append("?");
            if (i2 < i - 1) {
                builder.append(",");
            }
        }
    }

    public static /* synthetic */ void getEMPTY_STRING_ARRAY$annotations() {
    }

    @Nullable
    public static final String joinIntoString(@Nullable List<Integer> list) {
        String joinToString$default;
        if (list == null) {
            return null;
        }
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(list, ",", null, null, 0, null, null, 62, null);
        return joinToString$default;
    }

    @NotNull
    public static final StringBuilder newStringBuilder() {
        return new StringBuilder();
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0003, code lost:
    
        r8 = kotlin.text.StringsKt__StringsKt.split$default((java.lang.CharSequence) r8, new char[]{','}, false, 0, 6, (java.lang.Object) null);
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.List<java.lang.Integer> splitToIntList(@org.jetbrains.annotations.Nullable java.lang.String r8) {
        /*
            r0 = 0
            if (r8 == 0) goto L46
            r1 = 1
            char[] r3 = new char[r1]
            r1 = 0
            r2 = 44
            r3[r1] = r2
            r4 = 0
            r5 = 0
            r6 = 6
            r7 = 0
            r2 = r8
            java.util.List r8 = kotlin.text.StringsKt.split$default(r2, r3, r4, r5, r6, r7)
            if (r8 == 0) goto L46
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r8 = r8.iterator()
        L21:
            boolean r2 = r8.hasNext()
            if (r2 == 0) goto L45
            java.lang.Object r2 = r8.next()
            java.lang.String r2 = (java.lang.String) r2
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.NumberFormatException -> L36
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.NumberFormatException -> L36
            goto L3f
        L36:
            r2 = move-exception
            java.lang.String r3 = "ROOM"
            java.lang.String r4 = "Malformed integer list"
            android.util.Log.e(r3, r4, r2)
            r2 = r0
        L3f:
            if (r2 == 0) goto L21
            r1.add(r2)
            goto L21
        L45:
            r0 = r1
        L46:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.StringUtil.splitToIntList(java.lang.String):java.util.List");
    }
}
