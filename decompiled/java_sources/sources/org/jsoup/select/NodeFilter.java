package org.jsoup.select;

import org.jsoup.nodes.Node;

/* loaded from: classes13.dex */
public interface NodeFilter {

    /* loaded from: classes13.dex */
    public enum FilterResult {
        CONTINUE,
        SKIP_CHILDREN,
        SKIP_ENTIRELY,
        REMOVE,
        STOP
    }

    FilterResult head(Node node, int i);

    FilterResult tail(Node node, int i);
}
