package com.sunia.nbiv2.sdk;

import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.commonv2.util.HWRUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes10.dex */
public class NBIAxisPath extends RecognizePath {
    private String ext;
    private boolean validate;
    private List<NBIAxisPoint> nbiAxisPointList = new ArrayList();
    private List<Long> addIdList = new ArrayList();

    public List<Integer> getAddIdList() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(this.addIdList);
        if (HWRUtil.isEmpty((List<?>) arrayList2)) {
            return arrayList;
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList.add(Integer.valueOf(((Long) it2.next()).intValue()));
        }
        return arrayList;
    }

    public List<Long> getAddIdListLong() {
        return this.addIdList;
    }

    public String getExt() {
        return this.ext;
    }

    public List<NBIAxisPoint> getNbiAxisPointList() {
        return this.nbiAxisPointList;
    }

    public boolean isValidate() {
        return this.validate;
    }

    public void setExt(String str) {
        this.ext = str;
    }

    public void setValidate(boolean z) {
        this.validate = z;
    }
}
