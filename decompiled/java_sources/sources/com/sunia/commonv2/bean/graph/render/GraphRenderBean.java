package com.sunia.commonv2.bean.graph.render;

import com.sunia.commonv2.callback.INoProguard;
import java.util.Arrays;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes10.dex */
public class GraphRenderBean implements INoProguard {
    private float[] boundBox;
    private long engine;
    private float[] metrics;
    private int nodeID;
    private int param;
    private int parentID;
    private float[] pbb;
    private String strText;
    private int type;

    public GraphRenderBean(long j, int i, String str, float[] fArr, int i2, int i3, float[] fArr2, int i4, float[] fArr3) {
        this.engine = j;
        this.type = i;
        this.strText = str;
        this.boundBox = fArr;
        this.nodeID = i2;
        this.parentID = i3;
        this.pbb = fArr2;
        this.param = i4;
        this.metrics = fArr3;
    }

    public float[] getBoundBox() {
        return this.boundBox;
    }

    public long getEngine() {
        return this.engine;
    }

    public float[] getMetrics() {
        return this.metrics;
    }

    public int getNodeID() {
        return this.nodeID;
    }

    public int getParam() {
        return this.param;
    }

    public int getParentID() {
        return this.parentID;
    }

    public float[] getPbb() {
        return this.pbb;
    }

    public String getStrText() {
        return this.strText;
    }

    public int getType() {
        return this.type;
    }

    public String toString() {
        return "GraphRenderBean{engine=" + this.engine + ", type=" + this.type + ", strText='" + this.strText + Chars.QUOTE + ", boundBox=" + Arrays.toString(this.boundBox) + ", nodeID=" + this.nodeID + ", parentID=" + this.parentID + ", pbb=" + Arrays.toString(this.pbb) + ", param=" + this.param + ", metrics=" + Arrays.toString(this.metrics) + '}';
    }
}
