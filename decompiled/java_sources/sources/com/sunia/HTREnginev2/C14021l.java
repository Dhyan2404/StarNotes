package com.sunia.HTREnginev2;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.os.PersistableBundle;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.calculatorv2.ink.converter.LatexConverter;
import com.sunia.calculatorv2.ink.editor.ICopyAndPaste;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import com.sunia.calculatorv2.ink.model.AbstractC14807f;
import com.sunia.calculatorv2.ink.model.C14806e;
import com.sunia.calculatorv2.ink.model.C14810i;
import com.sunia.calculatorv2.ink.model.C14819r;
import com.sunia.calculatorv2.ink.model.C14827z;
import com.sunia.calculatorv2.ink.model.IElement;
import com.sunia.calculatorv2.ink.model.MathElement;
import com.sunia.calculatorv2.ink.util.Alternative;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* renamed from: com.sunia.HTREnginev2.l */
/* loaded from: classes10.dex */
public class C14021l implements ICopyAndPaste {

    /* renamed from: a */
    public static final Pattern f75989a = Pattern.compile("[0-9]");

    /* renamed from: a */
    public static boolean m55357a(ClipboardManager clipboardManager, C14270q c14270q) {
        if (clipboardManager == null) {
            return false;
        }
        List<? extends AbstractC14807f> m55354a = m55354a(c14270q.m56544j().getConverted(), c14270q);
        if (m55354a.isEmpty()) {
            return false;
        }
        return copy(m55354a, clipboardManager);
    }

    /* renamed from: b */
    public static void m55358b(AbstractC14807f<?> abstractC14807f, List<AbstractC14807f> list) {
        if (!(abstractC14807f instanceof C14810i)) {
            Iterator<?> it2 = abstractC14807f.mo58831f().iterator();
            while (it2.hasNext()) {
                m55358b((AbstractC14807f) it2.next(), list);
            }
        } else {
            AbstractC14807f m58864l = ((C14810i) abstractC14807f).m58864l();
            if (m55360d(m58864l)) {
                list.add(m58864l);
            }
        }
    }

    /* renamed from: c */
    public static void m55359c(C14827z c14827z, List<AbstractC14807f> list) {
        AbstractC14807f<? extends AbstractC14807f> m58906l = c14827z.m58906l();
        if (!(m58906l instanceof C14810i)) {
            Iterator<C14827z> it2 = c14827z.mo58831f().iterator();
            while (it2.hasNext()) {
                m55359c(it2.next(), list);
            }
        } else {
            AbstractC14807f m58864l = ((C14810i) m58906l).m58864l();
            if (m55360d(m58864l)) {
                list.add(m58864l);
            }
        }
    }

    public static boolean copy(List<? extends IElement> list, ClipboardManager clipboardManager) {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        for (Object obj : list) {
            if (obj instanceof MathElement) {
                List<Alternative<AbstractC14807f>> candidates = ((MathElement) obj).getCandidates();
                if (!candidates.isEmpty()) {
                    obj = candidates.get(0).getContent();
                }
            }
            AbstractC14807f abstractC14807f = (AbstractC14807f) obj;
            String replace = LatexConverter.encode(abstractC14807f).replace("\\ldots ", " ").replace('\n', ' ');
            BoundBox mo58857g = abstractC14807f.mo58857g();
            LogUtil.m57656i("CopyAndPasteHelper", "Selected: " + replace);
            sb2.append(replace);
            sb2.append('%');
            sb2.append(mo58857g.getLeft());
            sb2.append(',');
            sb2.append(mo58857g.getTop());
            sb2.append(',');
            sb2.append(mo58857g.getRight());
            sb2.append(',');
            sb2.append(mo58857g.getBottom());
            sb2.append('\n');
            sb.append(C14528v0.m57726a(abstractC14807f));
            sb.append('\n');
        }
        if (sb2.length() <= 0) {
            return false;
        }
        ClipData clipData = new ClipData("Spans", new String[]{"text/plain"}, new ClipData.Item(sb.toString()));
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("text/vnd.sunia.equation", sb2.toString());
        clipData.getDescription().setExtras(persistableBundle);
        clipboardManager.setPrimaryClip(clipData);
        LogUtil.m57656i("CopyAndPasteHelper", "Copied");
        return true;
    }

