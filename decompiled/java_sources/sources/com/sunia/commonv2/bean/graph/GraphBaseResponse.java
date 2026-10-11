package com.sunia.commonv2.bean.graph;

import com.google.gson.annotations.SerializedName;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.sunia.commonv2.bean.BoundingBox;
import com.sunia.commonv2.callback.INoProguard;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes10.dex */
public class GraphBaseResponse implements INoProguard {

    @SerializedName(IStyleSheet.CLASS_BOUNDING_BOX)
    private BoundingBox boundingBox;

    @SerializedName(Constants.ATTRNAME_ELEMENTS)
    private List<MixtureElementBean> graphElementsBeanList = new ArrayList();
    private List<RecognizePath> recognizePathList = new ArrayList();
    private boolean redo;
    private boolean undo;
    private String version;

    public BoundingBox getBoundingBox() {
        return this.boundingBox;
    }

    public List<MixtureElementBean> getGraphElementsBeanList() {
        return this.graphElementsBeanList;
    }

    public List<RecognizePath> getRecognizePathList() {
        return this.recognizePathList;
    }

    public boolean isRedo() {
        return this.redo;
    }

    public boolean isUndo() {
        return this.undo;
    }
}
