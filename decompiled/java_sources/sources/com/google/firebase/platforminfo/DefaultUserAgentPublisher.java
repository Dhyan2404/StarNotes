package com.google.firebase.platforminfo;

import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Dependency;
import com.google.firebase.platforminfo.DefaultUserAgentPublisher;
import com.google.firebase.platforminfo.UserAgentPublisher;
import com.sunia.HTREnginev2.zxi;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes6.dex */
public class DefaultUserAgentPublisher implements UserAgentPublisher {

    /* renamed from: a */
    public final String f36034a;

    /* renamed from: b */
    public final GlobalLibraryVersionRegistrar f36035b;

    public DefaultUserAgentPublisher(Set<zxi> set, GlobalLibraryVersionRegistrar globalLibraryVersionRegistrar) {
        this.f36034a = m28196c(set);
        this.f36035b = globalLibraryVersionRegistrar;
    }

    /* renamed from: b */
    public static /* synthetic */ UserAgentPublisher m28195b(ComponentContainer componentContainer) {
        return new DefaultUserAgentPublisher(componentContainer.setOf(zxi.class), GlobalLibraryVersionRegistrar.getInstance());
    }

    /* renamed from: c */
    public static String m28196c(Set<zxi> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<zxi> it2 = set.iterator();
        while (it2.hasNext()) {
            zxi next = it2.next();
            sb.append(next.mo58216b());
            sb.append('/');
            sb.append(next.mo58217c());
            if (it2.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    public static Component<UserAgentPublisher> component() {
        return Component.builder(UserAgentPublisher.class).add(Dependency.setOf((Class<?>) zxi.class)).factory(new ComponentFactory() { // from class: com.sunia.HTREnginev2.h1f
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                UserAgentPublisher m28195b;
                m28195b = DefaultUserAgentPublisher.m28195b(componentContainer);
                return m28195b;
            }
        }).build();
    }

    @Override // com.google.firebase.platforminfo.UserAgentPublisher
    public String getUserAgent() {
        if (this.f36035b.m28197a().isEmpty()) {
            return this.f36034a;
        }
        return this.f36034a + ' ' + m28196c(this.f36035b.m28197a());
    }
}