    /* renamed from: d */
    public static boolean m55360d(AbstractC14807f<?> abstractC14807f) {
        if (abstractC14807f instanceof C14819r) {
            return f75989a.matcher(((C14819r) abstractC14807f).mo53565a()).find();
        }
        Iterator<?> it2 = abstractC14807f.mo58831f().iterator();
        while (it2.hasNext()) {
            if (m55360d((AbstractC14807f) it2.next())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static List<? extends AbstractC14807f> m55354a(C14827z c14827z, C14270q c14270q) {
        int copyAndPasteMode = c14270q.getCopyAndPasteMode();
        ArrayList<MathElement> arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<C14827z> it2 = c14827z.mo58831f().iterator();
        while (it2.hasNext()) {
            for (C14827z c14827z2 : it2.next().mo58831f()) {
                AbstractC14807f<? extends AbstractC14807f> m58906l = c14827z2.m58906l();
                if (m58906l instanceof MathElement) {
                    arrayList.add((MathElement) m58906l);
                    m55359c(c14827z2, arrayList2);
                }
            }
        }
        if (copyAndPasteMode == 0 && !arrayList.isEmpty()) {
            arrayList.clear();
            Iterator<AbstractC14807f> it3 = c14270q.getConvertedElement().mo58831f().iterator();
            while (it3.hasNext()) {
                for (AbstractC14807f abstractC14807f : it3.next().mo58831f()) {
                    if (abstractC14807f instanceof MathElement) {
                        arrayList.add((MathElement) abstractC14807f);
                    }
                }
            }
        } else if (copyAndPasteMode == 2 && !arrayList.isEmpty() && arrayList2.isEmpty()) {
            for (MathElement mathElement : arrayList) {
                if (!mathElement.getCandidates().isEmpty()) {
                    m55358b(mathElement.getCandidates().get(0).getContent(), arrayList2);
                }
            }
        }
        return (copyAndPasteMode != 2 || arrayList2.isEmpty()) ? arrayList : arrayList2;
    }

    /* renamed from: a */
    public static List<List<? extends IElement>> m55355a(C14827z c14827z, C14806e c14806e) {
        ArrayList arrayList = new ArrayList();
        ArrayList<MathElement> arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator<AbstractC14807f> it2 = c14806e.mo58831f().iterator();
        while (it2.hasNext()) {
            for (AbstractC14807f abstractC14807f : it2.next().mo58831f()) {
                if (abstractC14807f instanceof MathElement) {
                    arrayList.add((MathElement) abstractC14807f);
                }
            }
        }
        Iterator<C14827z> it3 = c14827z.mo58831f().iterator();
        while (it3.hasNext()) {
            for (C14827z c14827z2 : it3.next().mo58831f()) {
                AbstractC14807f<? extends AbstractC14807f> m58906l = c14827z2.m58906l();
                if (m58906l instanceof MathElement) {
                    arrayList2.add((MathElement) m58906l);
                    m55359c(c14827z2, arrayList3);
                }
            }
        }
        if (!arrayList2.isEmpty() && arrayList3.isEmpty()) {
            for (MathElement mathElement : arrayList2) {
                if (!mathElement.getCandidates().isEmpty()) {
                    m55358b(mathElement.getCandidates().get(0).getContent(), arrayList3);
                }
            }
        }
        return C13751g0.m54216a(arrayList, arrayList2, arrayList3);
    }

    /* renamed from: a */
    public static boolean m55356a(float f, float f2, ClipboardManager clipboardManager, C14270q c14270q) {
        String string;
        ClipData primaryClip = clipboardManager.getPrimaryClip();
        if (primaryClip != null) {
            PersistableBundle extras = primaryClip.getDescription().getExtras();
            String[] split = (extras == null || (string = extras.getString("text/vnd.sunia.equation")) == null) ? null : string.trim().split("\n");
            if (split == null) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (String str : split) {
                int indexOf = str.indexOf(37);
                if (indexOf != -1) {
                    try {
                        AbstractC14807f m58793a = LatexConverter.m58793a(str.substring(0, indexOf));
                        String[] split2 = str.substring(indexOf + 1).split(",");
                        BoundBox boundBox = new BoundBox(Float.parseFloat(split2[0]), Float.parseFloat(split2[2]), Float.parseFloat(split2[1]), Float.parseFloat(split2[3]));
                        arrayList.add(m58793a);
                        arrayList2.add(boundBox);
                    } catch (Exception e) {
                        LogUtil.m57658w("CopyAndPasteHelper", e);
                    }
                }
            }
            int size = arrayList.size();
            if (size > 0) {
                BoundBox union = BoundBox.union(arrayList2.iterator());
                BoundBox intersect = BoundBox.intersect(union.translate(f - union.getCenterX(), f2 - union.getCenterY()), c14270q.m56546l());
                float min = Math.min(intersect.getWidth() / (union.getWidth() + 1.0E-15f), intersect.getHeight() / (union.getHeight() + 1.0E-15f));
                float centerX = intersect.getCenterX() - (union.getCenterX() * min);
                float centerY = intersect.getCenterY() - (union.getCenterY() * min);
                ArrayList arrayList3 = new ArrayList(size);
                for (int i = 0; i < size; i++) {
                    BoundBox boundBox2 = (BoundBox) arrayList2.get(i);
                    arrayList3.add(new MathElement(Collections.singletonList(new Alternative((AbstractC14807f) arrayList.get(i), 1.0d)), Collections.emptyList(), new BoundBox((boundBox2.getLeft() * min) + centerX, (boundBox2.getRight() * min) + centerX, (boundBox2.getTop() * min) + centerY, (boundBox2.getBottom() * min) + centerY), null));
                }
                c14270q.m56532b(new C14806e(Collections.singletonList(new C14120n1(arrayList3)), Collections.emptyList()));
                LogUtil.m57656i("CopyAndPasteHelper", "Pasted");
                return true;
            }
        }
        return false;
    }
}
