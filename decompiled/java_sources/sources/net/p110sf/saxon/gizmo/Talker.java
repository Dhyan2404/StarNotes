package net.p110sf.saxon.gizmo;

import java.util.List;

/* loaded from: classes11.dex */
public interface Talker {
    String exchange(String str);

    default void setAutoCompletion(List<String> list) {
    }
}
