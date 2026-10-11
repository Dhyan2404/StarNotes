package io.opencensus.tags;

import java.util.Iterator;

/* loaded from: classes10.dex */
public final class InternalUtils {
    public static Iterator<Tag> getTags(TagContext tagContext) {
        return tagContext.getIterator();
    }
}
