package com.onyx.android.sdk.hwr.sunia.recognizer;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.hwr.data.bean.HWRConvertBean;
import com.onyx.android.sdk.hwr.data.bean.HWRException;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.sunia.utils.SuNiaHWRUtils;
import com.onyx.android.sdk.neohwr.layout.SourcePointGroup;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.sdk.Params;
import com.sunia.HTREnginev2.sdk.RecognitionMode;
import com.sunia.HTREnginev2.sdk.RecognizeListener;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.sdk.editor.Editor;
import com.sunia.commonv2.bean.PartiBean;
import com.sunia.commonv2.global.HWREngineConstant;
import java.util.HashMap;
import java.util.List;
import javax.inject.Inject;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;", "Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;", "", "createEditor", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "getRecognizerType", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "input", "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;", SyncConstant.EXPORT_DIR_NAME, "", "needActivate", "", C6997f.f39671c, Constants.STRING_SIG, "TAG", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-sunia_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSuNiaRecognizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,98:1\n1864#2,3:99\n*S KotlinDebug\n*F\n+ 1 SuNiaRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer\n*L\n84#1:99,3\n*E\n"})
/* loaded from: classes7.dex */
public final class SuNiaRecognizer extends SuNiaBaseRecognizer {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String TAG = "SuNiaRecognizer";

    @Inject
    public SuNiaRecognizer() {
    }

    @Override // com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaBaseRecognizer
    public void createEditor() {
        HWRInput openInput;
        super.createEditor();
        Params params = getParams();
        if (params == null || (openInput = getOpenInput()) == null) {
            return;
        }
        params.setMode(RecognitionMode.MODE_ECR);
        SuNiaHWRUtils suNiaHWRUtils = SuNiaHWRUtils.INSTANCE;
        params.setDataDir(suNiaHWRUtils.getConfigDataDir(openInput));
        params.setConfigName(suNiaHWRUtils.getConfigName(openInput));
        params.setResultCalculate(true);
        params.setResultCoordinate(true);
        params.setWordSplitTimeLot(500L);
        params.setResultAssociational(true);
        params.setResultCandidate(true);
        params.setResultPartitionCoordinate(true);
        params.setResultSpanProcessed(true);
        params.setKeyValuesConfig("enableStrokeId=true;");
        params.setKeyValuesConfig("enableTextModelAlignmentRelation=true;");
        Editor editor = getEditor();
        if (editor != null) {
            editor.setRecognizeEngineListener(new RecognizeListener() { // from class: com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaRecognizer$createEditor$1
                @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                public void onAssociationalChanged(@Nullable Editor editor2, @Nullable String result) {
                    String str;
                    Debug debug = Debug.INSTANCE;
                    str = SuNiaRecognizer.this.TAG;
                    debug.m32038d(str, "onAssociationalChanged", new Object[0]);
                }

                @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                public void onCandidateChanged(@Nullable Editor editor2, @Nullable String result) {
                    String str;
                    Debug debug = Debug.INSTANCE;
                    str = SuNiaRecognizer.this.TAG;
                    debug.m32038d(str, "onCandidateChanged", new Object[0]);
                }

                @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                public void onContentChanged(@Nullable Editor editor2, @NotNull String result) {
                    String str;
                    Intrinsics.checkNotNullParameter(result, "result");
                    Debug debug = Debug.INSTANCE;
                    str = SuNiaRecognizer.this.TAG;
                    debug.m32038d(str, "changed = " + result, new Object[0]);
                }

                @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                public void onError(@Nullable Editor editor2, int i, @Nullable Exception e) {
                    String str;
                    Debug debug = Debug.INSTANCE;
                    str = SuNiaRecognizer.this.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("error: i=");
                    sb.append(i);
                    sb.append(e != null ? ExceptionsKt__ExceptionsKt.stackTraceToString(e) : null);
                    debug.m32047e(str, sb.toString(), new Object[0]);
                }

                @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                public void onLoaded(@Nullable Editor editor2) {
                    String str;
                    Debug debug = Debug.INSTANCE;
                    str = SuNiaRecognizer.this.TAG;
                    debug.m32038d(str, "onLoaded", new Object[0]);
                }

                @Override // com.sunia.HTREnginev2.sdk.RecognizeListener
                public void onSyntheseChanged(@Nullable Editor editor2, @Nullable String syntheseWord) {
                    String str;
                    Debug debug = Debug.INSTANCE;
                    str = SuNiaRecognizer.this.TAG;
                    debug.m32038d(str, "onSyntheseChanged", new Object[0]);
                }
            });
        }
        Editor editor2 = getEditor();
        Boolean valueOf = editor2 != null ? Boolean.valueOf(editor2.open(params)) : null;
        if (!Intrinsics.areEqual(valueOf, Boolean.TRUE)) {
            throw HWRException.INSTANCE.m33354of(HWRException.ExceptionType.RECOGNIZER_OPEN_FAIL, "RECOGNIZER_OPEN_FAIL");
        }
        Debug.INSTANCE.m32038d(this.TAG, "opened: " + valueOf, new Object[0]);
    }

    @Override // com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaBaseRecognizer, com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public HWRConvertBean export(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        Editor editor = getEditor();
        if (editor == null) {
            return new HWRConvertBean();
        }
        List<RecognizePath> recognizePaths = SuNiaHWRUtils.INSTANCE.toRecognizePaths(input.getPointerEvents());
        HashMap<Integer, SourcePointGroup> hashMap = new HashMap<>();
        int i = 0;
        if (recognizePaths.size() != input.getSourceStrokePointGroups().size()) {
            Debug.INSTANCE.m32044e(SuNiaRecognizer.class, "incorrect path size: " + recognizePaths.size() + '/' + input.getSourceStrokePointGroups().size(), new Object[0]);
            return new HWRConvertBean();
        }
        for (Object obj : recognizePaths) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            hashMap.put(Integer.valueOf(editor.addStrokePoints(((RecognizePath) obj).getPoints())), input.getSourceStrokePointGroups().get(i));
            i = i2;
        }
        editor.doPageRecognize(true);
        editor.waitForIdle();
        Object fromJson = HWREngineConstant.Constant.GSON.fromJson(editor.getContent(), (Class<Object>) PartiBean.class);
        Intrinsics.checkNotNullExpressionValue(fromJson, "fromJson(...)");
        return SuNiaHWRUtils.INSTANCE.toHWRConvertBean((PartiBean) fromJson, hashMap);
    }

    @Override // com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaBaseRecognizer, com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public HWRRecognizerType getRecognizerType() {
        return HWRRecognizerType.SUNIA;
    }

    @Override // com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaBaseRecognizer, com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public boolean needActivate() {
        return true;
    }
}
