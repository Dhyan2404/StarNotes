package androidx.work.impl.utils;

import android.content.ComponentName;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.work.Logger;

/* loaded from: classes3.dex */
public class PackageManagerHelper {

    /* renamed from: a */
    public static final String f11940a = Logger.tagWithPrefix("PackageManagerHelper");

    /* renamed from: a */
    public static int m7148a(@NonNull Context context, @NonNull String className) {
        return context.getPackageManager().getComponentEnabledSetting(new ComponentName(context, className));
    }

    /* renamed from: b */
    public static boolean m7149b(int setting, boolean defaults) {
        return setting == 0 ? defaults : setting == 1;
    }

    public static boolean isComponentExplicitlyEnabled(@NonNull Context context, @NonNull Class<?> klazz) {
        return m7149b(m7148a(context, klazz.getName()), false);
    }

    public static void setComponentEnabled(@NonNull Context context, @NonNull Class<?> klazz, boolean enabled) {
        try {
            if (enabled == m7149b(m7148a(context, klazz.getName()), false)) {
                Logger.get().debug(f11940a, "Skipping component enablement for " + klazz.getName());
                return;
            }
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, klazz.getName()), enabled ? 1 : 2, 1);
            Logger logger = Logger.get();
            String str = f11940a;
            StringBuilder sb = new StringBuilder();
            sb.append(klazz.getName());
            sb.append(" ");
            sb.append(enabled ? "enabled" : "disabled");
            logger.debug(str, sb.toString());
        } catch (Exception e) {
            Logger logger2 = Logger.get();
            String str2 = f11940a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(klazz.getName());
            sb2.append("could not be ");
            sb2.append(enabled ? "enabled" : "disabled");
            logger2.debug(str2, sb2.toString(), e);
        }
    }

    public static boolean isComponentExplicitlyEnabled(@NonNull Context context, @NonNull String className) {
        return m7148a(context, className) == 1;
    }
}
