package okio.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import okio.ByteString;
import okio.C20628SegmentedByteString;
import okio.Segment;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0010\u0015\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\u001a$\u0010\u0005\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0000\u001a\u0014\u0010\b\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a]\u0010\u0012\u001a\u00020\u0010*\u00020\u00062K\u0010\u0011\u001aG\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\tH\u0080\bø\u0001\u0000\u001aj\u0010\u0015\u001a\u00020\u0010*\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u00012K\u0010\u0011\u001aG\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\tH\u0082\b\u001a\u001d\u0010\u0017\u001a\u00020\u0016*\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0001H\u0080\b\u001a\u0015\u0010\u0019\u001a\u00020\u0018*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001H\u0080\b\u001a\r\u0010\u001a\u001a\u00020\u0001*\u00020\u0006H\u0080\b\u001a\r\u0010\u001b\u001a\u00020\n*\u00020\u0006H\u0080\b\u001a%\u0010\u001e\u001a\u00020\u0010*\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0080\b\u001a-\u0010\"\u001a\u00020!*\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0080\b\u001a-\u0010\"\u001a\u00020!*\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0080\b\u001a-\u0010%\u001a\u00020\u0010*\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010#\u001a\u00020\n2\u0006\u0010$\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0080\b\u001a\u0017\u0010'\u001a\u00020!*\u00020\u00062\b\u0010\u001f\u001a\u0004\u0018\u00010&H\u0080\b\u001a\r\u0010(\u001a\u00020\u0001*\u00020\u0006H\u0080\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006)"}, m61528d2 = {"", "", "value", ApiBroadCastReceiver.ARGS_FROM_INDEX, ApiBroadCastReceiver.ARGS_TO_INDEX, "binarySearch", "Lokio/SegmentedByteString;", "pos", "segment", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "data", TypedValues.CycleType.S_WAVE_OFFSET, "byteCount", "", "action", "forEachSegment", "beginIndex", "endIndex", "a", "Lokio/ByteString;", "commonSubstring", "", "commonInternalGet", "commonGetSize", "commonToByteArray", "Lokio/Buffer;", "buffer", "commonWrite", Constants.ATTRVAL_OTHER, "otherOffset", "", "commonRangeEquals", "target", "targetOffset", "commonCopyInto", "", "commonEquals", "commonHashCode", "okio"}, m61529k = 2, m61530mv = {1, 9, 0})
@JvmName(name = "-SegmentedByteString")
@SourceDebugExtension({"SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/internal/-SegmentedByteString\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,250:1\n63#1,12:252\n85#1,14:264\n85#1,14:278\n85#1,14:292\n85#1,14:306\n63#1,12:320\n1#2:251\n*S KotlinDebug\n*F\n+ 1 SegmentedByteString.kt\nokio/internal/-SegmentedByteString\n*L\n147#1:252,12\n160#1:264,14\n182#1:278,14\n202#1:292,14\n219#1:306,14\n239#1:320,12\n*E\n"})
/* renamed from: okio.internal.-SegmentedByteString, reason: invalid class name */
/* loaded from: classes11.dex */
public final class SegmentedByteString {
    /* renamed from: a */
    public static final void m65064a(C20628SegmentedByteString c20628SegmentedByteString, int i, int i2, Function3<? super byte[], ? super Integer, ? super Integer, Unit> function3) {
        int segment = segment(c20628SegmentedByteString, i);
        while (i < i2) {
            int i3 = segment == 0 ? 0 : c20628SegmentedByteString.getDirectory()[segment - 1];
            int i4 = c20628SegmentedByteString.getDirectory()[segment] - i3;
            int i5 = c20628SegmentedByteString.getDirectory()[c20628SegmentedByteString.getSegments().length + segment];
            int min = Math.min(i2, i4 + i3) - i;
            function3.invoke(c20628SegmentedByteString.getSegments()[segment], Integer.valueOf(i5 + (i - i3)), Integer.valueOf(min));
            i += min;
            segment++;
        }
    }

