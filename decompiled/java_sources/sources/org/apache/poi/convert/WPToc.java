package org.apache.poi.convert;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes12.dex */
public class WPToc {
    private List<WPToc> children;
    private int level;
    private WPToc parent;
    private String point;
    private int position;
    private String title;

    public WPToc() {
    }

    public void addChild(WPToc wPToc) {
        if (this.children == null) {
            this.children = new ArrayList();
        }
        this.children.add(wPToc);
        wPToc.setParent(this);
    }

    public List<WPToc> getChildren() {
        return this.children;
    }

    public int getLevel() {
        return this.level;
    }

    public WPToc getParent() {
        return this.parent;
    }

    public String getPoint() {
        return this.point;
    }

    public int getPosition() {
        return this.position;
    }

    public String getTitle() {
        return this.title;
    }

    public boolean hasChild() {
        List<WPToc> list = this.children;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public WPToc lastChild() {
        if (!hasChild()) {
            return null;
        }
        return this.children.get(r1.size() - 1);
    }

    public void setChildren(List<WPToc> list) {
        this.children = list;
    }

    public void setLevel(int i) {
        this.level = i;
    }

    public void setParent(WPToc wPToc) {
        this.parent = wPToc;
    }

    public void setPoint(String str) {
        this.point = str;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public WPToc(String str, String str2, int i, int i2) {
        this.title = str;
        this.point = str2;
        this.position = i;
        this.level = i2;
    }
}
