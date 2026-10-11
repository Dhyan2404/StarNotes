package com.alibaba.fastjson2.filter;

import java.util.Arrays;

/* loaded from: classes3.dex */
public class Labels {

    /* loaded from: classes3.dex */
    public static class DefaultLabelFilter implements LabelFilter {

        /* renamed from: a */
        public final String[] f12394a;

        /* renamed from: b */
        public final String[] f12395b;

        public DefaultLabelFilter(String[] strArr, String[] strArr2) {
            if (strArr != null) {
                String[] strArr3 = new String[strArr.length];
                this.f12394a = strArr3;
                System.arraycopy(strArr, 0, strArr3, 0, strArr.length);
                Arrays.sort(strArr3);
            } else {
                this.f12394a = null;
            }
            if (strArr2 == null) {
                this.f12395b = null;
                return;
            }
            String[] strArr4 = new String[strArr2.length];
            this.f12395b = strArr4;
            System.arraycopy(strArr2, 0, strArr4, 0, strArr2.length);
            Arrays.sort(strArr4);
        }

        @Override // com.alibaba.fastjson2.filter.LabelFilter
        public boolean apply(String str) {
            String[] strArr = this.f12395b;
            if (strArr != null) {
                return Arrays.binarySearch(strArr, str) < 0;
            }
            String[] strArr2 = this.f12394a;
            return strArr2 != null && Arrays.binarySearch(strArr2, str) >= 0;
        }
    }

    public static LabelFilter excludes(String... strArr) {
        return new DefaultLabelFilter(null, strArr);
    }

    public static LabelFilter includes(String... strArr) {
        return new DefaultLabelFilter(strArr, null);
    }
}
