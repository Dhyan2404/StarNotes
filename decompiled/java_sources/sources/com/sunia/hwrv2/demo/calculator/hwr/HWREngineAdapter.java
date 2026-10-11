package com.sunia.hwrv2.demo.calculator.hwr;

import androidx.core.app.C0619b;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.sunia.HTREnginev2.C13507b;
import com.sunia.HTREnginev2.C13509b1;
import com.sunia.HTREnginev2.C14120n1;
import com.sunia.HTREnginev2.C14219p1;
import com.sunia.HTREnginev2.C14376s1;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.calculatorv2.ink.converter.LatexConverter;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import com.sunia.calculatorv2.ink.model.AbstractC14807f;
import com.sunia.calculatorv2.ink.model.C14806e;
import com.sunia.calculatorv2.ink.model.C14814m;
import com.sunia.calculatorv2.ink.model.C14819r;
import com.sunia.calculatorv2.ink.model.MathElement;
import com.sunia.calculatorv2.ink.solver.SolverContext;
import com.sunia.calculatorv2.ink.util.Alternative;
import com.sunia.commonv2.bean.BoundingBox;
import com.sunia.commonv2.bean.PartiBean;
import com.sunia.commonv2.bean.PartieWords;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.text.AlphabetConverter;

/* loaded from: classes10.dex */
public class HWREngineAdapter {
    private static final Pattern DECIMAL_PATTERN = Pattern.compile("[0-9]+(\\.[0-9]+)?");
    private static final String TAG = "HWREngineAdapter";

