package com.sunia.HTREnginev2;

import com.google.gson.Gson;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.PartiBean;
import com.sunia.commonv2.bean.chemical.ChemicalStructureResult;
import com.sunia.commonv2.bean.chemical.RecognitionBean;
import com.sunia.commonv2.util.HWRUtil;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.sunia.HTREnginev2.h */
/* loaded from: classes10.dex */
public class C13801h {

    /* renamed from: a */
    public static Map<String, String> f71669a;

    static {
        HashMap hashMap = new HashMap();
        f71669a = hashMap;
        hashMap.put("C3", "CCC");
        f71669a.put("(3", "CCC");
        f71669a.put("03", "CCC");
        f71669a.put("13", "CCC");
        f71669a.put("CVC3", "C=CC");
        f71669a.put("CVL3", "C=CC");
        f71669a.put("CWC3", "C([H])([H])([H])C([H])([H])C");
        f71669a.put("CWL3", "C([H])([H])([H])C([H])([H])C");
        f71669a.put("CWCZ", "C([H])([H])([H])C([H])([H])C");
        f71669a.put("A6", "C1=CC=CC=C1");
        f71669a.put("AB", "C1=CC=CC=C1");
        f71669a.put("CC6", "C1CCCCC1");
        f71669a.put("CCB", "C1CCCCC1");
        f71669a.put("CCT", "C1=CC=CC=C1");
        f71669a.put("A6OH", "OC1=CC=CC=C1");
        f71669a.put("ABOH", "OC1=CC=CC=C1");
        f71669a.put("ABORF", "OC1=CC=CC=C1");
        f71669a.put("ABORY", "OC1=CC=CC=C1");
        f71669a.put("A60H", "OC1=CC=CC=C1");
        f71669a.put("ABOY", "OC1=CC=CC=C1");
        f71669a.put("ABOU", "OC1=CC=CC=C1");
        f71669a.put("ABORT", "OC1=CC=CC=C1");
        f71669a.put("ABOX", "OC1=CC=CC=C1");
        f71669a.put("C2OC2", "CCOCC");
        f71669a.put("C20C2", "CCOCC");
        f71669a.put("(20C2", "CCOCC");
        f71669a.put("(2022", "CCOCC");
        f71669a.put("CZOCZ", "CCOCC");
        f71669a.put("(2O(2", "CCOCC");
        f71669a.put("(20(2", "CCOCC");
        f71669a.put("(20(V", "CCOCC");
        f71669a.put("(2O(V", "CCOCC");
        f71669a.put("CZORZ", "CCOCC");
        f71669a.put("C2CH", "CCC(=O)O");
        f71669a.put("CZCH", "CCC(=O)O");
        f71669a.put("C2C4", "CCC(=O)O");
        f71669a.put("CZELL", "CCC(=O)O");
        f71669a.put("(2CH", "CCC(=O)O");
        f71669a.put("(2(H", "CCC(=O)O");
        f71669a.put("CZAR", "CCC(=O)O");
        f71669a.put("CZCY", "CCC(=O)O");
        f71669a.put("C1COOC4", "CCCCOC(=O)C");
        f71669a.put("(1COOC4", "CCCCOC(=O)C");
        f71669a.put("(1(OOC4", "CCCCOC(=O)C");
        f71669a.put("(1(OO(4", "CCCCOC(=O)C");
        f71669a.put("C/COOCY", "CCCCOC(=O)C");
        f71669a.put("DIRECT", "CCCCOC(=O)C");
        f71669a.put("CLCOOCY", "CCCCOC(=O)C");
        f71669a.put("CLUOOCY", "CCCCOC(=O)C");
        f71669a.put("CLCOOLY", "CCCCOC(=O)C");
        f71669a.put("C|COOC4", "CCCCOC(=O)C");
        f71669a.put("CICOOCY", "CCCCOC(=O)C");
        f71669a.put("CLCOOK", "CCCCOC(=O)C");
        f71669a.put("DROOCY", "CCCCOC(=O)C");
        f71669a.put("DCOOCY", "CCCCOC(=O)C");
        f71669a.put("C6", "CCCCCC");
        f71669a.put("(6", "CCCCCC");
        f71669a.put("(B", "CCCCCC");
        f71669a.put("CB", "CCCCCC");
        f71669a.put("CO", "CCCCCC");
        f71669a.put("CV6", "C=CCCCC");
        f71669a.put("(V6", "C=CCCCC");
        f71669a.put("(VB", "C=CCCCC");
        f71669a.put("CVB", "C=CCCCC");
        f71669a.put("CRB", "C=CCCCC");
        f71669a.put("CLO", "C=CCCCC");
        f71669a.put("CW6", "C#CCCCC");
        f71669a.put("(W6", "C#CCCCC");
        f71669a.put("(WB", "C#CCCCC");
        f71669a.put("CWB", "C#CCCCC");
        f71669a.put("CUT", "C#CCCCC");
        f71669a.put("CWT", "C#CCCCC");
        f71669a.put("CUB", "C#CCCCC");
        f71669a.put("CC6OH", "OC1CCCCC1");
        f71669a.put("CCBOH", "OC1CCCCC1");
        f71669a.put("CCBORF", "OC1CCCCC1");
        f71669a.put("CCBOY", "OC1CCCCC1");
        f71669a.put("CC604", "OC1CCCCC1");
        f71669a.put("CCBORY", "OC1CCCCC1");
        f71669a.put("CCBON", "OC1CCCCC1");
        f71669a.put("CCBOR", "OC1CCCCC1");
        f71669a.put("CUBOY", "OC1CCCCC1");
        f71669a.put("A6CH", "O=C(O)C1=CC=CC=C1");
        f71669a.put("ABCH", "O=C(O)C1=CC=CC=C1");
        f71669a.put("AB(H", "O=C(O)C1=CC=CC=C1");
        f71669a.put("A6(H", "O=C(O)C1=CC=CC=C1");
        f71669a.put("ABCY", "O=C(O)C1=CC=CC=C1");
        f71669a.put("106C4", "O=C(O)C1=CC=CC=C1");
        f71669a.put("ABOLY", "O=C(O)C1=CC=CC=C1");
        f71669a.put("POCK", "O=C(O)C1=CC=CC=C1");
        f71669a.put("ABBY", "O=C(O)C1=CC=CC=C1");
        f71669a.put("C5CH", "CCCCCC(=O)O");
        f71669a.put("(5CH", "CCCCCC(=O)O");
        f71669a.put("(5(H", "CCCCCC(=O)O");
        f71669a.put("CSCY", "CCCCCC(=O)O");
        f71669a.put("(524", "CCCCCC(=O)O");
        f71669a.put("C5C4)", "CCCCCC(=O)O");
        f71669a.put("C5C4", "CCCCCC(=O)O");
        f71669a.put("05C4", "CCCCCC(=O)O");
        f71669a.put("05CH", "CCCCCC(=O)O");
    }

