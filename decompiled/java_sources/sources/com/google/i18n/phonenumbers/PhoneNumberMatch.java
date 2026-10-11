package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.Phonenumber;
import java.util.Arrays;

/* loaded from: classes6.dex */
public final class PhoneNumberMatch {

    /* renamed from: a */
    public final int f36385a;

    /* renamed from: b */
    public final String f36386b;

    /* renamed from: c */
    public final Phonenumber.PhoneNumber f36387c;

    public PhoneNumberMatch(int i, String str, Phonenumber.PhoneNumber phoneNumber) {
        if (i < 0) {
            throw new IllegalArgumentException("Start index must be >= 0.");
        }
        if (str == null || phoneNumber == null) {
            throw null;
        }
        this.f36385a = i;
        this.f36386b = str;
        this.f36387c = phoneNumber;
    }

    public int end() {
        return this.f36385a + this.f36386b.length();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PhoneNumberMatch)) {
            return false;
        }
        PhoneNumberMatch phoneNumberMatch = (PhoneNumberMatch) obj;
        return this.f36386b.equals(phoneNumberMatch.f36386b) && this.f36385a == phoneNumberMatch.f36385a && this.f36387c.equals(phoneNumberMatch.f36387c);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f36385a), this.f36386b, this.f36387c});
    }

    public Phonenumber.PhoneNumber number() {
        return this.f36387c;
    }

    public String rawString() {
        return this.f36386b;
    }

    public int start() {
        return this.f36385a;
    }

    public String toString() {
        return "PhoneNumberMatch [" + start() + "," + end() + ") " + this.f36386b;
    }
}
