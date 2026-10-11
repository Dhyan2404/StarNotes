package com.tencent.cos.xml.model.tag;

import java.util.List;

/* loaded from: classes10.dex */
public class ReplicationConfiguration {
    public String role;
    public List<Rule> rules;

    /* loaded from: classes10.dex */
    public static class Destination {
        public String bucket;
        public String storageClass;

        public String toString() {
            return "{Destination:\nBucket:" + this.bucket + "\nStorageClass:" + this.storageClass + "\n}";
        }
    }

    /* loaded from: classes10.dex */
    public static class Rule {
        public Destination destination;

        /* renamed from: id */
        public String f93320id;
        public String prefix;
        public String status;

        public String toString() {
            StringBuilder sb = new StringBuilder("{Rule:\n");
            sb.append("Id:");
            sb.append(this.f93320id);
            sb.append("\n");
            sb.append("Status:");
            sb.append(this.status);
            sb.append("\n");
            sb.append("Prefix:");
            sb.append(this.prefix);
            sb.append("\n");
            Destination destination = this.destination;
            if (destination != null) {
                sb.append(destination.toString());
                sb.append("\n");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{ReplicationConfiguration:\n");
        sb.append("Role:");
        sb.append(this.role);
        sb.append("\n");
        List<Rule> list = this.rules;
        if (list != null) {
            for (Rule rule : list) {
                if (rule != null) {
                    sb.append(rule.toString());
                    sb.append("\n");
                }
            }
        }
        sb.append("}");
        return sb.toString();
    }
}
