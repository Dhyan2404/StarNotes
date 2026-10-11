package com.sunia.commonv2.bean.diagram;

import com.google.gson.annotations.SerializedName;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.sunia.commonv2.bean.BoundingBox;
import com.sunia.commonv2.module.CommonModule;
import com.sunia.commonv2.module.ICommonModule;
import com.sunia.commonv2.util.HWRCommonUtil;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes10.dex */
public class JixBeanElementBean {

    @SerializedName(IStyleSheet.CLASS_BOUNDING_BOX)
    private BoundingBox boundingbox;
    private List<JixBeanElementBean> cell;
    private List<String> connected;
    private List<JixBeanElementBean> elements;

    /* renamed from: id */
    private String f92496id;
    private List<Item> items;
    private String kind;
    private String label;
    private String parent;
    private String path;
    private List<Object> ports;
    private String type;
    private List<WordsBean> words;

    /* loaded from: classes10.dex */
    public static class Item {

        @SerializedName(IStyleSheet.CLASS_BOUNDING_BOX)
        private BoundingBox boundingbox;

        /* renamed from: cx */
        private double f92497cx;

        /* renamed from: cy */
        private double f92498cy;
        private List<JixBeanElementBean> elements;

        /* renamed from: id */
        private String f92499id;
        private String kind;
        private String label;
        private double phi;
        private String reco;
        private double rotateAngle;

        /* renamed from: rx */
        private double f92500rx;

        /* renamed from: ry */
        private double f92501ry;
        private double startAngle;
        private double sweepAngle;
        private String type;
        private List<WordsBean> words;

        /* renamed from: x1 */
        private float f92502x1;

        /* renamed from: x2 */
        private float f92503x2;

        /* renamed from: y1 */
        private float f92504y1;

        /* renamed from: y2 */
        private float f92505y2;
        private String endDecoration = "none";
        private String startDecoration = "none";

        public BoundingBox getBoundingbox() {
            return this.boundingbox;
        }

        public double getCx() {
            return this.f92497cx;
        }

        public double getCy() {
            return this.f92498cy;
        }

        public List<JixBeanElementBean> getElements() {
            return this.elements;
        }

        public String getEndDecoration() {
            return this.endDecoration;
        }

        public String getId() {
            return this.f92499id;
        }

        public String getKind() {
            return this.kind;
        }

        public String getLabel() {
            return this.label;
        }

        public double getPhi() {
            return this.phi;
        }

        public String getReco() {
            return this.reco;
        }

        public double getRotateAngle() {
            return this.rotateAngle;
        }

        public double getRx() {
            return this.f92500rx;
        }

        public double getRy() {
            return this.f92501ry;
        }

        public double getStartAngle() {
            return this.startAngle;
        }

        public String getStartDecoration() {
            return this.startDecoration;
        }

        public double getSweepAngle() {
            return this.sweepAngle;
        }

        public String getType() {
            return this.type;
        }

        public List<WordsBean> getWords() {
            return this.words;
        }

        public float getX1() {
            return this.f92502x1;
        }

        public float getX2() {
            return this.f92503x2;
        }

        public float getY1() {
            return this.f92504y1;
        }

        public float getY2() {
            return this.f92505y2;
        }

        public void setBoundingbox(BoundingBox boundingBox) {
            this.boundingbox = boundingBox;
        }

        public void setCx(double d) {
            this.f92497cx = d;
        }

        public void setCy(double d) {
            this.f92498cy = d;
        }

        public void setElements(List<JixBeanElementBean> list) {
            this.elements = list;
        }

        public void setEndDecoration(String str) {
            this.endDecoration = str;
        }

        public void setId(String str) {
            this.f92499id = str;
        }

        public void setKind(String str) {
            this.kind = str;
        }

        public void setLabel(String str) {
            this.label = str;
        }

        public void setPhi(double d) {
            this.phi = d;
        }

        public void setReco(String str) {
            this.reco = str;
        }

        public void setRotateAngle(double d) {
            this.rotateAngle = d;
        }

        public void setRx(double d) {
            this.f92500rx = d;
        }

