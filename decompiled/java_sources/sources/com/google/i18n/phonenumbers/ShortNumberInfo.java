package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.Phonemetadata;
import com.google.i18n.phonenumbers.Phonenumber;
import com.google.i18n.phonenumbers.internal.MatcherApi;
import com.google.i18n.phonenumbers.internal.RegexBasedMatcher;
import com.google.i18n.phonenumbers.metadata.DefaultMetadataDependenciesProvider;
import com.google.i18n.phonenumbers.metadata.source.RegionMetadataSource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes6.dex */
public class ShortNumberInfo {

    /* renamed from: d */
    public static final Logger f36480d = Logger.getLogger(ShortNumberInfo.class.getName());

    /* renamed from: e */
    public static final ShortNumberInfo f36481e = new ShortNumberInfo(RegexBasedMatcher.create(), DefaultMetadataDependenciesProvider.getInstance().getShortNumberMetadataSource());

    /* renamed from: f */
    public static final Set<String> f36482f;

    /* renamed from: a */
    public final MatcherApi f36483a;

    /* renamed from: b */
    public final Map<Integer, List<String>> f36484b = CountryCodeToRegionCodeMap.getCountryCodeToRegionCodeMap();

    /* renamed from: c */
    public final RegionMetadataSource f36485c;

    /* loaded from: classes6.dex */
    public enum ShortNumberCost {
        TOLL_FREE,
        STANDARD_RATE,
        PREMIUM_RATE,
        UNKNOWN_COST
    }

    /* renamed from: com.google.i18n.phonenumbers.ShortNumberInfo$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6614a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f36486a;

        static {
            int[] iArr = new int[ShortNumberCost.values().length];
            f36486a = iArr;
            try {
                iArr[ShortNumberCost.PREMIUM_RATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f36486a[ShortNumberCost.UNKNOWN_COST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f36486a[ShortNumberCost.STANDARD_RATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f36486a[ShortNumberCost.TOLL_FREE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        HashSet hashSet = new HashSet();
        f36482f = hashSet;
        hashSet.add("BR");
        hashSet.add("CL");
        hashSet.add("NI");
    }

    public ShortNumberInfo(MatcherApi matcherApi, RegionMetadataSource regionMetadataSource) {
        this.f36483a = matcherApi;
        this.f36485c = regionMetadataSource;
    }

    /* renamed from: c */
    public static String m28499c(Phonenumber.PhoneNumber phoneNumber) {
        StringBuilder sb = new StringBuilder();
        if (phoneNumber.isItalianLeadingZero()) {
            char[] cArr = new char[phoneNumber.getNumberOfLeadingZeros()];
            Arrays.fill(cArr, '0');
            sb.append(new String(cArr));
        }
        sb.append(phoneNumber.getNationalNumber());
        return sb.toString();
    }

    public static ShortNumberInfo getInstance() {
        return f36481e;
    }

    /* renamed from: a */
    public String m28500a(String str) {
        Phonemetadata.PhoneMetadata m28504f = m28504f(str);
        if (m28504f == null) {
            return "";
        }
        Phonemetadata.PhoneNumberDesc shortCode = m28504f.getShortCode();
        return shortCode.hasExampleNumber() ? shortCode.getExampleNumber() : "";
    }

    /* renamed from: b */
    public String m28501b(String str, ShortNumberCost shortNumberCost) {
        Phonemetadata.PhoneMetadata m28504f = m28504f(str);
        if (m28504f == null) {
            return "";
        }
        int i = C6614a.f36486a[shortNumberCost.ordinal()];
        Phonemetadata.PhoneNumberDesc tollFree = i != 1 ? i != 3 ? i != 4 ? null : m28504f.getTollFree() : m28504f.getStandardRate() : m28504f.getPremiumRate();
        return (tollFree == null || !tollFree.hasExampleNumber()) ? "" : tollFree.getExampleNumber();
    }

    public boolean connectsToEmergencyNumber(String str, String str2) {
        return m28505g(str, str2, true);
    }

