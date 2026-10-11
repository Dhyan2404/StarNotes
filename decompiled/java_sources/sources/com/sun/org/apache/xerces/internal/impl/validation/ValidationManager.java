package com.sun.org.apache.xerces.internal.impl.validation;

import java.util.Vector;

/* loaded from: classes10.dex */
public class ValidationManager {
    protected final Vector fVSs = new Vector();
    protected boolean fGrammarFound = false;
    protected boolean fCachedDTD = false;

    public final void addValidationState(ValidationState validationState) {
        this.fVSs.addElement(validationState);
    }

    public final boolean isCachedDTD() {
        return this.fCachedDTD;
    }

    public final boolean isGrammarFound() {
        return this.fGrammarFound;
    }

    public final void reset() {
        this.fVSs.removeAllElements();
        this.fGrammarFound = false;
        this.fCachedDTD = false;
    }

    public final void setCachedDTD(boolean z) {
        this.fCachedDTD = z;
    }

    public final void setEntityState(EntityState entityState) {
        for (int size = this.fVSs.size() - 1; size >= 0; size--) {
            ((ValidationState) this.fVSs.elementAt(size)).setEntityState(entityState);
        }
    }

    public final void setGrammarFound(boolean z) {
        this.fGrammarFound = z;
    }
}
