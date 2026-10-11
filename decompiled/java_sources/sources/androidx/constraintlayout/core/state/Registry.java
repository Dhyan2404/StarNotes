package androidx.constraintlayout.core.state;

import java.util.HashMap;
import java.util.Set;

/* loaded from: classes3.dex */
public class Registry {

    /* renamed from: b */
    public static final Registry f3145b = new Registry();

    /* renamed from: a */
    public HashMap<String, RegistryCallback> f3146a = new HashMap<>();

    public static Registry getInstance() {
        return f3145b;
    }

    public String currentContent(String str) {
        RegistryCallback registryCallback = this.f3146a.get(str);
        if (registryCallback != null) {
            return registryCallback.currentMotionScene();
        }
        return null;
    }

    public String currentLayoutInformation(String str) {
        RegistryCallback registryCallback = this.f3146a.get(str);
        if (registryCallback != null) {
            return registryCallback.currentLayoutInformation();
        }
        return null;
    }

    public long getLastModified(String str) {
        RegistryCallback registryCallback = this.f3146a.get(str);
        if (registryCallback != null) {
            return registryCallback.getLastModified();
        }
        return Long.MAX_VALUE;
    }

    public Set<String> getLayoutList() {
        return this.f3146a.keySet();
    }

    public void register(String str, RegistryCallback registryCallback) {
        this.f3146a.put(str, registryCallback);
    }

    public void setDrawDebug(String str, int i) {
        RegistryCallback registryCallback = this.f3146a.get(str);
        if (registryCallback != null) {
            registryCallback.setDrawDebug(i);
        }
    }

    public void setLayoutInformationMode(String str, int i) {
        RegistryCallback registryCallback = this.f3146a.get(str);
        if (registryCallback != null) {
            registryCallback.setLayoutInformationMode(i);
        }
    }

    public void unregister(String str, RegistryCallback registryCallback) {
        this.f3146a.remove(str);
    }

    public void updateContent(String str, String str2) {
        RegistryCallback registryCallback = this.f3146a.get(str);
        if (registryCallback != null) {
            registryCallback.onNewMotionScene(str2);
        }
    }

    public void updateDimensions(String str, int i, int i2) {
        RegistryCallback registryCallback = this.f3146a.get(str);
        if (registryCallback != null) {
            registryCallback.onDimensions(i, i2);
        }
    }

    public void updateProgress(String str, float f) {
        RegistryCallback registryCallback = this.f3146a.get(str);
        if (registryCallback != null) {
            registryCallback.onProgress(f);
        }
    }
}
