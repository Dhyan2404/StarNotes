package javax.xml.stream.events;

import java.util.Iterator;
import javax.xml.namespace.QName;

/* loaded from: classes5.dex */
public interface EndElement extends XMLEvent {
    QName getName();

    Iterator getNamespaces();
}
