package com.sun.xml.internal.stream.events;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.Writer;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.EntityDeclaration;
import javax.xml.stream.events.EntityReference;
import org.scribe.model.ParameterList;

/* loaded from: classes10.dex */
public class EntityReferenceEvent extends DummyEvent implements EntityReference {
    private EntityDeclaration fEntityDeclaration;
    private String fEntityName;

    public EntityReferenceEvent() {
        init();
    }

    @Override // javax.xml.stream.events.EntityReference
    public EntityDeclaration getDeclaration() {
        return this.fEntityDeclaration;
    }

    @Override // javax.xml.stream.events.EntityReference
    public String getName() {
        return this.fEntityName;
    }

    public void init() {
        setEventType(9);
    }

    public String toString() {
        String replacementText = this.fEntityDeclaration.getReplacementText();
        if (replacementText == null) {
            replacementText = "";
        }
        return ParameterList.f115951c + getName() + ";='" + replacementText + CloudStorageConstants.SINGLE_QUOTES;
    }

    @Override // com.sun.xml.internal.stream.events.DummyEvent, javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
    }

    public EntityReferenceEvent(String str, EntityDeclaration entityDeclaration) {
        init();
        this.fEntityName = str;
        this.fEntityDeclaration = entityDeclaration;
    }
}
