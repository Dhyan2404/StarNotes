package com.couchbase.lite.internal.security;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.alibaba.fastjson2.JSONB;
import com.google.common.base.Ascii;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.SignatureException;

/* loaded from: classes4.dex */
public final class Signature {
    private static final byte DER_TAG_OCTET_STRING = 4;
    private static final byte DER_TAG_SEQUENCE = 48;
    private static final String SIGNING_ALGORITHM = "NONEwithRSA";

    /* loaded from: classes4.dex */
    public enum SignatureDigestAlgorithm {
        NONE(new byte[0]),
        SHA1(new byte[]{48, 9, 6, 5, 43, 14, 3, 2, Ascii.SUB, 5, 0}),
        SHA224(new byte[]{48, 13, 6, 9, 96, -122, JSONB.Constants.BC_INT32, 1, 101, 3, 4, 2, 4, 5, 0}),
        SHA256(new byte[]{48, 13, 6, 9, 96, -122, JSONB.Constants.BC_INT32, 1, 101, 3, 4, 2, 1, 5, 0}),
        SHA384(new byte[]{48, 13, 6, 9, 96, -122, JSONB.Constants.BC_INT32, 1, 101, 3, 4, 2, 2, 5, 0}),
        SHA512(new byte[]{48, 13, 6, 9, 96, -122, JSONB.Constants.BC_INT32, 1, 101, 3, 4, 2, 3, 5, 0});


        @NonNull
        private final byte[] encodedDigestAlgorithmOid;

        SignatureDigestAlgorithm(@NonNull byte[] bArr) {
            this.encodedDigestAlgorithmOid = bArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @NonNull
        public byte[] getEncodedDigestAlgorithmOid() {
            return this.encodedDigestAlgorithmOid;
        }
    }

    private Signature() {
    }

    @NonNull
    private static byte[] encode(@NonNull byte[] bArr, @NonNull SignatureDigestAlgorithm signatureDigestAlgorithm) throws IOException {
        if (signatureDigestAlgorithm == SignatureDigestAlgorithm.NONE) {
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(signatureDigestAlgorithm.getEncodedDigestAlgorithmOid());
        encodeDerValue(byteArrayOutputStream, (byte) 4, bArr);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        encodeSequence(byteArrayOutputStream2, byteArrayOutputStream.toByteArray());
        return byteArrayOutputStream2.toByteArray();
    }

    private static void encodeDerValue(@NonNull ByteArrayOutputStream byteArrayOutputStream, byte b, @Nullable byte[] bArr) throws IOException {
        byteArrayOutputStream.write(b);
        if (bArr == null) {
            byteArrayOutputStream.write(0);
        } else {
            encodeLength(byteArrayOutputStream, bArr.length);
            byteArrayOutputStream.write(bArr);
        }
    }

    private static void encodeLength(@NonNull ByteArrayOutputStream byteArrayOutputStream, int i) {
        if (i < 128) {
            byteArrayOutputStream.write((byte) i);
            return;
        }
        int i2 = i;
        int i3 = 1;
        while (true) {
            i2 >>>= 8;
            if (i2 == 0) {
                break;
            } else {
                i3++;
            }
        }
        byteArrayOutputStream.write((byte) (i3 | 128));
        for (int i4 = (i3 - 1) * 8; i4 >= 0; i4 -= 8) {
            byteArrayOutputStream.write((byte) (i >> i4));
        }
    }

    private static void encodeSequence(@NonNull ByteArrayOutputStream byteArrayOutputStream, @NonNull byte[] bArr) throws IOException {
        encodeDerValue(byteArrayOutputStream, (byte) 48, bArr);
    }

    @NonNull
    public static byte[] signHashData(@NonNull PrivateKey privateKey, @NonNull byte[] bArr, @NonNull SignatureDigestAlgorithm signatureDigestAlgorithm) throws IOException, SignatureException, NoSuchAlgorithmException, InvalidKeyException {
        byte[] encode = encode(bArr, signatureDigestAlgorithm);
        java.security.Signature signature = java.security.Signature.getInstance(SIGNING_ALGORITHM);
        signature.initSign(privateKey);
        signature.update(encode);
        return signature.sign();
    }
}
