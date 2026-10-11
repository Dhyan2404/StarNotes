package com.sunia.commonv2.bean;

import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes10.dex */
public class NAITextBean {
    private String version = "1";

    @SerializedName("rows")
    private List<List<OneChar>> rowList = new ArrayList();

    /* loaded from: classes10.dex */
    public static class OneChar {

        @SerializedName("boundingbox")
        private BoundingBox boundingBox;
        private String text;

        public BoundingBox getBoundingBox() {
            return this.boundingBox;
        }

        public String getText() {
            return this.text;
        }

        public void setBoundingBox(BoundingBox boundingBox) {
            this.boundingBox = boundingBox;
        }

        public void setText(String str) {
            this.text = str;
        }
    }

    public List<List<OneChar>> getRowList() {
        return this.rowList;
    }

    public String getVersion() {
        return this.version;
    }
}
