package com.sunia.commonv2.bean;

import com.sunia.HTREnginev2.sdk.RecognizePath;
import java.util.List;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes10.dex */
public class RecognizeExampleBean {
    private String example;
    private String expand = "";
    private String language;
    private List<RecognizePath> recognizePaths;
    private String version;

    public RecognizeExampleBean() {
    }

    public String getExample() {
        return this.example;
    }

    public String getExpand() {
        return this.expand;
    }

    public String getLanguage() {
        return this.language;
    }

    public List<RecognizePath> getRecognizePaths() {
        return this.recognizePaths;
    }

    public String getVersion() {
        return this.version;
    }

    public void setExample(String str) {
        this.example = str;
    }

    public void setExpand(String str) {
        this.expand = str;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setRecognizePaths(List<RecognizePath> list) {
        this.recognizePaths = list;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "RecognizeExampleBean{example='" + this.example + Chars.QUOTE + ", language='" + this.language + Chars.QUOTE + ", version='" + this.version + Chars.QUOTE + ", recognizePaths=" + this.recognizePaths + ", expand='" + this.expand + Chars.QUOTE + '}';
    }

    public RecognizeExampleBean(String str, String str2, String str3, List<RecognizePath> list) {
        this.example = str;
        this.language = str2;
        this.version = str3;
        this.recognizePaths = list;
    }
}
