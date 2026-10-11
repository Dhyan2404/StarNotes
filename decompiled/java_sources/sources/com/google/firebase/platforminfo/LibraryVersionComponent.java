package com.google.firebase.platforminfo;

import android.content.Context;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Dependency;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import com.sunia.HTREnginev2.zxi;

/* loaded from: classes6.dex */
public class LibraryVersionComponent {

    /* loaded from: classes6.dex */
    public interface VersionExtractor<T> {
        String extract(T t);
    }

    /* renamed from: b */
    public static /* synthetic */ zxi m28199b(String str, VersionExtractor versionExtractor, ComponentContainer componentContainer) {
        return zxi.m58767a(str, versionExtractor.extract((Context) componentContainer.get(Context.class)));
    }

    public static Component<?> create(String str, String str2) {
        return Component.intoSet(zxi.m58767a(str, str2), (Class<zxi>) zxi.class);
    }

    public static Component<?> fromContext(final String str, final VersionExtractor<Context> versionExtractor) {
        return Component.intoSetBuilder(zxi.class).add(Dependency.required((Class<?>) Context.class)).factory(new ComponentFactory() { // from class: com.sunia.HTREnginev2.ayi
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                zxi m28199b;
                m28199b = LibraryVersionComponent.m28199b(str, versionExtractor, componentContainer);
                return m28199b;
            }
        }).build();
    }
}
