package com.onyx.android.sdk.data.utils;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000fJ\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J\u000e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000fJ\u000e\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/AESEncryptUtils;", "", "()V", "AES", "", "AES_SECRET_KEY_LEN", "", "CBC_PADDING_BYTES", "CBC_PKCS5_PADDING", "DEFAULT_CODING", "ECB_PKCS5_PADDING", "key", "decrypt", "encrypted", "decryptWithCBC", "", "encrypt", "content", "ensureAesSecretKeyLen", "secretKey", "getSecretKeySpec", "Ljavax/crypto/spec/SecretKeySpec;", "parseByte2HexStr", "buf", "toByte", "hexString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AESEncryptUtils {

    @NotNull
    public static final String AES = "AES";
    public static final int AES_SECRET_KEY_LEN = 128;
    public static final int CBC_PADDING_BYTES = 16;

    @NotNull
    public static final String CBC_PKCS5_PADDING = "AES/CBC/PKCS5Padding";

    @NotNull
    public static final String DEFAULT_CODING = "utf-8";

    @NotNull
    public static final String ECB_PKCS5_PADDING = "AES/ECB/PKCS5Padding";

    @NotNull
    public static final AESEncryptUtils INSTANCE = new AESEncryptUtils();

    @NotNull
    public static final String key = "8chLv9pat4WlE5IzyUwF9lOEtRYaPo9d1v0EYQnIak8iJDHLdIkJQW994iQZzLIoMhErq190IU8NEYACVnkrxtr6uOXTqkWuiClOC5ACbIWB0zUk5hALBaGWEvXDhudK";

    private AESEncryptUtils() {
    }

    private final SecretKeySpec getSecretKeySpec(String key2) throws Exception {
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        Charset forName = Charset.forName("utf-8");
        Intrinsics.checkNotNullExpressionValue(forName, "forName(charsetName)");
        byte[] bytes = key2.getBytes(forName);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return new SecretKeySpec(messageDigest.digest(bytes), "AES");
    }

    @Nullable
    public final String decrypt(@NotNull String key2, @NotNull String encrypted) {
        Intrinsics.checkNotNullParameter(key2, "key");
        Intrinsics.checkNotNullParameter(encrypted, "encrypted");
        try {
            Cipher cipher = Cipher.getInstance("AES");
            cipher.init(2, getSecretKeySpec(key2));
            byte[] doFinal = cipher.doFinal(toByte(encrypted));
            Intrinsics.checkNotNull(doFinal);
            return new String(doFinal, Charsets.UTF_8);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @NotNull
    public final byte[] decryptWithCBC(@NotNull byte[] key2, @NotNull byte[] encrypted) {
        byte[] copyOfRange;
        byte[] copyOfRange2;
        Intrinsics.checkNotNullParameter(key2, "key");
        Intrinsics.checkNotNullParameter(encrypted, "encrypted");
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(encrypted, 0, 16);
            copyOfRange2 = ArraysKt___ArraysJvmKt.copyOfRange(encrypted, 16, encrypted.length);
            cipher.init(2, new SecretKeySpec(key2, "AES/CBC/PKCS5Padding"), new IvParameterSpec(copyOfRange));
            byte[] doFinal = cipher.doFinal(copyOfRange2);
            Intrinsics.checkNotNullExpressionValue(doFinal, "doFinal(...)");
            return doFinal;
        } catch (Throwable unused) {
            return new byte[0];
        }
    }

    @Nullable
    public final String encrypt(@NotNull String key2, @NotNull String content) {
        Intrinsics.checkNotNullParameter(key2, "key");
        Intrinsics.checkNotNullParameter(content, "content");
        try {
            Cipher cipher = Cipher.getInstance(ECB_PKCS5_PADDING);
            cipher.init(1, getSecretKeySpec(key2));
            Charset forName = Charset.forName("utf-8");
            Intrinsics.checkNotNullExpressionValue(forName, "forName(charsetName)");
            byte[] bytes = content.getBytes(forName);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            byte[] bArr = new byte[cipher.getOutputSize(bytes.length)];
            cipher.doFinal(bArr, cipher.update(bytes, 0, bytes.length, bArr, 0));
            return parseByte2HexStr(bArr);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @NotNull
    public final String ensureAesSecretKeyLen(@NotNull String secretKey) {
        String str;
        Intrinsics.checkNotNullParameter(secretKey, "secretKey");
        int length = secretKey.length();
        String str2 = secretKey;
        while (length != 128) {
            if (length > 128) {
                str = str2.substring(0, 128);
                Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String…ing(startIndex, endIndex)");
            } else {
                str = str2 + secretKey;
            }
            str2 = str;
            length = str2.length();
        }
        return str2;
    }

    @NotNull
    public final String parseByte2HexStr(@NotNull byte[] buf) {
        Intrinsics.checkNotNullParameter(buf, "buf");
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : buf) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            stringBuffer.append(hexString);
        }
        String stringBuffer2 = stringBuffer.toString();
        Intrinsics.checkNotNullExpressionValue(stringBuffer2, "toString(...)");
        return stringBuffer2;
    }

    @NotNull
    public final byte[] toByte(@NotNull String hexString) {
        Intrinsics.checkNotNullParameter(hexString, "hexString");
        int length = hexString.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            String substring = hexString.substring(i2, i2 + 2);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            bArr[i] = (byte) Integer.valueOf(substring, 16).intValue();
        }
        return bArr;
    }
}
