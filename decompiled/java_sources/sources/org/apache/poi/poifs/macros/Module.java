package org.apache.poi.poifs.macros;

/* loaded from: classes12.dex */
public interface Module {

    /* loaded from: classes12.dex */
    public enum ModuleType {
        Document,
        Module,
        Class
    }

    ModuleType geModuleType();

    String getContent();
}
