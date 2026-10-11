package com.onyx.engine.sdk;

import android.graphics.RectF;
import com.alibaba.fastjson2.TypeReference;
import com.alibaba.fastjson2.annotation.JSONField;
import java.util.Collections;
import java.util.List;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes8.dex */
public class LinkInfo {
    private String anchor;
    private String basePath;
    private String href;

    @JSONField(serialize = false)
    private int nodePosition;

    @JSONField(serialize = false)
    private PinPosition position;
    private Protocol protocol = Protocol.UNKNOWN;

    @JSONField(serialize = false)
    private RectF rect;
    private LinkTarget target;

    @JSONField(serialize = false)
    private String text;

    @JSONField(serialize = false)
    private WritingMode writingMode;

    @JSONField(serialize = false)
    private String xpath;

    public static List<LinkInfo> parseList(String str) {
        List<LinkInfo> list = (List) JsonUtils.fromJson(str, new TypeReference<List<LinkInfo>>() { // from class: com.onyx.engine.sdk.LinkInfo.1
        }.getType());
        return list == null ? Collections.emptyList() : list;
    }

    public static void setLinkPosition(List<LinkInfo> list, PinPosition pinPosition) {
        if (list == null || pinPosition == null) {
            return;
        }
        for (LinkInfo linkInfo : list) {
            PinPosition copyChapterPosition = pinPosition.copyChapterPosition();
            copyChapterPosition.setXpath(linkInfo.getXpath());
            copyChapterPosition.setNodePosition(linkInfo.getNodePosition());
            linkInfo.setPosition(copyChapterPosition);
        }
    }

    public String getAnchor() {
        return this.anchor;
    }

    public String getBasePath() {
        return this.basePath;
    }

    public String getHref() {
        return this.href;
    }

    public int getNodePosition() {
        return this.nodePosition;
    }

    public PinPosition getPosition() {
        return this.position;
    }

    public Protocol getProtocol() {
        return this.protocol;
    }

    public RectF getRect() {
        return this.rect;
    }

    public LinkTarget getTarget() {
        return this.target;
    }

    public String getText() {
        return this.text;
    }

    public WritingMode getWritingMode() {
        return this.writingMode;
    }

    public String getXpath() {
        return this.xpath;
    }

    @JSONField(deserialize = false, serialize = false)
    public boolean isInvalidTarget() {
        LinkTarget linkTarget = this.target;
        return linkTarget == null || linkTarget.isInvalid();
    }

    public LinkInfo setAnchor(String str) {
        this.anchor = str;
        return this;
    }

    public LinkInfo setBasePath(String str) {
        this.basePath = str;
        return this;
    }

    public LinkInfo setHref(String str) {
        this.href = str;
        return this;
    }

    public LinkInfo setNodePosition(int i) {
        this.nodePosition = i;
        return this;
    }

    public LinkInfo setPosition(PinPosition pinPosition) {
        this.position = pinPosition;
        return this;
    }

    public LinkInfo setProtocol(Protocol protocol) {
        this.protocol = protocol;
        return this;
    }

    public LinkInfo setRect(RectF rectF) {
        this.rect = rectF;
        return this;
    }

    public LinkInfo setTarget(LinkTarget linkTarget) {
        this.target = linkTarget;
        return this;
    }

    public LinkInfo setText(String str) {
        this.text = str;
        return this;
    }

    public LinkInfo setWritingMode(WritingMode writingMode) {
        this.writingMode = writingMode;
        return this;
    }

    public LinkInfo setXpath(String str) {
        this.xpath = str;
        return this;
    }

    public String toString() {
        return "LinkInfo{rect=" + this.rect + ", href='" + this.href + Chars.QUOTE + ", anchor='" + this.anchor + Chars.QUOTE + ", basePath='" + this.basePath + Chars.QUOTE + ", text='" + this.text + Chars.QUOTE + ", xpath='" + this.xpath + Chars.QUOTE + ", writingMode=" + this.writingMode + ", target=" + this.target + ", position=" + this.position + ", nodePosition=" + this.nodePosition + '}';
    }

    public LinkInfo setProtocol(int i) {
        this.protocol = Protocol.valueOf(i);
        return this;
    }
}