    /* renamed from: a */
    public static String m54388a(String str) {
        if (HWRUtil.isEmpty(str)) {
            return new Gson().toJson(new ChemicalStructureResult());
        }
        String upperCase = ((PartiBean) new Gson().fromJson(str, PartiBean.class)).getLabel().toUpperCase();
        StringBuffer stringBuffer = new StringBuffer();
        if (upperCase.contains("\n")) {
            String[] split = upperCase.split("\n");
            for (int i = 0; i < split.length; i++) {
                String str2 = split[i];
                String str3 = f71669a.get(str2);
                if (HWRUtil.isEmpty(str3)) {
                    LogUtil.m57657w("ChemicalStructureHelper", "识别结果key=" + str2 + ",没有对应的化学结构式");
                    stringBuffer.append(str2);
                } else {
                    stringBuffer.append(str3);
                }
                if (i != split.length - 1) {
                    stringBuffer.append(".");
                }
            }
        } else {
            String str4 = f71669a.get(upperCase);
            if (HWRUtil.isEmpty(str4)) {
                LogUtil.m57657w("ChemicalStructureHelper", "识别结果key=" + upperCase + ",没有对应的化学结构式");
                stringBuffer.append(upperCase);
            } else {
                stringBuffer.append(str4);
            }
        }
        LogUtil.m57653d("ChemicalStructureHelper", "识别结果key=" + upperCase + ",返回的化学结构式结果=" + stringBuffer.toString());
        ChemicalStructureResult chemicalStructureResult = new ChemicalStructureResult();
        RecognitionBean recognitionBean = new RecognitionBean();
        recognitionBean.setResult(stringBuffer.toString());
        chemicalStructureResult.getRecognitionBeanList().add(recognitionBean);
        return new Gson().toJson(chemicalStructureResult);
    }
}
