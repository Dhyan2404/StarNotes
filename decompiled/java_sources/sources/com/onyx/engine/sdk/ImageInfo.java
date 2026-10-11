package com.onyx.engine.sdk;

import android.graphics.RectF;
import com.alibaba.fastjson2.TypeReference;
import com.alibaba.fastjson2.annotation.JSONField;
import java.util.Collections;
import java.util.List;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes8.dex */
public class ImageInfo {
    private boolean backgroundImage;
    private String baseUrl;
    private String footNote;
    private String format;
    private boolean link;
    private int nodePosition;
    private PinPosition position;
    private RectF rect;
    private String textAlign;
    private ImageInfoType type = ImageInfoType.NORMAL;
    private String url;
    private String xpath;

    public static ImageInfo fromJson(String str) {
        return (ImageInfo) JsonUtils.fromJson(str, ImageInfo.class);
    }

    public static List<ImageInfo> parseList(String str) {
        List<ImageInfo> list = (List) JsonUtils.fromJson(str, new TypeReference<List<ImageInfo>>() { // from class: com.onyx.engine.sdk.ImageInfo.1
        }.getType());
        return list == null ? Collections.emptyList() : list;
    }

    public static void setImagePosition(List<ImageInfo> list, PinPosition pinPosition) {
        if (list == null || pinPosition == null) {
            return;
        }
        for (ImageInfo imageInfo : list) {
            PinPosition copyChapterPosition = pinPosition.copyChapterPosition();
            copyChapterPosition.setXpath(imageInfo.getXpath());
            copyChapterPosition.setNodePosition(imageInfo.getNodePosition());
            imageInfo.setPosition(copyChapterPosition);
        }
    }

    public String getBaseUrl() {
        return this.baseUrl;
    }

    public String getFootNote() {
        return this.footNote;
    }

    public String getFormat() {
        return this.format;
    }

    public int getNodePosition() {
        return this.nodePosition;
    }

    public PinPosition getPosition() {
        return this.position;
    }

    public RectF getRect() {
        return this.rect;
    }

    public String getTextAlign() {
        return this.textAlign;
    }

    public ImageInfoType getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public String getXpath() {
        return this.xpath;
    }

    @JSONField(deserialize = false, serialize = false)
    public boolean isAudioType() {
        return this.type == ImageInfoType.AUDIO;
    }

    public boolean isBackgroundImage() {
        return this.backgroundImage;
    }

    public boolean isLink() {
        return this.link;
    }

    @JSONField(deserialize = false, serialize = false)
    public boolean isVideoType() {
        return this.type == ImageInfoType.VIDEO;
    }

    public ImageInfo setBackgroundImage(boolean z) {
        this.backgroundImage = z;
        return this;
    }

    public ImageInfo setBaseUrl(String str) {
        this.baseUrl = str;
        return this;
    }

    public ImageInfo setFootNote(String str) {
        this.footNote = str;
        return this;
    }

    public ImageInfo setFormat(String str) {
        this.format = str;
        return this;
    }

    public ImageInfo setLink(boolean z) {
        this.link = z;
        return this;
    }

    public ImageInfo setNodePosition(int i) {
        this.nodePosition = i;
        return this;
    }

    public ImageInfo setPosition(PinPosition pinPosition) {
        this.position = pinPosition;
        return this;
    }

    public ImageInfo setRect(RectF rectF) {
        this.rect = rectF;
        return this;
    }

    public ImageInfo setTextAlign(String str) {
        this.textAlign = str;
        return this;
    }

    public ImageInfo setType(ImageInfoType imageInfoType) {
        this.type = imageInfoType;
        return this;
    }

    public ImageInfo setUrl(String str) {
        this.url = str;
        return this;
    }

    public ImageInfo setXpath(String str) {
        this.xpath = str;
        return this;
    }

    public String toString() {
        return "ImageInfo{rect=" + this.rect + ", baseUrl='" + this.baseUrl + Chars.QUOTE + ", url='" + this.url + Chars.QUOTE + ", xpath='" + this.xpath + Chars.QUOTE + ", format='" + this.format + Chars.QUOTE + ", footNote='" + this.footNote + Chars.QUOTE + ", textAlign='" + this.textAlign + Chars.QUOTE + ", type='" + this.type + Chars.QUOTE + ", position=" + this.position + ", nodePosition=" + this.nodePosition + ", backgroundImage=" + this.backgroundImage + ", link=" + this.link + '}';
    }

    public ImageInfo setType(int i) {
        this.type = ImageInfoType.valueOf(i);
        return this;
    }
}
