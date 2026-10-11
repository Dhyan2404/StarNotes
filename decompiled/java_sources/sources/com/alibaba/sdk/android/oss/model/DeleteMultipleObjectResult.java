package com.alibaba.sdk.android.oss.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class DeleteMultipleObjectResult extends OSSResult {

    /* renamed from: f */
    public List<String> f13133f;

    /* renamed from: g */
    public List<String> f13134g;

    /* renamed from: h */
    public boolean f13135h;

    public void addDeletedObject(String str) {
        if (this.f13133f == null) {
            this.f13133f = new ArrayList();
        }
        this.f13133f.add(str);
    }

    public void addFailedObjects(String str) {
        if (this.f13134g == null) {
            this.f13134g = new ArrayList();
        }
        this.f13134g.add(str);
    }

    public void clear() {
        List<String> list = this.f13133f;
        if (list != null) {
            list.clear();
        }
        List<String> list2 = this.f13134g;
        if (list2 != null) {
            list2.clear();
        }
    }

    public List<String> getDeletedObjects() {
        return this.f13133f;
    }

    public List<String> getFailedObjects() {
        return this.f13134g;
    }

    public boolean getQuiet() {
        return this.f13135h;
    }

    public void setQuiet(boolean z) {
        this.f13135h = z;
    }
}
