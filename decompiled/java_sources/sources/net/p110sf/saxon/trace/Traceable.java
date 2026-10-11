package net.p110sf.saxon.trace;

import java.util.function.BiConsumer;
import net.p110sf.saxon.expr.Locatable;
import net.p110sf.saxon.om.StructuredQName;

/* loaded from: classes11.dex */
public interface Traceable extends Locatable {
    default void gatherProperties(BiConsumer<String, Object> biConsumer) {
    }

    StructuredQName getObjectName();
}