    public static final int binarySearch(@NotNull int[] iArr, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        int i4 = i3 - 1;
        while (i2 <= i4) {
            int i5 = (i2 + i4) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i) {
                i2 = i5 + 1;
            } else {
                if (i6 <= i) {
                    return i5;
                }
                i4 = i5 - 1;
            }
        }
        return (-i2) - 1;
    }

    public static final void commonCopyInto(@NotNull C20628SegmentedByteString c20628SegmentedByteString, int i, @NotNull byte[] target, int i2, int i3) {
        Intrinsics.checkNotNullParameter(c20628SegmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        long j = i3;
        okio.SegmentedByteString.checkOffsetAndCount(c20628SegmentedByteString.size(), i, j);
        okio.SegmentedByteString.checkOffsetAndCount(target.length, i2, j);
        int i4 = i3 + i;
        int segment = segment(c20628SegmentedByteString, i);
        while (i < i4) {
            int i5 = segment == 0 ? 0 : c20628SegmentedByteString.getDirectory()[segment - 1];
            int i6 = c20628SegmentedByteString.getDirectory()[segment] - i5;
            int i7 = c20628SegmentedByteString.getDirectory()[c20628SegmentedByteString.getSegments().length + segment];
            int min = Math.min(i4, i6 + i5) - i;
            int i8 = i7 + (i - i5);
            ArraysKt___ArraysJvmKt.copyInto(c20628SegmentedByteString.getSegments()[segment], target, i2, i8, i8 + min);
            i2 += min;
            i += min;
            segment++;
        }
    }

    public static final boolean commonEquals(@NotNull C20628SegmentedByteString c20628SegmentedByteString, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(c20628SegmentedByteString, "<this>");
        if (obj == c20628SegmentedByteString) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == c20628SegmentedByteString.size() && c20628SegmentedByteString.rangeEquals(0, byteString, 0, c20628SegmentedByteString.size())) {
                return true;
            }
        }
        return false;
    }

    public static final int commonGetSize(@NotNull C20628SegmentedByteString c20628SegmentedByteString) {
        Intrinsics.checkNotNullParameter(c20628SegmentedByteString, "<this>");
        return c20628SegmentedByteString.getDirectory()[c20628SegmentedByteString.getSegments().length - 1];
    }

    public static final int commonHashCode(@NotNull C20628SegmentedByteString c20628SegmentedByteString) {
        Intrinsics.checkNotNullParameter(c20628SegmentedByteString, "<this>");
        int hashCode = c20628SegmentedByteString.getHashCode();
        if (hashCode != 0) {
            return hashCode;
        }
        int length = c20628SegmentedByteString.getSegments().length;
        int i = 0;
        int i2 = 1;
        int i3 = 0;
        while (i < length) {
            int i4 = c20628SegmentedByteString.getDirectory()[length + i];
            int i5 = c20628SegmentedByteString.getDirectory()[i];
            byte[] bArr = c20628SegmentedByteString.getSegments()[i];
            int i6 = (i5 - i3) + i4;
            while (i4 < i6) {
                i2 = (i2 * 31) + bArr[i4];
                i4++;
            }
            i++;
            i3 = i5;
        }
        c20628SegmentedByteString.setHashCode$okio(i2);
        return i2;
    }

    public static final byte commonInternalGet(@NotNull C20628SegmentedByteString c20628SegmentedByteString, int i) {
        Intrinsics.checkNotNullParameter(c20628SegmentedByteString, "<this>");
        okio.SegmentedByteString.checkOffsetAndCount(c20628SegmentedByteString.getDirectory()[c20628SegmentedByteString.getSegments().length - 1], i, 1L);
        int segment = segment(c20628SegmentedByteString, i);
        return c20628SegmentedByteString.getSegments()[segment][(i - (segment == 0 ? 0 : c20628SegmentedByteString.getDirectory()[segment - 1])) + c20628SegmentedByteString.getDirectory()[c20628SegmentedByteString.getSegments().length + segment]];
    }

    public static final boolean commonRangeEquals(@NotNull C20628SegmentedByteString c20628SegmentedByteString, int i, @NotNull ByteString other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(c20628SegmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i < 0 || i > c20628SegmentedByteString.size() - i3) {
            return false;
        }
        int i4 = i3 + i;
        int segment = segment(c20628SegmentedByteString, i);
        while (i < i4) {
            int i5 = segment == 0 ? 0 : c20628SegmentedByteString.getDirectory()[segment - 1];
            int i6 = c20628SegmentedByteString.getDirectory()[segment] - i5;
            int i7 = c20628SegmentedByteString.getDirectory()[c20628SegmentedByteString.getSegments().length + segment];
            int min = Math.min(i4, i6 + i5) - i;
            if (!other.rangeEquals(i2, c20628SegmentedByteString.getSegments()[segment], i7 + (i - i5), min)) {
                return false;
            }
            i2 += min;
            i += min;
            segment++;
        }
        return true;
    }

    @NotNull
    public static final ByteString commonSubstring(@NotNull C20628SegmentedByteString c20628SegmentedByteString, int i, int i2) {
        Object[] copyOfRange;
        Intrinsics.checkNotNullParameter(c20628SegmentedByteString, "<this>");
        int resolveDefaultParameter = okio.SegmentedByteString.resolveDefaultParameter(c20628SegmentedByteString, i2);
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("beginIndex=" + i + " < 0").toString());
        }
        if (!(resolveDefaultParameter <= c20628SegmentedByteString.size())) {
            throw new IllegalArgumentException(("endIndex=" + resolveDefaultParameter + " > length(" + c20628SegmentedByteString.size() + ')').toString());
        }
        int i3 = resolveDefaultParameter - i;
        if (!(i3 >= 0)) {
            throw new IllegalArgumentException(("endIndex=" + resolveDefaultParameter + " < beginIndex=" + i).toString());
        }
        if (i == 0 && resolveDefaultParameter == c20628SegmentedByteString.size()) {
            return c20628SegmentedByteString;
        }
        if (i == resolveDefaultParameter) {
            return ByteString.EMPTY;
        }
        int segment = segment(c20628SegmentedByteString, i);
        int segment2 = segment(c20628SegmentedByteString, resolveDefaultParameter - 1);
        copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(c20628SegmentedByteString.getSegments(), segment, segment2 + 1);
        byte[][] bArr = (byte[][]) copyOfRange;
        int[] iArr = new int[bArr.length * 2];
        if (segment <= segment2) {
            int i4 = 0;
            int i5 = segment;
            while (true) {
                iArr[i4] = Math.min(c20628SegmentedByteString.getDirectory()[i5] - i, i3);
                int i6 = i4 + 1;
                iArr[i4 + bArr.length] = c20628SegmentedByteString.getDirectory()[c20628SegmentedByteString.getSegments().length + i5];
                if (i5 == segment2) {
                    break;
                }
                i5++;
                i4 = i6;
            }
        }
        int i7 = segment != 0 ? c20628SegmentedByteString.getDirectory()[segment - 1] : 0;
        int length = bArr.length;
        iArr[length] = iArr[length] + (i - i7);
        return new C20628SegmentedByteString(bArr, iArr);
    }

    @NotNull
    public static final byte[] commonToByteArray(@NotNull C20628SegmentedByteString c20628SegmentedByteString) {
        Intrinsics.checkNotNullParameter(c20628SegmentedByteString, "<this>");
        byte[] bArr = new byte[c20628SegmentedByteString.size()];
        int length = c20628SegmentedByteString.getSegments().length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int i4 = c20628SegmentedByteString.getDirectory()[length + i];
            int i5 = c20628SegmentedByteString.getDirectory()[i];
            int i6 = i5 - i2;
            ArraysKt___ArraysJvmKt.copyInto(c20628SegmentedByteString.getSegments()[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    public static final void commonWrite(@NotNull C20628SegmentedByteString c20628SegmentedByteString, @NotNull Buffer buffer, int i, int i2) {
        Intrinsics.checkNotNullParameter(c20628SegmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int i3 = i + i2;
        int segment = segment(c20628SegmentedByteString, i);
        while (i < i3) {
            int i4 = segment == 0 ? 0 : c20628SegmentedByteString.getDirectory()[segment - 1];
            int i5 = c20628SegmentedByteString.getDirectory()[segment] - i4;
            int i6 = c20628SegmentedByteString.getDirectory()[c20628SegmentedByteString.getSegments().length + segment];
            int min = Math.min(i3, i5 + i4) - i;
            int i7 = i6 + (i - i4);
            Segment segment2 = new Segment(c20628SegmentedByteString.getSegments()[segment], i7, i7 + min, true, false);
            Segment segment3 = buffer.head;
            if (segment3 == null) {
                segment2.prev = segment2;
                segment2.next = segment2;
                buffer.head = segment2;
            } else {
                Intrinsics.checkNotNull(segment3);
                Segment segment4 = segment3.prev;
                Intrinsics.checkNotNull(segment4);
                segment4.push(segment2);
            }
            i += min;
            segment++;
        }
        buffer.setSize$okio(buffer.size() + i2);
    }

    public static final void forEachSegment(@NotNull C20628SegmentedByteString c20628SegmentedByteString, @NotNull Function3<? super byte[], ? super Integer, ? super Integer, Unit> action) {
        Intrinsics.checkNotNullParameter(c20628SegmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int length = c20628SegmentedByteString.getSegments().length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = c20628SegmentedByteString.getDirectory()[length + i];
            int i4 = c20628SegmentedByteString.getDirectory()[i];
            action.invoke(c20628SegmentedByteString.getSegments()[i], Integer.valueOf(i3), Integer.valueOf(i4 - i2));
            i++;
            i2 = i4;
        }
    }

    public static final int segment(@NotNull C20628SegmentedByteString c20628SegmentedByteString, int i) {
        Intrinsics.checkNotNullParameter(c20628SegmentedByteString, "<this>");
        int binarySearch = binarySearch(c20628SegmentedByteString.getDirectory(), i + 1, 0, c20628SegmentedByteString.getSegments().length);
        return binarySearch >= 0 ? binarySearch : ~binarySearch;
    }

    public static final boolean commonRangeEquals(@NotNull C20628SegmentedByteString c20628SegmentedByteString, int i, @NotNull byte[] other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(c20628SegmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i < 0 || i > c20628SegmentedByteString.size() - i3 || i2 < 0 || i2 > other.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int segment = segment(c20628SegmentedByteString, i);
        while (i < i4) {
            int i5 = segment == 0 ? 0 : c20628SegmentedByteString.getDirectory()[segment - 1];
            int i6 = c20628SegmentedByteString.getDirectory()[segment] - i5;
            int i7 = c20628SegmentedByteString.getDirectory()[c20628SegmentedByteString.getSegments().length + segment];
            int min = Math.min(i4, i6 + i5) - i;
            if (!okio.SegmentedByteString.arrayRangeEquals(c20628SegmentedByteString.getSegments()[segment], i7 + (i - i5), other, i2, min)) {
                return false;
            }
            i2 += min;
            i += min;
            segment++;
        }
        return true;
    }
}
