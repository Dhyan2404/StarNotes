package com.sunia.commonv2.bean;

import com.sunia.HTREnginev2.sdk.RecognizePathExt;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes10.dex */
public class HWEPointV2 {
    private List<PointRecord> pointRecords = new ArrayList();
    private List<RecognizePathExt> recognizePathExtList = new ArrayList();

    /* loaded from: classes10.dex */
    public static class PointRecord {
        private int action;
        private float axisOrientation;
        private float axisTilt;
        private long eventTime;
        private float pressure;

        /* renamed from: x */
        private float f92485x;

        /* renamed from: y */
        private float f92486y;

        public int getAction() {
            return this.action;
        }

        public float getAxisOrientation() {
            return this.axisOrientation;
        }

        public float getAxisTilt() {
            return this.axisTilt;
        }

        public long getEventTime() {
            return this.eventTime;
        }

        public float getPressure() {
            return this.pressure;
        }

        public float getX() {
            return this.f92485x;
        }

        public float getY() {
            return this.f92486y;
        }

        public boolean isDown() {
            return this.action == 0;
        }

        public boolean isMove() {
            return this.action == 2;
        }

        public boolean isUp() {
            return this.action == 1;
        }

        public void setAction(int i) {
            this.action = i;
        }

        public void setEventTime(long j) {
            this.eventTime = j;
        }

        public void setPressure(float f) {
            this.pressure = f;
        }

        public void setX(float f) {
            this.f92485x = f;
        }

        public void setY(float f) {
            this.f92486y = f;
        }
    }

    public List<PointRecord> getPointRecords() {
        return this.pointRecords;
    }

    public List<RecognizePathExt> getRecognizePathExtList() {
        return this.recognizePathExtList;
    }
}
