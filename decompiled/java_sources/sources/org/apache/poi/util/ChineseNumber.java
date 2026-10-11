package org.apache.poi.util;

/* loaded from: classes13.dex */
public class ChineseNumber {
    public static final String[] LOWER_ZH = {"零", "一", "二", "三", "四", "五", "六", "七", "八", "九"};
    public static final String[] MID_ZH = {"千", "百", "十", ""};
    public static final String[] HIGH_ZH = {"", "万", "亿", "兆", "京", "垓"};
    public static final String[] LOWER_LEGAL = {"零", "壹", "貳", "叁", "肆", "伍", "陆", "柒", "捌", "玖"};
    public static final String[] MID_LEGAL = {"仟", "佰", "拾", ""};
    public static final String[] HIGH_LEGAL = {"", "萬", "亿", "兆", "京", "垓"};
    public static final String[] TIAN_GAN = {"甲", "乙", "丙", "丁", "戊", "己", "庚", "辛", "壬", "癸"};
    public static final String[] DI_ZHI = {"子", "丑", "寅", "卯", "辰", "巳", "午", "未", "申", "酉", "戌", "亥"};

    private static void convert(StringBuilder sb, int i, int i2, boolean z) {
        int i3;
        String[] strArr = z ? HIGH_LEGAL : HIGH_ZH;
        String[] strArr2 = z ? LOWER_LEGAL : LOWER_ZH;
        int i4 = i % 10000;
        if (i4 > 0) {
            sb.insert(0, strArr[i2]);
            i3 = convertLowerNumber(sb, i4, z);
        } else {
            i3 = 0;
        }
        if (i > 10000) {
            if (i3 >= 0) {
                sb.insert(0, strArr2[0]);
            }
            convert(sb, i / 10000, i2 + 1, z);
        }
    }

    private static int convertLowerNumber(StringBuilder sb, int i, boolean z) {
        String[] strArr = z ? MID_LEGAL : MID_ZH;
        String[] strArr2 = z ? LOWER_LEGAL : LOWER_ZH;
        int i2 = 3;
        boolean z2 = false;
        while (i > 0) {
            int i3 = i % 10;
            if (i3 > 0) {
                sb.insert(0, strArr[i2]).insert(0, strArr2[i3]);
            } else if (!z2 && i2 < 3) {
                sb.insert(0, strArr2[0]);
            }
            z2 = i3 == 0;
            i /= 10;
            i2--;
        }
        return i2;
    }

    public static void main(String[] strArr) {
        String chinese = toChinese(905765440);
        System.out.println("toChinese = " + chinese);
        String chineseLegal = toChineseLegal(905765440);
        System.out.println("toChineseLegal = " + chineseLegal);
    }

    public static String toChinese(int i) {
        StringBuilder sb = new StringBuilder();
        convert(sb, i, 0, false);
        return sb.toString();
    }

    public static String toChineseLegal(int i) {
        StringBuilder sb = new StringBuilder();
        convert(sb, i, 0, true);
        return sb.toString();
    }

    public static String toDiZhi(int i) {
        if (i >= 1) {
            String[] strArr = DI_ZHI;
            if (i <= strArr.length) {
                return strArr[i - 1];
            }
        }
        return String.valueOf(i);
    }

    public static String toTianGan(int i) {
        if (i >= 1) {
            String[] strArr = TIAN_GAN;
            if (i <= strArr.length) {
                return strArr[i - 1];
            }
        }
        return String.valueOf(i);
    }
}