        public void setRy(double d) {
            this.f92501ry = d;
        }

        public void setStartAngle(double d) {
            this.startAngle = d;
        }

        public void setStartDecoration(String str) {
            this.startDecoration = str;
        }

        public void setSweepAngle(double d) {
            this.sweepAngle = d;
        }

        public void setType(String str) {
            this.type = str;
        }

        public void setWords(List<WordsBean> list) {
            this.words = list;
        }

        public void setX1(float f) {
            this.f92502x1 = f;
        }

        public void setX2(float f) {
            this.f92503x2 = f;
        }

        public void setY1(float f) {
            this.f92504y1 = f;
        }

        public void setY2(float f) {
            this.f92505y2 = f;
        }
    }

    /* loaded from: classes10.dex */
    public static class WordsBean {

        @SerializedName(IStyleSheet.CLASS_BOUNDING_BOX)
        private BoundingBox boundingbox;
        private List<String> candidates;
        private String label;

        public BoundingBox getBoundingbox() {
            return this.boundingbox;
        }

        public List<String> getCandidates() {
            return this.candidates;
        }

        public String getLabel() {
            return this.label;
        }

        public void setBoundingbox(BoundingBox boundingBox) {
            this.boundingbox = boundingBox;
        }

        public void setCandidates(List<String> list) {
            this.candidates = list;
        }

        public void setLabel(String str) {
            this.label = str;
        }
    }

    public BoundingBox getBoundingbox() {
        return this.boundingbox;
    }

    public List<JixBeanElementBean> getCell() {
        return this.cell;
    }

    public List<String> getConnected() {
        return this.connected;
    }

    public List<JixBeanElementBean> getElements() {
        return this.elements;
    }

    public String getId() {
        return this.f92496id;
    }

    public List<Item> getItems() {
        return this.items;
    }

    public String getKind() {
        return this.kind;
    }

    public String getLabel() {
        return this.label;
    }

    public String getParent() {
        return this.parent;
    }

    public String getPath() {
        return this.path;
    }

    public List<Float> getPoints() {
        ArrayList arrayList = new ArrayList();
        ICommonModule commonModule = CommonModule.getCommonModule();
        for (int i = 0; i < this.items.size(); i++) {
            Item item = this.items.get(i);
            float mmToPx = HWRCommonUtil.mmToPx(commonModule, item.getX1());
            float mmToPx2 = HWRCommonUtil.mmToPx(commonModule, item.getY1());
            float mmToPx3 = HWRCommonUtil.mmToPx(commonModule, item.getX2());
            float mmToPx4 = HWRCommonUtil.mmToPx(commonModule, item.getY2());
            if (!arrayList.contains(Float.valueOf(mmToPx))) {
                arrayList.add(Float.valueOf(mmToPx));
            }
            if (!arrayList.contains(Float.valueOf(mmToPx2))) {
                arrayList.add(Float.valueOf(mmToPx2));
            }
            if (!arrayList.contains(Float.valueOf(mmToPx3))) {
                arrayList.add(Float.valueOf(mmToPx3));
            }
            if (!arrayList.contains(Float.valueOf(mmToPx4))) {
                arrayList.add(Float.valueOf(mmToPx4));
            }
        }
        return arrayList;
    }

    public List<Object> getPorts() {
        return this.ports;
    }

    public String getType() {
        return this.type;
    }

    public List<WordsBean> getWords() {
        return this.words;
    }

    public void setBoundingbox(BoundingBox boundingBox) {
        this.boundingbox = boundingBox;
    }

    public void setCell(List<JixBeanElementBean> list) {
        this.cell = list;
    }

    public void setConnected(List<String> list) {
        this.connected = list;
    }

    public void setElements(List<JixBeanElementBean> list) {
        this.elements = list;
    }

    public void setId(String str) {
        this.f92496id = str;
    }

    public void setItems(List<Item> list) {
        this.items = list;
    }

    public void setKind(String str) {
        this.kind = str;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setParent(String str) {
        this.parent = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setPorts(List<Object> list) {
        this.ports = list;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setWords(List<WordsBean> list) {
        this.words = list;
    }
}
