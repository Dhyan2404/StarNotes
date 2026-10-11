package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.onyx.android.sdk.base.data.Operators;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\b\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\u001a \u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0000\u001a\f\u0010\u0007\u001a\u00020\u0006*\u00020\u0006H\u0000\u001a\f\u0010\u0007\u001a\u00020\b*\u00020\bH\u0000\u001a\f\u0010\u0007\u001a\u00020\u0000*\u00020\u0000H\u0000\u001a\u0015\u0010\n\u001a\u00020\b*\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0080\f\u001a\u0015\u0010\u000b\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\t\u001a\u00020\bH\u0080\f\u001a\u0015\u0010\u000e\u001a\u00020\b*\u00020\f2\u0006\u0010\r\u001a\u00020\bH\u0080\f\u001a\u0015\u0010\u000f\u001a\u00020\b*\u00020\f2\u0006\u0010\r\u001a\u00020\bH\u0080\f\u001a\u0015\u0010\u0010\u001a\u00020\b*\u00020\f2\u0006\u0010\r\u001a\u00020\bH\u0080\f\u001a\u0015\u0010\u0010\u001a\u00020\u0000*\u00020\f2\u0006\u0010\r\u001a\u00020\u0000H\u0080\f\u001a\u0015\u0010\u0011\u001a\u00020\f*\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0080\f\u001a\u0015\u0010\u0010\u001a\u00020\u0000*\u00020\b2\u0006\u0010\r\u001a\u00020\u0000H\u0080\f\u001a\u0019\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\bH\u0080\b\u001a\u0019\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0000H\u0080\b\u001a0\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\bH\u0000\u001a\f\u0010\u001b\u001a\u00020\u001a*\u00020\fH\u0000\u001a\f\u0010\u001b\u001a\u00020\u001a*\u00020\bH\u0000\u001a\f\u0010\u001b\u001a\u00020\u001a*\u00020\u0000H\u0000\u001a\u0010\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cH\u0000\u001a\u0014\u0010\u001e\u001a\u00020\b*\u00020\u001f2\u0006\u0010 \u001a\u00020\bH\u0000\u001a\u0014\u0010\u001e\u001a\u00020\b*\u00020\u00152\u0006\u0010!\u001a\u00020\bH\u0000\" \u0010'\u001a\u00020\u001c8\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0012\u0010\"\u0012\u0004\b%\u0010&\u001a\u0004\b#\u0010$\"\u001a\u0010+\u001a\u00020\b8\u0000X\u0080D¢\u0006\f\n\u0004\b\u0013\u0010(\u001a\u0004\b)\u0010*¨\u0006,"}, m61528d2 = {"", "size", TypedValues.CycleType.S_WAVE_OFFSET, "byteCount", "", "checkOffsetAndCount", "", "reverseBytes", "", "bitCount", "leftRotate", "rightRotate", "", Constants.ATTRVAL_OTHER, "shr", "shl", Operators.AND, "xor", "a", "b", "minOf", "", "aOffset", "bOffset", "", "arrayRangeEquals", "", "toHexString", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "resolveDefaultParameter", "Lokio/ByteString;", "position", "sizeParam", "Lokio/Buffer$UnsafeCursor;", "getDEFAULT__new_UnsafeCursor", "()Lokio/Buffer$UnsafeCursor;", "getDEFAULT__new_UnsafeCursor$annotations", "()V", "DEFAULT__new_UnsafeCursor", "I", "getDEFAULT__ByteString_size", "()I", "DEFAULT__ByteString_size", "okio"}, m61529k = 2, m61530mv = {1, 9, 0})
@JvmName(name = "-SegmentedByteString")
@SourceDebugExtension({"SMAP\nUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,187:1\n68#1:188\n74#1:189\n*S KotlinDebug\n*F\n+ 1 Util.kt\nokio/-SegmentedByteString\n*L\n106#1:188\n107#1:189\n*E\n"})
/* renamed from: okio.-SegmentedByteString, reason: invalid class name */
/* loaded from: classes11.dex */
public final class SegmentedByteString {

