package net.p110sf.saxon.functions;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.function.Function;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.UriCollection;
import net.p110sf.saxon.lib.CollectionFinder;
import net.p110sf.saxon.lib.ResourceCollection;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.IteratorWrapper;
import net.p110sf.saxon.om.LazySequence;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.jiter.MappingJavaIterator;
import net.p110sf.saxon.value.AnyURIValue;

/* loaded from: classes11.dex */
public class UriCollection extends SystemFunction {
    /* renamed from: d */
    public static /* synthetic */ AnyURIValue m63222d(String str) {
        return new AnyURIValue(str);
    }

    /* renamed from: b */
    public final Sequence m63223b(XPathContext xPathContext) throws XPathException {
        String defaultCollection = xPathContext.getConfiguration().getDefaultCollection();
        if (defaultCollection != null) {
            return new LazySequence(m63224c(defaultCollection, xPathContext));
        }
        throw new XPathException("No default collection has been defined", "FODC0002");
    }

    /* renamed from: c */
    public final SequenceIterator m63224c(String str, XPathContext xPathContext) throws XPathException {
        CollectionFinder collectionFinder;
        ResourceCollection registeredCollection = xPathContext.getConfiguration().getRegisteredCollection(str);
        if (registeredCollection == null && (collectionFinder = xPathContext.getController().getCollectionFinder()) != null) {
            registeredCollection = collectionFinder.findCollection(xPathContext, str);
        }
        if (registeredCollection != null) {
            return new IteratorWrapper(new MappingJavaIterator(registeredCollection.getResourceURIs(xPathContext), new Function() { // from class: com.sunia.HTREnginev2.ayn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    AnyURIValue m63222d;
                    m63222d = UriCollection.m63222d((String) obj);
                    return m63222d;
                }
            }));
        }
        StringBuilder sb = new StringBuilder();
        sb.append("No collection has been defined for href: ");
        if (str == null) {
            str = "";
        }
        sb.append(str);
        XPathException xPathException = new XPathException(sb.toString());
        xPathException.setErrorCode("FODC0002");
        xPathException.setXPathContext(xPathContext);
        throw xPathException;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        Item head;
        if (sequenceArr.length != 0 && (head = sequenceArr[0].head()) != null) {
            String stringValue = head.getStringValue();
            try {
                URI uri = new URI(stringValue);
                if (!uri.isAbsolute()) {
                    URI staticBaseUri = getRetainedStaticContext().getStaticBaseUri();
                    if (staticBaseUri == null) {
                        throw new XPathException("No base URI available for uri-collection", "FODC0002");
                    }
                    uri = staticBaseUri.resolve(uri);
                }
                return new LazySequence(m63224c(uri.toString(), xPathContext));
            } catch (URISyntaxException unused) {
                throw new XPathException("Invalid URI passed to uri-collection: " + stringValue, "FODC0004");
            }
        }
        return m63223b(xPathContext);
    }
}
