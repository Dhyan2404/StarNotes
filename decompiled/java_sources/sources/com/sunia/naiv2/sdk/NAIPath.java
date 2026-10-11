package com.sunia.naiv2.sdk;

import com.sunia.HTREnginev2.sdk.RecognizePath;

/* loaded from: classes10.dex */
public class NAIPath extends RecognizePath {
    private int groupId;

    public int getGroupId() {
        return this.groupId;
    }

    public void setGroupId(int i) {
        this.groupId = i;
    }

    @Override // com.sunia.HTREnginev2.sdk.RecognizePath
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public RecognizePath mo72427clone() {
        NAIPath nAIPath = new NAIPath();
        super.mo72427clone();
        nAIPath.groupId = this.groupId;
        return nAIPath;
    }
}
