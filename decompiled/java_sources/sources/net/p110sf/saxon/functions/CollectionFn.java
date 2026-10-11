package net.p110sf.saxon.functions;

import java.io.Closeable;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Collections;
import java.util.Iterator;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.Resource;
import net.p110sf.saxon.lib.ResourceCollection;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.wrapper.SpaceStrippedDocument;
import net.p110sf.saxon.value.ObjectValue;

/* loaded from: classes11.dex */
public class CollectionFn extends SystemFunction implements Callable {
    public static final ResourceCollection EMPTY_COLLECTION = new C18345b("http://saxon.sf.net/collection/empty");
    public static String EMPTY_COLLECTION_URI = "http://saxon.sf.net/collection/empty";

    /* renamed from: net.sf.saxon.functions.CollectionFn$a */
    /* loaded from: classes11.dex */
    public static class C18344a implements SequenceIterator {

        /* renamed from: e */
        public final Iterator<? extends Resource> f100165e;

        public C18344a(Iterator<? extends Resource> it2) {
            this.f100165e = it2;
        }

        @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            Iterator<? extends Resource> it2 = this.f100165e;
            if (it2 instanceof Closeable) {
                try {
                    ((Closeable) it2).close();
                } catch (IOException e) {
                    throw new UncheckedXPathException(new XPathException(e));
                }
            }
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public Item next() {
            if (this.f100165e.hasNext()) {
                return new ObjectValue(this.f100165e.next());
            }
            return null;
        }
    }

    /* renamed from: net.sf.saxon.functions.CollectionFn$b */
    /* loaded from: classes11.dex */
    public static class C18345b implements ResourceCollection {

        /* renamed from: a */
        public final String f100166a;

        public C18345b(String str) {
            this.f100166a = str;
        }

        @Override // net.p110sf.saxon.lib.ResourceCollection
        public String getCollectionURI() {
            return this.f100166a;
        }

        @Override // net.p110sf.saxon.lib.ResourceCollection
        public Iterator<String> getResourceURIs(XPathContext xPathContext) {
            return Collections.emptyIterator();
        }

        @Override // net.p110sf.saxon.lib.ResourceCollection
        public Iterator<? extends Resource> getResources(XPathContext xPathContext) {
            return Collections.emptyIterator();
        }

        @Override // net.p110sf.saxon.lib.ResourceCollection
        public boolean isStable(XPathContext xPathContext) {
            return true;
        }
    }

    /* renamed from: e */
    public static /* synthetic */ Item m62957e(Item item) throws XPathException {
        return ((Resource) ((ObjectValue) item).getObject()).getItem();
    }

    /* renamed from: f */
    public static /* synthetic */ Item m62958f(SpaceStrippingRule spaceStrippingRule, Item item) throws XPathException {
        if (item instanceof NodeInfo) {
            NodeInfo nodeInfo = (NodeInfo) item;
            if (nodeInfo.getNodeKind() == 9) {
                TreeInfo treeInfo = nodeInfo.getTreeInfo();
                if (treeInfo.getSpaceStrippingRule() != spaceStrippingRule) {
                    return new SpaceStrippedDocument(treeInfo, spaceStrippingRule).getRootNode();
                }
            }
        }
        return item;
    }

    /* renamed from: c */
    public final String m62959c(String str, XPathContext xPathContext) throws XPathException {
        URI uri;
        if (str == null) {
            return xPathContext.getConfiguration().getDefaultCollection();
        }
        try {
            uri = new URI(str);
        } catch (URISyntaxException unused) {
            str = IriToUri.iriToUri(StringView.tidy(str)).toString();
            try {
                uri = new URI(str);
            } catch (URISyntaxException e) {
                throw new XPathException(e.getMessage(), "FODC0004");
            }
        }
        try {
            if (uri.isAbsolute()) {
                return uri.toString();
            }
            String staticBaseUriString = getRetainedStaticContext().getStaticBaseUriString();
            if (staticBaseUriString != null) {
                return ResolveURI.makeAbsolute(str, staticBaseUriString).toString();
            }
            throw new XPathException("Relative collection URI cannot be resolved: no base URI available", "FODC0002");
        } catch (URISyntaxException e2) {
            throw new XPathException(e2.getMessage(), "FODC0004");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x007a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x007b  */
    @Override // net.p110sf.saxon.expr.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.om.Sequence call(net.p110sf.saxon.expr.XPathContext r13, net.p110sf.saxon.om.Sequence[] r14) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.functions.CollectionFn.call(net.sf.saxon.expr.XPathContext, net.sf.saxon.om.Sequence[]):net.sf.saxon.om.Sequence");
    }

    /* renamed from: d */
    public final SequenceIterator m62960d(ResourceCollection resourceCollection, XPathContext xPathContext) throws XPathException {
        return new C18344a(resourceCollection.getResources(xPathContext));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        return (super.getSpecialProperties(expressionArr) & (-8388609)) | 524288;
    }
}
