package net.p110sf.saxon.resource;

import com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.ResolveURI;
import net.p110sf.saxon.functions.URIQueryParameters;
import net.p110sf.saxon.lib.CollectionFinder;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.ResourceCollection;
import net.p110sf.saxon.regex.ARegularExpression;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class StandardCollectionFinder implements CollectionFinder {
    public static void checkFileExists(File file, URI uri, XPathContext xPathContext) throws XPathException {
        if (file.exists()) {
            return;
        }
        XPathException xPathException = new XPathException("The file or directory " + uri + " does not exist");
        xPathException.setErrorCode("FODC0002");
        xPathException.setXPathContext(xPathContext);
        throw xPathException;
    }

    @Override // net.p110sf.saxon.lib.CollectionFinder
    public ResourceCollection findCollection(XPathContext xPathContext, String str) throws XPathException {
        URIQueryParameters uRIQueryParameters;
        AbstractResourceCollection.checkNotNull(str, xPathContext);
        try {
            String query = new URI(ResolveURI.escapeSpaces(str)).getQuery();
            if (query != null) {
                int indexOf = str.indexOf(63);
                uRIQueryParameters = new URIQueryParameters(query, xPathContext.getConfiguration());
                str = ResolveURI.escapeSpaces(str.substring(0, indexOf));
            } else {
                uRIQueryParameters = null;
            }
            try {
                URI uri = new URI(str);
                if ("file".equals(uri.getScheme())) {
                    File file = new File(uri);
                    checkFileExists(file, uri, xPathContext);
                    if (file.isDirectory()) {
                        return new DirectoryCollection(xPathContext.getConfiguration(), str, file, uRIQueryParameters);
                    }
                }
                String str2 = (String) xPathContext.getConfiguration().getConfigurationProperty(Feature.ZIP_URI_PATTERN);
                if (str2 == null) {
                    str2 = "^jar:|\\.jar$|\\.zip$|\\.docx$|\\.xlsx$";
                }
                return (isJarFileURI(str) || ARegularExpression.compile(str2, "").containsMatch(StringView.m63901of(str).tidy())) ? new JarCollection(xPathContext, str, uRIQueryParameters) : new CatalogCollection(xPathContext.getConfiguration(), str);
            } catch (URISyntaxException e) {
                throw new XPathException(e);
            }
        } catch (URISyntaxException unused) {
            XPathException xPathException = new XPathException("Invalid relative URI " + Err.wrap(str, 4) + " passed to collection() function");
            xPathException.setErrorCode("FODC0004");
            xPathException.setXPathContext(xPathContext);
            throw xPathException;
        }
    }

    public boolean isJarFileURI(String str) {
        return str.endsWith(".jar") || str.endsWith(ShapeDocumentUtils.SHAPE_FILE_END) || str.endsWith(".docx") || str.startsWith("jar:");
    }
}
