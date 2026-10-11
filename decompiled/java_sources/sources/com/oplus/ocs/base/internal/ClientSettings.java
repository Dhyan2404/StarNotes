package com.oplus.ocs.base.internal;

import com.oplus.ocs.base.common.Feature;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes9.dex */
public class ClientSettings {

    /* renamed from: a */
    private String f63088a;

    /* renamed from: b */
    private int f63089b;

    /* renamed from: c */
    private List<Feature> f63090c;

    public ClientSettings(String str) {
        this.f63088a = str;
        this.f63089b = 100011;
        this.f63090c = new ArrayList();
    }

    public List<Feature> getList() {
        return this.f63090c;
    }

    public String getPackageName() {
        return this.f63088a;
    }

    public int getVersionCode() {
        return this.f63089b;
    }

    public ClientSettings(String str, int i, List<Feature> list) {
        this.f63088a = str;
        this.f63089b = i;
        this.f63090c = list;
    }
}
