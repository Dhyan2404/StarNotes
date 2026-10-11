package com.sunia.commonv2.util;

import android.util.Log;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.HWRSimpleResult;
import com.sunia.commonv2.bean.PartiBean;
import com.sunia.commonv2.bean.PartieWords;
import java.util.List;
import org.json.JSONException;

/* loaded from: classes10.dex */
public class HWRSimpleResultUtil {
    private static void getMathVerticalResult(PartiBean partiBean, HWRSimpleResult hWRSimpleResult) {
        List<String> groupcandidates = partiBean.getGroupcandidates();
        List<Double> groupCorrectRates = partiBean.getGroupCorrectRates();
        for (int i = 0; i < groupcandidates.size(); i++) {
            String str = groupcandidates.get(i);
            HWRSimpleResult.SingleResult singleResult = new HWRSimpleResult.SingleResult();
            singleResult.setCandidate(str);
            singleResult.setCorrectRate(groupCorrectRates.get(i).doubleValue());
            hWRSimpleResult.getSingleResultList().add(singleResult);
        }
    }

    public static HWRSimpleResult getResult(String str) {
        try {
            Gson create = new GsonBuilder().disableHtmlEscaping().setPrettyPrinting().create();
            PartiBean partiBean = (PartiBean) create.fromJson(str, PartiBean.class);
            HWRSimpleResult hWRSimpleResult = new HWRSimpleResult(str, partiBean.getResultCode(), partiBean.getType());
            if (HWRModelPredictionUtil.MATH_VERTICAL.getShowName().equals(partiBean.getType())) {
                getMathVerticalResult(partiBean, hWRSimpleResult);
            } else {
                List<PartieWords> words = partiBean.getWords();
                initSingleResultList(hWRSimpleResult, words.get(0).getCandidates().size());
                int size = words.size();
                for (int i = 0; i < size; i++) {
                    PartieWords partieWords = words.get(i);
                    mergeResult(hWRSimpleResult, partieWords.getCandidates(), partieWords.getCorrect_rates());
                }
                setCorrectRate(hWRSimpleResult);
            }
            LogUtil.m57653d("HWRSimpleResult", "hwrSimpleResult=" + create.toJson(hWRSimpleResult));
            LogUtil.m57657w("HWRSimpleResult", "getSingleResultList=" + create.toJson(hWRSimpleResult.getSingleResultList()));
            return hWRSimpleResult;
        } catch (JSONException e) {
            LogUtil.m57657w("HWRSimpleResult", Log.getStackTraceString(e));
            return null;
        }
    }

    private static void initSingleResultList(HWRSimpleResult hWRSimpleResult, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            hWRSimpleResult.getSingleResultList().add(new HWRSimpleResult.SingleResult());
        }
    }

    private static void mergeResult(HWRSimpleResult hWRSimpleResult, List<String> list, List<Double> list2) {
        for (int i = 0; i < list.size(); i++) {
            HWRSimpleResult.SingleResult singleResult = hWRSimpleResult.getSingleResultList().get(i);
            singleResult.setCandidate(singleResult.getCandidate() + list.get(i));
            double doubleValue = list2.get(i).doubleValue();
            if (doubleValue != 0.0d) {
                singleResult.setCorrectRate(singleResult.getCorrectRate() + doubleValue);
                singleResult.setValidityCorrectRates(singleResult.getValidityCorrectRates() + 1);
            }
        }
    }

    private static void setCorrectRate(HWRSimpleResult hWRSimpleResult) {
        for (HWRSimpleResult.SingleResult singleResult : hWRSimpleResult.getSingleResultList()) {
            double validityCorrectRates = singleResult.getValidityCorrectRates();
            if (validityCorrectRates == 0.0d) {
                singleResult.setCorrectRate(0.0d);
            } else {
                singleResult.setCorrectRate(singleResult.getCorrectRate() / validityCorrectRates);
            }
        }
    }
}
