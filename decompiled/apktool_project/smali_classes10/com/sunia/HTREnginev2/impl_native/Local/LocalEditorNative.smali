.class public Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->loadNativeLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addPoints(J[D[D[D[I)[I
.end method

.method public static native addPointsAndIDsForMixture(JJJJJJJJ)[I
.end method

.method public static native addStrokePoints(J[D[D[D)I
.end method

.method public static native addStrokePointsForMixture(J[D[D[DJ)J
.end method

.method public static native addStrokePointsPointerForMixture(JJJJJJ)J
.end method

.method public static native calculate(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native clearContent(J)V
.end method

.method public static native close(J)I
.end method

.method public static native commonInterface(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native deleteStrokePoints(JI)I
.end method

.method public static native deleteStrokesForMixture(JJJ)I
.end method

.method public static native doAssociate(JLjava/lang/String;)V
.end method

.method public static native doChemicalStructure(J[D[D[ILjava/lang/String;)V
.end method

.method public static native doErrorReplace(JLjava/lang/String;)V
.end method

.method public static native doInteractForMixture(JJ)Ljava/lang/String;
.end method

.method public static native doNTIStrokePreset(JLjava/lang/String;)V
.end method

.method public static native doPageRecognize(JZ)V
.end method

.method public static native doPointsToBitmap(J[D[D[I[F)[B
.end method

.method public static native doRecognizeForMixture(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native doSynthese(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native editorPause(J)V
.end method

.method public static native exportGraphMl(J)Ljava/lang/String;
.end method

.method public static native getContent(J)Ljava/lang/String;
.end method

.method public static native getMathEngineVersion(J)Ljava/lang/String;
.end method

.method public static native getPartContentForMixture(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native getTotalContentForMixture(J)Ljava/lang/String;
.end method

.method public static native inDoSaveForMixture(JLjava/lang/String;)I
.end method

.method public static native incLoadByPathForMixture(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native incRecDoSave(JLjava/lang/String;)I
.end method

.method public static native incRecLoadByPath(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native isChemValidForMixture(JLjava/lang/String;)Z
.end method

.method public static native isClosed(J)Z
.end method

.method public static native isEmpty(J)Z
.end method

.method public static native isIdle(J)Z
.end method

.method public static native latexToMathML(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native latexToOfficeMathML(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native obtainParams(J)J
.end method

.method public static native open(JJ)I
.end method

.method public static native pictureProcess(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native setCharacterSet(J[Ljava/lang/String;)V
.end method

.method public static native setRecognizeEngineListener(JLcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;)V
.end method

.method public static native setReferWords(JLjava/lang/String;I)V
.end method

.method public static native setSyntheseWords(JLjava/lang/String;I)V
.end method

.method public static native setWritingForMixture(JZ)V
.end method

.method public static native shapeEdite(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native syncRecognize(J[D[D[D)Ljava/lang/String;
.end method

.method public static native updateParams(JJ)I
.end method

.method public static native updateRecognizeWord(JILjava/lang/String;)V
.end method

.method public static native waitForIdle(J)V
.end method
