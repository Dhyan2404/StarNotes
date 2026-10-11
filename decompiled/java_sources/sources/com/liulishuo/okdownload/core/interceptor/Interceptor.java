package com.liulishuo.okdownload.core.interceptor;

import androidx.annotation.NonNull;
import com.liulishuo.okdownload.core.connection.DownloadConnection;
import com.liulishuo.okdownload.core.download.DownloadChain;
import java.io.IOException;

/* loaded from: classes4.dex */
public interface Interceptor {

    /* loaded from: classes4.dex */
    public interface Connect {
        @NonNull
        DownloadConnection.Connected interceptConnect(DownloadChain downloadChain) throws IOException;
    }

    /* loaded from: classes4.dex */
    public interface Fetch {
        long interceptFetch(DownloadChain downloadChain) throws IOException;
    }
}
