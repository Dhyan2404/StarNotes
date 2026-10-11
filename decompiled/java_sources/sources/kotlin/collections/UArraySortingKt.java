package kotlin.collections;

import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sunia.HTREnginev2.gon;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShortArray;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0010\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0006\u0010\u0007\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\t\u0010\n\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\f\u0010\r\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u000f\u0010\u0010\u001a'\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0013\u0010\u0014\u001a'\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0015\u0010\u0016\u001a'\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0017\u0010\u0018\u001a'\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0019\u0010\u001a\u001a'\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001e\u0010\u0014\u001a'\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001f\u0010\u0016\u001a'\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b \u0010\u0018\u001a'\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b!\u0010\u001a¨\u0006\""}, m61528d2 = {"partition", "", "array", "Lkotlin/UByteArray;", "left", gon.f71288n0, "partition-4UcCI2c", "([BII)I", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort", "", "quickSort-4UcCI2c", "([BII)V", "quickSort-oBK06Vg", "([III)V", "quickSort--nroSd4", "([JII)V", "quickSort-Aa5vz7o", "([SII)V", "sortArray", ApiBroadCastReceiver.ARGS_FROM_INDEX, ApiBroadCastReceiver.ARGS_TO_INDEX, "sortArray-4UcCI2c", "sortArray-oBK06Vg", "sortArray--nroSd4", "sortArray-Aa5vz7o", "kotlin-stdlib"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class UArraySortingKt {
    @ExperimentalUnsignedTypes
    /* renamed from: partition--nroSd4, reason: not valid java name */
    private static final int m73077partitionnroSd4(long[] jArr, int i, int i2) {
        long m72855getsVKNKU = ULongArray.m72855getsVKNKU(jArr, (i + i2) / 2);
        while (i <= i2) {
            while (Long.compareUnsigned(ULongArray.m72855getsVKNKU(jArr, i), m72855getsVKNKU) < 0) {
                i++;
            }
            while (Long.compareUnsigned(ULongArray.m72855getsVKNKU(jArr, i2), m72855getsVKNKU) > 0) {
                i2--;
            }
            if (i <= i2) {
                long m72855getsVKNKU2 = ULongArray.m72855getsVKNKU(jArr, i);
                ULongArray.m72860setk8EXiF4(jArr, i, ULongArray.m72855getsVKNKU(jArr, i2));
                ULongArray.m72860setk8EXiF4(jArr, i2, m72855getsVKNKU2);
                i++;
                i2--;
            }
        }
        return i;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: partition-4UcCI2c, reason: not valid java name */
    private static final int m73078partition4UcCI2c(byte[] bArr, int i, int i2) {
        int i3;
        byte m72697getw2LRezQ = UByteArray.m72697getw2LRezQ(bArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                i3 = m72697getw2LRezQ & 255;
                if (Intrinsics.compare(UByteArray.m72697getw2LRezQ(bArr, i) & 255, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UByteArray.m72697getw2LRezQ(bArr, i2) & 255, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                byte m72697getw2LRezQ2 = UByteArray.m72697getw2LRezQ(bArr, i);
                UByteArray.m72702setVurrAj0(bArr, i, UByteArray.m72697getw2LRezQ(bArr, i2));
                UByteArray.m72702setVurrAj0(bArr, i2, m72697getw2LRezQ2);
                i++;
                i2--;
            }
        }
        return i;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: partition-Aa5vz7o, reason: not valid java name */
    private static final int m73079partitionAa5vz7o(short[] sArr, int i, int i2) {
        int i3;
        short m72960getMh2AYeg = UShortArray.m72960getMh2AYeg(sArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                i3 = m72960getMh2AYeg & 65535;
                if (Intrinsics.compare(UShortArray.m72960getMh2AYeg(sArr, i) & 65535, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UShortArray.m72960getMh2AYeg(sArr, i2) & 65535, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                short m72960getMh2AYeg2 = UShortArray.m72960getMh2AYeg(sArr, i);
                UShortArray.m72965set01HTLdE(sArr, i, UShortArray.m72960getMh2AYeg(sArr, i2));
                UShortArray.m72965set01HTLdE(sArr, i2, m72960getMh2AYeg2);
                i++;
                i2--;
            }
        }
        return i;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: partition-oBK06Vg, reason: not valid java name */
    private static final int m73080partitionoBK06Vg(int[] iArr, int i, int i2) {
        int m72776getpVg5ArA = UIntArray.m72776getpVg5ArA(iArr, (i + i2) / 2);
        while (i <= i2) {
            while (Integer.compareUnsigned(UIntArray.m72776getpVg5ArA(iArr, i), m72776getpVg5ArA) < 0) {
                i++;
            }
            while (Integer.compareUnsigned(UIntArray.m72776getpVg5ArA(iArr, i2), m72776getpVg5ArA) > 0) {
                i2--;
            }
            if (i <= i2) {
                int m72776getpVg5ArA2 = UIntArray.m72776getpVg5ArA(iArr, i);
                UIntArray.m72781setVXSXFK8(iArr, i, UIntArray.m72776getpVg5ArA(iArr, i2));
                UIntArray.m72781setVXSXFK8(iArr, i2, m72776getpVg5ArA2);
                i++;
                i2--;
            }
        }
        return i;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort--nroSd4, reason: not valid java name */
    private static final void m73081quickSortnroSd4(long[] jArr, int i, int i2) {
        int m73077partitionnroSd4 = m73077partitionnroSd4(jArr, i, i2);
        int i3 = m73077partitionnroSd4 - 1;
        if (i < i3) {
            m73081quickSortnroSd4(jArr, i, i3);
        }
        if (m73077partitionnroSd4 < i2) {
            m73081quickSortnroSd4(jArr, m73077partitionnroSd4, i2);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort-4UcCI2c, reason: not valid java name */
    private static final void m73082quickSort4UcCI2c(byte[] bArr, int i, int i2) {
        int m73078partition4UcCI2c = m73078partition4UcCI2c(bArr, i, i2);
        int i3 = m73078partition4UcCI2c - 1;
        if (i < i3) {
            m73082quickSort4UcCI2c(bArr, i, i3);
        }
        if (m73078partition4UcCI2c < i2) {
            m73082quickSort4UcCI2c(bArr, m73078partition4UcCI2c, i2);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort-Aa5vz7o, reason: not valid java name */
    private static final void m73083quickSortAa5vz7o(short[] sArr, int i, int i2) {
        int m73079partitionAa5vz7o = m73079partitionAa5vz7o(sArr, i, i2);
        int i3 = m73079partitionAa5vz7o - 1;
        if (i < i3) {
            m73083quickSortAa5vz7o(sArr, i, i3);
        }
        if (m73079partitionAa5vz7o < i2) {
            m73083quickSortAa5vz7o(sArr, m73079partitionAa5vz7o, i2);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort-oBK06Vg, reason: not valid java name */
    private static final void m73084quickSortoBK06Vg(int[] iArr, int i, int i2) {
        int m73080partitionoBK06Vg = m73080partitionoBK06Vg(iArr, i, i2);
        int i3 = m73080partitionoBK06Vg - 1;
        if (i < i3) {
            m73084quickSortoBK06Vg(iArr, i, i3);
        }
        if (m73080partitionoBK06Vg < i2) {
            m73084quickSortoBK06Vg(iArr, m73080partitionoBK06Vg, i2);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray--nroSd4, reason: not valid java name */
    public static final void m73085sortArraynroSd4(@NotNull long[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m73081quickSortnroSd4(array, i, i2 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-4UcCI2c, reason: not valid java name */
    public static final void m73086sortArray4UcCI2c(@NotNull byte[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m73082quickSort4UcCI2c(array, i, i2 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-Aa5vz7o, reason: not valid java name */
    public static final void m73087sortArrayAa5vz7o(@NotNull short[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m73083quickSortAa5vz7o(array, i, i2 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-oBK06Vg, reason: not valid java name */
    public static final void m73088sortArrayoBK06Vg(@NotNull int[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m73084quickSortoBK06Vg(array, i, i2 - 1);
    }
}
