package org.apache.xmlbeans;

/* loaded from: classes13.dex */
public interface SchemaLocalElement extends SchemaField, SchemaAnnotated {
    boolean blockExtension();

    boolean blockRestriction();

    boolean blockSubstitution();

    SchemaIdentityConstraint[] getIdentityConstraints();

    boolean isAbstract();
}
