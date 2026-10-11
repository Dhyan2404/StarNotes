package javax.xml.stream.events;

/* loaded from: classes5.dex */
public interface EntityDeclaration extends XMLEvent {
    String getBaseURI();

    String getName();

    String getNotationName();

    String getPublicId();

    String getReplacementText();

    String getSystemId();
}
