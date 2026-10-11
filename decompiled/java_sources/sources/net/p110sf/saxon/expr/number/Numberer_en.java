package net.p110sf.saxon.expr.number;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;

/* loaded from: classes11.dex */
public class Numberer_en extends AbstractNumberer {

    /* renamed from: j */
    public static final String[] f99893j = {"Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"};

    /* renamed from: k */
    public static final String[] f99894k = {"", "Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"};

    /* renamed from: l */
    public static final String[] f99895l = {"Zeroth", "First", "Second", "Third", "Fourth", "Fifth", "Sixth", "Seventh", "Eighth", "Ninth", "Tenth", "Eleventh", "Twelfth", "Thirteenth", "Fourteenth", "Fifteenth", "Sixteenth", "Seventeenth", "Eighteenth", "Nineteenth"};

    /* renamed from: m */
    public static final String[] f99896m = {"", "Tenth", "Twentieth", "Thirtieth", "Fortieth", "Fiftieth", "Sixtieth", "Seventieth", "Eightieth", "Ninetieth"};

    /* renamed from: n */
    public static final String[] f99897n = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};

    /* renamed from: o */
    public static final String[] f99898o = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};

    /* renamed from: p */
    public static final String[] f99899p = {"Mon", "Tues", "Weds", "Thurs", "Fri", "Sat", "Sun"};

    /* renamed from: q */
    public static final int[] f99900q = {1, 2, 1, 2, 1, 2, 2};

    /* renamed from: h */
    public String f99901h = " ";

    /* renamed from: i */
    public String f99902i = "-";

    @Override // net.p110sf.saxon.expr.number.AbstractNumberer, net.p110sf.saxon.lib.Numberer
    public String dayName(int i, int i2, int i3) {
        int i4 = i - 1;
        String str = f99898o[i4];
        if (i3 < 2) {
            i3 = 2;
        }
        if (str.length() > i3) {
            str = f99899p[i4];
            if (str.length() > i3) {
                str = str.substring(0, i3);
            }
        }
        StringBuilder sb = new StringBuilder(str);
        while (sb.length() < i2) {
            sb.append(' ');
        }
        String sb2 = sb.toString();
        return (i2 == 1 && i3 == 2) ? sb2.substring(0, f99900q[i4]) : sb2;
    }

    @Override // net.p110sf.saxon.expr.number.AbstractNumberer, net.p110sf.saxon.lib.Numberer
    public String monthName(int i, int i2, int i3) {
        String str = f99897n[i - 1];
        if (i3 < 3) {
            i3 = 3;
        }
        if (str.length() > i3) {
            str = str.substring(0, i3);
        }
        StringBuilder sb = new StringBuilder(str);
        while (sb.length() < i2) {
            sb.append(' ');
        }
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.number.AbstractNumberer
    public String ordinalSuffix(String str, long j) {
        int i = (int) (j % 10);
        return ((int) (j % 100)) / 10 == 1 ? "th" : i == 1 ? "st" : i == 2 ? "nd" : i == 3 ? "rd" : "th";
    }

    @Override // net.p110sf.saxon.expr.number.AbstractNumberer
    public void setLanguage(String str) {
        super.setLanguage(str);
        if (str.endsWith("-x-hyphen")) {
            setTensUnitsSeparatorOrdinal("-");
            setTensUnitsSeparatorCardinal("-");
        } else if (str.endsWith("-x-nohyphen")) {
            setTensUnitsSeparatorOrdinal(" ");
            setTensUnitsSeparatorCardinal(" ");
        }
    }

    public void setTensUnitsSeparatorCardinal(String str) {
        this.f99901h = str;
    }

    public void setTensUnitsSeparatorOrdinal(String str) {
        this.f99902i = str;
    }

    @Override // net.p110sf.saxon.expr.number.AbstractNumberer
    public String toOrdinalWords(String str, long j, int i) {
        String str2;
        String str3 = "th";
        if (j >= 1000000000) {
            long j2 = j % 1000000000;
            StringBuilder sb = new StringBuilder();
            sb.append(toWords(j / 1000000000));
            sb.append(" Billion");
            if (j2 != 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(j2 < 100 ? CloudStorageConstants.OPERATION_AND : " ");
                sb2.append(toOrdinalWords(str, j2, i));
                str3 = sb2.toString();
            }
            sb.append(str3);
            str2 = sb.toString();
        } else if (j >= 1000000) {
            long j3 = j % 1000000;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(toWords(j / 1000000));
            sb3.append(" Million");
            if (j3 != 0) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(j3 < 100 ? CloudStorageConstants.OPERATION_AND : " ");
                sb4.append(toOrdinalWords(str, j3, i));
                str3 = sb4.toString();
            }
            sb3.append(str3);
            str2 = sb3.toString();
        } else if (j >= 1000) {
            long j4 = j % 1000;
            StringBuilder sb5 = new StringBuilder();
            sb5.append(toWords(j / 1000));
            sb5.append(" Thousand");
            if (j4 != 0) {
                StringBuilder sb6 = new StringBuilder();
                sb6.append(j4 < 100 ? CloudStorageConstants.OPERATION_AND : " ");
                sb6.append(toOrdinalWords(str, j4, i));
                str3 = sb6.toString();
            }
            sb5.append(str3);
            str2 = sb5.toString();
        } else if (j >= 100) {
            long j5 = j % 100;
            StringBuilder sb7 = new StringBuilder();
            sb7.append(toWords(j / 100));
            sb7.append(" Hundred");
            if (j5 != 0) {
                str3 = CloudStorageConstants.OPERATION_AND + toOrdinalWords(str, j5, i);
            }
            sb7.append(str3);
            str2 = sb7.toString();
        } else if (j < 20) {
            str2 = f99895l[(int) j];
        } else {
            int i2 = (int) (j % 10);
            if (i2 == 0) {
                str2 = f99896m[((int) j) / 10];
            } else {
                str2 = f99894k[((int) j) / 10] + this.f99902i + f99895l[i2];
            }
        }
        return i == 0 ? str2.toUpperCase() : i == 1 ? str2.toLowerCase() : str2;
    }

    @Override // net.p110sf.saxon.expr.number.AbstractNumberer
    public String toWords(long j) {
        String str = "";
        if (j >= 1000000000) {
            long j2 = j % 1000000000;
            StringBuilder sb = new StringBuilder();
            sb.append(toWords(j / 1000000000));
            sb.append(" Billion");
            if (j2 != 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(j2 < 100 ? CloudStorageConstants.OPERATION_AND : " ");
                sb2.append(toWords(j2));
                str = sb2.toString();
            }
            sb.append(str);
            return sb.toString();
        }
        if (j >= 1000000) {
            long j3 = j % 1000000;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(toWords(j / 1000000));
            sb3.append(" Million");
            if (j3 != 0) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(j3 < 100 ? CloudStorageConstants.OPERATION_AND : " ");
                sb4.append(toWords(j3));
                str = sb4.toString();
            }
            sb3.append(str);
            return sb3.toString();
        }
        if (j >= 1000) {
            long j4 = j % 1000;
            StringBuilder sb5 = new StringBuilder();
            sb5.append(toWords(j / 1000));
            sb5.append(" Thousand");
            if (j4 != 0) {
                StringBuilder sb6 = new StringBuilder();
                sb6.append(j4 < 100 ? CloudStorageConstants.OPERATION_AND : " ");
                sb6.append(toWords(j4));
                str = sb6.toString();
            }
            sb5.append(str);
            return sb5.toString();
        }
        if (j >= 100) {
            long j5 = j % 100;
            StringBuilder sb7 = new StringBuilder();
            sb7.append(toWords(j / 100));
            sb7.append(" Hundred");
            if (j5 != 0) {
                str = CloudStorageConstants.OPERATION_AND + toWords(j5);
            }
            sb7.append(str);
            return sb7.toString();
        }
        if (j < 20) {
            return f99893j[(int) j];
        }
        int i = (int) (j % 10);
        StringBuilder sb8 = new StringBuilder();
        sb8.append(f99894k[((int) j) / 10]);
        if (i != 0) {
            str = this.f99901h + f99893j[i];
        }
        sb8.append(str);
        return sb8.toString();
    }
}
