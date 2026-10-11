package com.sun.org.apache.xml.internal.res;

import java.text.MessageFormat;
import java.util.ListResourceBundle;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

/* loaded from: classes10.dex */
public class XMLMessages {
    protected static final String BAD_CODE = "BAD_CODE";
    protected static final String FORMAT_FAILED = "FORMAT_FAILED";
    private static ListResourceBundle XMLBundle = null;
    private static final String XML_ERROR_RESOURCES = "com.sun.org.apache.xml.internal.res.XMLErrorResources";
    protected Locale fLocale = Locale.getDefault();

    public static final String createMsg(ListResourceBundle listResourceBundle, String str, Object[] objArr) {
        boolean z;
        String string = str != null ? listResourceBundle.getString(str) : null;
        if (string == null) {
            string = listResourceBundle.getString("BAD_CODE");
            z = true;
        } else {
            z = false;
        }
        if (objArr != null) {
            try {
                int length = objArr.length;
                for (int i = 0; i < length; i++) {
                    if (objArr[i] == null) {
                        objArr[i] = "";
                    }
                }
                string = MessageFormat.format(string, objArr);
            } catch (Exception unused) {
                string = listResourceBundle.getString("FORMAT_FAILED") + " " + string;
            }
        }
        if (z) {
            throw new RuntimeException(string);
        }
        return string;
    }

    public static final String createXMLMessage(String str, Object[] objArr) {
        if (XMLBundle == null) {
            XMLBundle = loadResourceBundle(XML_ERROR_RESOURCES);
        }
        ListResourceBundle listResourceBundle = XMLBundle;
        return listResourceBundle != null ? createMsg(listResourceBundle, str, objArr) : "Could not load any resource bundles.";
    }

    public static String getResourceSuffix(Locale locale) {
        String str = "_" + locale.getLanguage();
        String country = locale.getCountry();
        if (!country.equals("TW")) {
            return str;
        }
        return str + "_" + country;
    }

    public static ListResourceBundle loadResourceBundle(String str) throws MissingResourceException {
        try {
            try {
                return (ListResourceBundle) ResourceBundle.getBundle(str, Locale.getDefault());
            } catch (MissingResourceException unused) {
                throw new MissingResourceException("Could not load any resource bundles." + str, str, "");
            }
        } catch (MissingResourceException unused2) {
            return (ListResourceBundle) ResourceBundle.getBundle(str, new Locale("en", "US"));
        }
    }

    public Locale getLocale() {
        return this.fLocale;
    }

    public void setLocale(Locale locale) {
        this.fLocale = locale;
    }
}
