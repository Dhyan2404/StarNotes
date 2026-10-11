package com.sunia.commonv2.bean.chemical;

import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes10.dex */
public class ChemicalStructureResult {

    @SerializedName("recognition")
    private List<RecognitionBean> recognitionBeanList = new ArrayList();

    public List<RecognitionBean> getRecognitionBeanList() {
        return this.recognitionBeanList;
    }
}
