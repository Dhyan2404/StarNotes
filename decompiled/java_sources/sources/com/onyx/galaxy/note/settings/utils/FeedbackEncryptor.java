package com.onyx.galaxy.note.settings.utils;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.ArrayUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.mortbay.jetty.HttpHeaderValues;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b)\u0010*J\u0018\u0010\u0006\u001a\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\b\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u001e\u0010\u0006\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004J\u001e\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0002H\u0002J \u0010\u0017\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002R\u0014\u0010\u0019\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0018R\u0014\u0010\u001e\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010 \u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001f\u0010\u001dR\u0014\u0010\"\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b!\u0010\u001dR\u0014\u0010$\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b#\u0010\u001dR\u0014\u0010&\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b%\u0010\u001dR\u0014\u0010(\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b'\u0010\u001d¨\u0006+"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/utils/FeedbackEncryptor;", "", "", HttpHeaderValues.BYTES, "", "password", "encrypt", "cText", "decrypt", "Ljava/io/File;", "fromFile", "toFile", "", "encryptFile", "", "numBytes", "c", "", "salt", "Ljavax/crypto/SecretKey;", "b", "Ljavax/crypto/Cipher;", "cipher", "a", Constants.STRING_SIG, "AES", "ENCRYPT_TRANSFORMATION", "KEY_ENCRYPT_ALGO", "d", "I", "TAG_LENGTH_BIT", "e", "IV_LENGTH_BYTE", C6997f.f39671c, "SALT_LENGTH_BYTE", C6998g.f39679a, "ITERATION_COUNT", C6999h.f39688c, "KEY_LENGTH", "i", "BUFFER_SIZE", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFeedbackEncryptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedbackEncryptor.kt\ncom/onyx/galaxy/note/settings/utils/FeedbackEncryptor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n1#2:118\n*E\n"})
/* loaded from: classes9.dex */
public final class FeedbackEncryptor {

    @NotNull
    public static final FeedbackEncryptor INSTANCE = new FeedbackEncryptor();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String AES = "AES";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String ENCRYPT_TRANSFORMATION = "AES/GCM/NoPadding";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_ENCRYPT_ALGO = "PBKDF2withHmacSHA1";

    /* renamed from: d, reason: from kotlin metadata */
    public static final int TAG_LENGTH_BIT = 128;

    /* renamed from: e, reason: from kotlin metadata */
    public static final int IV_LENGTH_BYTE = 16;

    /* renamed from: f, reason: from kotlin metadata */
    public static final int SALT_LENGTH_BYTE = 16;

    /* renamed from: g, reason: from kotlin metadata */
    public static final int ITERATION_COUNT = 65536;

    /* renamed from: h, reason: from kotlin metadata */
    public static final int KEY_LENGTH = 256;

    /* renamed from: i, reason: from kotlin metadata */
    public static final int BUFFER_SIZE = 2097152;

