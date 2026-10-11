package com.google.firebase.tracing;

import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.ComponentRegistrarProcessor;
import com.google.firebase.tracing.ComponentMonitor;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes6.dex */
public class ComponentMonitor implements ComponentRegistrarProcessor {
    /* renamed from: b */
    public static /* synthetic */ Object m28202b(String str, Component component, ComponentContainer componentContainer) {
        try {
            FirebaseTrace.pushTrace(str);
            return component.getFactory().create(componentContainer);
        } finally {
            FirebaseTrace.popTrace();
        }
    }

    @Override // com.google.firebase.components.ComponentRegistrarProcessor
    public List<Component<?>> processRegistrar(ComponentRegistrar componentRegistrar) {
        ArrayList arrayList = new ArrayList();
        for (final Component<?> component : componentRegistrar.getComponents()) {
            final String name = component.getName();
            if (name != null) {
                component = component.withFactory(new ComponentFactory() { // from class: com.sunia.HTREnginev2.b7e
                    @Override // com.google.firebase.components.ComponentFactory
                    public final Object create(ComponentContainer componentContainer) {
                        Object m28202b;
                        m28202b = ComponentMonitor.m28202b(name, component, componentContainer);
                        return m28202b;
                    }
                });
            }
            arrayList.add(component);
        }
        return arrayList;
    }
}