    /* renamed from: d */
    public final String m28502d(Phonenumber.PhoneNumber phoneNumber, List<String> list) {
        if (list.size() == 0) {
            return null;
        }
        if (list.size() == 1) {
            return list.get(0);
        }
        String m28499c = m28499c(phoneNumber);
        for (String str : list) {
            Phonemetadata.PhoneMetadata m28504f = m28504f(str);
            if (m28504f != null && m28506h(m28499c, m28504f.getShortCode())) {
                return str;
            }
        }
        return null;
    }

    /* renamed from: e */
    public final List<String> m28503e(int i) {
        List<String> list = this.f36484b.get(Integer.valueOf(i));
        if (list == null) {
            list = new ArrayList<>(0);
        }
        return Collections.unmodifiableList(list);
    }

    /* renamed from: f */
    public final Phonemetadata.PhoneMetadata m28504f(String str) {
        if (str == null) {
            return null;
        }
        try {
            return this.f36485c.getMetadataForRegion(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    /* renamed from: g */
    public final boolean m28505g(CharSequence charSequence, String str, boolean z) {
        Phonemetadata.PhoneMetadata m28504f;
        CharSequence m28463m = PhoneNumberUtil.m28463m(charSequence);
        boolean z2 = false;
        if (PhoneNumberUtil.f36412H.matcher(m28463m).lookingAt() || (m28504f = m28504f(str)) == null || !m28504f.hasEmergency()) {
            return false;
        }
        String normalizeDigitsOnly = PhoneNumberUtil.normalizeDigitsOnly(m28463m);
        if (z && !f36482f.contains(str)) {
            z2 = true;
        }
        return this.f36483a.matchNationalNumber(normalizeDigitsOnly, m28504f.getEmergency(), z2);
    }

    public ShortNumberCost getExpectedCost(Phonenumber.PhoneNumber phoneNumber) {
        List<String> m28503e = m28503e(phoneNumber.getCountryCode());
        if (m28503e.size() == 0) {
            return ShortNumberCost.UNKNOWN_COST;
        }
        if (m28503e.size() == 1) {
            return getExpectedCostForRegion(phoneNumber, m28503e.get(0));
        }
        ShortNumberCost shortNumberCost = ShortNumberCost.TOLL_FREE;
        Iterator<String> it2 = m28503e.iterator();
        while (it2.hasNext()) {
            ShortNumberCost expectedCostForRegion = getExpectedCostForRegion(phoneNumber, it2.next());
            int i = C6614a.f36486a[expectedCostForRegion.ordinal()];
            if (i == 1) {
                return ShortNumberCost.PREMIUM_RATE;
            }
            if (i == 2) {
                shortNumberCost = ShortNumberCost.UNKNOWN_COST;
            } else if (i != 3) {
                if (i != 4) {
                    f36480d.log(Level.SEVERE, "Unrecognised cost for region: " + expectedCostForRegion);
                }
            } else if (shortNumberCost != ShortNumberCost.UNKNOWN_COST) {
                shortNumberCost = ShortNumberCost.STANDARD_RATE;
            }
        }
        return shortNumberCost;
    }

    public ShortNumberCost getExpectedCostForRegion(Phonenumber.PhoneNumber phoneNumber, String str) {
        Phonemetadata.PhoneMetadata m28504f;
        if (m28507i(phoneNumber, str) && (m28504f = m28504f(str)) != null) {
            String m28499c = m28499c(phoneNumber);
            if (!m28504f.getGeneralDesc().getPossibleLengthList().contains(Integer.valueOf(m28499c.length()))) {
                return ShortNumberCost.UNKNOWN_COST;
            }
            if (m28506h(m28499c, m28504f.getPremiumRate())) {
                return ShortNumberCost.PREMIUM_RATE;
            }
            if (m28506h(m28499c, m28504f.getStandardRate())) {
                return ShortNumberCost.STANDARD_RATE;
            }
            if (!m28506h(m28499c, m28504f.getTollFree()) && !isEmergencyNumber(m28499c, str)) {
                return ShortNumberCost.UNKNOWN_COST;
            }
            return ShortNumberCost.TOLL_FREE;
        }
        return ShortNumberCost.UNKNOWN_COST;
    }

    /* renamed from: h */
    public final boolean m28506h(String str, Phonemetadata.PhoneNumberDesc phoneNumberDesc) {
        if (phoneNumberDesc.getPossibleLengthCount() <= 0 || phoneNumberDesc.getPossibleLengthList().contains(Integer.valueOf(str.length()))) {
            return this.f36483a.matchNationalNumber(str, phoneNumberDesc, false);
        }
        return false;
    }

    /* renamed from: i */
    public final boolean m28507i(Phonenumber.PhoneNumber phoneNumber, String str) {
        return m28503e(phoneNumber.getCountryCode()).contains(str);
    }

    public boolean isCarrierSpecific(Phonenumber.PhoneNumber phoneNumber) {
        String m28502d = m28502d(phoneNumber, m28503e(phoneNumber.getCountryCode()));
        String m28499c = m28499c(phoneNumber);
        Phonemetadata.PhoneMetadata m28504f = m28504f(m28502d);
        return m28504f != null && m28506h(m28499c, m28504f.getCarrierSpecific());
    }

    public boolean isCarrierSpecificForRegion(Phonenumber.PhoneNumber phoneNumber, String str) {
        if (!m28507i(phoneNumber, str)) {
            return false;
        }
        String m28499c = m28499c(phoneNumber);
        Phonemetadata.PhoneMetadata m28504f = m28504f(str);
        return m28504f != null && m28506h(m28499c, m28504f.getCarrierSpecific());
    }

    public boolean isEmergencyNumber(CharSequence charSequence, String str) {
        return m28505g(charSequence, str, false);
    }

    public boolean isPossibleShortNumber(Phonenumber.PhoneNumber phoneNumber) {
        List<String> m28503e = m28503e(phoneNumber.getCountryCode());
        int length = m28499c(phoneNumber).length();
        Iterator<String> it2 = m28503e.iterator();
        while (it2.hasNext()) {
            Phonemetadata.PhoneMetadata m28504f = m28504f(it2.next());
            if (m28504f != null && m28504f.getGeneralDesc().getPossibleLengthList().contains(Integer.valueOf(length))) {
                return true;
            }
        }
        return false;
    }

    public boolean isPossibleShortNumberForRegion(Phonenumber.PhoneNumber phoneNumber, String str) {
        Phonemetadata.PhoneMetadata m28504f;
        if (m28507i(phoneNumber, str) && (m28504f = m28504f(str)) != null) {
            return m28504f.getGeneralDesc().getPossibleLengthList().contains(Integer.valueOf(m28499c(phoneNumber).length()));
        }
        return false;
    }

    public boolean isSmsServiceForRegion(Phonenumber.PhoneNumber phoneNumber, String str) {
        Phonemetadata.PhoneMetadata m28504f;
        return m28507i(phoneNumber, str) && (m28504f = m28504f(str)) != null && m28506h(m28499c(phoneNumber), m28504f.getSmsServices());
    }

    public boolean isValidShortNumber(Phonenumber.PhoneNumber phoneNumber) {
        List<String> m28503e = m28503e(phoneNumber.getCountryCode());
        String m28502d = m28502d(phoneNumber, m28503e);
        if (m28503e.size() <= 1 || m28502d == null) {
            return isValidShortNumberForRegion(phoneNumber, m28502d);
        }
        return true;
    }

    public boolean isValidShortNumberForRegion(Phonenumber.PhoneNumber phoneNumber, String str) {
        Phonemetadata.PhoneMetadata m28504f;
        if (!m28507i(phoneNumber, str) || (m28504f = m28504f(str)) == null) {
            return false;
        }
        String m28499c = m28499c(phoneNumber);
        if (m28506h(m28499c, m28504f.getGeneralDesc())) {
            return m28506h(m28499c, m28504f.getShortCode());
        }
        return false;
    }
}
