package com.sunia.HTREnginev2.impl_native;

import android.text.TextUtils;
import androidx.core.app.C0619b;
import com.sunia.HTREnginev2.C13801h;
import com.sunia.HTREnginev2.impl_native.Local.LocalEditorNative;
import com.sunia.HTREnginev2.impl_native.Local.LocalEngineNative;
import com.sunia.HTREnginev2.sdk.Params;
import com.sunia.HTREnginev2.sdk.RecognizeListener;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.sdk.RecognizePoint;
import com.sunia.HTREnginev2.sdk.ResultCode;
import com.sunia.HTREnginev2.sdk.editor.Editor;
import com.sunia.HTREnginev2.sdk.editor.MixtureEditorV2;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.PointsToBitmapResult;
import com.sunia.commonv2.exception.NAIException;
import com.sunia.commonv2.global.HWREngineVariable;
import com.sunia.commonv2.util.HWRUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes10.dex */
public class EditorNative extends Editor {
    private static final String TAG = "EditorNative";
    private static boolean hasJNICommonInterface = true;
    long lHandler;
    private LocalRecognizeListener localRecognizeListener;
    private MixtureEditorV2 mixtureEditorV2 = new MixtureEditorV2Impl(this);
    private Params params;

    public EditorNative(long j, Params params) {
        this.lHandler = j;
        this.params = params;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public int[] addPoints(List<RecognizePoint> list) {
        if (isValid()) {
            int size = list.size();
            if (size > 0) {
                double[] dArr = new double[size];
                double[] dArr2 = new double[size];
                double[] dArr3 = new double[size];
                int[] iArr = new int[size];
                for (int i = 0; i < size; i++) {
                    dArr[i] = list.get(i).f84039x;
                    dArr2[i] = list.get(i).f84040y;
                    dArr3[i] = list.get(i).f84038t;
                    iArr[i] = list.get(i).action;
                }
                int i2 = 0;
                int i3 = 0;
                for (int i4 = 0; i4 < size; i4++) {
                    int i5 = iArr[i4];
                    if (i5 == 0) {
                        i2++;
                    } else if (i5 == 2) {
                        i3++;
                    }
                }
                if (i2 != i3) {
                    LogUtil.m57654e(TAG, "addPoints ACTION_DOWN count not equal ACTION_UP count");
                }
                int[] addPoints = LocalEditorNative.addPoints(this.lHandler, dArr, dArr2, dArr3, iArr);
                this.currentPath.setPoints(new ArrayList<>(list));
                this.currentPath.setStrokeId(1L);
                LocalRecognizeListener localRecognizeListener = this.localRecognizeListener;
                if (localRecognizeListener != null) {
                    localRecognizeListener.setRecognizePath(this.currentPath);
                }
                return addPoints;
            }
            LogUtil.m57654e(TAG, "recognizePoints is empty");
        }
        this.currentPath.getPoints().clear();
        this.currentPath.setStrokeId(-1L);
        return null;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public int[] addPointsAndIDsForMixture(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        LogUtil.m57653d(TAG, "addPointsAndIDsForMixture");
        if (isValid()) {
            return LocalEditorNative.addPointsAndIDsForMixture(this.lHandler, j, j2, j3, j4, j5, j6, j7);
        }
        return null;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public synchronized int addStrokePoints(List<RecognizePoint> list) {
        if (isValid() && list != null) {
            int size = list.size();
            if (size > 0) {
                double[] dArr = new double[size];
                double[] dArr2 = new double[size];
                double[] dArr3 = new double[size];
                for (int i = 0; i < size; i++) {
                    if (list.get(i) != null) {
                        dArr[i] = r5.f84039x;
                        dArr2[i] = r5.f84040y;
                        dArr3[i] = r5.f84038t;
                    }
                }
                int addStrokePoints = LocalEditorNative.addStrokePoints(this.lHandler, dArr, dArr2, dArr3);
                this.currentPath.setStrokeId(addStrokePoints);
                this.currentPath.setPoints(new ArrayList<>(list));
                LocalRecognizeListener localRecognizeListener = this.localRecognizeListener;
                if (localRecognizeListener != null) {
                    localRecognizeListener.setRecognizePath(this.currentPath);
                }
                return addStrokePoints;
            }
            LogUtil.m57654e(TAG, "recognizePoints is empty");
        }
        this.currentPath.setStrokeId(-1L);
        this.currentPath.getPoints().clear();
        return -1;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public synchronized long addStrokePointsForMixture(List<RecognizePoint> list, long j) {
        int size;
        if (!isValid() || list == null || (size = list.size()) <= 0) {
            this.currentPath.setStrokeId(-1L);
            this.currentPath.getPoints().clear();
            return -1L;
        }
        double[] dArr = new double[size];
        double[] dArr2 = new double[size];
        double[] dArr3 = new double[size];
        for (int i = 0; i < size; i++) {
            if (list.get(i) != null) {
                dArr[i] = r2.f84039x;
                dArr2[i] = r2.f84040y;
                dArr3[i] = r2.f84038t;
            }
        }
        long addStrokePointsForMixture = LocalEditorNative.addStrokePointsForMixture(this.lHandler, dArr, dArr2, dArr3, j);
        this.currentPath.setStrokeId(addStrokePointsForMixture);
        this.currentPath.setPoints(new ArrayList<>(list));
        LocalRecognizeListener localRecognizeListener = this.localRecognizeListener;
        if (localRecognizeListener != null) {
            localRecognizeListener.setRecognizePath(this.currentPath);
        }
        return addStrokePointsForMixture;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public long addStrokePointsPointerForMixture(long j, long j2, long j3, long j4, long j5) {
        LogUtil.m57653d(TAG, "addStrokePointsPointerForMixture");
        if (isValid()) {
            return LocalEditorNative.addStrokePointsPointerForMixture(this.lHandler, j, j2, j3, j4, j5);
        }
        return -1L;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.CalculateEditor
    public String calculate(String str) {
        LogUtil.m57653d(TAG, "calculate:" + str);
        return LocalEditorNative.calculate(this.lHandler, str);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public void clearContent() {
        LogUtil.m57653d(TAG, "clearContent");
        if (isValid()) {
            this.currentPath.clear();
            LocalEditorNative.clearContent(this.lHandler);
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public void close() {
        LogUtil.m57653d(TAG, "close");
        if (isValid()) {
            LocalEditorNative.close(this.lHandler);
            this.localRecognizeListener = null;
            this.lHandler = 0L;
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public String commonInterface(String str) {
        return commonInterface(str, "");
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public boolean deleteStrokePoints(int i) {
        return isValid() && LocalEditorNative.deleteStrokePoints(this.lHandler, i) == ResultCode.CODE_OK;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public int deleteStrokesForMixture(long j, long j2) {
        LogUtil.m57653d(TAG, "deleteStrokesForMixture");
        if (isValid()) {
            return LocalEditorNative.deleteStrokesForMixture(this.lHandler, j, j2);
        }
        return -1;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.RecognizeEditor
    public void doAssociate(String str) {
        LogUtil.m57653d(TAG, "doAssociate");
        if (isValid()) {
            LocalEditorNative.doAssociate(this.lHandler, str);
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.RecognizeEditor
    public void doChemicalStructure(List<RecognizePoint> list, String str) {
        if (!isValid()) {
            LogUtil.m57657w(TAG, "the engine is invalid");
            return;
        }
        int size = list.size();
        if (size > 0) {
            double[] dArr = new double[size];
            double[] dArr2 = new double[size];
            int[] iArr = new int[size];
            for (int i = 0; i < size; i++) {
                dArr[i] = list.get(i).f84039x;
                dArr2[i] = list.get(i).f84040y;
                iArr[i] = list.get(i).action;
            }
            LocalEditorNative.doChemicalStructure(this.lHandler, dArr, dArr2, iArr, str);
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.RecognizeEditor
    public void doChemicalStructureV2(List<RecognizePoint> list) {
        try {
            if (!isValid()) {
                LogUtil.m57657w(TAG, "the engine is invalid");
                this.localRecognizeListener.onError(this.lHandler, 0, "the engine is invalid");
                return;
            }
            if (HWRUtil.isMainThread()) {
                this.localRecognizeListener.onError(this.lHandler, NAIException.ONE.getCode(), NAIException.ONE.getMessage());
                return;
            }
            clearContent();
            addPoints(list);
            doPageRecognize(true);
            String content = getContent();
            LogUtil.m57657w(TAG, "content=" + content);
            this.localRecognizeListener.onChemicalStructureChanged(this.lHandler, C13801h.m54388a(content));
        } catch (Exception e) {
            LogUtil.m57655e(TAG, e);
            this.localRecognizeListener.onError(this.lHandler, -1, e.getMessage());
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public String doInteractForMixture(long j) {
        LogUtil.m57653d(TAG, "doInteractForMixture");
        return isValid() ? LocalEditorNative.doInteractForMixture(this.lHandler, j) : "";
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public void doPageRecognize() {
        LogUtil.m57653d(TAG, "doPageRecognize sync:");
        if (isValid()) {
            LocalEditorNative.doPageRecognize(this.lHandler, true);
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public PointsToBitmapResult doPointsToBitmap(List<RecognizePath> list) {
        if (!isValid()) {
            return null;
        }
        if (HWRUtil.isEmpty((List<?>) list)) {
            LogUtil.m57654e(TAG, "recognizePoints is empty");
            return null;
        }
        Iterator<RecognizePath> it2 = list.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().getPoints().size();
        }
        if (i == 0) {
            LogUtil.m57654e(TAG, "size is empty");
            return null;
        }
        double[] dArr = new double[i];
        double[] dArr2 = new double[i];
        int[] iArr = new int[i];
        Iterator<RecognizePath> it3 = list.iterator();
        int i2 = 0;
        while (it3.hasNext()) {
            ArrayList<RecognizePoint> points = it3.next().getPoints();
            for (int i3 = 0; i3 < points.size(); i3++) {
                RecognizePoint recognizePoint = points.get(i3);
                dArr[i2] = recognizePoint.f84039x;
                dArr2[i2] = recognizePoint.f84040y;
                if (i3 == 0) {
                    iArr[i2] = 0;
                } else if (i3 == points.size() - 1) {
                    iArr[i2] = 2;
                } else {
                    iArr[i2] = 1;
                }
                i2++;
            }
        }
        float[] fArr = new float[2];
        return new PointsToBitmapResult(LocalEditorNative.doPointsToBitmap(this.lHandler, dArr, dArr2, iArr, fArr), fArr[0], fArr[1]);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public String doRecognizeForMixture(String str) {
        LogUtil.m57653d(TAG, "doRecognizeForMixture");
        return isValid() ? LocalEditorNative.doRecognizeForMixture(this.lHandler, str) : "";
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.RecognizeEditor
    public String doSynthese(String str) {
        LogUtil.m57653d(TAG, "doSynthese");
        return isValid() ? LocalEditorNative.doSynthese(this.lHandler, str) : "";
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public void editorPause() {
        if (isValid()) {
            LocalEditorNative.editorPause(this.lHandler);
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.RecognizeEditor
    public String exportGraphMl() {
        LogUtil.m57653d(TAG, "exportGraphMl");
        return LocalEditorNative.exportGraphMl(this.lHandler);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public String getContent() {
        if (!isValid()) {
            return "";
        }
        String content = LocalEditorNative.getContent(this.lHandler);
        try {
            JSONObject jSONObject = new JSONObject(content);
            String string = jSONObject.getString("type");
            LogUtil.m57653d(TAG, "type is gesture " + "gesture".equals(string));
            if (!"gesture".equals(string)) {
                return content;
            }
            String string2 = jSONObject.getString(C0619b.f5199k);
            if (TextUtils.isEmpty(string2) || string2.split(",").length != 1 || Integer.parseInt(string2) == 0) {
                return content;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(string2);
            sb.append(",");
            if (this.currentPath != null) {
                for (int i = 0; i < this.currentPath.getPoints().size(); i++) {
                    RecognizePoint recognizePoint = this.currentPath.getPoints().get(i);
                    if (i < this.currentPath.size() - 1) {
                        sb.append(recognizePoint.f84039x);
                        sb.append(",");
                        sb.append(recognizePoint.f84040y);
                        sb.append(",");
                    } else {
                        sb.append(recognizePoint.f84039x);
                        sb.append(",");
                        sb.append(recognizePoint.f84040y);
                    }
                }
            }
            String sb2 = sb.toString();
            LogUtil.m57653d(TAG, "label: " + sb2);
            jSONObject.put(C0619b.f5199k, sb2);
            return jSONObject.toString();
        } catch (Exception e) {
            LogUtil.m57654e(TAG, e.getMessage());
            return content;
        }
    }

    public long getHandler() {
        return this.lHandler;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.CalculateEditor
    public String getMathEngineVersion() {
        LogUtil.m57653d(TAG, "getMathEngineVersion");
        return LocalEditorNative.getMathEngineVersion(this.lHandler);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public MixtureEditorV2 getMixtureEditorV2() {
        return this.mixtureEditorV2;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public String getPartContentForMixture(String str) {
        LogUtil.m57653d(TAG, "getPartContentForMixture");
        return isValid() ? LocalEditorNative.getPartContentForMixture(this.lHandler, str) : "";
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public String getTotalContentForMixture() {
        LogUtil.m57653d(TAG, "getTotalContentForMixture");
        return isValid() ? LocalEditorNative.getTotalContentForMixture(this.lHandler) : "";
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public boolean inDoSaveForMixture(String str) {
        LogUtil.m57653d(TAG, "inDoSaveForMixture");
        return isValid() && LocalEditorNative.inDoSaveForMixture(this.lHandler, str) == ResultCode.CODE_OK;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public String incLoadByPathForMixture(String str) {
        LogUtil.m57653d(TAG, "incLoadByPathForMixture");
        return isValid() ? LocalEditorNative.incLoadByPathForMixture(this.lHandler, str) : "";
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public boolean incRecDoSave(String str) {
        return isValid() && LocalEditorNative.incRecDoSave(this.lHandler, str) == ResultCode.CODE_OK;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public String incRecLoadByPath(String str) {
        return isValid() ? LocalEditorNative.incRecLoadByPath(this.lHandler, str) : "";
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public boolean isChemValidForMixture(String str) {
        LogUtil.m57653d(TAG, "isChemValidForMixture");
        if (isValid()) {
            return LocalEditorNative.isChemValidForMixture(this.lHandler, str);
        }
        return false;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public boolean isClosed() {
        if (!isValid()) {
            return true;
        }
        boolean isClosed = LocalEditorNative.isClosed(this.lHandler);
        if (isClosed) {
            LogUtil.m57654e(TAG, "Engine is closed, please check the log ");
        }
        return isClosed;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public boolean isEmpty() {
        LogUtil.m57653d(TAG, "isEmpty");
        if (!isValid()) {
            return false;
        }
        LogUtil.m57653d(TAG, "Engine is empty: " + LocalEditorNative.isEmpty(this.lHandler));
        return LocalEditorNative.isEmpty(this.lHandler);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public boolean isIdle() {
        LogUtil.m57653d(TAG, "isIdle");
        if (isValid()) {
            return LocalEditorNative.isIdle(this.lHandler);
        }
        return false;
    }

    public boolean isValid() {
        boolean z = this.lHandler != 0;
        if (!z) {
            LogUtil.m57657w(TAG, "editor unavailable");
        }
        return z;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.CalculateEditor
    public String latexToMathML(String str) {
        LogUtil.m57653d(TAG, "latexToMathML:" + str);
        return LocalEditorNative.latexToMathML(this.lHandler, str);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.CalculateEditor
    public String latexToOfficeMathML(String str) {
        LogUtil.m57653d(TAG, "latexToOfficeMathML:" + str);
        return LocalEditorNative.latexToOfficeMathML(this.lHandler, str);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public Params obtainParams() {
        long obtainParams = isValid() ? LocalEditorNative.obtainParams(this.lHandler) : 0L;
        if (obtainParams != 0) {
            return new ParamsNative(obtainParams);
        }
        return null;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public RecognizePoint obtainPoint(float f, float f2, long j, int i) {
        return new RecognizePoint(f, f2, j, i);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public boolean open(Params params) {
        this.params = params;
        return open();
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public String pictureProcess(String str) {
        return isValid() ? LocalEditorNative.pictureProcess(this.lHandler, str) : "";
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public void setCharacterSet(String[] strArr) {
        if (isValid()) {
            LocalEditorNative.setCharacterSet(this.lHandler, strArr);
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.Editor
    public void setRecognizeEngineListener(RecognizeListener recognizeListener) {
        LocalRecognizeListener localRecognizeListener = new LocalRecognizeListener(this, recognizeListener);
        this.localRecognizeListener = localRecognizeListener;
        LocalEditorNative.setRecognizeEngineListener(this.lHandler, localRecognizeListener);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public void setReferWords(String str, int i) {
        if (isValid()) {
            LocalEditorNative.setReferWords(this.lHandler, str, i);
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public void setSyntheseWords(String str, int i) {
        if (isValid()) {
            LocalEditorNative.setSyntheseWords(this.lHandler, str, i);
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public void setWritingForMixture(boolean z) {
        LogUtil.m57653d(TAG, "setWritingForMixture");
        if (isValid()) {
            LocalEditorNative.setWritingForMixture(this.lHandler, z);
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public String shapeEdite(String str) {
        return isValid() ? LocalEditorNative.shapeEdite(this.lHandler, str) : "";
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public String syncRecognize(List<RecognizePoint> list) {
        int size;
        LogUtil.m57653d(TAG, "syncRecognize");
        if (!isValid() || list == null || (size = list.size()) <= 0) {
            return "";
        }
        double[] dArr = new double[size];
        double[] dArr2 = new double[size];
        double[] dArr3 = new double[size];
        for (int i = 0; i < size; i++) {
            if (list.get(i) != null) {
                dArr[i] = r5.f84039x;
                dArr2[i] = r5.f84040y;
                dArr3[i] = r5.f84038t;
            }
        }
        return LocalEditorNative.syncRecognize(this.lHandler, dArr, dArr2, dArr3);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public boolean updateParams(Params params) {
        if (!isValid()) {
            return false;
        }
        LocalEngineNative.setAssetManager(HWREngineVariable.sHWRApplication.getAssets());
        return LocalEditorNative.updateParams(this.lHandler, ((ParamsNative) params).getHandler()) == ResultCode.CODE_OK;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.RecognizeEditor
    public void updateRecognizeWord(int i, String str) {
        if (isValid()) {
            LocalEditorNative.updateRecognizeWord(this.lHandler, i, str);
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public void waitForIdle() {
        LogUtil.m57653d(TAG, "waitForIdle");
        if (isValid()) {
            LocalEditorNative.waitForIdle(this.lHandler);
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public String commonInterface(String str, String str2) {
        if (hasJNICommonInterface) {
            if (!isValid()) {
                return "";
            }
            try {
                return LocalEditorNative.commonInterface(this.lHandler, str, str2);
            } catch (Throwable unused) {
                hasJNICommonInterface = false;
                LogUtil.m57654e(TAG, "commonInterface not found");
                return "";
            }
        }
        LogUtil.m57653d(TAG, "commonInterface not found");
        return "";
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public boolean open() {
        LogUtil.m57653d(TAG, "open open editor isValid :" + isValid());
        if (!isValid()) {
            return false;
        }
        LogUtil.m57653d(TAG, "HWREngineVariable.coreApplication=" + HWREngineVariable.sHWRApplication);
        LogUtil.m57653d(TAG, "HWREngineVariable.coreApplication=" + HWREngineVariable.sHWRApplication.getAssets());
        LocalEngineNative.setAssetManager(HWREngineVariable.sHWRApplication.getAssets());
        return LocalEditorNative.open(this.lHandler, ((ParamsNative) this.params).getHandler()) == ResultCode.CODE_OK;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.BaseEditor
    public void doPageRecognize(boolean z) {
        LogUtil.m57653d(TAG, "doPageRecognize sync:" + z);
        if (isValid()) {
            LocalEditorNative.doPageRecognize(this.lHandler, z);
        }
    }
}
