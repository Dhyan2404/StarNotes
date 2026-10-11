package com.sunia.commonv2.bean;

import java.util.ArrayList;
import java.util.List;
import org.mortbay.jetty.HttpMethods;

/* loaded from: classes10.dex */
public class HWEPointV3 {
    private long mId;
    private List<Point> mPoints = new ArrayList();

    /* loaded from: classes10.dex */
    public static class Point {
        private String eventType;

        /* renamed from: x */
        private float f92487x;

        /* renamed from: y */
        private float f92488y;

        public int getAction() {
            if (isDown()) {
                return 0;
            }
            return isUp() ? 1 : 2;
        }

        public float getX() {
            return this.f92487x;
        }

        public float getY() {
            return this.f92488y;
        }

        public boolean isDown() {
            return "DOWN".equals(this.eventType);
        }

        public boolean isMove() {
            return HttpMethods.MOVE.equals(this.eventType);
        }

        public boolean isUp() {
            return "UP".equals(this.eventType);
        }
    }

    public List<Point> getPointRecords() {
        return this.mPoints;
    }
}
