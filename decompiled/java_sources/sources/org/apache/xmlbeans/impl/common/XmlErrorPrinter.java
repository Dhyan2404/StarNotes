package org.apache.xmlbeans.impl.common;

import java.net.URI;
import java.util.AbstractCollection;
import java.util.Collections;
import java.util.Iterator;
import org.apache.xmlbeans.XmlError;

/* loaded from: classes13.dex */
public class XmlErrorPrinter extends AbstractCollection<XmlError> {
    private final URI _baseURI;
    private final boolean _noisy;

    public XmlErrorPrinter(boolean z, URI uri) {
        this._noisy = z;
        this._baseURI = uri;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<XmlError> iterator() {
        return Collections.emptyIterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean add(XmlError xmlError) {
        if (xmlError == null) {
            return false;
        }
        if (xmlError.getSeverity() != 0 && xmlError.getSeverity() != 1) {
            if (!this._noisy) {
                return false;
            }
            System.out.println(xmlError.toString(this._baseURI));
            return false;
        }
        System.err.println(xmlError.toString(this._baseURI));
        return false;
    }
}
