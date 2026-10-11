package org.apache.poi.hmef;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.poi.hmef.attribute.MAPIAttribute;
import org.apache.poi.hmef.attribute.MAPIStringAttribute;
import org.apache.poi.hmef.attribute.TNEFAttribute;
import org.apache.poi.hmef.attribute.TNEFMAPIAttribute;
import org.apache.poi.hmef.attribute.TNEFProperty;
import org.apache.poi.hsmf.datatypes.MAPIProperty;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class HMEFMessage {
    public static final int HEADER_SIGNATURE = 574529400;
    private int fileId;
    private final List<TNEFAttribute> messageAttributes = new ArrayList();
    private final List<MAPIAttribute> mapiAttributes = new ArrayList();
    private final List<Attachment> attachments = new ArrayList();

    public HMEFMessage(InputStream inputStream) throws IOException {
        try {
            int readInt = LittleEndian.readInt(inputStream);
            if (readInt == 574529400) {
                this.fileId = LittleEndian.readUShort(inputStream);
                process(inputStream);
            } else {
                throw new IllegalArgumentException("TNEF signature not detected in file, expected 574529400 but got " + readInt);
            }
        } finally {
            inputStream.close();
        }
    }

    private String getString(MAPIProperty mAPIProperty) {
        return MAPIStringAttribute.getAsString(getMessageMAPIAttribute(mAPIProperty));
    }

    private void process(InputStream inputStream) throws IOException {
        int read;
        do {
            read = inputStream.read();
            if (read != -1 && read != 10 && read != 13) {
                if (read == 1) {
                    processMessage(inputStream);
                } else {
                    if (read != 2) {
                        throw new IllegalStateException("Unhandled level " + read);
                    }
                    processAttachment(inputStream);
                }
            }
        } while (read != -1);
    }

    public List<Attachment> getAttachments() {
        return Collections.unmodifiableList(this.attachments);
    }

    public String getBody() {
        return getString(MAPIProperty.RTF_COMPRESSED);
    }

    public TNEFAttribute getMessageAttribute(TNEFProperty tNEFProperty) {
        for (TNEFAttribute tNEFAttribute : this.messageAttributes) {
            if (tNEFAttribute.getProperty() == tNEFProperty) {
                return tNEFAttribute;
            }
        }
        return null;
    }

    public List<TNEFAttribute> getMessageAttributes() {
        return Collections.unmodifiableList(this.messageAttributes);
    }

    public MAPIAttribute getMessageMAPIAttribute(MAPIProperty mAPIProperty) {
        for (MAPIAttribute mAPIAttribute : this.mapiAttributes) {
            if (mAPIAttribute.getProperty().f111389id == mAPIProperty.f111389id) {
                return mAPIAttribute;
            }
        }
        return null;
    }

    public List<MAPIAttribute> getMessageMAPIAttributes() {
        return Collections.unmodifiableList(this.mapiAttributes);
    }

    public String getSubject() {
        return getString(MAPIProperty.CONVERSATION_TOPIC);
    }

    public void processAttachment(InputStream inputStream) throws IOException {
        TNEFAttribute create = TNEFAttribute.create(inputStream);
        if (this.attachments.isEmpty() || create.getProperty() == TNEFProperty.ID_ATTACHRENDERDATA) {
            this.attachments.add(new Attachment());
        }
        this.attachments.get(r2.size() - 1).addAttribute(create);
    }

    public void processMessage(InputStream inputStream) throws IOException {
        TNEFAttribute create = TNEFAttribute.create(inputStream);
        this.messageAttributes.add(create);
        if (create instanceof TNEFMAPIAttribute) {
            this.mapiAttributes.addAll(((TNEFMAPIAttribute) create).getMAPIAttributes());
        }
    }
}
