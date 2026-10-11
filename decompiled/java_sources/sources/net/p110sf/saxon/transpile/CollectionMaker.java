package net.p110sf.saxon.transpile;

import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes11.dex */
public class CollectionMaker {
    public static <E> Iterator<E> emptyIterator(Class<E> cls) {
        return Collections.emptyIterator();
    }
}
