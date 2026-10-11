package org.xmlresolver.utils;

import com.bumptech.glide.load.engine.GlideException;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.net.URI;

/* loaded from: classes16.dex */
public abstract class PublicId {
    public static String decodeURN(String str) {
        return str.startsWith("urn:publicid:") ? str.substring(13).replace("%2F", "/").replace(":", "//").replace("%3A", ":").replace(AndroidTreeView.f47214k, "::").replace("+", " ").replace("%2B", "+").replace("%23", "#").replace("%3F", "?").replace("%27", CloudStorageConstants.SINGLE_QUOTES).replace("%3B", AndroidTreeView.f47214k).replace("%25", "%") : str;
    }

    public static URI encodeURN(String str) {
        return URI.create("urn:publicid:" + normalize(str).replace("%", "%25").replace(AndroidTreeView.f47214k, "%3B").replace(CloudStorageConstants.SINGLE_QUOTES, "%27").replace("?", "%3F").replace("#", "%23").replace("+", "%2B").replace(" ", "+").replace("::", AndroidTreeView.f47214k).replace(":", "%3A").replace("//", ":").replace("/", "%2F"));
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
}
