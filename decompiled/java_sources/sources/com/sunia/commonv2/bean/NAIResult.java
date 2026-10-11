package com.sunia.commonv2.bean;

import com.sunia.commonv2.exception.NAIException;
import com.sunia.commonv2.util.HWRUtil;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public class NAIResult {
    private NAIException exception;
    private int formulaMode;
    private int mode;
    private long dataPointer = 0;
    private Map<Integer, Long> mHWRStrokeIdAndHWEIdMap = new HashMap();

    public long getDataPointer() {
        return this.dataPointer;
    }

    public NAIException getException() {
        return this.exception;
    }

    public int getFormulaMode() {
        return this.formulaMode;
    }

    public Map<Integer, Long> getHWRStrokeIdAndHWEIdMap() {
        return this.mHWRStrokeIdAndHWEIdMap;
    }

    public int getMode() {
        return this.mode;
    }

    public boolean isSuccess() {
        return HWRUtil.isEmpty(this.exception);
    }

    public void setDataPointer(long j) {
        this.dataPointer = j;
    }

    public void setException(NAIException nAIException) {
        this.exception = nAIException;
    }

    public void setFormulaMode(int i) {
        this.formulaMode = i;
    }

    public void setHWRStrokeIdAndHWEIdMap(Map<Integer, Long> map) {
        this.mHWRStrokeIdAndHWEIdMap = map;
    }

    public void setMode(int i) {
        this.mode = i;
    }
}
