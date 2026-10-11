package net.p110sf.saxon.resource;

import com.google.android.material.motion.MotionUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Optional;
import java.util.function.Function;
import javax.xml.transform.Source;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.DocumentFn;
import net.p110sf.saxon.functions.ResolveURI;
import net.p110sf.saxon.functions.URIQueryParameters;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.Resource;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.resource.AbstractResourceCollection;
import net.p110sf.saxon.resource.CatalogCollection;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.jiter.MappingJavaIterator;

/* loaded from: classes11.dex */
public class CatalogCollection extends AbstractResourceCollection {

    /* renamed from: a */
    public boolean f101275a;

    /* renamed from: b */
    public SpaceStrippingRule f101276b;

    public CatalogCollection(Configuration configuration, String str) {
        super(configuration);
        this.collectionURI = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ Resource m63618c(XPathContext xPathContext, String str) {
        try {
            if (str.startsWith("data:")) {
                try {
                    return makeTypedResource(xPathContext, DataURIScheme.decode(new URI(str)));
                } catch (IllegalArgumentException | URISyntaxException e) {
                    throw new XPathException(e);
                }
            }
            AbstractResourceCollection.InputDetails inputDetails = getInputDetails(str);
            ParseOptions parseOptions = new ParseOptions(xPathContext.getConfiguration().getParseOptions());
            inputDetails.parseOptions = parseOptions;
            parseOptions.setSpaceStrippingRule(this.f101276b);
            inputDetails.resourceUri = str;
            return makeResource(xPathContext, inputDetails);
        } catch (XPathException e2) {
            Optional<Integer> of = Optional.of(1);
            URIQueryParameters uRIQueryParameters = this.params;
            if (uRIQueryParameters != null) {
                of = uRIQueryParameters.getOnError();
            }
            if (of.isPresent() && of.get().intValue() == 1) {
                return new FailedResource(str, e2);
            }
            if (of.isPresent() && of.get().intValue() == 2) {
                xPathContext.getController().warning("collection(): failed to parse " + str + ": " + e2.getMessage(), e2.getErrorCodeLocalPart(), null);
            }
            return null;
        }
    }

    public static String makeStringFromStream(InputStream inputStream, String str) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return byteArrayOutputStream.toString(str);
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public Iterator<String> catalogContents(String str, XPathContext xPathContext) throws XPathException {
        String str2;
        Source resolveURI = DocumentFn.resolveURI(str, null, null, xPathContext);
        ParseOptions parseOptions = new ParseOptions();
        parseOptions.setSchemaValidationMode(4);
        parseOptions.setDTDValidationMode(4);
        TreeInfo buildDocumentTree = xPathContext.getConfiguration().buildDocumentTree(resolveURI, parseOptions);
        if (buildDocumentTree == null) {
            XPathException xPathException = new XPathException("Failed to load collection catalog " + str);
            xPathException.setErrorCode("FODC0004");
            xPathException.setXPathContext(xPathContext);
            throw xPathException;
        }
        NodeInfo rootNode = buildDocumentTree.getRootNode();
        NodeKindTest nodeKindTest = NodeKindTest.ELEMENT;
        AxisIterator iterateAxis = rootNode.iterateAxis(3, nodeKindTest);
        NodeInfo next = iterateAxis.next();
        if (next == null || !"collection".equals(next.getLocalPart()) || !next.getURI().isEmpty()) {
            if (next == null) {
                str2 = "No outermost element found in collection catalog";
            } else {
                str2 = "Outermost element of collection catalog should be Q{}collection (found Q{" + next.getURI() + "}" + next.getLocalPart() + MotionUtils.f31762d;
            }
            XPathException xPathException2 = new XPathException(str2);
            xPathException2.setErrorCode("FODC0004");
            xPathException2.setXPathContext(xPathContext);
            throw xPathException2;
        }
        iterateAxis.close();
        String attributeValue = next.getAttributeValue("", "stable");
        if (attributeValue != null) {
            if ("true".equals(attributeValue)) {
                this.f101275a = true;
            } else {
                if (!"false".equals(attributeValue)) {
                    XPathException xPathException3 = new XPathException("The 'stable' attribute of element <collection> must be true or false");
                    xPathException3.setErrorCode("FODC0004");
                    xPathException3.setXPathContext(xPathContext);
                    throw xPathException3;
                }
                this.f101275a = false;
            }
        }
        AxisIterator iterateAxis2 = next.iterateAxis(3, nodeKindTest);
        ArrayList arrayList = new ArrayList();
        while (true) {
            NodeInfo next2 = iterateAxis2.next();
            if (next2 == null) {
                return arrayList.iterator();
            }
            if (!"doc".equals(next2.getLocalPart()) || !next2.getURI().isEmpty()) {
                break;
            }
            String attributeValue2 = next2.getAttributeValue("", "href");
            if (attributeValue2 == null) {
                XPathException xPathException4 = new XPathException("A <doc> element in the collection catalog has no @href attribute");
                xPathException4.setErrorCode("FODC0004");
                xPathException4.setXPathContext(xPathContext);
                throw xPathException4;
            }
            try {
                arrayList.add(ResolveURI.makeAbsolute(attributeValue2, next2.getBaseURI()).toString());
            } catch (URISyntaxException unused) {
                XPathException xPathException5 = new XPathException("Invalid base URI or href URI in collection catalog: (" + next2.getBaseURI() + ", " + attributeValue2 + MotionUtils.f31762d);
                xPathException5.setErrorCode("FODC0004");
                xPathException5.setXPathContext(xPathContext);
                throw xPathException5;
            }
        }
        XPathException xPathException6 = new XPathException("Children of <collection> element must be <doc> elements");
        xPathException6.setErrorCode("FODC0004");
        xPathException6.setXPathContext(xPathContext);
        throw xPathException6;
    }

    @Override // net.p110sf.saxon.lib.ResourceCollection
    public Iterator<String> getResourceURIs(XPathContext xPathContext) throws XPathException {
        AbstractResourceCollection.checkNotNull(this.collectionURI, xPathContext);
        return catalogContents(this.collectionURI, xPathContext);
    }

    @Override // net.p110sf.saxon.lib.ResourceCollection
    public Iterator<? extends Resource> getResources(final XPathContext xPathContext) throws XPathException {
        AbstractResourceCollection.checkNotNull(this.collectionURI, xPathContext);
        return new MappingJavaIterator(getResourceURIs(xPathContext), new Function() { // from class: com.sunia.HTREnginev2.eod
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Resource m63618c;
                m63618c = CatalogCollection.this.m63618c(xPathContext, (String) obj);
                return m63618c;
            }
        });
    }

    @Override // net.p110sf.saxon.resource.AbstractResourceCollection, net.p110sf.saxon.lib.ResourceCollection
    public boolean isStable(XPathContext xPathContext) {
        return this.f101275a;
    }
}
