package com.onyx.engine.sdk;

import android.util.Log;
import com.alibaba.fastjson2.TypeReference;
import com.alibaba.fastjson2.annotation.JSONField;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes8.dex */
public class CompatiblePosition {
    private PinPosition end;
    private List<Integer> endXpathV2;
    private PinPosition pageStart;
    private PinPosition start;
    private List<Integer> startXpathV2;
    private boolean success;
    private String text;
    private PositionType positionType = PositionType.ANNOTATION;
    private PositionVersion positionVersion = PositionVersion.V31_TO_V32;
    private List<Integer> v2PositionList = new ArrayList(3);

    /* loaded from: classes8.dex */
    public enum PositionType {
        ANNOTATION,
        BOOKMARK,
        READER_NOTE,
        NEW_WORDS
    }

    /* loaded from: classes8.dex */
    public enum PositionVersion {
        V2_TO_V31_TO_V32,
        V31_TO_V32,
        V2_TO_V32
    }

    public static List<CompatiblePosition> parseList(String str) {
        List<CompatiblePosition> list = (List) JsonUtils.fromJson(str, new TypeReference<List<CompatiblePosition>>() { // from class: com.onyx.engine.sdk.CompatiblePosition.1
        }.getType());
        if (list != null) {
            return list;
        }
        Log.e(CompatiblePosition.class.getSimpleName(), "parse CompatiblePosition list failed, json: " + str);
        return Collections.emptyList();
    }

    public CompatiblePosition addV2Position(int i) {
        this.v2PositionList.add(Integer.valueOf(i));
        return this;
    }

    public PinPosition getEnd() {
        return this.end;
    }

    public List<Integer> getEndXpathV2() {
        return this.endXpathV2;
    }

    public PinPosition getPageStart() {
        return this.pageStart;
    }

    public PositionType getPositionType() {
        return this.positionType;
    }

    public PositionVersion getPositionVersion() {
        return this.positionVersion;
    }

    public PinPosition getStart() {
        return this.start;
    }

    public List<Integer> getStartXpathV2() {
        return this.startXpathV2;
    }

    public String getText() {
        return this.text;
    }

    public List<Integer> getV2PositionList() {
        return this.v2PositionList;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public CompatiblePosition setEnd(PinPosition pinPosition) {
        this.end = pinPosition;
        return this;
    }

    public CompatiblePosition setEndXpathV2(List<Integer> list) {
        this.endXpathV2 = list;
        return this;
    }

    public CompatiblePosition setPageStart(PinPosition pinPosition) {
        this.pageStart = pinPosition;
        return this;
    }

    public CompatiblePosition setPositionType(PositionType positionType) {
        this.positionType = positionType;
        return this;
    }

    public CompatiblePosition setPositionVersion(PositionVersion positionVersion) {
        this.positionVersion = positionVersion;
        return this;
    }

    public CompatiblePosition setStart(PinPosition pinPosition) {
        this.start = pinPosition;
        return this;
    }

    public CompatiblePosition setStartXpathV2(List<Integer> list) {
        this.startXpathV2 = list;
        return this;
    }

    public CompatiblePosition setSuccess(boolean z) {
        this.success = z;
        return this;
    }

    public CompatiblePosition setText(String str) {
        this.text = str;
        return this;
    }

    public CompatiblePosition setV2PositionList(List<Integer> list) {
        this.v2PositionList = list;
        return this;
    }

    @JSONField(deserialize = false, serialize = false)
    public CompatiblePosition setEndXpathV2(String str) {
        this.endXpathV2 = Utils.toIntXpath(str);
        return this;
    }

    @JSONField(deserialize = false, serialize = false)
    public CompatiblePosition setStartXpathV2(String str) {
        this.startXpathV2 = Utils.toIntXpath(str);
        return this;
    }
}
