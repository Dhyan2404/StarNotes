package com.sunia.commonv2.bean;

import java.io.Serializable;
import java.util.List;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes10.dex */
public class PartiBean implements Serializable {
    private static final long serialVersionUID = 9189425552866968481L;
    private List<PartieWords> chars;
    private List<Double> groupCorrectRates;
    private List<String> groupcandidates;

    /* renamed from: id */
    private long f92491id;
    private String improperFraction;
    private List<MathLabels> improperFraction_mathLabels;
    private String label;
    private List<BoundingBox> line_box;
    private List<MathLabels> mathLabels;
    private List<MathLine> other_math_lines;
    private String properFraction;
    private List<MathLabels> properFraction_mathLabels;
    private int resultCode;
    private String type;
    private int version;
    private List<PartieWords> words;

    public List<PartieWords> getChars() {
        return this.chars;
    }

    public List<Double> getGroupCorrectRates() {
        return this.groupCorrectRates;
    }

    public List<String> getGroupcandidates() {
        return this.groupcandidates;
    }

    public long getId() {
        return this.f92491id;
    }

    public String getImproperFraction() {
        return this.improperFraction;
    }

    public List<MathLabels> getImproperFraction_mathLabels() {
        return this.improperFraction_mathLabels;
    }

    public String getLabel() {
        return this.label;
    }

    public List<BoundingBox> getLine_box() {
        return this.line_box;
    }

    public List<MathLabels> getMathLabels() {
        return this.mathLabels;
    }

    public List<MathLine> getOther_math_lines() {
        return this.other_math_lines;
    }

    public String getProperFraction() {
        return this.properFraction;
    }

    public List<MathLabels> getProperFraction_mathLabels() {
        return this.properFraction_mathLabels;
    }

    public int getResultCode() {
        return this.resultCode;
    }

    public String getType() {
        return this.type;
    }

    public int getVersion() {
        return this.version;
    }

    public List<PartieWords> getWords() {
        return this.words;
    }

    public void setChars(List<PartieWords> list) {
        this.chars = list;
    }

    public void setGroupcandidates(List<String> list) {
        this.groupcandidates = list;
    }

    public void setId(long j) {
        this.f92491id = j;
    }

    public void setImproperFraction(String str) {
        this.improperFraction = str;
    }

    public void setImproperFraction_mathLabels(List<MathLabels> list) {
        this.improperFraction_mathLabels = list;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setLine_box(List<BoundingBox> list) {
        this.line_box = list;
    }

    public void setMathLabels(List<MathLabels> list) {
        this.mathLabels = list;
    }

    public void setOther_math_lines(List<MathLine> list) {
        this.other_math_lines = list;
    }

    public void setProperFraction(String str) {
        this.properFraction = str;
    }

    public void setProperFraction_mathLabels(List<MathLabels> list) {
        this.properFraction_mathLabels = list;
    }

    public void setResultCode(int i) {
        this.resultCode = i;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setVersion(int i) {
        this.version = i;
    }

    public void setWords(List<PartieWords> list) {
        this.words = list;
    }

    public String toString() {
        return "PartiBean{type='" + this.type + Chars.QUOTE + ", version=" + this.version + ", id=" + this.f92491id + ", label='" + this.label + Chars.QUOTE + ", improperFraction='" + this.improperFraction + Chars.QUOTE + ", properFraction='" + this.properFraction + Chars.QUOTE + ", resultCode=" + this.resultCode + ", words=" + this.words + ", chars=" + this.chars + ", line_box=" + this.line_box + '}';
    }
}
