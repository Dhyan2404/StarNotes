package com.sun.org.apache.xml.internal.resolver.helpers;

import com.bumptech.glide.load.engine.GlideException;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;

/* loaded from: classes10.dex */
public abstract class PublicId {
    public static String decodeURN(String str) {
        return str.startsWith("urn:publicid:") ? stringReplace(stringReplace(stringReplace(stringReplace(stringReplace(stringReplace(stringReplace(stringReplace(stringReplace(stringReplace(stringReplace(str.substring(13), "%2F", "/"), ":", "//"), "%3A", ":"), AndroidTreeView.f47214k, "::"), "+", " "), "%2B", "+"), "%23", "#"), "%3F", "?"), "%27", CloudStorageConstants.SINGLE_QUOTES), "%3B", AndroidTreeView.f47214k), "%25", "%") : str;
    }

    public static String encodeURN(String str) {
        return "urn:publicid:" + stringReplace(stringReplace(stringReplace(stringReplace(stringReplace(stringReplace(stringReplace(stringReplace(stringReplace(stringReplace(stringReplace(normalize(str), "%", "%25"), AndroidTreeView.f47214k, "%3B"), CloudStorageConstants.SINGLE_QUOTES, "%27"), "?", "%3F"), "#", "%23"), "+", "%2B"), " ", "+"), "::", AndroidTreeView.f47214k), ":", "%3A"), "//", ":"), "/", "%2F");
    }

    public static String normalize(String str) {
        String trim = str.replace('\t', ' ').replace('\r', ' ').replace('\n', ' ').trim();
        while (true) {
            int indexOf = trim.indexOf(GlideException.C1935a.f14609h);
            if (indexOf < 0) {
                return trim;
            }
            trim = trim.substring(0, indexOf) + trim.substring(indexOf + 1);
        }
    }

    private static String stringReplace(String str, String str2, String str3) {
        int indexOf = str.indexOf(str2);
        String str4 = "";
        while (indexOf >= 0) {
            str4 = (str4 + str.substring(0, indexOf)) + str3;
            str = str.substring(indexOf + 1);
            indexOf = str.indexOf(str2);
        }
        return str4 + str;
    }
}
