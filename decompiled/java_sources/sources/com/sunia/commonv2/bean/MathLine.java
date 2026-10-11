package com.sunia.commonv2.bean;

import java.util.List;

/* loaded from: classes10.dex */
public class MathLine {
    private String decimalResult;
    private String improperFraction;
    private String improperFractionResult;
    private List<MathLabels> improperFraction_mathLabels;
    private String label;
    private List<MathLabels> mathLabels;
    private String properFraction;
    private String properFractionResult;
    private List<MathLabels> properFraction_mathLabels;
    private int resultCode;

    public String getDecimalResult() {
        return this.decimalResult;
    }

    public String getImproperFraction() {
        return this.improperFraction;
    }

    public String getImproperFractionResult() {
        return this.improperFractionResult;
    }

    public List<MathLabels> getImproperFraction_mathLabels() {
        return this.improperFraction_mathLabels;
    }

    public String getLabel() {
        return this.label;
    }

    public List<MathLabels> getMathLabels() {
        return this.mathLabels;
    }

    public String getProperFraction() {
        return this.properFraction;
    }

    public String getProperFractionResult() {
        return this.properFractionResult;
    }

    public List<MathLabels> getProperFraction_mathLabels() {
        return this.properFraction_mathLabels;
    }

    public int getResultCode() {
        return this.resultCode;
    }

    public void setDecimalResult(String str) {
        this.decimalResult = str;
    }

    public void setImproperFraction(String str) {
        this.improperFraction = str;
    }

    public void setImproperFractionResult(String str) {
        this.improperFractionResult = str;
    }

    public void setImproperFraction_mathLabels(List<MathLabels> list) {
        this.improperFraction_mathLabels = list;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setMathLabels(List<MathLabels> list) {
        this.mathLabels = list;
    }

    public void setProperFraction(String str) {
        this.properFraction = str;
    }

    public void setProperFractionResult(String str) {
        this.properFractionResult = str;
    }

    public void setProperFraction_mathLabels(List<MathLabels> list) {
        this.properFraction_mathLabels = list;
    }

    public void setResultCode(int i) {
        this.resultCode = i;
    }
}
