package com.sunia.commonv2.bean;

import com.sunia.commonv2.exception.NAICheckException;
import com.sunia.commonv2.util.HWRUtil;
import java.util.ArrayList;
import java.util.List;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes10.dex */
public class NAICheckResult {
    private NAICheckException naiCheckException;
    private List<OneChar> result = new ArrayList();

    /* loaded from: classes10.dex */
    public static class OneChar {
        private String str;
        private int support;

        public String getStr() {
            return this.str;
        }

        public int getSupport() {
            return this.support;
        }

        public String toString() {
            return "OneChar{str='" + this.str + Chars.QUOTE + ", support=" + this.support + '}';
        }
    }

    public NAICheckException getException() {
        return this.naiCheckException;
    }

    public List<OneChar> getResult() {
        return this.result;
    }

    public boolean isSuccess() {
        return HWRUtil.isEmpty(this.naiCheckException);
    }

    public void setException(NAICheckException nAICheckException) {
        this.naiCheckException = nAICheckException;
    }

    public String toString() {
        return "NAICheckResult{result=" + this.result + ", naiCheckException=" + this.naiCheckException + '}';
    }
}
