package com.tencent.cos.xml.model.tag;

import com.alibaba.sdk.android.oss.model.CreateBucketRequest;
import com.google.android.exoplayer2.text.ssa.SsaDecoder;
import com.liulishuo.okdownload.core.Util;
import com.onyx.android.sdk.matisse.internal.entity.Album;
import java.util.Set;
import org.apache.poi.openxml4j.opc.PackageRelationship;

/* loaded from: classes10.dex */
public class InventoryConfiguration {
    public static final String SCHEDULE_FREQUENCY_DAILY = "Daily";
    public static final String SCHEDULE_FREQUENCY_WEEKLY = "Weekly";
    public Destination destination;
    public Filter filter;

    /* renamed from: id */
    public String f93311id;
    public String includedObjectVersions;
    public boolean isEnabled;
    public OptionalFields optionalFields;
    public Schedule schedule;

    /* loaded from: classes10.dex */
    public static class COSBucketDestination {
        public String accountId;
        public String bucket;
        public Encryption encryption;
        public String format;
        public String prefix;

        public void setBucket(String str, String str2) {
            if (str == null || str2 == null) {
                return;
            }
            this.bucket = String.format("qcs::cos:%s::%s", str, str2);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{COSBucketDestination:\n");
            sb.append(SsaDecoder.f27033v);
            sb.append(this.format);
            sb.append("\n");
            sb.append("AccountId:");
            sb.append(this.accountId);
            sb.append("\n");
            sb.append("Bucket:");
            sb.append(this.bucket);
            sb.append("\n");
            sb.append("Prefix:");
            sb.append(this.prefix);
            sb.append("\n");
            Encryption encryption = this.encryption;
            if (encryption != null) {
                sb.append(encryption.toString());
                sb.append("\n");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    /* loaded from: classes10.dex */
    public static class Destination {
        public COSBucketDestination cosBucketDestination;

        public String toString() {
            StringBuilder sb = new StringBuilder("{Destination:\n");
            COSBucketDestination cOSBucketDestination = this.cosBucketDestination;
            if (cOSBucketDestination != null) {
                sb.append(cOSBucketDestination.toString());
                sb.append("\n");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    /* loaded from: classes10.dex */
    public static class Encryption {
        public String sSECOS;

        public String toString() {
            return "{Encryption:\nSSE-COS:" + this.sSECOS + "\n}";
        }
    }

    /* loaded from: classes10.dex */
    public enum Field {
        SIZE("Size"),
        LastModified_Date("LastModifiedDate"),
        StroageClass(CreateBucketRequest.TAB_STORAGECLASS),
        ETAG(Util.ETAG),
        IS_MULTIPARTUPLOADed("IsMultipartUploaded"),
        REPLICATION_STATUS("ReplicationStatus");

        String value;

        Field(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    /* loaded from: classes10.dex */
    public static class Filter {
        public String prefix;

        public String toString() {
            return "{Filter:\nPrefix:" + this.prefix + "\n}";
        }
    }

    /* loaded from: classes10.dex */
    public enum Frequency {
        DAILY(InventoryConfiguration.SCHEDULE_FREQUENCY_DAILY);

        String value;

        Frequency(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    /* loaded from: classes10.dex */
    public enum IncludedObjectVersions {
        ALL(Album.ALBUM_NAME_ALL),
        CURRENT("Current");

        private String desc;

        IncludedObjectVersions(String str) {
            this.desc = str;
        }

        public String getDesc() {
            return this.desc;
        }
    }

    /* loaded from: classes10.dex */
    public static class OptionalFields {
        public Set<String> fields;

        public String toString() {
            StringBuilder sb = new StringBuilder("{OptionalFields:\n");
            Set<String> set = this.fields;
            if (set != null) {
                for (String str : set) {
                    sb.append("Field:");
                    sb.append(str);
                    sb.append("\n");
                }
            }
            sb.append("}");
            return sb.toString();
        }
    }

    /* loaded from: classes10.dex */
    public static class Schedule {
        public String frequency;

        public String toString() {
            return "{Schedule:\nFrequency:" + this.frequency + "\n}";
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{InventoryConfiguration:\n");
        sb.append(PackageRelationship.ID_ATTRIBUTE_NAME);
        sb.append(this.f93311id);
        sb.append("\n");
        sb.append("IsEnabled:");
        sb.append(this.isEnabled);
        sb.append("\n");
        Destination destination = this.destination;
        if (destination != null) {
            sb.append(destination.toString());
            sb.append("\n");
        }
        Schedule schedule = this.schedule;
        if (schedule != null) {
            sb.append(schedule.toString());
            sb.append("\n");
        }
        Filter filter = this.filter;
        if (filter != null) {
            sb.append(filter.toString());
            sb.append("\n");
        }
        sb.append("IncludedObjectVersions:");
        sb.append(this.includedObjectVersions);
        sb.append("\n");
        OptionalFields optionalFields = this.optionalFields;
        if (optionalFields != null) {
            sb.append(optionalFields.toString());
            sb.append("\n");
        }
        sb.append("}");
        return sb.toString();
    }
}
