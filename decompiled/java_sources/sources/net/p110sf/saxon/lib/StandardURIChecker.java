package net.p110sf.saxon.lib;

import java.net.URI;
import java.net.URISyntaxException;
import net.p110sf.saxon.expr.sort.LFUCache;
import net.p110sf.saxon.functions.IriToUri;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class StandardURIChecker implements URIChecker {

    /* renamed from: a */
    public static final StandardURIChecker f100581a = new StandardURIChecker();

    /* renamed from: b */
    public static final ThreadLocal<LFUCache<String, URI>> f100582b = new ThreadLocal<>();

    public static StandardURIChecker getInstance() {
        return f100581a;
    }

    public static void main(String[] strArr) {
        System.err.println(strArr[0] + " is valid? - " + getInstance().isValidURI(strArr[0]));
    }

    public void checkThoroughly(URI uri) throws URISyntaxException {
        if (!passesAdditionalChecks(uri)) {
            throw new URISyntaxException(uri.toString(), "Fails detailed checking");
        }
    }

    @Override // net.p110sf.saxon.lib.URIChecker
    public boolean isValidURI(String str) {
        ThreadLocal<LFUCache<String, URI>> threadLocal = f100582b;
        LFUCache<String, URI> lFUCache = threadLocal.get();
        if (lFUCache == null) {
            lFUCache = new LFUCache<>(50);
            threadLocal.set(lFUCache);
        }
        if (lFUCache.containsKey(str)) {
            return true;
        }
        String trim = Whitespace.trim(str);
        if (trim.isEmpty()) {
            return true;
        }
        try {
            URI uri = new URI(trim);
            if (passesAdditionalChecks(uri)) {
                lFUCache.put(str, uri);
                return true;
            }
        } catch (URISyntaxException unused) {
        }
        try {
            URI uri2 = new URI(IriToUri.iriToUri(StringView.tidy(trim)).toString());
            if (passesAdditionalChecks(uri2)) {
                lFUCache.put(str, uri2);
                return true;
            }
        } catch (URISyntaxException unused2) {
        }
        return false;
    }

    public boolean passesAdditionalChecks(URI uri) {
        return true;
    }
}
