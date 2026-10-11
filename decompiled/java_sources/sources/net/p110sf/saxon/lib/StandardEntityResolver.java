package net.p110sf.saxon.lib;

import java.io.IOException;
import java.util.Objects;
import net.p110sf.saxon.Configuration;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes11.dex */
public class StandardEntityResolver implements EntityResolver {
    public Configuration config;

    public StandardEntityResolver(Configuration configuration) {
        Objects.requireNonNull(configuration);
        this.config = configuration;
    }

    @Override // org.xml.sax.EntityResolver
    public InputSource resolveEntity(String str, String str2) throws SAXException, IOException {
        return null;
    }

    public void setConfiguration(Configuration configuration) {
        this.config = configuration;
    }
}
