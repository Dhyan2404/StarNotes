package com.tencent.cos.xml.model.ci.metainsight;

import java.util.List;

/* loaded from: classes10.dex */
public class DatasetFaceSearchResponse {
    public List<FaceResult> faceResult;
    public String requestId;

    /* loaded from: classes10.dex */
    public static class FaceBoundary {
        public int height;
        public int left;
        public int top;
        public int width;
    }

    /* loaded from: classes10.dex */
    public static class FaceInfos {
        public FaceBoundary faceBoundary;
        public String faceId;
        public String personId;
        public int score;
        public String uRI;
    }

    /* loaded from: classes10.dex */
    public static class FaceResult {
        public List<FaceInfos> faceInfos;
        public FaceBoundary inputFaceBoundary;
    }
}
