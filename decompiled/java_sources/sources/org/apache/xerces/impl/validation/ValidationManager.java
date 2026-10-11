package org.apache.xerces.impl.validation;

import java.util.ArrayList;

/* loaded from: classes13.dex */
public class ValidationManager {
    protected final ArrayList fVSs = new ArrayList();
    protected boolean fGrammarFound = false;
    protected boolean fCachedDTD = false;

    public final void addValidationState(ValidationState validationState) {
        this.fVSs.add(validationState);
    }

    public final boolean isCachedDTD() {
        return this.fCachedDTD;
    }

    public final boolean isGrammarFound() {
        return this.fGrammarFound;
    }

    public final void reset() {
        this.fVSs.clear();
        this.fGrammarFound = false;
        this.fCachedDTD = false;
    }

    public final void setCachedDTD(boolean z) {
        this.fCachedDTD = z;
    }

    public final void setEntityState(EntityState entityState) {
        for (int size = this.fVSs.size() - 1; size >= 0; size--) {
            ((ValidationState) this.fVSs.get(size)).setEntityState(entityState);
        }
    }

    public final void setGrammarFound(boolean z) {
        this.fGrammarFound = z;
    }
}
