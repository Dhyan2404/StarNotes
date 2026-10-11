package org.apache.http.client.utils;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Stack;
import org.apache.http.HttpHost;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;

/* loaded from: classes12.dex */
public class URIUtils {
    public static final EnumSet<UriFlag> DROP_FRAGMENT;
    public static final EnumSet<UriFlag> DROP_FRAGMENT_AND_NORMALIZE;
    public static final EnumSet<UriFlag> NORMALIZE;
    public static final EnumSet<UriFlag> NO_FLAGS = EnumSet.noneOf(UriFlag.class);

    /* loaded from: classes12.dex */
    public enum UriFlag {
        DROP_FRAGMENT,
        NORMALIZE
    }

    static {
        UriFlag uriFlag = UriFlag.DROP_FRAGMENT;
        DROP_FRAGMENT = EnumSet.of(uriFlag);
        UriFlag uriFlag2 = UriFlag.NORMALIZE;
        NORMALIZE = EnumSet.of(uriFlag2);
        DROP_FRAGMENT_AND_NORMALIZE = EnumSet.of(uriFlag, uriFlag2);
    }

    @Deprecated
    public static URI createURI(String str, String str2, int i, String str3, String str4, String str5) throws URISyntaxException {
        StringBuilder sb = new StringBuilder();
        if (str2 != null) {
            if (str != null) {
                sb.append(str);
                sb.append("://");
            }
            sb.append(str2);
            if (i > 0) {
                sb.append(':');
                sb.append(i);
            }
        }
        if (str3 == null || !str3.startsWith("/")) {
            sb.append('/');
        }
        if (str3 != null) {
            sb.append(str3);
        }
        if (str4 != null) {
            sb.append('?');
            sb.append(str4);
        }
        if (str5 != null) {
            sb.append('#');
            sb.append(str5);
        }
        return new URI(sb.toString());
    }

