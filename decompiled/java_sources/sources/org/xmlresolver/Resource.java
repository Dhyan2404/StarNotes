package org.xmlresolver;

import com.bumptech.glide.load.model.DataUrlLoader;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class Resource {

    /* renamed from: a */
    public final InputStream f116094a;

    /* renamed from: b */
    public final URI f116095b;

    /* renamed from: c */
    public final URI f116096c;

    /* renamed from: d */
    public final String f116097d;

    public Resource(InputStream inputStream, URI uri, URI uri2) {
        this.f116094a = inputStream;
        this.f116095b = uri;
        this.f116096c = uri2;
        this.f116097d = null;
    }

    public InputStream body() {
        return this.f116094a;
    }

    public String contentType() {
        return this.f116097d;
    }

    public URI localUri() {
        return this.f116096c;
    }

    public URI uri() {
        return this.f116095b;
    }

    public Resource(InputStream inputStream, URI uri, URI uri2, String str) {
        this.f116094a = inputStream;
        this.f116095b = uri;
        this.f116096c = uri2;
        this.f116097d = str;
    }

    public Resource(String str) throws IOException, URISyntaxException {
        this(null, str);
    }

    public Resource(ResolverConfiguration resolverConfiguration, String str) throws IOException, URISyntaxException {
        ClassLoader classLoader;
        String str2;
        if (str.startsWith("data:")) {
            URI newURI = URIUtils.newURI(str);
            this.f116095b = newURI;
            this.f116096c = newURI;
            String substring = str.substring(5);
            int indexOf = substring.indexOf(",");
            if (indexOf >= 0) {
                String substring2 = substring.substring(0, indexOf);
                String substring3 = substring.substring(indexOf + 1);
                if (substring2.endsWith(DataUrlLoader.f14861c)) {
                    this.f116094a = new ByteArrayInputStream(Base64.getDecoder().decode(substring3));
                    this.f116097d = substring2.substring(0, substring2.length() - 7);
                    return;
                }
                int indexOf2 = substring2.indexOf(";charset=");
                if (indexOf2 > 0) {
                    str2 = substring2.substring(indexOf2 + 9);
                    int indexOf3 = str2.indexOf(AndroidTreeView.f47214k);
                    if (indexOf3 >= 0) {
                        str2 = str2.substring(0, indexOf3);
                    }
                } else {
                    str2 = "UTF-8";
                }
                this.f116094a = new ByteArrayInputStream(URLDecoder.decode(substring3, str2).getBytes(StandardCharsets.UTF_8));
                this.f116097d = "".equals(substring2) ? null : substring2;
                return;
            }
            throw new URISyntaxException(str, "Comma separator missing");
        }
        if (str.startsWith("classpath:")) {
            String substring4 = str.substring(10);
            substring4 = substring4.startsWith("/") ? substring4.substring(1) : substring4;
            if (resolverConfiguration == null) {
                classLoader = getClass().getClassLoader();
            } else {
                classLoader = (ClassLoader) resolverConfiguration.getFeature(ResolverFeature.CLASSLOADER);
            }
            URL resource = classLoader.getResource(substring4);
            if (resource != null) {
                URI newURI2 = URIUtils.newURI(resource.toString());
                this.f116095b = newURI2;
                this.f116096c = newURI2;
                this.f116094a = resource.openStream();
                this.f116097d = null;
                return;
            }
            throw new IOException("Not found: " + str);
        }
        URI newURI3 = URIUtils.newURI(str);
        this.f116095b = newURI3;
        this.f116096c = newURI3;
        URLConnection openConnection = newURI3.toURL().openConnection();
        this.f116094a = openConnection.getInputStream();
        this.f116097d = openConnection.getContentType();
    }
}
