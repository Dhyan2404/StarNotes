package com.sunia.HTREnginev2.sdk.editor;

import com.sunia.HTREnginev2.sdk.RecognizePoint;
import java.util.List;

/* loaded from: classes10.dex */
public interface RecognizeEditor {
    void doAssociate(String str);

    void doChemicalStructure(List<RecognizePoint> list, String str);

    void doChemicalStructureV2(List<RecognizePoint> list);

    String doSynthese(String str);

    String exportGraphMl();

    void updateRecognizeWord(int i, String str);
}
