package com.tencent.cos.xml.model.tag;

import com.tencent.cos.xml.model.bucket.PutBucketIntelligentTieringRequest;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;
import java.util.List;

@XmlBean
/* loaded from: classes10.dex */
public class RefererConfiguration {
    public List<Domain> domainList;
    public String emptyReferConfiguration;
    public String refererType;
    public String status;

    @XmlBean
    /* loaded from: classes10.dex */
    public static class Domain {

        @XmlElement(ignoreName = true)
        public String domain;

        public Domain() {
        }

        public Domain(String str) {
            this.domain = str;
        }
    }

    /* loaded from: classes10.dex */
    public enum RefererType {
        Black("Black-List"),
        White("White-List");

        private final String type;

        RefererType(String str) {
            this.type = str;
        }

        public static RefererType fromString(String str) {
            for (RefererType refererType : values()) {
                if (refererType.getTypeStr().equalsIgnoreCase(str)) {
                    return refererType;
                }
            }
            return null;
        }

        public String getTypeStr() {
            return this.type;
        }
    }

    public boolean getAllowEmptyRefer() {
        return "Allow".equals(this.emptyReferConfiguration);
    }

    public boolean getEnabled() {
        return PutBucketIntelligentTieringRequest.STATUS_ENABLED.equals(this.status);
    }

    public RefererType getRefererType() {
        return RefererType.fromString(this.refererType);
    }

    public void setAllowEmptyRefer(boolean z) {
        if (z) {
            this.emptyReferConfiguration = "Allow";
        } else {
            this.emptyReferConfiguration = "Deny";
        }
    }

    public void setEnabled(boolean z) {
        if (z) {
            this.status = PutBucketIntelligentTieringRequest.STATUS_ENABLED;
        } else {
            this.status = "Disabled";
        }
    }

    public void setRefererType(RefererType refererType) {
        this.refererType = refererType.getTypeStr();
    }
}
