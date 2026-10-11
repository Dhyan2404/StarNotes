package net.p110sf.saxon.resource;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Optional;
import java.util.Stack;
import java.util.function.Function;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.URIQueryParameters;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.Resource;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.resource.AbstractResourceCollection;
import net.p110sf.saxon.resource.DirectoryCollection;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.jiter.MappingJavaIterator;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class DirectoryCollection extends AbstractResourceCollection {

    /* renamed from: a */
    public final File f101278a;

    /* renamed from: b */
    public SpaceStrippingRule f101279b;

    /* renamed from: net.sf.saxon.resource.DirectoryCollection$a */
    /* loaded from: classes11.dex */
    public static class C18453a implements Iterator<String> {

        /* renamed from: e */
        public final Stack<Iterator<File>> f101280e;

        /* renamed from: f */
        public final FilenameFilter f101281f;

        /* renamed from: g */
        public final boolean f101282g;

        /* renamed from: h */
        public String f101283h = null;

        public C18453a(Stack<Iterator<File>> stack, boolean z, FilenameFilter filenameFilter) {
            this.f101280e = stack;
            this.f101282g = z;
            this.f101281f = filenameFilter;
            m63625a();
        }

        /* renamed from: a */
        public final void m63625a() {
            if (this.f101280e.isEmpty()) {
                this.f101283h = null;
                return;
            }
            Iterator<File> peek = this.f101280e.peek();
            while (true) {
                Iterator<File> it2 = peek;
                if (it2.hasNext()) {
                    File next = it2.next();
                    if (!next.isDirectory()) {
                        this.f101283h = next.toURI().toString();
                        return;
                    }
                    if (this.f101282g) {
                        this.f101280e.push(Arrays.asList(next.listFiles(this.f101281f)).iterator());
                    }
                    m63625a();
                    return;
                }
                this.f101280e.pop();
                if (this.f101280e.isEmpty()) {
                    this.f101283h = null;
                    return;
                }
                peek = this.f101280e.peek();
            }
        }

        @Override // java.util.Iterator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public String next() {
            String str = this.f101283h;
            m63625a();
            return str;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f101283h != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public DirectoryCollection(Configuration configuration, String str, File file, URIQueryParameters uRIQueryParameters) throws XPathException {
        super(configuration);
        str.getClass();
        this.collectionURI = str;
        this.f101278a = file;
        if (uRIQueryParameters == null) {
            this.params = new URIQueryParameters("", configuration);
        } else {
            this.params = uRIQueryParameters;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ Resource m63623c(ParseOptions parseOptions, XPathContext xPathContext, boolean z, String str) {
        try {
            AbstractResourceCollection.InputDetails inputDetails = getInputDetails(str);
            inputDetails.resourceUri = str;
            inputDetails.parseOptions = parseOptions;
            if (this.params.getContentType().isPresent()) {
                inputDetails.contentType = this.params.getContentType().get();
            }
            Resource makeResource = makeResource(xPathContext, inputDetails);
            if (makeResource != null) {
                return z ? m63624d(makeResource, inputDetails, xPathContext) : makeResource;
            }
            return null;
        } catch (XPathException e) {
            Optional<Integer> onError = this.params.getOnError();
            if (onError.isPresent() && onError.get().intValue() == 1) {
                return new FailedResource(str, e);
            }
            if (onError.isPresent() && onError.get().intValue() == 2) {
                xPathContext.getController().warning("collection(): failed to parse " + str + ": " + e.getMessage(), e.getErrorCodeLocalPart(), null);
            }
            return null;
        }
    }

    /* renamed from: d */
    public final MetadataResource m63624d(Resource resource, AbstractResourceCollection.InputDetails inputDetails, XPathContext xPathContext) {
        HashMap hashMap = new HashMap();
        try {
            URI uri = new URI(resource.getResourceURI());
            String str = inputDetails.contentType;
            if (str != null) {
                hashMap.put("content-type", StringValue.makeStringValue(str));
            }
            String str2 = inputDetails.encoding;
            if (str2 != null) {
                hashMap.put("encoding", StringValue.makeStringValue(str2));
            }
            if ("file".equals(uri.getScheme())) {
                File file = new File(uri);
                hashMap.put("path", StringValue.makeStringValue(file.getPath()));
                hashMap.put("absolute-path", StringValue.makeStringValue(file.getAbsolutePath()));
                hashMap.put("canonical-path", StringValue.makeStringValue(file.getCanonicalPath()));
                hashMap.put("can-read", BooleanValue.get(file.canRead()));
                hashMap.put("can-write", BooleanValue.get(file.canWrite()));
                hashMap.put("can-execute", BooleanValue.get(file.canExecute()));
                hashMap.put("is-hidden", BooleanValue.get(file.isHidden()));
                try {
                    hashMap.put("last-modified", DateTimeValue.fromJavaTime(file.lastModified()));
                } catch (XPathException unused) {
                }
                hashMap.put("length", new Int64Value(file.length()));
            }
        } catch (IOException | URISyntaxException unused2) {
        }
        return new MetadataResource(resource.getResourceURI(), resource, hashMap, xPathContext);
    }

    public Iterator<String> directoryContents(File file, URIQueryParameters uRIQueryParameters) {
        boolean z = false;
        if (uRIQueryParameters != null) {
            Optional<FilenameFilter> filenameFilter = uRIQueryParameters.getFilenameFilter();
            r3 = filenameFilter.isPresent() ? filenameFilter.get() : null;
            Optional<Boolean> recurse = uRIQueryParameters.getRecurse();
            if (recurse.isPresent()) {
                z = recurse.get().booleanValue();
            }
        }
        Stack stack = new Stack();
        stack.push(Arrays.asList(file.listFiles(r3)).iterator());
        return new C18453a(stack, z, r3);
    }

    @Override // net.p110sf.saxon.lib.ResourceCollection
    public Iterator<String> getResourceURIs(XPathContext xPathContext) {
        return directoryContents(this.f101278a, this.params);
    }

    @Override // net.p110sf.saxon.lib.ResourceCollection
    public Iterator<? extends Resource> getResources(final XPathContext xPathContext) {
        final ParseOptions optionsFromQueryParameters = optionsFromQueryParameters(this.params, xPathContext);
        optionsFromQueryParameters.setSpaceStrippingRule(this.f101279b);
        Optional<Boolean> metaData = this.params.getMetaData();
        final boolean z = metaData.isPresent() && metaData.get().booleanValue();
        return new MappingJavaIterator(getResourceURIs(xPathContext), new Function() { // from class: com.sunia.HTREnginev2.m5f
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Resource m63623c;
                m63623c = DirectoryCollection.this.m63623c(optionsFromQueryParameters, xPathContext, z, (String) obj);
                return m63623c;
            }
        });
    }

    @Override // net.p110sf.saxon.resource.AbstractResourceCollection
    public boolean stripWhitespace(SpaceStrippingRule spaceStrippingRule) {
        this.f101279b = spaceStrippingRule;
        return true;
    }
}
