package org.apache.xerces.jaxp.validation;

import org.apache.xerces.xni.grammars.XMLGrammarPool;

/* loaded from: classes13.dex */
public interface XSGrammarPoolContainer {
    Boolean getFeature(String str);

    XMLGrammarPool getGrammarPool();

    boolean isFullyComposed();
}
