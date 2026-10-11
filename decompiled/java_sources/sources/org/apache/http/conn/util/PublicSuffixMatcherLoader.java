package org.apache.http.conn.util;

import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Arrays;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Consts;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.SAFE)
/* loaded from: classes12.dex */
public final class PublicSuffixMatcherLoader {

    /* renamed from: a */
    public static volatile PublicSuffixMatcher f110344a;

    /* renamed from: a */
    public static PublicSuffixMatcher m68359a(InputStream inputStream) throws IOException {
        return new PublicSuffixMatcher(new PublicSuffixListParser().parseByType(new InputStreamReader(inputStream, Consts.UTF_8)));
    }

    public static PublicSuffixMatcher getDefault() {
        if (f110344a == null) {
            synchronized (PublicSuffixMatcherLoader.class) {
                if (f110344a == null) {
                    URL resource = PublicSuffixMatcherLoader.class.getResource("/mozilla/public-suffix-list.txt");
                    if (resource != null) {
                        try {
                            f110344a = load(resource);
                        } catch (IOException e) {
                            Log log = LogFactory.getLog(PublicSuffixMatcherLoader.class);
                            if (log.isWarnEnabled()) {
                                log.warn("Failure loading public suffix list from default resource", e);
                            }
                        }
                    } else {
                        f110344a = new PublicSuffixMatcher(DomainType.ICANN, Arrays.asList("com"), null);
                    }
                }
            }
        }
        return f110344a;
    }

    public static PublicSuffixMatcher load(URL url) throws IOException {
        Args.notNull(url, ShapeLinkType.LINK_URL);
        InputStream openStream = url.openStream();
        try {
            return m68359a(openStream);
        } finally {
            openStream.close();
        }
    }

    public static PublicSuffixMatcher load(File file) throws IOException {
        Args.notNull(file, "File");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return m68359a(fileInputStream);
        } finally {
            fileInputStream.close();
        }
    }
}
