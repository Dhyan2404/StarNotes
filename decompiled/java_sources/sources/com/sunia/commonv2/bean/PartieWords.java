package com.sunia.commonv2.bean;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.List;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes10.dex */
public class PartieWords implements Serializable {
    private static final long serialVersionUID = -9169297841178215713L;
    private BoundingBox bounding_box;
    private List<String> candidates;
    private double correct_rate;
    private List<Double> correct_rates;
    private int first_char;

    /* renamed from: id */
    private int f92492id;
    private String label;
    private int last_char;

    @SerializedName("stroke_ids")
    private List<Integer> strokeIds;

    public PartieWords(String str, int i) {
        this.label = str;
        this.f92492id = i;
    }

    public BoundingBox getBounding_box() {
        return this.bounding_box;
    }

    public List<String> getCandidates() {
        return this.candidates;
    }

    public double getCorrect_rate() {
        return this.correct_rate;
    }

    public List<Double> getCorrect_rates() {
        return this.correct_rates;
    }

    public int getFirst_char() {
        return this.first_char;
    }

    public int getId() {
        return this.f92492id;
    }

    public String getLabel() {
        return this.label;
    }

    public int getLast_char() {
        return this.last_char;
    }

    public List<Integer> getStrokeIds() {
        return this.strokeIds;
    }

    public void setBounding_box(BoundingBox boundingBox) {
        this.bounding_box = boundingBox;
    }

    public void setCandidates(List<String> list) {
        this.candidates = list;
    }

    public void setCorrect_rate(double d) {
        this.correct_rate = d;
    }

    public void setFirst_char(int i) {
        this.first_char = i;
    }

    public void setId(int i) {
        this.f92492id = i;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setLast_char(int i) {
        this.last_char = i;
    }

    public String toString() {
        return "PartieWords{label='" + this.label + Chars.QUOTE + ", id=" + this.f92492id + ", candidates=" + this.candidates + ", firstChar=" + this.first_char + ", lastChar=" + this.last_char + ", boundingBox=" + this.bounding_box + '}';
    }

    public PartieWords(String str, int i, List<String> list) {
        this.label = str;
        this.f92492id = i;
        this.candidates = list;
    }
}
