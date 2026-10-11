package com.sunia.calculatorv2.ink.editor;

import com.sunia.HTREnginev2.C14270q;
import com.sunia.HTREnginev2.C14430t0;
import com.sunia.HTREnginev2.InterfaceC14684y0;
import com.sunia.calculatorv2.ink.analyzer.GenericRecognizer;

/* loaded from: classes10.dex */
public class Engine {
    private static final String TAG = "Engine";
    private final ResourceStore resourceStore;

    public Engine(ResourceStore resourceStore) {
        this.resourceStore = resourceStore;
    }

    public C14270q createEditor() {
        return new C14270q(this);
    }

    public GenericRecognizer createGenericRecognizer() {
        return new GenericRecognizer(this);
    }

    public InterfaceC14684y0 createPredictor() {
        return new C14430t0();
    }
}
