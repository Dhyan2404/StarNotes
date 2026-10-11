package org.apache.poi.hmef;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.apache.poi.hmef.attribute.MAPIAttribute;
import org.apache.poi.hmef.attribute.MAPIStringAttribute;
import org.apache.poi.hmef.attribute.TNEFAttribute;
import org.apache.poi.hmef.attribute.TNEFDateAttribute;
import org.apache.poi.hmef.attribute.TNEFMAPIAttribute;
import org.apache.poi.hmef.attribute.TNEFProperty;
import org.apache.poi.hmef.attribute.TNEFStringAttribute;
import org.apache.poi.hsmf.datatypes.MAPIProperty;

/* loaded from: classes12.dex */
public final class Attachment {
    private final List<TNEFAttribute> attributes = new ArrayList();
    private final List<MAPIAttribute> mapiAttributes = new ArrayList();

    private String getString(MAPIProperty mAPIProperty) {
        return MAPIStringAttribute.getAsString(getMAPIAttribute(mAPIProperty));
    }

    public void addAttribute(TNEFAttribute tNEFAttribute) {
        this.attributes.add(tNEFAttribute);
        if (tNEFAttribute instanceof TNEFMAPIAttribute) {
            this.mapiAttributes.addAll(((TNEFMAPIAttribute) tNEFAttribute).getMAPIAttributes());
        }
    }

    public TNEFAttribute getAttribute(TNEFProperty tNEFProperty) {
        for (TNEFAttribute tNEFAttribute : this.attributes) {
            if (tNEFAttribute.getProperty() == tNEFProperty) {
                return tNEFAttribute;
            }
        }
        return null;
    }

    public List<TNEFAttribute> getAttributes() {
        return this.attributes;
    }

    public byte[] getContents() {
        TNEFAttribute attribute = getAttribute(TNEFProperty.ID_ATTACHDATA);
        if (attribute != null) {
            return attribute.getData();
        }
        throw new IllegalArgumentException("Attachment corrupt - no Data section");
    }

    public String getExtension() {
        return getString(MAPIProperty.ATTACH_EXTENSION);
    }

    public String getFilename() {
        return getString(TNEFProperty.ID_ATTACHTITLE);
    }

    public String getLongFilename() {
        return getString(MAPIProperty.ATTACH_LONG_FILENAME);
    }

    public MAPIAttribute getMAPIAttribute(MAPIProperty mAPIProperty) {
        for (MAPIAttribute mAPIAttribute : this.mapiAttributes) {
            if (mAPIAttribute.getProperty() == mAPIProperty) {
                return mAPIAttribute;
            }
        }
        return null;
    }

    public List<MAPIAttribute> getMAPIAttributes() {
        return this.mapiAttributes;
    }

    public Date getModifiedDate() {
        return TNEFDateAttribute.getAsDate(getAttribute(TNEFProperty.ID_ATTACHMODIFYDATE));
    }

    public byte[] getRenderedMetaFile() {
        TNEFAttribute attribute = getAttribute(TNEFProperty.ID_ATTACHMETAFILE);
        if (attribute == null) {
            return null;
        }
        return attribute.getData();
    }

    private String getString(TNEFProperty tNEFProperty) {
        return TNEFStringAttribute.getAsString(getAttribute(tNEFProperty));
    }
}
