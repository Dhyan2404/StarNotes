package com.alibaba.sdk.android.oss.model;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public class GetBucketRefererResult extends OSSResult {

    /* renamed from: f */
    public String f13158f;

    /* renamed from: g */
    public ArrayList<String> f13159g;

    public void addReferer(String str) {
        if (this.f13159g == null) {
            this.f13159g = new ArrayList<>();
        }
        this.f13159g.add(str);
    }

    public String getAllowEmpty() {
        return this.f13158f;
    }

    public ArrayList<String> getReferers() {
        return this.f13159g;
    }

    public void setAllowEmpty(String str) {
        this.f13158f = str;
    }

    public void setReferers(ArrayList<String> arrayList) {
        this.f13159g = arrayList;
    }
}
