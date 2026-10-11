package net.p110sf.saxon.lib;

import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import javax.xml.transform.Source;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.FilterFactory;
import net.p110sf.saxon.event.IDFilter;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.lib.DirectResourceResolver;
import net.p110sf.saxon.resource.ResourceLoader;
import net.p110sf.saxon.trans.XPathException;
import org.xml.sax.InputSource;

/* loaded from: classes11.dex */
public class DirectResourceResolver implements ResourceResolver {

    /* renamed from: e */
    public final Configuration f100494e;

    public DirectResourceResolver(Configuration configuration) {
        this.f100494e = configuration;
    }

    /* renamed from: b */
    public static /* synthetic */ Receiver m63257b(String str, Receiver receiver) {
        return new IDFilter(receiver, str);
    }

    @Override // net.p110sf.saxon.lib.ResourceResolver
    public Source resolve(ResourceRequest resourceRequest) throws XPathException {
        final String str;
        Source source;
        Source source2;
        InputStream inputStream = null;
        if (resourceRequest.uriIsNamespace) {
            return null;
        }
        ProtocolRestrictor protocolRestrictor = this.f100494e.getProtocolRestrictor();
        if (!"all".equals(protocolRestrictor.toString())) {
            try {
                URI uri = new URI(resourceRequest.uri);
                if (!protocolRestrictor.test(uri)) {
                    throw new XPathException("URIs using protocol " + uri.getScheme() + " are not permitted");
                }
            } catch (URISyntaxException unused) {
                throw new XPathException("Unknown URI scheme requested " + resourceRequest.uri);
            }
        }
        String str2 = resourceRequest.relativeUri;
        if (str2 == null) {
            str2 = resourceRequest.uri;
        }
        int indexOf = str2.indexOf(35);
        if (indexOf >= 0) {
            resourceRequest = resourceRequest.copy();
            resourceRequest.relativeUri = str2.substring(0, indexOf);
            str = str2.substring(indexOf + 1);
        } else {
            str = null;
        }
        if ("http://www.w3.org/1999/XSL/Transform".equals(resourceRequest.nature)) {
            try {
                if (resourceRequest.uri.startsWith("classpath:")) {
                    String substring = resourceRequest.uri.substring(10);
                    if (substring.startsWith("/")) {
                        substring = substring.substring(1);
                    }
                    inputStream = this.f100494e.getDynamicLoader().getResourceAsStream(substring);
                } else {
                    inputStream = ResourceLoader.urlStream(new URL(resourceRequest.uri));
                }
            } catch (IOException unused2) {
            }
            InputSource inputSource = new InputSource(resourceRequest.uri);
            inputSource.setByteStream(inputStream);
            Source sAXSource = new SAXSource(this.f100494e.getStyleParser(), inputSource);
            source = sAXSource;
            if (inputStream != null) {
                AugmentedSource makeAugmentedSource = AugmentedSource.makeAugmentedSource(sAXSource);
                makeAugmentedSource.setPleaseCloseAfterUse(true);
                source = makeAugmentedSource;
            }
        } else {
            if (ResourceRequest.XML_NATURE.equals(resourceRequest.nature) || "http://www.w3.org/2001/XMLSchema".equals(resourceRequest.nature)) {
                try {
                    inputStream = ResourceLoader.urlStream(new URL(resourceRequest.uri));
                } catch (IOException unused3) {
                }
                Source streamSource = new StreamSource(inputStream, resourceRequest.uri);
                source2 = streamSource;
                if (inputStream != null) {
                    AugmentedSource makeAugmentedSource2 = AugmentedSource.makeAugmentedSource(streamSource);
                    makeAugmentedSource2.setPleaseCloseAfterUse(true);
                    source2 = makeAugmentedSource2;
                }
            } else {
                source2 = new StreamSource(resourceRequest.uri);
            }
            source = source2;
        }
        if (str == null) {
            return source;
        }
        FilterFactory filterFactory = new FilterFactory() { // from class: com.sunia.HTREnginev2.g5f
            @Override // net.p110sf.saxon.event.FilterFactory
            public final Receiver makeFilter(Receiver receiver) {
                Receiver m63257b;
                m63257b = DirectResourceResolver.m63257b(str, receiver);
                return m63257b;
            }
        };
        AugmentedSource makeAugmentedSource3 = AugmentedSource.makeAugmentedSource(source);
        makeAugmentedSource3.addFilter(filterFactory);
        return makeAugmentedSource3;
    }
}
