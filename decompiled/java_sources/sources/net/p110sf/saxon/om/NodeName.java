package net.p110sf.saxon.om;

/* loaded from: classes11.dex */
public interface NodeName extends IdentityComparable {
    String getDisplayName();

    int getFingerprint();

    String getLocalPart();

    NamespaceBinding getNamespaceBinding();

    String getPrefix();

    StructuredQName getStructuredQName();

    String getURI();

    boolean hasFingerprint();

    boolean hasURI(String str);

    int obtainFingerprint(NamePool namePool);
}
