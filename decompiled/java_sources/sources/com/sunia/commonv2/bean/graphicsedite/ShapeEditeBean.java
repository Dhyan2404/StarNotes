package com.sunia.commonv2.bean.graphicsedite;

import com.sunia.HTREnginev2.sdk.RecognizePath;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes10.dex */
public class ShapeEditeBean {
    private String label;
    private List<RecognizePath> pathList = new ArrayList();
    private int type;

    public ShapeEditeBean(int i) {
        this.type = -1;
        this.type = i;
    }

    public String getLabel() {
        return this.label;
    }

    public List<RecognizePath> getPathList() {
        return this.pathList;
    }

    public void setLabel(String str) {
        this.label = str;
    }
}
