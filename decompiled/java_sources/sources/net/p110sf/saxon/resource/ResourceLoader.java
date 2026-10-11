package net.p110sf.saxon.resource;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashSet;
import java.util.zip.GZIPInputStream;

/* loaded from: classes11.dex */
public class ResourceLoader {
    public static int MAX_REDIRECTS = 20;

    public static URLConnection urlConnection(URL url) throws IOException {
        if (!"http".equals(url.getProtocol()) && !"https".equals(url.getProtocol())) {
            return url.openConnection();
        }
        HashSet hashSet = new HashSet();
        int i = MAX_REDIRECTS;
        String str = null;
        while (true) {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
            if (str != null) {
                httpURLConnection.setRequestProperty("Cookie", str);
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode != 301 && responseCode != 302) {
                return httpURLConnection;
            }
            String headerField = httpURLConnection.getHeaderField("Location");
            URL url2 = new URL(headerField);
            String headerField2 = httpURLConnection.getHeaderField("Set-Cookie");
            if (hashSet.contains(headerField)) {
                throw new IOException("HTTP redirect loop through " + headerField);
            }
            hashSet.add(headerField);
            i--;
            if (i < 0) {
                throw new IOException("HTTP redirects more than " + MAX_REDIRECTS + " times");
            }
            str = headerField2;
            url = url2;
        }
    }

    public static InputStream urlStream(URL url) throws IOException {
        URLConnection urlConnection = urlConnection(url);
        InputStream inputStream = urlConnection.getInputStream();
        return "gzip".equals(urlConnection.getContentEncoding()) ? new GZIPInputStream(inputStream) : inputStream;
    }
}
