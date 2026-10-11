package com.sunia.HTREnginev2;

import com.google.i18n.phonenumbers.Phonemetadata;
import com.google.i18n.phonenumbers.internal.GeoEntityUtility;

/* loaded from: classes6.dex */
public final class o7e implements mnj {

    /* renamed from: a */
    public final l8j<Integer> f79431a = l8j.m55398b();

    /* renamed from: b */
    public final l8j<String> f79432b = l8j.m55399c();

    @Override // com.sunia.HTREnginev2.mnj
    /* renamed from: a */
    public void mo55400a(Phonemetadata.PhoneMetadata phoneMetadata) {
        if (GeoEntityUtility.isGeoEntity(this.f79432b.m55401d().mo55403a(phoneMetadata))) {
            this.f79432b.mo55400a(phoneMetadata);
        } else {
            this.f79431a.mo55400a(phoneMetadata);
        }
    }

    /* renamed from: b */
    public Phonemetadata.PhoneMetadata m55921b(int i) {
        return this.f79431a.m55402e(Integer.valueOf(i));
    }

    /* renamed from: c */
    public Phonemetadata.PhoneMetadata m55922c(String str) {
        return this.f79432b.m55402e(str);
    }
}