    public static HttpHost extractHost(URI uri) {
        if (uri == null || !uri.isAbsolute()) {
            return null;
        }
        if (uri.getHost() != null) {
            return new HttpHost(uri.getHost(), uri.getPort(), uri.getScheme());
        }
        if (uri.getAuthority() == null) {
            return null;
        }
        String authority = uri.getAuthority();
        int indexOf = authority.indexOf(64);
        if (indexOf != -1) {
            authority = authority.substring(indexOf + 1);
        }
        String scheme = uri.getScheme();
        int indexOf2 = authority.indexOf(":");
        if (indexOf2 != -1) {
            String substring = authority.substring(0, indexOf2);
            try {
                String substring2 = authority.substring(indexOf2 + 1);
                r3 = TextUtils.isEmpty(substring2) ? -1 : Integer.parseInt(substring2);
                authority = substring;
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        try {
            return new HttpHost(authority, r3, scheme);
        } catch (IllegalArgumentException unused2) {
            return null;
        }
    }

    public static URI normalizeSyntax(URI uri) throws URISyntaxException {
        if (uri.isOpaque() || uri.getAuthority() == null) {
            return uri;
        }
        URIBuilder uRIBuilder = new URIBuilder(uri);
        List<String> pathSegments = uRIBuilder.getPathSegments();
        Stack stack = new Stack();
        for (String str : pathSegments) {
            if (!".".equals(str)) {
                if (!Constants.ATTRVAL_PARENT.equals(str)) {
                    stack.push(str);
                } else if (!stack.isEmpty()) {
                    stack.pop();
                }
            }
        }
        if (stack.size() == 0) {
            stack.add("");
        }
        uRIBuilder.setPathSegments(stack);
        if (uRIBuilder.getScheme() != null) {
            uRIBuilder.setScheme(uRIBuilder.getScheme().toLowerCase(Locale.ROOT));
        }
        if (uRIBuilder.getHost() != null) {
            uRIBuilder.setHost(uRIBuilder.getHost().toLowerCase(Locale.ROOT));
        }
        return uRIBuilder.build();
    }

    public static URI resolve(URI uri, String str) {
        return resolve(uri, URI.create(str));
    }

    @Deprecated
    public static URI rewriteURI(URI uri, HttpHost httpHost, boolean z) throws URISyntaxException {
        return rewriteURI(uri, httpHost, z ? DROP_FRAGMENT : NO_FLAGS);
    }

    public static URI rewriteURIForRoute(URI uri, RouteInfo routeInfo) throws URISyntaxException {
        return rewriteURIForRoute(uri, routeInfo, true);
    }

    public static URI resolve(URI uri, URI uri2) {
        URI resolve;
        Args.notNull(uri, "Base URI");
        Args.notNull(uri2, "Reference URI");
        String aSCIIString = uri2.toASCIIString();
        if (aSCIIString.startsWith("?")) {
            String aSCIIString2 = uri.toASCIIString();
            int indexOf = aSCIIString2.indexOf(63);
            if (indexOf > -1) {
                aSCIIString2 = aSCIIString2.substring(0, indexOf);
            }
            return URI.create(aSCIIString2 + aSCIIString);
        }
        if (aSCIIString.isEmpty()) {
            String aSCIIString3 = uri.resolve(URI.create("#")).toASCIIString();
            resolve = URI.create(aSCIIString3.substring(0, aSCIIString3.indexOf(35)));
        } else {
            resolve = uri.resolve(uri2);
        }
        try {
            return normalizeSyntax(resolve);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static URI rewriteURI(URI uri, HttpHost httpHost, EnumSet<UriFlag> enumSet) throws URISyntaxException {
        Args.notNull(uri, "URI");
        Args.notNull(enumSet, "URI flags");
        if (uri.isOpaque()) {
            return uri;
        }
        URIBuilder uRIBuilder = new URIBuilder(uri);
        if (httpHost != null) {
            uRIBuilder.setScheme(httpHost.getSchemeName());
            uRIBuilder.setHost(httpHost.getHostName());
            uRIBuilder.setPort(httpHost.getPort());
        } else {
            uRIBuilder.setScheme(null);
            uRIBuilder.setHost(null);
            uRIBuilder.setPort(-1);
        }
        if (enumSet.contains(UriFlag.DROP_FRAGMENT)) {
            uRIBuilder.setFragment(null);
        }
        if (enumSet.contains(UriFlag.NORMALIZE)) {
            List<String> pathSegments = uRIBuilder.getPathSegments();
            ArrayList arrayList = new ArrayList(pathSegments);
            Iterator<String> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                if (it2.next().isEmpty() && it2.hasNext()) {
                    it2.remove();
                }
            }
            if (arrayList.size() != pathSegments.size()) {
                uRIBuilder.setPathSegments(arrayList);
            }
        }
        if (uRIBuilder.isPathEmpty()) {
            uRIBuilder.setPathSegments("");
        }
        return uRIBuilder.build();
    }

    public static URI rewriteURIForRoute(URI uri, RouteInfo routeInfo, boolean z) throws URISyntaxException {
        if (uri == null) {
            return null;
        }
        if (routeInfo.getProxyHost() != null && !routeInfo.isTunnelled()) {
            if (uri.isAbsolute()) {
                return rewriteURI(uri);
            }
            return rewriteURI(uri, routeInfo.getTargetHost(), z ? DROP_FRAGMENT_AND_NORMALIZE : DROP_FRAGMENT);
        }
        if (uri.isAbsolute()) {
            return rewriteURI(uri, (HttpHost) null, z ? DROP_FRAGMENT_AND_NORMALIZE : DROP_FRAGMENT);
        }
        return rewriteURI(uri);
    }

    public static URI resolve(URI uri, HttpHost httpHost, List<URI> list) throws URISyntaxException {
        URIBuilder uRIBuilder;
        Args.notNull(uri, "Request URI");
        if (list != null && !list.isEmpty()) {
            uRIBuilder = new URIBuilder(list.get(list.size() - 1));
            String fragment = uRIBuilder.getFragment();
            for (int size = list.size() - 1; fragment == null && size >= 0; size--) {
                fragment = list.get(size).getFragment();
            }
            uRIBuilder.setFragment(fragment);
        } else {
            uRIBuilder = new URIBuilder(uri);
        }
        if (uRIBuilder.getFragment() == null) {
            uRIBuilder.setFragment(uri.getFragment());
        }
        if (httpHost != null && !uRIBuilder.isAbsolute()) {
            uRIBuilder.setScheme(httpHost.getSchemeName());
            uRIBuilder.setHost(httpHost.getHostName());
            uRIBuilder.setPort(httpHost.getPort());
        }
        return uRIBuilder.build();
    }

    public static URI rewriteURI(URI uri, HttpHost httpHost) throws URISyntaxException {
        return rewriteURI(uri, httpHost, NORMALIZE);
    }

    public static URI rewriteURI(URI uri) throws URISyntaxException {
        Args.notNull(uri, "URI");
        if (uri.isOpaque()) {
            return uri;
        }
        URIBuilder uRIBuilder = new URIBuilder(uri);
        if (uRIBuilder.getUserInfo() != null) {
            uRIBuilder.setUserInfo(null);
        }
        if (uRIBuilder.getPathSegments().isEmpty()) {
            uRIBuilder.setPathSegments("");
        }
        if (TextUtils.isEmpty(uRIBuilder.getPath())) {
            uRIBuilder.setPath("/");
        }
        if (uRIBuilder.getHost() != null) {
            uRIBuilder.setHost(uRIBuilder.getHost().toLowerCase(Locale.ROOT));
        }
        uRIBuilder.setFragment(null);
        return uRIBuilder.build();
    }
}
