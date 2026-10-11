package org.apache.logging.log4j.util;

import com.sunia.HTREnginev2.c6j;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Properties;

/* loaded from: classes12.dex */
public class PropertyFilePropertySource extends PropertiesPropertySource {
    public PropertyFilePropertySource(final String fileName) {
        super(m68666a(fileName));
    }

    /* renamed from: a */
    public static Properties m68666a(final String fileName) {
        Properties properties = new Properties();
        for (URL url : LoaderUtil.findResources(fileName)) {
            try {
                InputStream openStream = url.openStream();
                try {
                    properties.load(openStream);
                    if (openStream != null) {
                        openStream.close();
                    }
                } finally {
                    try {
                        break;
                    } finally {
                    }
                }
            } catch (IOException e) {
                c6j.m53395b("Unable to read " + url, e);
            }
        }
        return properties;
    }

    @Override // org.apache.logging.log4j.util.PropertiesPropertySource, org.apache.logging.log4j.util.PropertySource
    public int getPriority() {
        return 0;
    }
}
