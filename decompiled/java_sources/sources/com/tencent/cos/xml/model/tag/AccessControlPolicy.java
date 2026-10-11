package com.tencent.cos.xml.model.tag;

import java.util.List;

/* loaded from: classes10.dex */
public class AccessControlPolicy {
    public AccessControlList accessControlList;
    public Owner owner;

    /* loaded from: classes10.dex */
    public static class AccessControlList {
        public List<Grant> grants;

        public String toString() {
            StringBuilder sb = new StringBuilder("{AccessControlList:\n");
            List<Grant> list = this.grants;
            if (list != null) {
                for (Grant grant : list) {
                    if (grant != null) {
                        sb.append(grant.toString());
                        sb.append("\n");
                    }
                }
            }
            sb.append("}");
            return sb.toString();
        }
    }

    /* loaded from: classes10.dex */
    public static class Grant {
        public Grantee grantee;
        public String permission;

        public String toString() {
            StringBuilder sb = new StringBuilder("{Grant:\n");
            Grantee grantee = this.grantee;
            if (grantee != null) {
                sb.append(grantee.toString());
                sb.append("\n");
            }
            sb.append("Permission:");
            sb.append(this.permission);
            sb.append("\n");
            sb.append("}");
            return sb.toString();
        }
    }

    /* loaded from: classes10.dex */
    public static class Grantee {
        public String displayName;

        /* renamed from: id */
        public String f93308id;
        public String uri;

        public String toString() {
            return "{Grantee:\nURI:" + this.uri + "\nId:" + this.f93308id + "\nDisplayName:" + this.displayName + "\n}";
        }
    }

    /* loaded from: classes10.dex */
    public static class Owner {
        public String displayName;

        /* renamed from: id */
        public String f93309id;

        public String toString() {
            return "{Owner:\nId:" + this.f93309id + "\nDisplayName:" + this.displayName + "\n}";
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{AccessControlPolicy:\n");
        Owner owner = this.owner;
        if (owner != null) {
            sb.append(owner.toString());
            sb.append("\n");
        }
        AccessControlList accessControlList = this.accessControlList;
        if (accessControlList != null) {
            sb.append(accessControlList.toString());
            sb.append("\n");
        }
        sb.append("}");
        return sb.toString();
    }
}
