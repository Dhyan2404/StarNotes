package com.sunia.HTREnginev2.sdk;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import com.sunia.naiv2.sdk.NAIPath;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes10.dex */
public class RecognizePath implements Serializable, Cloneable {
    private static final long serialVersionUID = -5450904500938336880L;
    protected long mId;
    public ArrayList<RecognizePoint> mPoints;
    protected Path path;
    private RecognizePathExt recognizePathExt;
    protected RecognizeShapeExt recognizeShapeExt;
    private List<RecognizePoint> shapePointList;
    private long strokeId;

    public RecognizePath() {
        this.mPoints = new ArrayList<>();
        this.strokeId = -1L;
    }

    private void pathMeasure(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        int size = this.mPoints.size();
        for (int i = 0; i < size; i++) {
            float[] fArr = new float[2];
            pathMeasure.getPosTan((i * pathMeasure.getLength()) / (size - 1), fArr, null);
            float f = fArr[0];
            float f2 = fArr[1];
            this.mPoints.get(i).f84039x = f;
            this.mPoints.get(i).f84040y = f2;
        }
    }

    public void addAllPoints(ArrayList<RecognizePoint> arrayList) {
        this.mPoints = arrayList;
    }

    public void addPoint(RecognizePoint recognizePoint) {
        this.mPoints.add(recognizePoint);
    }

    public void clear() {
        ArrayList<RecognizePoint> arrayList = this.mPoints;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.mPoints.clear();
    }

    public RecognizePoint get(int i) {
        return this.mPoints.size() > i ? this.mPoints.get(i) : new RecognizePoint();
    }

    public long getId() {
        return this.mId;
    }

    public int getIdInt() {
        return (int) this.mId;
    }

    public NAIPath getNAIPath() {
        NAIPath nAIPath = new NAIPath();
        nAIPath.mPoints = new ArrayList<>();
        Iterator<RecognizePoint> it2 = this.mPoints.iterator();
        while (it2.hasNext()) {
            nAIPath.mPoints.add(it2.next().m72429clone());
        }
        if (this.path != null) {
            nAIPath.path = new Path(this.path);
        }
        RecognizeShapeExt recognizeShapeExt = this.recognizeShapeExt;
        if (recognizeShapeExt != null) {
            nAIPath.recognizeShapeExt = recognizeShapeExt.m72430clone();
        }
        nAIPath.mId = this.mId;
        return nAIPath;
    }

    public Path getPath() {
        return this.path;
    }

    public ArrayList<RecognizePoint> getPoints() {
        return this.mPoints;
    }

    public RecognizePathExt getRecognizePathExt() {
        return this.recognizePathExt;
    }

    public RecognizeShapeExt getRecognizeShapeExt() {
        return this.recognizeShapeExt;
    }

    public RectF getRectF() {
        RectF rectF = null;
        for (int i = 0; i < this.mPoints.size(); i++) {
            RecognizePoint recognizePoint = this.mPoints.get(i);
            if (rectF == null) {
                float f = recognizePoint.f84039x;
                float f2 = recognizePoint.f84040y;
                rectF = new RectF(f, f2, f, f2);
            } else {
                rectF.union(recognizePoint.f84039x, recognizePoint.f84040y);
            }
        }
        return rectF;
    }

    public List<RecognizePoint> getShapePointList() {
        if (this.shapePointList == null) {
            this.shapePointList = new ArrayList();
        }
        return this.shapePointList;
    }

    public int getStrokeId() {
        return (int) this.strokeId;
    }

    public long getStrokeIdLong() {
        return this.strokeId;
    }

    public long getmId() {
        return getId();
    }

    public boolean isEmpty() {
        ArrayList<RecognizePoint> arrayList = this.mPoints;
        return arrayList == null || arrayList.size() == 0;
    }

    public Path obtDrawPath() {
        Path path = new Path();
        float f = 0.0f;
        float f2 = 0.0f;
        for (int i = 0; i < this.mPoints.size(); i++) {
            RecognizePoint recognizePoint = this.mPoints.get(i);
            if (i == 0) {
                path.moveTo(recognizePoint.f84039x, recognizePoint.f84040y);
            } else if (i == this.mPoints.size() - 1) {
                path.quadTo(f, f2, recognizePoint.f84039x, recognizePoint.f84040y);
            } else {
                path.quadTo(f, f2, (recognizePoint.f84039x + f) / 2.0f, (recognizePoint.f84040y + f2) / 2.0f);
            }
            f = recognizePoint.f84039x;
            f2 = recognizePoint.f84040y;
        }
        return path;
    }

    public void setId(long j) {
        this.mId = j;
    }

    public void setMatrix(Matrix matrix) {
        Path obtDrawPath = obtDrawPath();
        obtDrawPath.transform(matrix);
        pathMeasure(obtDrawPath);
        Path path = this.path;
        if (path != null) {
            path.transform(matrix);
        }
    }

    @Deprecated
    public void setOffset(float f, float f2) {
        Iterator<RecognizePoint> it2 = this.mPoints.iterator();
        while (it2.hasNext()) {
            it2.next().setOffset(f, f2);
        }
    }

    public void setPath(Path path) {
        this.path = path;
    }

    public void setPoints(ArrayList<RecognizePoint> arrayList) {
        this.mPoints = arrayList;
    }

    public void setRecognizePathExt(RecognizePathExt recognizePathExt) {
        this.recognizePathExt = recognizePathExt;
    }

    public void setRecognizeShapeExt(RecognizeShapeExt recognizeShapeExt) {
        this.recognizeShapeExt = recognizeShapeExt;
    }

    public void setStrokeId(long j) {
        this.strokeId = j;
    }

    public void setmId(long j) {
        setId(j);
    }

    public int size() {
        ArrayList<RecognizePoint> arrayList = this.mPoints;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // 
    /* renamed from: clone */
    public RecognizePath mo72427clone() {
        RecognizePath recognizePath = new RecognizePath();
        recognizePath.mPoints = new ArrayList<>();
        Iterator<RecognizePoint> it2 = this.mPoints.iterator();
        while (it2.hasNext()) {
            recognizePath.mPoints.add(it2.next().m72429clone());
        }
        if (this.path != null) {
            recognizePath.path = new Path(this.path);
        }
        RecognizeShapeExt recognizeShapeExt = this.recognizeShapeExt;
        if (recognizeShapeExt != null) {
            recognizePath.recognizeShapeExt = recognizeShapeExt.m72430clone();
        }
        recognizePath.mId = this.mId;
        return recognizePath;
    }

    public RecognizePath(ArrayList<RecognizePoint> arrayList, long j, long j2) {
        ArrayList<RecognizePoint> arrayList2 = new ArrayList<>();
        this.mPoints = arrayList2;
        this.strokeId = -1L;
        arrayList2.clear();
        this.mPoints.addAll(arrayList);
        this.strokeId = j;
        this.mId = j2;
    }
}
