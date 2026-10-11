package com.sun.org.apache.xalan.internal.transformer;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.material.motion.MotionUtils;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.text.NumberFormat;
import java.util.Locale;
import java.util.NoSuchElementException;
import org.w3c.dom.Element;

/* loaded from: classes10.dex */
class NumeratorFormatter {
    NumberFormatStringTokenizer m_formatTokenizer;
    NumberFormat m_formatter;
    Locale m_locale;
    TransformerImpl m_processor;
    protected Element m_xslNumberElement;
    private static final DecimalToRoman[] m_romanConvertTable = {new DecimalToRoman(1000, "M", 900, "CM"), new DecimalToRoman(500, SardineUtil.DEFAULT_NAMESPACE_PREFIX, 400, "CD"), new DecimalToRoman(100, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, 90, "XC"), new DecimalToRoman(50, "L", 40, "XL"), new DecimalToRoman(10, "X", 9, "IX"), new DecimalToRoman(5, "V", 4, "IV"), new DecimalToRoman(1, "I", 1, "I")};
    private static final char[] m_alphaCountTable = {'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y'};

    /* loaded from: classes10.dex */
    public class NumberFormatStringTokenizer {
        private int currentPosition;
        private int maxPosition;
        private String str;

        public NumberFormatStringTokenizer(String str) {
            this.str = str;
            this.maxPosition = str.length();
        }

        public int countTokens() {
            int i = this.currentPosition;
            int i2 = 0;
            while (i < this.maxPosition) {
                int i3 = i;
                while (i3 < this.maxPosition && Character.isLetterOrDigit(this.str.charAt(i3))) {
                    i3++;
                }
                if (i == i3 && !Character.isLetterOrDigit(this.str.charAt(i3))) {
                    i3++;
                }
                i = i3;
                i2++;
            }
            return i2;
        }

        public boolean hasMoreTokens() {
            return this.currentPosition < this.maxPosition;
        }

        public String nextToken() {
            int i = this.currentPosition;
            if (i >= this.maxPosition) {
                throw new NoSuchElementException();
            }
            while (true) {
                int i2 = this.currentPosition;
                if (i2 >= this.maxPosition || !Character.isLetterOrDigit(this.str.charAt(i2))) {
                    break;
                }
                this.currentPosition++;
            }
            int i3 = this.currentPosition;
            if (i == i3 && !Character.isLetterOrDigit(this.str.charAt(i3))) {
                this.currentPosition++;
            }
            return this.str.substring(i, this.currentPosition);
        }

        public void reset() {
            this.currentPosition = 0;
        }
    }

    public NumeratorFormatter(Element element, TransformerImpl transformerImpl) {
        this.m_xslNumberElement = element;
        this.m_processor = transformerImpl;
    }

    public String int2alphaCount(int i, char[] cArr) {
        int length = cArr.length;
        char[] cArr2 = new char[100];
        int i2 = 99;
        int i3 = 1;
        int i4 = 0;
        do {
            i4 = (i3 == 0 || (i4 != 0 && i3 == length + (-1))) ? length - 1 : 0;
            i3 = (i + i4) % length;
            i /= length;
            if (i3 == 0 && i == 0) {
                break;
            }
            cArr2[i2] = cArr[i3];
            i2--;
        } while (i > 0);
        return new String(cArr2, i2 + 1, (100 - i2) - 1);
    }

    public String long2roman(long j, boolean z) {
        if (j <= 0) {
            return "#E(" + j + MotionUtils.f31762d;
        }
        if (j > 3999) {
            return "#error";
        }
        String str = "";
        int i = 0;
        while (true) {
            DecimalToRoman[] decimalToRomanArr = m_romanConvertTable;
            DecimalToRoman decimalToRoman = decimalToRomanArr[i];
            if (j >= decimalToRoman.m_postValue) {
                str = str + decimalToRomanArr[i].m_postLetter;
                j -= decimalToRomanArr[i].m_postValue;
            } else {
                if (z && j >= decimalToRoman.m_preValue) {
                    str = str + decimalToRomanArr[i].m_preLetter;
                    j -= decimalToRomanArr[i].m_preValue;
                }
                i++;
                if (j <= 0) {
                    return str;
                }
            }
        }
    }
}
