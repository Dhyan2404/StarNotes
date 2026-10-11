package androidx.core.telephony.mbms;

import android.content.Context;
import android.telephony.mbms.ServiceInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes3.dex */
public final class MbmsHelper {

    @RequiresApi(28)
    /* renamed from: androidx.core.telephony.mbms.MbmsHelper$a */
    /* loaded from: classes3.dex */
    public static class C0734a {
        /* renamed from: a */
        public static CharSequence m3199a(Context context, ServiceInfo serviceInfo) {
            Set<Locale> namedContentLocales = serviceInfo.getNamedContentLocales();
            if (namedContentLocales.isEmpty()) {
                return null;
            }
            String[] strArr = new String[namedContentLocales.size()];
            Iterator<Locale> it2 = serviceInfo.getNamedContentLocales().iterator();
            int i = 0;
            while (it2.hasNext()) {
                strArr[i] = it2.next().toLanguageTag();
                i++;
            }
            Locale firstMatch = context.getResources().getConfiguration().getLocales().getFirstMatch(strArr);
            if (firstMatch == null) {
                return null;
            }
            return serviceInfo.getNameForLocale(firstMatch);
        }
    }

    @Nullable
    public static CharSequence getBestNameForService(@NonNull Context context, @NonNull ServiceInfo serviceInfo) {
        return C0734a.m3199a(context, serviceInfo);
    }
}