    /* renamed from: a */
    @NotNull
    public static final Buffer.UnsafeCursor f104007a = new Buffer.UnsafeCursor();

    /* renamed from: b */
    public static final int f104008b = -1234567890;

    public static final int and(byte b, int i) {
        return b & i;
    }

    public static final boolean arrayRangeEquals(@NotNull byte[] a, int i, @NotNull byte[] b, int i2, int i3) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        for (int i4 = 0; i4 < i3; i4++) {
            if (a[i4 + i] != b[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    public static final void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException("size=" + j + " offset=" + j2 + " byteCount=" + j3);
        }
    }

    public static final int getDEFAULT__ByteString_size() {
        return f104008b;
    }

    @NotNull
    public static final Buffer.UnsafeCursor getDEFAULT__new_UnsafeCursor() {
        return f104007a;
    }

    public static /* synthetic */ void getDEFAULT__new_UnsafeCursor$annotations() {
    }

    public static final int leftRotate(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    public static final long minOf(long j, int i) {
        return Math.min(j, i);
    }

    @NotNull
    public static final Buffer.UnsafeCursor resolveDefaultParameter(@NotNull Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        return unsafeCursor == f104007a ? new Buffer.UnsafeCursor() : unsafeCursor;
    }

    public static final int reverseBytes(int i) {
        return ((i & 255) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    public static final long rightRotate(long j, int i) {
        return (j << (64 - i)) | (j >>> i);
    }

    public static final int shl(byte b, int i) {
        return b << i;
    }

    public static final int shr(byte b, int i) {
        return b >> i;
    }

    @NotNull
    public static final String toHexString(byte b) {
        String concatToString;
        concatToString = StringsKt__StringsJVMKt.concatToString(new char[]{okio.internal.ByteString.getHEX_DIGIT_CHARS()[(b >> 4) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[b & 15]});
        return concatToString;
    }

    public static final byte xor(byte b, byte b2) {
        return (byte) (b ^ b2);
    }

    public static final long and(byte b, long j) {
        return b & j;
    }

    public static final long minOf(int i, long j) {
        return Math.min(i, j);
    }

    public static final int resolveDefaultParameter(@NotNull ByteString byteString, int i) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return i == f104008b ? byteString.size() : i;
    }

    public static final long reverseBytes(long j) {
        return ((j & 255) << 56) | (((-72057594037927936L) & j) >>> 56) | ((71776119061217280L & j) >>> 40) | ((280375465082880L & j) >>> 24) | ((1095216660480L & j) >>> 8) | ((4278190080L & j) << 8) | ((16711680 & j) << 24) | ((65280 & j) << 40);
    }

    public static final long and(int i, long j) {
        return i & j;
    }

    public static final int resolveDefaultParameter(@NotNull byte[] bArr, int i) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return i == f104008b ? bArr.length : i;
    }

    public static final short reverseBytes(short s) {
        int i = s & 65535;
        return (short) (((i & 255) << 8) | ((65280 & i) >>> 8));
    }

    @NotNull
    public static final String toHexString(int i) {
        String concatToString;
        if (i == 0) {
            return "0";
        }
        int i2 = 0;
        char[] cArr = {okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 28) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 24) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 20) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 16) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 12) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 8) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 4) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[i & 15]};
        while (i2 < 8 && cArr[i2] == '0') {
            i2++;
        }
        concatToString = StringsKt__StringsJVMKt.concatToString(cArr, i2, 8);
        return concatToString;
    }

    @NotNull
    public static final String toHexString(long j) {
        String concatToString;
        if (j == 0) {
            return "0";
        }
        int i = 0;
        char[] cArr = {okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 60) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 56) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 52) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 48) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 44) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 40) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 36) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 32) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 28) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 24) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 20) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 16) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 12) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 8) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 4) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) (j & 15)]};
        while (i < 16 && cArr[i] == '0') {
            i++;
        }
        concatToString = StringsKt__StringsJVMKt.concatToString(cArr, i, 16);
        return concatToString;
    }
}
