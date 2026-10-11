package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.lang.reflect.Field;
import java.util.Locale;
import org.apache.xmlbeans.impl.common.NameUtil;

/* loaded from: classes5.dex */
public enum zzbhm implements zzbhn {
    IDENTITY,
    UPPER_CAMEL_CASE,
    UPPER_CAMEL_CASE_WITH_SPACES,
    UPPER_CASE_WITH_UNDERSCORES,
    LOWER_CASE_WITH_UNDERSCORES,
    LOWER_CASE_WITH_DASHES,
    LOWER_CASE_WITH_DOTS;

    public static String zza(String str, char c) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt) && sb.length() != 0) {
                sb.append(c);
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    public static String zzb(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isLetter(charAt)) {
                if (Character.isUpperCase(charAt)) {
                    return str;
                }
                char upperCase = Character.toUpperCase(charAt);
                if (i == 0) {
                    return upperCase + str.substring(1);
                }
                return str.substring(0, i) + upperCase + str.substring(i + 1);
            }
        }
        return str;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbhn
    public final /* synthetic */ String zzc(Field field) {
        switch (this) {
            case IDENTITY:
                return field.getName();
            case UPPER_CAMEL_CASE:
                return zzb(field.getName());
            case UPPER_CAMEL_CASE_WITH_SPACES:
                return zzb(zza(field.getName(), ' '));
            case UPPER_CASE_WITH_UNDERSCORES:
                return zza(field.getName(), NameUtil.USCORE).toUpperCase(Locale.ENGLISH);
            case LOWER_CASE_WITH_UNDERSCORES:
                return zza(field.getName(), NameUtil.USCORE).toLowerCase(Locale.ENGLISH);
            case LOWER_CASE_WITH_DASHES:
                return zza(field.getName(), '-').toLowerCase(Locale.ENGLISH);
            case LOWER_CASE_WITH_DOTS:
                return zza(field.getName(), '.').toLowerCase(Locale.ENGLISH);
            default:
                throw null;
        }
    }
}
