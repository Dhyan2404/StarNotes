package com.sunia.HTREnginev2;

import com.google.i18n.phonenumbers.Phonemetadata;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes6.dex */
public final class l8j<T> implements mnj {

    /* renamed from: a */
    public final ConcurrentMap<T, Phonemetadata.PhoneMetadata> f76239a = new ConcurrentHashMap();

    /* renamed from: b */
    public final InterfaceC14034c<T> f76240b;

    /* renamed from: com.sunia.HTREnginev2.l8j$a */
    /* loaded from: classes6.dex */
    public class C14032a implements InterfaceC14034c<String> {
        @Override // com.sunia.HTREnginev2.l8j.InterfaceC14034c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public String mo55403a(Phonemetadata.PhoneMetadata phoneMetadata) {
            return phoneMetadata.getId();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.l8j$b */
    /* loaded from: classes6.dex */
    public class C14033b implements InterfaceC14034c<Integer> {
        @Override // com.sunia.HTREnginev2.l8j.InterfaceC14034c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Integer mo55403a(Phonemetadata.PhoneMetadata phoneMetadata) {
            return Integer.valueOf(phoneMetadata.getCountryCode());
        }
    }

    /* renamed from: com.sunia.HTREnginev2.l8j$c */
    /* loaded from: classes6.dex */
    public interface InterfaceC14034c<T> {
        /* renamed from: a */
        T mo55403a(Phonemetadata.PhoneMetadata phoneMetadata);
    }

    public l8j(InterfaceC14034c<T> interfaceC14034c) {
        this.f76240b = interfaceC14034c;
    }

    /* renamed from: b */
    public static l8j<Integer> m55398b() {
        return new l8j<>(new C14033b());
    }

    /* renamed from: c */
    public static l8j<String> m55399c() {
        return new l8j<>(new C14032a());
    }

    @Override // com.sunia.HTREnginev2.mnj
    /* renamed from: a */
    public void mo55400a(Phonemetadata.PhoneMetadata phoneMetadata) {
        this.f76239a.put(this.f76240b.mo55403a(phoneMetadata), phoneMetadata);
    }

    /* renamed from: d */
    public InterfaceC14034c<T> m55401d() {
        return this.f76240b;
    }

    /* renamed from: e */
    public Phonemetadata.PhoneMetadata m55402e(T t) {
        if (t != null) {
            return this.f76239a.get(t);
        }
        return null;
    }
}
