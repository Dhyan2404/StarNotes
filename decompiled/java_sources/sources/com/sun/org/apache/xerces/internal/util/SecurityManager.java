package com.sun.org.apache.xerces.internal.util;

import com.sun.org.apache.xerces.internal.impl.Constants;

/* loaded from: classes10.dex */
public final class SecurityManager {
    private static final int DEFAULT_ELEMENT_ATTRIBUTE_LIMIT = 10000;
    private static final int DEFAULT_ENTITY_EXPANSION_LIMIT = 64000;
    private static final int DEFAULT_MAX_OCCUR_NODE_LIMIT = 5000;
    private int entityExpansionLimit = 64000;
    private int maxOccurLimit = 5000;
    private int fElementAttributeLimit = 10000;

    public SecurityManager() {
        readSystemProperties();
    }

    private void readSystemProperties() {
        try {
            String property = System.getProperty(Constants.ENTITY_EXPANSION_LIMIT);
            if (property == null || property.equals("")) {
                this.entityExpansionLimit = 64000;
            } else {
                int parseInt = Integer.parseInt(property);
                this.entityExpansionLimit = parseInt;
                if (parseInt < 0) {
                    this.entityExpansionLimit = 64000;
                }
            }
        } catch (Exception unused) {
        }
        try {
            String property2 = System.getProperty(Constants.MAX_OCCUR_LIMIT);
            if (property2 == null || property2.equals("")) {
                this.maxOccurLimit = 5000;
            } else {
                int parseInt2 = Integer.parseInt(property2);
                this.maxOccurLimit = parseInt2;
                if (parseInt2 < 0) {
                    this.maxOccurLimit = 5000;
                }
            }
        } catch (Exception unused2) {
        }
        try {
            String property3 = System.getProperty(Constants.SYSTEM_PROPERTY_ELEMENT_ATTRIBUTE_LIMIT);
            if (property3 == null || property3.equals("")) {
                this.fElementAttributeLimit = 10000;
                return;
            }
            int parseInt3 = Integer.parseInt(property3);
            this.fElementAttributeLimit = parseInt3;
            if (parseInt3 < 0) {
                this.fElementAttributeLimit = 10000;
            }
        } catch (Exception unused3) {
        }
    }

    public int getElementAttrLimit() {
        return this.fElementAttributeLimit;
    }

    public int getEntityExpansionLimit() {
        return this.entityExpansionLimit;
    }

    public int getMaxOccurNodeLimit() {
        return this.maxOccurLimit;
    }

    public void setElementAttrLimit(int i) {
        this.fElementAttributeLimit = i;
    }

    public void setEntityExpansionLimit(int i) {
        this.entityExpansionLimit = i;
    }

    public void setMaxOccurNodeLimit(int i) {
        this.maxOccurLimit = i;
    }
}
