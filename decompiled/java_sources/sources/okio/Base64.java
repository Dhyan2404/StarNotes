package okio;

import com.dropbox.core.util.StringUtil;
import com.onyx.android.sdk.data.common.cloud.Constant;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0002\b\u000f\u001a\u000e\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0000\u001a\u0016\u0010\u0004\u001a\u00020\u0000*\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0001H\u0000\" \u0010\u000b\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b\" \u0010\u000f\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\f\u0010\u0006\u0012\u0004\b\u000e\u0010\n\u001a\u0004\b\r\u0010\b¨\u0006\u0010"}, m61528d2 = {"", "", "decodeBase64ToArray", Constant.MAP_TAG, "encodeBase64", "a", "[B", "getBASE64", "()[B", "getBASE64$annotations", "()V", "BASE64", "b", "getBASE64_URL_SAFE", "getBASE64_URL_SAFE$annotations", "BASE64_URL_SAFE", "okio"}, m61529k = 2, m61530mv = {1, 9, 0})
@JvmName(name = "-Base64")
/* renamed from: okio.-Base64, reason: invalid class name */
/* loaded from: classes11.dex */
public final class Base64 {

    /* renamed from: a */
    @NotNull
    public static final byte[] f103995a;

    /* renamed from: b */
    @NotNull
    public static final byte[] f103996b;

    static {
        ByteString.Companion companion = ByteString.INSTANCE;
        f103995a = companion.encodeUtf8("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").getData();
        f103996b = companion.encodeUtf8(StringUtil.UrlSafeBase64Digits).getData();
    }

    @Nullable
    public static final byte[] decodeBase64ToArray(@NotNull String str) {
        int i;
        char charAt;
        Intrinsics.checkNotNullParameter(str, "<this>");
        int length = str.length();
        while (length > 0 && ((charAt = str.charAt(length - 1)) == '=' || charAt == '\n' || charAt == '\r' || charAt == ' ' || charAt == '\t')) {
            length--;
        }
        int i2 = (int) ((length * 6) / 8);
        byte[] bArr = new byte[i2];
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i3 >= length) {
                int i7 = i4 % 4;
                if (i7 == 1) {
                    return null;
                }
                if (i7 == 2) {
                    bArr[i6] = (byte) ((i5 << 12) >> 16);
                    i6++;
                } else if (i7 == 3) {
                    int i8 = i5 << 6;
                    int i9 = i6 + 1;
                    bArr[i6] = (byte) (i8 >> 16);
                    i6 = i9 + 1;
                    bArr[i9] = (byte) (i8 >> 8);
                }
                if (i6 == i2) {
                    return bArr;
                }
                byte[] copyOf = Arrays.copyOf(bArr, i6);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                return copyOf;
            }
            char charAt2 = str.charAt(i3);
            if ('A' <= charAt2 && charAt2 < '[') {
                i = charAt2 - 'A';
            } else {
                if ('a' <= charAt2 && charAt2 < '{') {
                    i = charAt2 - 'G';
                } else {
                    if ('0' <= charAt2 && charAt2 < ':') {
                        i = charAt2 + 4;
                    } else if (charAt2 == '+' || charAt2 == '-') {
                        i = 62;
                    } else if (charAt2 == '/' || charAt2 == '_') {
                        i = 63;
                    } else {
                        if (charAt2 != '\n' && charAt2 != '\r' && charAt2 != ' ' && charAt2 != '\t') {
                            return null;
                        }
                        i3++;
                    }
                }
            }
            i5 = (i5 << 6) | i;
            i4++;
            if (i4 % 4 == 0) {
                int i10 = i6 + 1;
                bArr[i6] = (byte) (i5 >> 16);
                int i11 = i10 + 1;
                bArr[i10] = (byte) (i5 >> 8);
                bArr[i11] = (byte) i5;
                i6 = i11 + 1;
            }
            i3++;
        }
    }

    @NotNull
    public static final String encodeBase64(@NotNull byte[] bArr, @NotNull byte[] map) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        byte[] bArr2 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i + 1;
            byte b = bArr[i];
            int i4 = i3 + 1;
            byte b2 = bArr[i3];
            int i5 = i4 + 1;
            byte b3 = bArr[i4];
            int i6 = i2 + 1;
            bArr2[i2] = map[(b & 255) >> 2];
            int i7 = i6 + 1;
            bArr2[i6] = map[((b & 3) << 4) | ((b2 & 255) >> 4)];
            int i8 = i7 + 1;
            bArr2[i7] = map[((b2 & 15) << 2) | ((b3 & 255) >> 6)];
            i2 = i8 + 1;
            bArr2[i8] = map[b3 & 63];
            i = i5;
        }
        int length2 = bArr.length - length;
        if (length2 == 1) {
            byte b4 = bArr[i];
            int i9 = i2 + 1;
            bArr2[i2] = map[(b4 & 255) >> 2];
            int i10 = i9 + 1;
            bArr2[i9] = map[(b4 & 3) << 4];
            bArr2[i10] = 61;
            bArr2[i10 + 1] = 61;
        } else if (length2 == 2) {
            int i11 = i + 1;
            byte b5 = bArr[i];
            byte b6 = bArr[i11];
            int i12 = i2 + 1;
            bArr2[i2] = map[(b5 & 255) >> 2];
            int i13 = i12 + 1;
            bArr2[i12] = map[((b5 & 3) << 4) | ((b6 & 255) >> 4)];
            bArr2[i13] = map[(b6 & 15) << 2];
            bArr2[i13 + 1] = 61;
        }
        return _JvmPlatformKt.toUtf8String(bArr2);
    }

    public static /* synthetic */ String encodeBase64$default(byte[] bArr, byte[] bArr2, int i, Object obj) {
        if ((i & 1) != 0) {
            bArr2 = f103995a;
        }
        return encodeBase64(bArr, bArr2);
    }

    @NotNull
    public static final byte[] getBASE64() {
        return f103995a;
    }

    public static /* synthetic */ void getBASE64$annotations() {
    }

    @NotNull
    public static final byte[] getBASE64_URL_SAFE() {
        return f103996b;
    }

    public static /* synthetic */ void getBASE64_URL_SAFE$annotations() {
    }
}
