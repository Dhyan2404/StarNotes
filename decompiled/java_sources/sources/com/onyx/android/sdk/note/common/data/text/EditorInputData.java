package com.onyx.android.sdk.note.common.data.text;

import com.onyx.android.sdk.data.utils.JSONUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes8.dex */
public class EditorInputData {
    public List<Action> actions;
    public String content;

    /* loaded from: classes8.dex */
    public static class Action {
        public String command;
        public List<Object> params;
    }

    public void addAction(String str, Object... objArr) {
        if (this.actions == null) {
            this.actions = new ArrayList();
        }
        Action action = new Action();
        action.command = str;
        action.params = Arrays.asList(objArr);
        this.actions.add(action);
    }

    public String toJson() {
        return JSONUtils.INSTANCE.toJson(this);
    }
}
