package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface RecipientsDocument extends XmlObject {
    public static final DocumentFactory<RecipientsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RecipientsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "recipients6a1adoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRecipients addNewRecipients();

    CTRecipients getRecipients();

    void setRecipients(CTRecipients cTRecipients);
}
