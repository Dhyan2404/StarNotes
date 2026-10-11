package org.apache.commons.compress.harmony.archive.internal.nls;

import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Arrays;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.Objects;
import java.util.ResourceBundle;
import java.util.function.IntFunction;
import org.apache.commons.compress.harmony.archive.internal.nls.Messages;

/* loaded from: classes12.dex */
public class Messages {

    /* renamed from: a */
    public static ResourceBundle f106401a;

    static {
        try {
            f106401a = setLocale(Locale.getDefault(), "org.apache.commons.compress.harmony.archive.internal.nls.messages");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: c */
    public static /* synthetic */ String m66833c(Object[] objArr, int i) {
        return Objects.toString(objArr[i], "<null>");
    }

    /* renamed from: d */
    public static /* synthetic */ Object m66834d(String str, Locale locale, ClassLoader classLoader) {
        if (classLoader == null) {
            classLoader = ClassLoader.getSystemClassLoader();
        }
        return ResourceBundle.getBundle(str, locale, classLoader);
    }

    public static String format(String str, final Object[] objArr) {
        int i;
        StringBuilder sb = new StringBuilder(str.length() + (objArr.length * 20));
        int length = objArr.length;
        String[] strArr = new String[length];
        Arrays.setAll(strArr, new IntFunction() { // from class: com.sunia.HTREnginev2.gnj
            @Override // java.util.function.IntFunction
            public final Object apply(int i2) {
                String m66833c;
                m66833c = Messages.m66833c(objArr, i2);
                return m66833c;
            }
        });
        int i2 = 0;
        while (true) {
            int indexOf = str.indexOf(123, i2);
            if (indexOf < 0) {
                break;
            }
            if (indexOf != 0) {
                int i3 = indexOf - 1;
                if (str.charAt(i3) == '\\') {
                    if (indexOf != 1) {
                        sb.append(str.substring(i2, i3));
                    }
                    sb.append('{');
                    i = indexOf + 1;
                    i2 = i;
                }
            }
            if (indexOf > str.length() - 3) {
                sb.append(str.substring(i2));
                i2 = str.length();
            } else {
                int i4 = indexOf + 1;
                byte digit = (byte) Character.digit(str.charAt(i4), 10);
                if (digit < 0 || str.charAt(indexOf + 2) != '}') {
                    sb.append(str.substring(i2, i4));
                    i2 = i4;
                } else {
                    sb.append(str.substring(i2, indexOf));
                    if (digit >= length) {
                        sb.append("<missing argument>");
                    } else {
                        sb.append(strArr[digit]);
                    }
                    i = indexOf + 3;
                    i2 = i;
                }
            }
        }
        if (i2 < str.length()) {
            sb.append(str.substring(i2));
        }
        return sb.toString();
    }

    public static String getString(String str) {
        ResourceBundle resourceBundle = f106401a;
        if (resourceBundle == null) {
            return str;
        }
        try {
            return resourceBundle.getString(str);
        } catch (MissingResourceException unused) {
            return "Missing message: " + str;
        }
    }

    public static ResourceBundle setLocale(final Locale locale, final String str) {
        final ClassLoader classLoader = null;
        try {
            return (ResourceBundle) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sunia.HTREnginev2.fnj
                @Override // java.security.PrivilegedAction
                public final Object run() {
                    Object m66834d;
                    m66834d = Messages.m66834d(str, locale, classLoader);
                    return m66834d;
                }
            });
        } catch (MissingResourceException unused) {
            return null;
        }
    }

    public static String getString(String str, Object obj) {
        return getString(str, new Object[]{obj});
    }

    public static String getString(String str, int i) {
        return getString(str, new Object[]{Integer.toString(i)});
    }

    public static String getString(String str, char c) {
        return getString(str, new Object[]{String.valueOf(c)});
    }

    public static String getString(String str, Object obj, Object obj2) {
        return getString(str, new Object[]{obj, obj2});
    }

    public static String getString(String str, Object[] objArr) {
        ResourceBundle resourceBundle = f106401a;
        if (resourceBundle != null) {
            try {
                str = resourceBundle.getString(str);
            } catch (MissingResourceException unused) {
            }
        }
        return format(str, objArr);
    }
}