    /* renamed from: a */
    public final void m51181a(File fromFile, File toFile, Cipher cipher) throws Exception {
        BufferedInputStream bufferedInputStream;
        BufferedOutputStream bufferedOutputStream;
        Throwable th;
        try {
            bufferedOutputStream = new BufferedOutputStream(new CipherOutputStream(new FileOutputStream(toFile), cipher));
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(fromFile));
                try {
                    byte[] bArr = new byte[2097152];
                    while (true) {
                        int read = bufferedInputStream.read(bArr);
                        if (read == -1) {
                            bufferedOutputStream.flush();
                            IOUtils.closeQuietly((OutputStream) bufferedOutputStream);
                            IOUtils.closeQuietly((InputStream) bufferedInputStream);
                            return;
                        }
                        bufferedOutputStream.write(bArr, 0, read);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    IOUtils.closeQuietly((OutputStream) bufferedOutputStream);
                    IOUtils.closeQuietly((InputStream) bufferedInputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedInputStream = null;
                th = th;
                IOUtils.closeQuietly((OutputStream) bufferedOutputStream);
                IOUtils.closeQuietly((InputStream) bufferedInputStream);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedInputStream = null;
            bufferedOutputStream = null;
        }
    }

    /* renamed from: b */
    public final SecretKey m51182b(char[] password, byte[] salt) throws NoSuchAlgorithmException, InvalidKeySpecException {
        return new SecretKeySpec(SecretKeyFactory.getInstance(KEY_ENCRYPT_ALGO).generateSecret(new PBEKeySpec(password, salt, 65536, 256)).getEncoded(), "AES");
    }

    /* renamed from: c */
    public final byte[] m51183c(int numBytes) {
        byte[] bArr = new byte[numBytes];
        new SecureRandom().nextBytes(bArr);
        return bArr;
    }

    @NotNull
    public final byte[] decrypt(@Nullable byte[] cText, @NotNull String password) throws Exception {
        Intrinsics.checkNotNullParameter(password, "password");
        ByteBuffer wrap = ByteBuffer.wrap(cText);
        byte[] bArr = new byte[16];
        wrap.get(bArr);
        byte[] bArr2 = new byte[16];
        wrap.get(bArr2);
        byte[] bArr3 = new byte[wrap.remaining()];
        wrap.get(bArr3);
        char[] charArray = password.toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "toCharArray(...)");
        SecretKey m51182b = m51182b(charArray, bArr2);
        Cipher cipher = Cipher.getInstance(ENCRYPT_TRANSFORMATION);
        cipher.init(2, m51182b, new GCMParameterSpec(128, bArr));
        byte[] doFinal = cipher.doFinal(bArr3);
        Intrinsics.checkNotNullExpressionValue(doFinal, "doFinal(...)");
        return doFinal;
    }

    @NotNull
    public final byte[] encrypt(@Nullable byte[] bytes, @NotNull String password) throws Exception {
        Intrinsics.checkNotNullParameter(password, "password");
        byte[] m51183c = m51183c(16);
        byte[] m51183c2 = m51183c(16);
        char[] charArray = password.toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "toCharArray(...)");
        SecretKey m51182b = m51182b(charArray, m51183c);
        Cipher cipher = Cipher.getInstance(ENCRYPT_TRANSFORMATION);
        cipher.init(1, m51182b, new GCMParameterSpec(128, m51183c2));
        byte[] doFinal = cipher.doFinal(bytes);
        byte[] array = ByteBuffer.allocate(m51183c2.length + m51183c.length + doFinal.length).put(m51183c2).put(m51183c).put(doFinal).array();
        Intrinsics.checkNotNullExpressionValue(array, "array(...)");
        return array;
    }

    public final void encryptFile(@NotNull File fromFile, @NotNull File toFile, @NotNull String password) throws Exception {
        Intrinsics.checkNotNullParameter(fromFile, "fromFile");
        Intrinsics.checkNotNullParameter(toFile, "toFile");
        Intrinsics.checkNotNullParameter(password, "password");
        encrypt(fromFile, toFile, password);
    }

    public final void encrypt(@NotNull File fromFile, @NotNull File toFile, @NotNull String password) throws Exception {
        Intrinsics.checkNotNullParameter(fromFile, "fromFile");
        Intrinsics.checkNotNullParameter(toFile, "toFile");
        Intrinsics.checkNotNullParameter(password, "password");
        byte[] m51183c = m51183c(16);
        byte[] m51183c2 = m51183c(16);
        char[] charArray = password.toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "toCharArray(...)");
        SecretKey m51182b = m51182b(charArray, m51183c);
        Cipher cipher = Cipher.getInstance(ENCRYPT_TRANSFORMATION);
        cipher.init(1, m51182b, new GCMParameterSpec(128, m51183c2));
        Intrinsics.checkNotNull(cipher);
        m51181a(fromFile, toFile, cipher);
        FileUtils.INSTANCE.appendContentToFile(ArrayUtils.addAll(m51183c2, Arrays.copyOf(m51183c, m51183c.length)), toFile);
    }
}
