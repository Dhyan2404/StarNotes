package com.vivo.trackpredictor.core;

import android.content.Context;
import android.util.Log;
import com.vivo.trackpredictor.utils.CommonUtils;
import com.vivo.trackpredictor.utils.HwPoint;
import java.io.IOException;
import java.util.List;

/* loaded from: classes10.dex */
public class TrackPredCore {
    private String TAG;
    private HwPoint pred;
    private float[] res;

    /* loaded from: classes10.dex */
    public static class SingleHolder {
        public static final TrackPredCore instance = new TrackPredCore();

        private SingleHolder() {
        }
    }

    static {
        try {
            System.loadLibrary("track_prediction");
            Log.d("", "load native library successfully!");
        } catch (UnsatisfiedLinkError e) {
            Log.d("", "failed to load native library: " + e.getMessage());
        }
    }

    public static TrackPredCore getInstance() {
        return SingleHolder.instance;
    }

    private native int initial(String str, String str2);

    private native float[] predict(int i, float f, float f2, int i2, float f3, int i3);

    public HwPoint doPredict(List<HwPoint> list, int i) {
        if (i != 1 && i != 2) {
            HwPoint hwPoint = list.get(list.size() - 1);
            this.pred.setPointX(hwPoint.getPointX());
            this.pred.setPointY(hwPoint.getPointY());
            return this.pred;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            HwPoint hwPoint2 = list.get(i2);
            this.res = predict(hwPoint2.getPointTime(), hwPoint2.getPointX(), hwPoint2.getPointY(), hwPoint2.getActionCode(), hwPoint2.getPointPressure(), i);
        }
        this.pred.setPointX(this.res[0]);
        this.pred.setPointY(this.res[1]);
        return this.pred;
    }

    public boolean init(Context context) {
        String str = context.getCacheDir() + "/optparam1130_best.cfg";
        String str2 = context.getCacheDir() + "/optparam240_12.cfg";
        try {
            CommonUtils.copyAssetResource2File(context, "optparam1130_best.cfg", str);
            CommonUtils.copyAssetResource2File(context, "optparam240_12.cfg", str2);
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (initial(str, str2) == 0) {
            Log.d(this.TAG, "init: Initial Successfully!");
            return true;
        }
        Log.d(this.TAG, "init: Initial Failed!");
        return false;
    }

    public native void release();

    private TrackPredCore() {
        this.TAG = "trackPredictionSDK";
        this.res = new float[2];
        this.pred = new HwPoint();
    }

    public HwPoint doPredict(HwPoint hwPoint, int i) {
        if (i != 1 && i != 2) {
            this.pred.setPointX(hwPoint.getPointX());
            this.pred.setPointY(hwPoint.getPointY());
            return this.pred;
        }
        float[] predict = predict(hwPoint.getPointTime(), hwPoint.getPointX(), hwPoint.getPointY(), hwPoint.getActionCode(), hwPoint.getPointPressure(), i);
        this.res = predict;
        this.pred.setPointX(predict[0]);
        this.pred.setPointY(this.res[1]);
        return this.pred;
    }
}
