package com.onyx.engine.sdk;

import android.util.Log;
import com.alibaba.fastjson2.TypeReference;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.engine.sdk.PinPosition;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.function.Supplier;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes8.dex */
public class PinPosition {
    int chapterEndPosition;
    String chapterID;
    int chapterIndex;
    int chapterStartPosition;
    int nodePosition;

    @JSONField(alternateNames = {"textEndOffset"})
    int textOffset;
    List<Integer> xpath;
    public static DecimalFormat format = new DecimalFormat("0000000000", DecimalFormatSymbols.getInstance(Locale.US));
    public static int INVALID_POSITION_INT = -1;

    public PinPosition() {
    }

    public static PinPosition fromJson(String str) {
        return (PinPosition) JsonUtils.fromJson(str, PinPosition.class, new Supplier() { // from class: com.sunia.HTREnginev2.c4l
            @Override // java.util.function.Supplier
            public final Object get() {
                return new PinPosition();
            }
        });
    }

    public static List<PinPosition> parseList(String str) {
        List<PinPosition> list = (List) JsonUtils.fromJson(str, new TypeReference<List<PinPosition>>() { // from class: com.onyx.engine.sdk.PinPosition.1
        }.getType());
        if (list != null) {
            return list;
        }
        Log.e(PinPosition.class.getSimpleName(), "parse Position list failed, json: " + str);
        return Collections.emptyList();
    }

    public int compare(PinPosition pinPosition) {
        int i;
        int chapterIndex;
        if (this.chapterIndex == pinPosition.getChapterIndex()) {
            i = getDocumentPositionInt();
            chapterIndex = pinPosition.getDocumentPositionInt();
        } else {
            i = this.chapterIndex;
            chapterIndex = pinPosition.getChapterIndex();
        }
        return i - chapterIndex;
    }

    public void copy(PinPosition pinPosition) {
        copyChapterPosition(pinPosition);
        this.nodePosition = pinPosition.nodePosition;
        this.textOffset = pinPosition.textOffset;
        this.xpath = Utils.copyXpath(pinPosition.xpath);
    }

    public void copyChapterPosition(PinPosition pinPosition) {
        this.chapterID = pinPosition.chapterID;
        this.chapterIndex = pinPosition.chapterIndex;
        this.chapterStartPosition = pinPosition.chapterStartPosition;
        this.chapterEndPosition = pinPosition.chapterEndPosition;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PinPosition pinPosition = (PinPosition) obj;
        return this.chapterIndex == pinPosition.chapterIndex && this.chapterStartPosition == pinPosition.chapterStartPosition && this.chapterEndPosition == pinPosition.chapterEndPosition && this.nodePosition == pinPosition.nodePosition && this.textOffset == pinPosition.textOffset && Objects.equals(this.chapterID, pinPosition.chapterID) && Objects.equals(this.xpath, pinPosition.xpath);
    }

    public int getChapterEndPosition() {
        return this.chapterEndPosition;
    }

    public String getChapterID() {
        return this.chapterID;
    }

    public int getChapterIndex() {
        return this.chapterIndex;
    }

    @JSONField(deserialize = false, serialize = false)
    public int getChapterLength() {
        return this.chapterEndPosition - this.chapterStartPosition;
    }

    public int getChapterStartPosition() {
        return this.chapterStartPosition;
    }

    @JSONField(deserialize = false, serialize = false)
    public int getDocumentPositionInt() {
        return isInvalid() ? INVALID_POSITION_INT : Math.min(this.nodePosition + this.textOffset, this.chapterEndPosition - this.chapterStartPosition);
    }

    public int getNodePosition() {
        return this.nodePosition;
    }

    @JSONField(deserialize = false, serialize = false)
    public int getPositionInt() {
        return isInvalid() ? INVALID_POSITION_INT : Math.min(this.chapterStartPosition + this.nodePosition + this.textOffset, this.chapterEndPosition);
    }

    @JSONField(deserialize = false, serialize = false)
    public int getPositionIntWithoutOffset() {
        return isInvalid() ? INVALID_POSITION_INT : this.chapterStartPosition + this.nodePosition;
    }

