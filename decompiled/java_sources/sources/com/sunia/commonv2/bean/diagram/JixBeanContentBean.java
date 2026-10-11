package com.sunia.commonv2.bean.diagram;

import java.util.List;

@Deprecated
/* loaded from: classes10.dex */
public class JixBeanContentBean {
    private List<JixBeanContentBean> elements;
    private List<LinesBean> lines;
    private String type;
    private String version;

    /* loaded from: classes10.dex */
    public static class LinesBean {
        private List<PointsBean> points;

        public List<PointsBean> getPoints() {
            return this.points;
        }

        public void setPoints(List<PointsBean> list) {
            this.points = list;
        }
    }

    /* loaded from: classes10.dex */
    public static class PointsBean {

        /* renamed from: t */
        private int f92493t;

        /* renamed from: x */
        private double f92494x;

        /* renamed from: y */
        private double f92495y;

        public int getT() {
            return this.f92493t;
        }

        public double getX() {
            return this.f92494x;
        }

        public double getY() {
            return this.f92495y;
        }

        public void setT(int i) {
            this.f92493t = i;
        }

        public void setX(double d) {
            this.f92494x = d;
        }

        public void setY(double d) {
            this.f92495y = d;
        }
    }

    public List<JixBeanContentBean> getElements() {
        return this.elements;
    }

    public List<LinesBean> getLines() {
        return this.lines;
    }

    public String getType() {
        return this.type;
    }

    public String getVersion() {
        return this.version;
    }

    public void setElements(List<JixBeanContentBean> list) {
        this.elements = list;
    }

    public void setLines(List<LinesBean> list) {
        this.lines = list;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
