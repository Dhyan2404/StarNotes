package com.tencent.cos.xml.model.tag.eventstreaming;

import java.io.Serializable;

/* loaded from: classes10.dex */
public class OutputSerialization implements Serializable, Cloneable {
    private CSVOutput csv;
    private JSONOutput json;

    public OutputSerialization(CSVOutput cSVOutput) {
        this.csv = cSVOutput;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof OutputSerialization)) {
            return false;
        }
        OutputSerialization outputSerialization = (OutputSerialization) obj;
        if ((outputSerialization.getCsv() == null) ^ (getCsv() == null)) {
            return false;
        }
        if (outputSerialization.getCsv() != null && !outputSerialization.getCsv().equals(getCsv())) {
            return false;
        }
        if ((outputSerialization.getJson() == null) ^ (getJson() == null)) {
            return false;
        }
        return outputSerialization.getJson() == null || outputSerialization.getJson().equals(getJson());
    }

    public CSVOutput getCsv() {
        return this.csv;
    }

    public JSONOutput getJson() {
        return this.json;
    }

    public int hashCode() {
        return (((getCsv() == null ? 0 : getCsv().hashCode()) + 31) * 31) + (getJson() != null ? getJson().hashCode() : 0);
    }

    public void setCsv(CSVOutput cSVOutput) {
        this.csv = cSVOutput;
    }

    public void setJson(JSONOutput jSONOutput) {
        this.json = jSONOutput;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getCsv() != null) {
            sb.append("CSV: ");
            sb.append(getCsv());
        }
        if (getJson() != null) {
            sb.append("JSON: ");
            sb.append(getJson());
        }
        sb.append("}");
        return sb.toString();
    }

    public OutputSerialization withCsv(CSVOutput cSVOutput) {
        setCsv(cSVOutput);
        return this;
    }

    public OutputSerialization withJson(JSONOutput jSONOutput) {
        setJson(jSONOutput);
        return this;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public OutputSerialization m72435clone() {
        try {
            return (OutputSerialization) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new IllegalStateException("Got a CloneNotSupportedException from Object.clone() even though we're Cloneable!", e);
        }
    }

    public OutputSerialization(JSONOutput jSONOutput) {
        this.json = jSONOutput;
    }
}
