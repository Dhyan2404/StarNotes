package com.onyx.engine.sdk;

import android.util.Log;
import com.alibaba.fastjson2.TypeReference;
import com.alibaba.fastjson2.annotation.JSONField;
import java.util.Collections;
import java.util.List;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes8.dex */
public class LinkTarget {
    PinPosition position;
    String text;
    LinkType linkType = LinkType.NOT_LOADED;
    boolean display = true;

    public static LinkTarget fromJson(String str) {
        LinkTarget linkTarget = (LinkTarget) JsonUtils.fromJson(str, LinkTarget.class);
        return linkTarget == null ? new LinkTarget() : linkTarget;
    }

    public static List<LinkTarget> parseList(String str) {
        List<LinkTarget> list = (List) JsonUtils.fromJson(str, new TypeReference<List<LinkTarget>>() { // from class: com.onyx.engine.sdk.LinkTarget.1
        }.getType());
        if (list != null) {
            return list;
        }
        Log.e(PinPosition.class.getSimpleName(), "parse LinkTarget list failed, json: " + str);
        return Collections.emptyList();
    }

    public LinkType getLinkType() {
        return this.linkType;
    }

    public PinPosition getPosition() {
        return this.position;
    }

    @JSONField(deserialize = false, serialize = false)
    public int getPositionInt() {
        PinPosition pinPosition = this.position;
        return pinPosition == null ? PinPosition.INVALID_POSITION_INT : pinPosition.getPositionInt();
    }

    public String getText() {
        return this.text;
    }

    public boolean isDisplay() {
        return this.display;
    }

    @JSONField(deserialize = false, serialize = false)
    public boolean isInvalid() {
        PinPosition pinPosition = this.position;
        return pinPosition == null || pinPosition.isInvalid();
    }

    public LinkTarget setDisplay(boolean z) {
        this.display = z;
        return this;
    }

    public LinkTarget setLinkType(LinkType linkType) {
        this.linkType = linkType;
        return this;
    }

    public LinkTarget setPosition(PinPosition pinPosition) {
        this.position = pinPosition;
        return this;
    }

    public LinkTarget setText(String str) {
        this.text = str;
        return this;
    }

    public String toString() {
        return "LinkTarget{linkType=" + this.linkType + ", position=" + this.position + ", display=" + this.display + ", text='" + this.text + Chars.QUOTE + '}';
    }
}
