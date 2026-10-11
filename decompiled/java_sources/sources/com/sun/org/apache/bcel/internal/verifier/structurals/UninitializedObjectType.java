package com.sun.org.apache.bcel.internal.verifier.structurals;

import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.bcel.internal.generic.ObjectType;
import com.sun.org.apache.bcel.internal.generic.ReferenceType;

/* loaded from: classes10.dex */
public class UninitializedObjectType extends ReferenceType implements Constants {
    private ObjectType initialized;

    public UninitializedObjectType(ObjectType objectType) {
        super((byte) 15, "<UNINITIALIZED OBJECT OF TYPE '" + objectType.getClassName() + "'>");
        this.initialized = objectType;
    }

    public boolean equals(Object obj) {
        if (obj instanceof UninitializedObjectType) {
            return this.initialized.equals(((UninitializedObjectType) obj).initialized);
        }
        return false;
    }

    public ObjectType getInitialized() {
        return this.initialized;
    }
}
