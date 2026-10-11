package net.p110sf.saxon.resource;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Optional;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.URIQueryParameters;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.Resource;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.resource.AbstractResourceCollection;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Base64BinaryValue;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class JarCollection extends AbstractResourceCollection {

    /* renamed from: a */
    public final XPathContext f101293a;

    /* renamed from: b */
    public final String f101294b;

    /* renamed from: c */
    public SpaceStrippingRule f101295c;

    /* renamed from: net.sf.saxon.resource.JarCollection$a */
    /* loaded from: classes11.dex */
    public class C18454a implements Iterator<Resource>, Closeable {

        /* renamed from: e */
        public final FilenameFilter f101296e;

        /* renamed from: g */
        public final XPathContext f101298g;

        /* renamed from: h */
        public final ZipInputStream f101299h;

        /* renamed from: j */
        public final ParseOptions f101301j;

        /* renamed from: k */
        public final boolean f101302k;

        /* renamed from: f */
        public Resource f101297f = null;

        /* renamed from: i */
        public String f101300i = "";

        public C18454a(XPathContext xPathContext, ZipInputStream zipInputStream, FilenameFilter filenameFilter) {
            this.f101298g = xPathContext;
            this.f101296e = filenameFilter;
            this.f101299h = zipInputStream;
            ParseOptions optionsFromQueryParameters = JarCollection.this.optionsFromQueryParameters(JarCollection.this.params, xPathContext);
            this.f101301j = optionsFromQueryParameters;
            optionsFromQueryParameters.setSpaceStrippingRule(JarCollection.this.f101295c);
            URIQueryParameters uRIQueryParameters = JarCollection.this.params;
            Optional<Boolean> empty = uRIQueryParameters == null ? Optional.empty() : uRIQueryParameters.getMetaData();
            this.f101302k = empty.isPresent() && empty.get().booleanValue();
            m63637f();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f101299h.close();
        }

        /* renamed from: f */
        public final void m63637f() {
            ZipEntry nextEntry;
            AbstractResourceCollection.InputDetails inputDetails;
            while (true) {
                try {
                    nextEntry = this.f101299h.getNextEntry();
                    if (nextEntry == null) {
                        this.f101297f = null;
                        return;
                    }
                    if (nextEntry.isDirectory()) {
                        this.f101300i = nextEntry.getName();
                    } else {
                        String name = nextEntry.getName();
                        if (this.f101296e != null) {
                            if (this.f101300i.equals("") || !name.contains(this.f101300i)) {
                                if (name.contains("/")) {
                                    this.f101300i = name.substring(0, name.lastIndexOf("/"));
                                } else {
                                    this.f101300i = "";
                                }
                            }
                            if (!this.f101296e.accept(new File(this.f101300i), name)) {
                                continue;
                            }
                        }
                        try {
                            ZipInputStream zipInputStream = this.f101299h;
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            try {
                                try {
                                    byte[] bArr = new byte[4096];
                                    while (true) {
                                        int read = zipInputStream.read(bArr);
                                        if (read > 0) {
                                            byteArrayOutputStream.write(bArr, 0, read);
                                        } else {
                                            try {
                                                break;
                                            } catch (IOException e) {
                                                this.f101297f = new FailedResource(null, new XPathException(e));
                                            }
                                        }
                                    }
                                    byteArrayOutputStream.close();
                                    inputDetails = new AbstractResourceCollection.InputDetails();
                                    inputDetails.binaryContent = byteArrayOutputStream.toByteArray();
                                    URIQueryParameters uRIQueryParameters = JarCollection.this.params;
                                    if (uRIQueryParameters == null || !uRIQueryParameters.getContentType().isPresent()) {
                                        inputDetails.contentType = JarCollection.this.guessContentTypeFromName(nextEntry.getName());
                                    } else {
                                        inputDetails.contentType = JarCollection.this.params.getContentType().get();
                                    }
                                    if (inputDetails.contentType != null) {
                                        break;
                                    }
                                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(inputDetails.binaryContent);
                                    inputDetails.contentType = JarCollection.this.guessContentTypeFromContent(byteArrayInputStream);
                                    try {
                                        byteArrayInputStream.close();
                                        break;
                                    } catch (IOException unused) {
                                        inputDetails.contentType = null;
                                    }
                                } catch (Throwable th) {
                                    try {
                                        byteArrayOutputStream.close();
                                        break;
                                    } catch (IOException e2) {
                                        this.f101297f = new FailedResource(null, new XPathException(e2));
                                    }
                                    throw th;
                                }
                            } catch (IOException e3) {
                                throw new UncheckedXPathException(new XPathException(e3));
                            }
                        } catch (XPathException e4) {
                            this.f101297f = new FailedResource(null, e4);
                        }
                    }
                } catch (IOException e5) {
                    this.f101297f = new FailedResource(null, new XPathException(e5));
                    return;
                }
            }
            inputDetails.parseOptions = this.f101301j;
            String m63636e = JarCollection.this.m63636e(nextEntry.getName());
            inputDetails.resourceUri = m63636e;
            this.f101297f = JarCollection.this.makeResource(this.f101298g, inputDetails);
            if (this.f101302k) {
                this.f101297f = new MetadataResource(m63636e, this.f101297f, JarCollection.this.makeProperties(nextEntry), this.f101298g);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            boolean z = this.f101297f != null;
            if (!z) {
                try {
                    this.f101299h.close();
                } catch (IOException e) {
                    throw new UncheckedXPathException(new XPathException(e));
                }
            }
            return z;
        }

        @Override // java.util.Iterator
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public Resource next() {
            Resource resource = this.f101297f;
            m63637f();
            return resource;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public JarCollection(XPathContext xPathContext, String str, URIQueryParameters uRIQueryParameters) {
        super(xPathContext.getConfiguration());
        this.f101293a = xPathContext;
        this.f101294b = str;
        this.params = uRIQueryParameters;
    }

    /* renamed from: d */
    public final ZipInputStream m63635d() throws XPathException {
        try {
            try {
                try {
                    return new ZipInputStream(new URL(this.f101294b).openConnection().getInputStream());
                } catch (IOException e) {
                    throw new XPathException("Unable to get input stream for JAR/ZIP file connection: " + this.f101294b, e);
                }
            } catch (IOException e2) {
                throw new XPathException("Unable to open connection to JAR/ZIP file URI: " + this.f101294b, e2);
            }
        } catch (MalformedURLException e3) {
            throw new XPathException("Malformed JAR/ZIP file URI: " + this.f101294b, e3);
        }
    }

    /* renamed from: e */
    public final String m63636e(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f101294b.startsWith("jar:") ? "" : "jar:");
        sb.append(this.f101294b);
        sb.append("!/");
        sb.append(str);
        return sb.toString();
    }

    @Override // net.p110sf.saxon.resource.AbstractResourceCollection, net.p110sf.saxon.lib.ResourceCollection
    public String getCollectionURI() {
        return this.f101294b;
    }

    @Override // net.p110sf.saxon.lib.ResourceCollection
    public Iterator<String> getResourceURIs(XPathContext xPathContext) throws XPathException {
        URIQueryParameters uRIQueryParameters = this.params;
        if (uRIQueryParameters != null) {
            Optional<FilenameFilter> filenameFilter = uRIQueryParameters.getFilenameFilter();
            r1 = filenameFilter.isPresent() ? filenameFilter.get() : null;
            Optional<Boolean> recurse = this.params.getRecurse();
            if (recurse.isPresent()) {
                recurse.get().booleanValue();
            }
        }
        ZipInputStream m63635d = m63635d();
        ArrayList arrayList = new ArrayList();
        String str = "";
        while (true) {
            try {
                ZipEntry nextEntry = m63635d.getNextEntry();
                if (nextEntry == null) {
                    return arrayList.iterator();
                }
                if (nextEntry.isDirectory()) {
                    str = nextEntry.getName();
                }
                if (!nextEntry.isDirectory()) {
                    String name = nextEntry.getName();
                    if (r1 != null) {
                        if (str.equals("") || !name.contains(str)) {
                            str = name.contains("/") ? name.substring(0, name.lastIndexOf("/")) : "";
                        }
                        if (r1.accept(new File(str), name)) {
                            arrayList.add(m63636e(name));
                        }
                    } else {
                        arrayList.add(m63636e(name));
                    }
                }
                m63635d.getNextEntry();
            } catch (IOException e) {
                throw new XPathException("Unable to extract entry in JAR/ZIP file: " + this.f101294b, e);
            }
        }
    }

    @Override // net.p110sf.saxon.lib.ResourceCollection
    public Iterator<? extends Resource> getResources(XPathContext xPathContext) throws XPathException {
        URIQueryParameters uRIQueryParameters = this.params;
        if (uRIQueryParameters != null) {
            Optional<FilenameFilter> filenameFilter = uRIQueryParameters.getFilenameFilter();
            r0 = filenameFilter.isPresent() ? filenameFilter.get() : null;
            Optional<Boolean> recurse = this.params.getRecurse();
            if (recurse.isPresent()) {
                recurse.get().booleanValue();
            }
        }
        return new C18454a(this.f101293a, m63635d(), r0);
    }

    public Map<String, GroundedValue> makeProperties(ZipEntry zipEntry) {
        HashMap hashMap = new HashMap(10);
        hashMap.put("comment", StringValue.makeStringValue(zipEntry.getComment()));
        hashMap.put("compressed-size", new Int64Value(zipEntry.getCompressedSize()));
        hashMap.put("crc", new Int64Value(zipEntry.getCrc()));
        byte[] extra = zipEntry.getExtra();
        if (extra != null) {
            hashMap.put("extra", new Base64BinaryValue(extra));
        }
        hashMap.put("compression-method", new Int64Value(zipEntry.getMethod()));
        hashMap.put("entry-name", StringValue.makeStringValue(zipEntry.getName()));
        hashMap.put("size", new Int64Value(zipEntry.getSize()));
        try {
            hashMap.put("last-modified", DateTimeValue.fromJavaTime(zipEntry.getTime()));
        } catch (XPathException unused) {
        }
        return hashMap;
    }

    @Override // net.p110sf.saxon.resource.AbstractResourceCollection
    public boolean stripWhitespace(SpaceStrippingRule spaceStrippingRule) {
        this.f101295c = spaceStrippingRule;
        return true;
    }
}