    public int getTextOffset() {
        return this.textOffset;
    }

    public List<Integer> getXpath() {
        return this.xpath;
    }

    @JSONField(deserialize = false, serialize = false)
    public String getXpathString() {
        return Utils.toXpathString(this.xpath);
    }

    public int hashCode() {
        return Objects.hash(this.chapterID, Integer.valueOf(this.chapterIndex), Integer.valueOf(this.chapterStartPosition), Integer.valueOf(this.chapterEndPosition), Integer.valueOf(this.nodePosition), Integer.valueOf(this.textOffset), this.xpath);
    }

    @JSONField(deserialize = false, serialize = false)
    public boolean isChapterEnd() {
        return this.chapterEndPosition > 0 && this.nodePosition + this.textOffset >= getChapterLength();
    }

    @JSONField(deserialize = false, serialize = false)
    public boolean isChapterStart() {
        return this.nodePosition == 0 && this.textOffset == 0;
    }

    @JSONField(deserialize = false, serialize = false)
    public boolean isInvalid() {
        return this.chapterIndex < 0 || this.chapterEndPosition <= 0;
    }

    public PinPosition setChapterEndPosition(int i) {
        this.chapterEndPosition = i;
        return this;
    }

    public PinPosition setChapterID(String str) {
        this.chapterID = str;
        return this;
    }

    public PinPosition setChapterIndex(int i) {
        this.chapterIndex = i;
        return this;
    }

    public PinPosition setChapterStartPosition(int i) {
        this.chapterStartPosition = i;
        return this;
    }

    public PinPosition setNodePosition(int i) {
        this.nodePosition = i;
        return this;
    }

    public PinPosition setTextOffset(int i) {
        this.textOffset = i;
        return this;
    }

    public PinPosition setXpath(List<Integer> list) {
        this.xpath = list;
        return this;
    }

    public String toCompareJson() {
        StringBuilder sb = new StringBuilder();
        sb.append("{\"chapterIndex\":");
        sb.append(format.format(this.chapterIndex));
        sb.append(",\"nodePosition\":");
        sb.append(format.format(this.nodePosition));
        sb.append(",\"textOffset\":");
        sb.append(format.format(this.textOffset));
        sb.append(",\"chapterStartPosition\":");
        sb.append(format.format(this.chapterStartPosition));
        sb.append(",\"chapterEndPosition\":");
        sb.append(format.format(this.chapterEndPosition));
        sb.append(",\"chapterID\":\"");
        sb.append(this.chapterID);
        sb.append("\",\"xpath\":");
        List<Integer> list = this.xpath;
        if (list == null) {
            list = Collections.emptyList();
        }
        sb.append(JsonUtils.toJson(list));
        sb.append("}");
        return sb.toString();
    }

    public String toJson() {
        return JsonUtils.toJson(this);
    }

    public String toString() {
        return "Position{chapterID='" + this.chapterID + Chars.QUOTE + ", chapterIndex=" + this.chapterIndex + ", chapterStartPosition=" + this.chapterStartPosition + ", chapterEndPosition=" + this.chapterEndPosition + ", nodePosition=" + this.nodePosition + ", textOffset=" + this.textOffset + ", xpath=" + this.xpath + '}';
    }

    public PinPosition(Chapter chapter) {
        if (chapter != null) {
            this.chapterID = chapter.getChapterId();
            this.chapterIndex = chapter.getPlayOrder();
            this.chapterStartPosition = chapter.getStartPos();
            this.chapterEndPosition = chapter.getEndPos();
        }
    }

    @JSONField(deserialize = false, serialize = false)
    public PinPosition setXpath(String str) {
        this.xpath = Utils.toIntXpath(str);
        return this;
    }

    public PinPosition copy() {
        PinPosition pinPosition = new PinPosition();
        pinPosition.copy(this);
        return pinPosition;
    }

    public PinPosition copyChapterPosition() {
        PinPosition pinPosition = new PinPosition();
        pinPosition.copyChapterPosition(this);
        return pinPosition;
    }
}
