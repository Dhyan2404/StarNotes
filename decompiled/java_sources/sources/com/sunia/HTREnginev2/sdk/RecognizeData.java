package com.sunia.HTREnginev2.sdk;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public class RecognizeData {
    public final int VERSION = 1;
    public final int ACTION_DOWN = 0;
    public final int ACTION_MOVE = 1;
    public final int ACTION_UP = 2;
    private float density = 1.0f;
    private Map<String, Object> descMap = new HashMap();
    private ArrayList<RecognizePath> recognizePathList = new ArrayList<>();

    public float getDensity() {
        return this.density;
    }

    public Map<String, Object> getDescMap() {
        return this.descMap;
    }

    public ArrayList<RecognizePath> getRecognizePathList() {
        return this.recognizePathList;
    }

    public void setDensity(float f) {
        this.density = f;
    }
}
