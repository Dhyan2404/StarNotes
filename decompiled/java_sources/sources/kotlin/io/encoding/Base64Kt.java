package kotlin.io.encoding;

import com.alibaba.fastjson2.JSONB;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.codec.net.QCodec;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\u001a\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0001\"\u0016\u0010\u0000\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0016\u0010\u0006\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0007\u0010\u0003\"\u000e\u0010\b\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"base64DecodeMap", "", "getBase64DecodeMap$annotations", "()V", "base64EncodeMap", "", "base64UrlDecodeMap", "getBase64UrlDecodeMap$annotations", "base64UrlEncodeMap", "isInMimeAlphabet", "", "symbol", "", "kotlin-stdlib"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nBase64.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Base64.kt\nkotlin/io/encoding/Base64Kt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,643:1\n13384#2,3:644\n13384#2,3:647\n*S KotlinDebug\n*F\n+ 1 Base64.kt\nkotlin/io/encoding/Base64Kt\n*L\n580#1:644,3\n597#1:647,3\n*E\n"})
/* loaded from: classes8.dex */
public final class Base64Kt {

    @NotNull
    private static final int[] base64DecodeMap;

    @NotNull
    private static final byte[] base64EncodeMap;

    @NotNull
    private static final int[] base64UrlDecodeMap;

    @NotNull
    private static final byte[] base64UrlEncodeMap;

    static {
        byte[] bArr = {65, 66, 67, JSONB.Constants.BC_INT32_SHORT_ZERO, 69, 70, JSONB.Constants.BC_INT32_SHORT_MAX, JSONB.Constants.BC_INT32, 73, JSONB.Constants.BC_STR_ASCII_FIX_1, TarConstants.LF_GNUTYPE_LONGLINK, TarConstants.LF_GNUTYPE_LONGNAME, 77, JSONB.Constants.BC_STR_ASCII_FIX_5, 79, FramedLZ4CompressorInputStream.f106197v, 81, 82, TarConstants.LF_GNUTYPE_SPARSE, 84, 85, 86, 87, TarConstants.LF_PAX_EXTENDED_HEADER_UC, 89, 90, 97, 98, 99, 100, 101, 102, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 104, JSONB.Constants.BC_STR_ASCII_FIX_32, 106, 107, 108, JSONB.Constants.BC_STR_ASCII_FIX_36, 110, 111, 112, 113, 114, 115, 116, UTF8JsonGenerator.f21285e, 118, 119, 120, JSONB.Constants.BC_STR_ASCII, JSONB.Constants.BC_STR_UTF8, 48, TarConstants.LF_LINK, TarConstants.LF_SYMLINK, TarConstants.LF_CHR, TarConstants.LF_BLK, TarConstants.LF_DIR, TarConstants.LF_FIFO, TarConstants.LF_CONTIG, 56, 57, 43, 47};
        base64EncodeMap = bArr;
        int[] iArr = new int[256];
        int i = 0;
        ArraysKt___ArraysJvmKt.fill$default(iArr, -1, 0, 0, 6, (Object) null);
        iArr[61] = -2;
        int length = bArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            iArr[bArr[i2]] = i3;
            i2++;
            i3++;
        }
        base64DecodeMap = iArr;
        byte[] bArr2 = {65, 66, 67, JSONB.Constants.BC_INT32_SHORT_ZERO, 69, 70, JSONB.Constants.BC_INT32_SHORT_MAX, JSONB.Constants.BC_INT32, 73, JSONB.Constants.BC_STR_ASCII_FIX_1, TarConstants.LF_GNUTYPE_LONGLINK, TarConstants.LF_GNUTYPE_LONGNAME, 77, JSONB.Constants.BC_STR_ASCII_FIX_5, 79, FramedLZ4CompressorInputStream.f106197v, 81, 82, TarConstants.LF_GNUTYPE_SPARSE, 84, 85, 86, 87, TarConstants.LF_PAX_EXTENDED_HEADER_UC, 89, 90, 97, 98, 99, 100, 101, 102, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 104, JSONB.Constants.BC_STR_ASCII_FIX_32, 106, 107, 108, JSONB.Constants.BC_STR_ASCII_FIX_36, 110, 111, 112, 113, 114, 115, 116, UTF8JsonGenerator.f21285e, 118, 119, 120, JSONB.Constants.BC_STR_ASCII, JSONB.Constants.BC_STR_UTF8, 48, TarConstants.LF_LINK, TarConstants.LF_SYMLINK, TarConstants.LF_CHR, TarConstants.LF_BLK, TarConstants.LF_DIR, TarConstants.LF_FIFO, TarConstants.LF_CONTIG, 56, 57, 45, QCodec.f104875e};
        base64UrlEncodeMap = bArr2;
        int[] iArr2 = new int[256];
        ArraysKt___ArraysJvmKt.fill$default(iArr2, -1, 0, 0, 6, (Object) null);
        iArr2[61] = -2;
        int length2 = bArr2.length;
        int i4 = 0;
        while (i < length2) {
            iArr2[bArr2[i]] = i4;
            i++;
            i4++;
        }
        base64UrlDecodeMap = iArr2;
    }

    public static final /* synthetic */ int[] access$getBase64DecodeMap$p() {
        return base64DecodeMap;
    }

    public static final /* synthetic */ byte[] access$getBase64EncodeMap$p() {
        return base64EncodeMap;
    }

    public static final /* synthetic */ int[] access$getBase64UrlDecodeMap$p() {
        return base64UrlDecodeMap;
    }

    public static final /* synthetic */ byte[] access$getBase64UrlEncodeMap$p() {
        return base64UrlEncodeMap;
    }

    @ExperimentalEncodingApi
    private static /* synthetic */ void getBase64DecodeMap$annotations() {
    }

    @ExperimentalEncodingApi
    private static /* synthetic */ void getBase64UrlDecodeMap$annotations() {
    }

    @ExperimentalEncodingApi
    @SinceKotlin(version = "1.8")
    public static final boolean isInMimeAlphabet(int i) {
        return (i >= 0 && i < base64DecodeMap.length) && base64DecodeMap[i] != -1;
    }
}
