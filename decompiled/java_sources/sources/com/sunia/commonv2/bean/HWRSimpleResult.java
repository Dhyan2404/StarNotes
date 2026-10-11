package com.sunia.commonv2.bean;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes10.dex */
public class HWRSimpleResult {
    private String contentJson;

    /* renamed from: id */
    private long f92489id;
    private List<SingleResult> singleResultList = new ArrayList();
    private String type;

    /* loaded from: classes10.dex */
    public static class SingleResult {
        private String candidate = "";
        private double correctRate = 0.0d;
        private int validityCorrectRates;

        public String getCandidate() {
            return this.candidate;
        }

        public double getCorrectRate() {
            return this.correctRate;
        }

        public int getValidityCorrectRates() {
            return this.validityCorrectRates;
        }

        public void setCandidate(String str) {
            this.candidate = str;
        }

        public void setCorrectRate(double d) {
            this.correctRate = d;
        }

        public void setValidityCorrectRates(int i) {
            this.validityCorrectRates = i;
        }
    }

    public HWRSimpleResult(String str, long j, String str2) {
        this.contentJson = str;
        this.f92489id = j;
        this.type = str2;
    }

    public String getContentJson() {
        return this.contentJson;
    }

    public List<SingleResult> getSingleResultList() {
        return this.singleResultList;
    }
}
