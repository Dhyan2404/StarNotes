package com.liulishuo.okdownload;

import androidx.annotation.NonNull;
import com.liulishuo.okdownload.core.connection.DownloadConnection;
import java.io.IOException;
import java.net.ProtocolException;

/* loaded from: classes4.dex */
public class RedirectUtil {
    public static final int MAX_REDIRECT_TIMES = 10;

    /* renamed from: a */
    public static final int f39241a = 307;

    /* renamed from: b */
    public static final int f39242b = 308;

    @NonNull
    public static String getRedirectedUrl(DownloadConnection.Connected connected, int i) throws IOException {
        String responseHeaderField = connected.getResponseHeaderField("Location");
        if (responseHeaderField != null) {
            return responseHeaderField;
        }
        throw new ProtocolException("Response code is " + i + " but can't find Location field");
    }

    public static boolean isRedirect(int i) {
        return i == 301 || i == 302 || i == 303 || i == 300 || i == 307 || i == 308;
    }
}
