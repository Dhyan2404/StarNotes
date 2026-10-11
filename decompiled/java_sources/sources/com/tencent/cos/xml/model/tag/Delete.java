package com.tencent.cos.xml.model.tag;

import java.util.List;

/* loaded from: classes10.dex */
public class Delete {
    public List<DeleteObject> deleteObjects;
    public boolean quiet;

    /* loaded from: classes10.dex */
    public static class DeleteObject {
        public String key;
        public String versionId;
    }
}
