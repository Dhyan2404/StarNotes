package com.sunia.HTREnginev2;

import android.os.LocaleList;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.Locale;

@RequiresApi(24)
/* loaded from: classes3.dex */
public final class m1j implements l1j {

    /* renamed from: a */
    public final LocaleList f77092a;

    public m1j(Object obj) {
        this.f77092a = (LocaleList) obj;
    }

    @Override // com.sunia.HTREnginev2.l1j
    /* renamed from: a */
    public Object mo55106a() {
        return this.f77092a;
    }

    @Override // com.sunia.HTREnginev2.l1j
    @Nullable
    /* renamed from: b */
    public Locale mo55107b(@NonNull String[] strArr) {
        return this.f77092a.getFirstMatch(strArr);
    }

    @Override // com.sunia.HTREnginev2.l1j
    /* renamed from: c */
    public int mo55108c(Locale locale) {
        return this.f77092a.indexOf(locale);
    }

    @Override // com.sunia.HTREnginev2.l1j
    /* renamed from: d */
    public String mo55109d() {
        return this.f77092a.toLanguageTags();
    }

    public boolean equals(Object obj) {
        return this.f77092a.equals(((l1j) obj).mo55106a());
    }

    @Override // com.sunia.HTREnginev2.l1j
    public Locale get(int i) {
        return this.f77092a.get(i);
    }

    public int hashCode() {
        return this.f77092a.hashCode();
    }

    @Override // com.sunia.HTREnginev2.l1j
    public boolean isEmpty() {
        return this.f77092a.isEmpty();
    }

    @Override // com.sunia.HTREnginev2.l1j
    public int size() {
        return this.f77092a.size();
    }

    public String toString() {
        return this.f77092a.toString();
    }
}