    /* renamed from: com.sunia.hwrv2.demo.calculator.hwr.HWREngineAdapter$1 */
    /* loaded from: classes10.dex */
    public static /* synthetic */ class C148591 {

        /* renamed from: $SwitchMap$com$sunia$calculatorv2$ink$solver$SolverContext$FractionPreference */
        static final /* synthetic */ int[] f92510x34ef83f5;

        static {
            int[] iArr = new int[SolverContext.FractionPreference.values().length];
            f92510x34ef83f5 = iArr;
            try {
                iArr[SolverContext.FractionPreference.IMPROPER_FRACTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f92510x34ef83f5[SolverContext.FractionPreference.MIXED_NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static String calculate(String str, SolverContext solverContext) {
        boolean z;
        String format;
        String calculate = SimpleRecognize.calculate(str.replace(',', '.'));
        LogUtil.m57656i(TAG, str + AlphabetConverter.f109940d + calculate);
        StringBuilder sb = new StringBuilder();
        JsonObject jsonObject = (JsonObject) new Gson().fromJson(calculate, JsonObject.class);
        boolean z2 = false;
        if (jsonObject != null) {
            int i = C148591.f92510x34ef83f5[solverContext.getFractionPreference().ordinal()];
            JsonArray asJsonArray = i != 1 ? i != 2 ? jsonObject.get("mathLabels").getAsJsonArray() : jsonObject.get("properFraction_mathLabels").getAsJsonArray() : jsonObject.get("improperFraction_mathLabels").getAsJsonArray();
            if (asJsonArray != null) {
                NumberFormat numberInstance = NumberFormat.getNumberInstance(Locale.getDefault());
                LogUtil.m57657w(TAG, "Locale: " + Locale.getDefault());
                Iterator<JsonElement> it2 = asJsonArray.iterator();
                boolean z3 = false;
                while (it2.hasNext()) {
                    JsonElement next = it2.next();
                    boolean z4 = next.getAsJsonObject().get("pcomplement").getAsInt() != 0;
                    if (z4) {
                        sb.append("\\hl{");
                        z = true;
                    } else {
                        z = z3;
                    }
                    String asString = next.getAsJsonObject().get(C0619b.f5199k).getAsString();
                    String str2 = "}";
                    if (z4) {
                        try {
                            Matcher matcher = DECIMAL_PATTERN.matcher(asString);
                            if (matcher.find()) {
                                StringBuilder sb2 = new StringBuilder();
                                int i2 = 0;
                                do {
                                    sb2.append(asString.substring(i2, matcher.start()));
                                    String group = matcher.group();
                                    int indexOf = group.indexOf(46);
                                    if (indexOf != -1) {
                                        numberInstance.setMinimumFractionDigits((group.length() - indexOf) - 1);
                                        numberInstance.setMaximumFractionDigits((group.length() - indexOf) - 1);
                                        format = numberInstance.format(Double.parseDouble(group));
                                    } else {
                                        numberInstance.setMinimumFractionDigits(0);
                                        numberInstance.setMaximumFractionDigits(0);
                                        format = numberInstance.format(Long.parseLong(group));
                                    }
                                    sb2.append(format);
                                    i2 = matcher.end();
                                } while (matcher.find());
                                sb2.append(asString.substring(i2));
                                String sb3 = sb2.toString();
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append(sb3.replaceFirst("([^a-zA-Z])e\\+?", solverContext.isTruncated() ? "$1...\\\\times10^{" : "$1\\\\times10^{"));
                                sb4.append("}");
                                asString = sb4.toString();
                            }
                        } catch (Exception e) {
                            LogUtil.m57657w(TAG, asString + LogUtil.getStackTraceString(e));
                        }
                    }
                    sb.append(asString);
                    if (!z4) {
                        str2 = " ";
                    }
                    sb.append(str2);
                    z3 = z;
                }
                z2 = z3;
            }
        }
        if (z2) {
            return sb.toString();
        }
        return null;
    }

    public static C14806e createPlaceholder(List<C14219p1> list) {
        return new C14806e(Collections.singletonList(new C14120n1(Collections.singletonList(new MathElement(Collections.singletonList(new Alternative(new C14814m(Collections.singletonList(new C14819r(Collections.singletonList(new C13507b("?", 0.0d)), list))), 0.0d)), list, C14219p1.m56195a(list), null)))), Collections.emptyList());
    }

    public static void enableMathDotConvertMultiplication(boolean z) {
        SimpleRecognize.enableMathDotConvertMultiplication(z);
    }

    public static C14806e parseResult(String str, List<C14219p1> list) {
        PartiBean partiBean = (PartiBean) new Gson().fromJson(str, PartiBean.class);
        ArrayList arrayList = new ArrayList();
        BoundBox m56195a = C14219p1.m56195a(list);
        if (partiBean != null) {
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            List<PartieWords> chars = partiBean.getChars();
            if (chars != null && chars.size() > 0) {
                int i = 0;
                ArrayList arrayList4 = arrayList3;
                double d = 0.0d;
                for (PartieWords partieWords : chars) {
                    String label = partieWords.getLabel();
                    if (label != null) {
                        if (label.equals("\n")) {
                            if (!arrayList2.isEmpty()) {
                                AbstractC14807f m58792a = LatexConverter.m58792a(new C13509b1(arrayList2, arrayList4, 1.0d, "math"));
                                List<C14219p1> placeholderTraces = toPlaceholderTraces(partiBean.getLine_box().get(i), list, m56195a);
                                arrayList.add(new MathElement(Collections.singletonList(new Alternative(m58792a, Math.exp(d / arrayList2.size()))), placeholderTraces, C14219p1.m56195a(placeholderTraces), null));
                                arrayList2 = new ArrayList();
                                arrayList4 = new ArrayList();
                                d = 0.0d;
                            }
                            i++;
                        } else {
                            double correct_rate = partieWords.getCorrect_rate();
                            d += Math.log(correct_rate);
                            arrayList2.add(Collections.singletonList(new C13507b(label, correct_rate)));
                            arrayList4.add(toPlaceholderTraces(partieWords.getBounding_box(), null, m56195a));
                        }
                    }
                }
                if (!arrayList2.isEmpty()) {
                    AbstractC14807f m58792a2 = LatexConverter.m58792a(new C13509b1(arrayList2, arrayList4, 1.0d, "math"));
                    double exp = Math.exp(d / arrayList2.size());
                    List<C14219p1> placeholderTraces2 = toPlaceholderTraces(partiBean.getLine_box().get(i), list, m56195a);
                    arrayList.add(new MathElement(Collections.singletonList(new Alternative(m58792a2, exp)), placeholderTraces2, C14219p1.m56195a(placeholderTraces2), null));
                }
            }
        }
        if (!arrayList.isEmpty() || list.isEmpty()) {
            return new C14806e(Collections.singletonList(new C14120n1(arrayList)), Collections.emptyList());
        }
        LogUtil.m57656i(TAG, "Recognition result is empty");
        return createPlaceholder(list);
    }

    public static void setSolverContext(SolverContext solverContext) {
        String str = solverContext.isDegree() ? "degree" : "radian";
        SimpleRecognize.setCalculateParams("optraddeg=" + str, !solverContext.isTruncated() ? 1 : 0, solverContext.getPrecision());
    }

    private static List<C14219p1> toPlaceholderTraces(BoundingBox boundingBox, List<C14219p1> list, BoundBox boundBox) {
        if (boundingBox != null && boundingBox.getX() < 2.14748365E9f && boundingBox.getY() < 2.14748365E9f) {
            float x = boundingBox.getX();
            float y = boundingBox.getY();
            float width = boundingBox.getWidth() + x;
            float height = boundingBox.getHeight() + y;
            BoundBox boundBox2 = new BoundBox(x, width, y, height);
            if (BoundBox.isIntersect(boundBox, boundBox2) && BoundBox.intersect(boundBox, boundBox2).getArea() > boundBox2.getArea() * 0.9f) {
                return Collections.singletonList(new C14219p1(Arrays.asList(new C14376s1(x, y), new C14376s1(width, height))));
            }
        }
        return list != null ? list : Collections.emptyList();
    }
}
