package org.mortbay.jetty.servlet;

import com.google.android.material.motion.MotionUtils;
import java.util.Arrays;

/* loaded from: classes13.dex */
public class FilterMapping {

    /* renamed from: a */
    public int f115133a = 1;

    /* renamed from: b */
    public String f115134b;

    /* renamed from: c */
    public transient FilterHolder f115135c;

    /* renamed from: d */
    public String[] f115136d;

    /* renamed from: e */
    public String[] f115137e;

    /* renamed from: a */
    public boolean m71610a(int i) {
        int i2 = this.f115133a;
        return (i2 & i) != 0 || (i2 == 0 && i == 1);
    }

    /* renamed from: b */
    public boolean m71611b(String str, int i) {
        int i2 = this.f115133a;
        if (((i2 & i) != 0 || (i2 == 0 && i == 1)) && this.f115136d != null) {
            int i3 = 0;
            while (true) {
                String[] strArr = this.f115136d;
                if (i3 >= strArr.length) {
                    break;
                }
                String str2 = strArr[i3];
                if (str2 != null && PathMap.match(str2, str, true)) {
                    return true;
                }
                i3++;
            }
        }
        return false;
    }

    /* renamed from: c */
    public FilterHolder m71612c() {
        return this.f115135c;
    }

    /* renamed from: d */
    public void m71613d(FilterHolder filterHolder) {
        this.f115135c = filterHolder;
    }

    public int getDispatches() {
        return this.f115133a;
    }

    public String getFilterName() {
        return this.f115134b;
    }

    public String[] getPathSpecs() {
        return this.f115136d;
    }

    public String[] getServletNames() {
        return this.f115137e;
    }

    public void setDispatches(int i) {
        this.f115133a = i;
    }

    public void setFilterName(String str) {
        this.f115134b = str;
    }

    public void setPathSpec(String str) {
        this.f115136d = new String[]{str};
    }

    public void setPathSpecs(String[] strArr) {
        this.f115136d = strArr;
    }

    public void setServletName(String str) {
        this.f115137e = new String[]{str};
    }

    public void setServletNames(String[] strArr) {
        this.f115137e = strArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("(F=");
        stringBuffer.append(this.f115134b);
        stringBuffer.append(",");
        String[] strArr = this.f115136d;
        stringBuffer.append(strArr == null ? "[]" : Arrays.asList(strArr).toString());
        stringBuffer.append(",");
        String[] strArr2 = this.f115137e;
        stringBuffer.append(strArr2 != null ? Arrays.asList(strArr2).toString() : "[]");
        stringBuffer.append(",");
        stringBuffer.append(this.f115133a);
        stringBuffer.append(MotionUtils.f31762d);
        return stringBuffer.toString();
    }
}
