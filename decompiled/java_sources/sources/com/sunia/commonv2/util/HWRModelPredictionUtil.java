package com.sunia.commonv2.util;

import android.content.Context;
import com.couchbase.lite.internal.utils.StringUtils;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.ConfigBean;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes10.dex */
public class HWRModelPredictionUtil {
    public static final ConfigBean EN_US;
    public static final ConfigBean MATH_CALCULATOR;
    public static final ConfigBean MATH_CHEM;
    public static final ConfigBean MATH_GENERIC;
    public static final ConfigBean MATH_VERTICAL;
    public static final ConfigBean MATH_VERTICAL_CALCULATOR;
    public static final ConfigBean MATH_ZH;
    private static final String TAG = "HWRModelPredictionUtil";
    public static final ConfigBean ZH_CN;

    @Deprecated
    public static final ConfigBean en_us;

    @Deprecated
    public static final ConfigBean math_calculator;

    @Deprecated
    public static final ConfigBean math_chem;

    @Deprecated
    public static final ConfigBean math_generic;

    @Deprecated
    public static final ConfigBean math_vertical;

    @Deprecated
    public static final ConfigBean math_zh;
    private static final int sBufferSize = 524288;
    private static List<String> sMathSymbol;

    @Deprecated
    public static final ConfigBean zh_cn;

    static {
        ConfigBean configBean = new ConfigBean("recognize/conf/zh_CN", "zh_CN.conf", "zh_CN");
        ZH_CN = configBean;
        zh_cn = configBean;
        ConfigBean configBean2 = new ConfigBean("recognize/conf/en_US", "en_US.conf", "en_US");
        EN_US = configBean2;
        en_us = configBean2;
        ConfigBean configBean3 = new ConfigBean("math/conf/math_calculator", "math_calculator.conf", "math_calculator");
        MATH_CALCULATOR = configBean3;
        math_calculator = configBean3;
        ConfigBean configBean4 = new ConfigBean("math/conf/math_chem", "math_chem.conf", "math_chem");
        MATH_CHEM = configBean4;
        math_chem = configBean4;
        ConfigBean configBean5 = new ConfigBean("math/conf/math_zh", "math_zh.conf", "math_zh");
        MATH_ZH = configBean5;
        math_zh = configBean5;
        ConfigBean configBean6 = new ConfigBean("math/conf/math_generic", "math_generic.conf", "math_generic");
        MATH_GENERIC = configBean6;
        math_generic = configBean6;
        ConfigBean configBean7 = new ConfigBean("math/conf/math_vertical", "math_vertical.conf", "math_vertical");
        MATH_VERTICAL = configBean7;
        math_vertical = configBean7;
        MATH_VERTICAL_CALCULATOR = new ConfigBean("math/conf/math_vertical_calculator", "math_vertical_calculator.conf", "math_vertical_calculator");
        ArrayList arrayList = new ArrayList();
        sMathSymbol = arrayList;
        arrayList.add("\\");
        sMathSymbol.add("_{");
        sMathSymbol.add("^{");
    }

    private static ConfigBean check(String str) {
        return (str == null || str.trim().equals("")) ? ZH_CN : isEnUS(str) ? EN_US : isMathCalculator(str) ? MATH_CALCULATOR : isMathVertical(str) ? MATH_VERTICAL : isMathChem(str) ? MATH_CHEM : isMathZH(str) ? MATH_ZH : isMathGeneric(str) ? MATH_GENERIC : ZH_CN;
    }

    public static ConfigBean getConfigBean(String str) {
        if (str != null) {
            str = str.replace("\r", "").replace("\n", "").replace("\t", "").replace(" ", "");
        }
        ConfigBean check = check(str);
        LogUtil.m57653d(TAG, "getConfigBean,targetResult=" + str + ",configBean=" + check);
        return check;
    }

    private static boolean isChinese(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (!isChineseCharacter(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    private static boolean isChineseCharacter(char c) {
        return c >= 19968 && c <= 40869;
    }

    private static boolean isEnUS(String str) {
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length];
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < charArray.length; i++) {
            char c = charArray[i];
            iArr[i] = c;
            if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
                z2 = true;
            } else if (":;*&%$#@,'.?!()".contains(String.valueOf(c))) {
                continue;
            } else {
                if (!StringUtils.NUMERIC.contains(String.valueOf(charArray[i]))) {
                    return false;
                }
                z = true;
            }
        }
        return !z || z2;
    }

    private static boolean isMath(String str) {
        Iterator<String> it2 = sMathSymbol.iterator();
        while (it2.hasNext()) {
            if (str.contains(it2.next())) {
                return true;
            }
        }
        return false;
    }

    private static boolean isMathCalculator(String str) {
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length];
        for (int i = 0; i < charArray.length; i++) {
            char c = charArray[i];
            iArr[i] = c;
            if (!"0123456789().+-=".contains(String.valueOf(c))) {
                return false;
            }
        }
        return true;
    }

    private static boolean isMathChem(String str) {
        char[] charArray = str.toCharArray();
        if (!isMath(str) || !str.contains("\\mathop")) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < charArray.length; i++) {
            if (isChineseCharacter(charArray[i])) {
                if (!"体催光冷剂加化固少强气浓液溶点热照熔燃电稀融解足过通量高温放纯氧酶".contains(String.valueOf(charArray[i]))) {
                    return false;
                }
                z = true;
            }
        }
        return z;
    }

    private static boolean isMathGeneric(String str) {
        return isMath(str);
    }

    private static boolean isMathVertical(String str) {
        return str.contains("\\begin{array}") && str.contains("\\hline");
    }

    private static boolean isMathZH(String str) {
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length];
        if (!isMath(str)) {
            return false;
        }
        if (isSuperscript(str)) {
            return true;
        }
        for (int i = 0; i < charArray.length; i++) {
            char c = charArray[i];
            iArr[i] = c;
            if (isChineseCharacter(c) || isSymbol(iArr[i])) {
                return true;
            }
        }
        return false;
    }

    private static boolean isSuperscript(String str) {
        return str.contains("\\dot");
    }

    private static boolean isSymbol(int i) {
        return i >= 9312 && i <= 9321;
    }

    public static byte[] readAssertsFileToString(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 524288);
        try {
            try {
                byte[] bArr = new byte[524288];
                while (true) {
                    int read = bufferedInputStream.read(bArr, 0, 524288);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    bufferedInputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                return byteArray;
            } catch (IOException e3) {
                e3.printStackTrace();
                try {
                    bufferedInputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                try {
                    byteArrayOutputStream.close();
                    return null;
                } catch (IOException e5) {
                    e5.printStackTrace();
                    return null;
                }
            }
        } catch (Throwable th) {
            try {
                bufferedInputStream.close();
            } catch (IOException e6) {
                e6.printStackTrace();
            }
            try {
                byteArrayOutputStream.close();
                throw th;
            } catch (IOException e7) {
                e7.printStackTrace();
                throw th;
            }
        }
    }

    public static void test(Context context) {
        try {
            String[] split = new String(readAssertsFileToString(context.getAssets().open("bbk_data.txt")), "UTF-8").split("\n");
            LogUtil.m57653d(TAG, "split.length=" + split.length);
            for (String str : split) {
                getConfigBean(str);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
