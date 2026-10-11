package org.mortbay.jetty.servlet;

import com.google.android.material.motion.MotionUtils;
import java.util.Arrays;

/* loaded from: classes13.dex */
public class ServletMapping {

    /* renamed from: a */
    public String[] f115188a;

    /* renamed from: b */
    public String f115189b;

    public String[] getPathSpecs() {
        return this.f115188a;
    }

    public String getServletName() {
        return this.f115189b;
    }

    public void setPathSpec(String str) {
        this.f115188a = new String[]{str};
    }

    public void setPathSpecs(String[] strArr) {
        this.f115188a = strArr;
    }

    public void setServletName(String str) {
        this.f115189b = str;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("(S=");
        stringBuffer.append(this.f115189b);
        stringBuffer.append(",");
        String[] strArr = this.f115188a;
        stringBuffer.append(strArr == null ? "[]" : Arrays.asList(strArr).toString());
        stringBuffer.append(MotionUtils.f31762d);
        return stringBuffer.toString();
    }
}
