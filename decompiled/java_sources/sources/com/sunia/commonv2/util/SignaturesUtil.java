package com.sunia.commonv2.util;

import android.content.Context;
import android.content.pm.Signature;
import com.sunia.HTREnginev2.utils.LogUtil;
import java.security.MessageDigest;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* loaded from: classes10.dex */
public class SignaturesUtil {
    private static final String TAG = "SHAUtil";

    private static String byte2Hex(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                stringBuffer.append("0");
            }
            stringBuffer.append(hexString);
        }
        return stringBuffer.toString();
    }

    public static String getApkSignatureSHA256(Context context) {
        try {
            Signature signature = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures[0];
            MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256);
            messageDigest.update(signature.toByteArray());
            return byte2Hex(messageDigest.digest());
        } catch (Exception e) {
            LogUtil.m57654e(TAG, e.getMessage());
            return "";
        }
    }

    public static String getHash256(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256);
            messageDigest.update(str.getBytes("UTF-8"));
            return byte2Hex(messageDigest.digest());
        } catch (Exception e) {
            LogUtil.m57654e(TAG, e.getMessage());
            return "";
        }
    }
}
