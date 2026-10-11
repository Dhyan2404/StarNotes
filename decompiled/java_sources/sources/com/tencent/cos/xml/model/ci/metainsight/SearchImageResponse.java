package com.tencent.cos.xml.model.ci.metainsight;

import java.util.List;

/* loaded from: classes10.dex */
public class SearchImageResponse {
    public List<ImageResult> imageResult;
    public String requestId;

    /* loaded from: classes10.dex */
    public static class ImageResult {
        public int score;
        public String uRI;
    }
}
