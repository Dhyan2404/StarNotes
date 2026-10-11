package okio.internal;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u001e\u0010\u0003\u001a\u00020\u0002*\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005¨\u0006\u0007"}, m61528d2 = {"commonAsUtf8ToByteArray", "", "", "commonToUtf8String", "beginIndex", "", "endIndex", "okio"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\n-Utf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n+ 2 Utf8.kt\nokio/Utf8\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,60:1\n260#2,16:61\n277#2:78\n397#2,9:79\n127#2:88\n406#2,20:90\n279#2,3:110\n440#2,4:113\n127#2:117\n446#2,10:118\n127#2:128\n456#2,5:129\n127#2:134\n461#2,24:135\n283#2,3:159\n500#2,3:162\n286#2,12:165\n503#2:177\n127#2:178\n506#2,2:179\n127#2:181\n510#2,10:182\n127#2:192\n520#2,5:193\n127#2:198\n525#2,5:199\n127#2:204\n530#2,28:205\n302#2,6:233\n138#2,67:239\n68#3:77\n74#3:89\n*S KotlinDebug\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n*L\n34#1:61,16\n34#1:78\n34#1:79,9\n34#1:88\n34#1:90,20\n34#1:110,3\n34#1:113,4\n34#1:117\n34#1:118,10\n34#1:128\n34#1:129,5\n34#1:134\n34#1:135,24\n34#1:159,3\n34#1:162,3\n34#1:165,12\n34#1:177\n34#1:178\n34#1:179,2\n34#1:181\n34#1:182,10\n34#1:192\n34#1:193,5\n34#1:198\n34#1:199,5\n34#1:204\n34#1:205,28\n34#1:233,6\n50#1:239,67\n34#1:77\n34#1:89\n*E\n"})
/* loaded from: classes11.dex */
public final class _Utf8Kt {
    @NotNull
    public static final byte[] commonAsUtf8ToByteArray(@NotNull String str) {
        int i;
        int i2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bArr = new byte[str.length() * 4];
        int length = str.length();
        int i3 = 0;
        while (i3 < length) {
            char charAt = str.charAt(i3);
            if (Intrinsics.compare((int) charAt, 128) >= 0) {
                int length2 = str.length();
                int i4 = i3;
                while (i3 < length2) {
                    char charAt2 = str.charAt(i3);
                    if (Intrinsics.compare((int) charAt2, 128) < 0) {
                        int i5 = i4 + 1;
                        bArr[i4] = (byte) charAt2;
                        i3++;
                        while (true) {
                            i4 = i5;
                            if (i3 < length2 && Intrinsics.compare((int) str.charAt(i3), 128) < 0) {
                                i5 = i4 + 1;
                                bArr[i4] = (byte) str.charAt(i3);
                                i3++;
                            }
                        }
                    } else {
                        if (Intrinsics.compare((int) charAt2, 2048) < 0) {
                            int i6 = i4 + 1;
                            bArr[i4] = (byte) ((charAt2 >> 6) | 192);
                            byte b = (byte) ((charAt2 & '?') | 128);
                            i = i6 + 1;
                            bArr[i6] = b;
                        } else {
                            if (55296 <= charAt2 && charAt2 < 57344) {
                                if (Intrinsics.compare((int) charAt2, 56319) <= 0 && length2 > (i2 = i3 + 1)) {
                                    char charAt3 = str.charAt(i2);
                                    if (56320 <= charAt3 && charAt3 < 57344) {
                                        int charAt4 = ((charAt2 << '\n') + str.charAt(i2)) - 56613888;
                                        int i7 = i4 + 1;
                                        bArr[i4] = (byte) ((charAt4 >> 18) | 240);
                                        int i8 = i7 + 1;
                                        bArr[i7] = (byte) (((charAt4 >> 12) & 63) | 128);
                                        int i9 = i8 + 1;
                                        bArr[i8] = (byte) (((charAt4 >> 6) & 63) | 128);
                                        byte b2 = (byte) ((charAt4 & 63) | 128);
                                        i = i9 + 1;
                                        bArr[i9] = b2;
                                        i3 += 2;
                                        i4 = i;
                                    }
                                }
                                i = i4 + 1;
                                bArr[i4] = 63;
                            } else {
                                int i10 = i4 + 1;
                                bArr[i4] = (byte) ((charAt2 >> '\f') | 224);
                                int i11 = i10 + 1;
                                bArr[i10] = (byte) (((charAt2 >> 6) & 63) | 128);
                                byte b3 = (byte) ((charAt2 & '?') | 128);
                                i = i11 + 1;
                                bArr[i11] = b3;
                            }
                        }
                        i3++;
                        i4 = i;
                    }
                }
                byte[] copyOf = Arrays.copyOf(bArr, i4);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                return copyOf;
            }
            bArr[i3] = (byte) charAt;
            i3++;
        }
        byte[] copyOf2 = Arrays.copyOf(bArr, str.length());
        Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
        return copyOf2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x011c, code lost:
    
        if (((r16[r5] & 192) == 128) == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0098, code lost:
    
        if (((r16[r5] & 192) == 128) == false) goto L23;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String commonToUtf8String(@org.jetbrains.annotations.NotNull byte[] r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal._Utf8Kt.commonToUtf8String(byte[], int, int):java.lang.String");
    }

    public static /* synthetic */ String commonToUtf8String$default(byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = bArr.length;
        }
        return commonToUtf8String(bArr, i, i2);
    }
}
